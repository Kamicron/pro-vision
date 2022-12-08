<?php 
include('commun/header.php');
require('src/function.php');
require('src/bdd.php');

if (isset($_POST) && !is_null($_POST) && isset($_POST['nameIngredients'])) {
  
  if ($_POST['nameIngredients'] == "") {
    msg("danger", "Vous n'avez pas inscrit d'ingrédient");
    header("Location: add_ingredients.php");
  } else {
    $check=checkDuplicate("ingredients","name_Ingredients",$_POST['nameIngredients']);
    if($check) {
      msg("danger", "L'ingrediant: ".$_POST['nameIngredients']." existe déjà"); 
    } else {
      addItemInTable("ingredients", $_POST['nameIngredients']);
      msg("success", "Vous avez ajouter un ingrédient: ".$_POST['nameIngredients']); 
    }

    header("Location: add_ingredients.php");
  }
}

?>

<form action="" method="POST">
  <div class="form-group">
      <label for="">Ingredients</label>
      <input type='text' name='nameIngredients' class="form-control">
  </div>
  <button type="submit" class="btn btn-primary">Ajouter</button>
</form>


<?php include('commun/footer.php') ?>