<?php include('commun/header.php');
require('src/function.php');
require('src/bdd.php');

if (isset($_POST) && !is_null($_POST) && isset($_POST['nameMeal'])) {

  if ($_POST['nameMeal'] == "") {

    $errors['ingredients']="Vous n'avez pas inscrit de nom de repas";
  } else if (!isset($_POST['ingredients'])) {

    $errors['ingredients']="Vous n'avez pas inscrit d'ingredients'";
  } else {

    $check=checkDuplicate("meal",$_POST['nameMeal']);

    if($check) {
      msg("danger", "Le repas : ".$_POST['nameMeal']." existe déjà"); 
    } else {
      $id=addItemInTable("meal", $_POST['nameMeal']);
      msg("success", "Vous avez ajouter le repas: ".$_POST['nameMeal']); 
    }
  }

  if (!empty($errors)) {
    if (!empty($errors)) { ?>
      <div class="alert alert-danger">
        <p>Vous n'avez pas remplis le formule correctement</p>
        <ul>
          <?php
            foreach ($errors as $error) { ?>
              <li><?php echo $error ;?></li>
            <?php
            }
          ?>
        </ul>
      </div>  
    <?php
    } 
  }
  
  foreach ($_POST["ingredients"] as $key => $ingredient) {
    $item=checkDuplicate("ingredients", $ingredient);
    addItemInSecondaryTable("ingredients", "meal", $item, $id);
  } 


  header("Location: add_meal.php");

}

$ingredients=selectAllIngredients();

?>

<form action="" method="POST">
  <div class="form-group">
      <label for="nameMeal">nom du repas</label>
      <input type='text' name='nameMeal' class="form-control">
  </div>
  <label for="ingredients">Sélectionnez un ingredient</label>
  <br>
  <?php

    foreach ($ingredients as $key => $ingredient) { 

      ?>
      <input type="checkbox" name="ingredients[]" value="<?php echo  $ingredient['name_ingredients'] ;?>"><?php echo  $ingredient['name_ingredients'] ;?><br>
    <?php
    }
  ?>

  <button type="submit" class="btn btn-primary">Ajouter</button>
</form>


<?php include('commun/footer.php') ?>