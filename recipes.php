<?php 
session_start();
require('commun/header.php'); 
include('src/bdd.php');
include('src/function.php');
$recipes=selectAll("meal");

notLogged();

if (!empty($_POST)) {
  if ($_POST['password'] != $_POST['password_confirm']) {
    msg('danger',"Les deux mots de passe ne sont pas identique");
  }
}
?>

<h1>Vous trouverez ici toute les recettes</h1>

<div class="flexbox">
  <?php
    foreach($recipes as $keyrecipe => $recipe) { 
      $ingredients=selectAllWhereId('ingredients_has_meal',"Meal_idMeal",$recipe['idMeal']);
      ?>
      <div class="card">
        <header><h1><?php echo $recipe['name_meal'] ; ?></h1></header>
        <div>
          <ul>
            <?php 
              foreach ($ingredients as $keyingredient => $ingredient) { 
                $data=selectAllWhereId('ingredients',"idIngredients",$ingredient['ingredients_idIngredients']);
                ?>
                <li><?php echo $data['0']['name_ingredients'] ; ?></li>
              <?php
              }
            ?>
          </ul>
        </div>
      </div>
  <?php 
  }
  ?>

</div>


<?php require('commun/footer.php') ?>