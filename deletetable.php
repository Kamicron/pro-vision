<?php include('commun/header.php'); 
include("src/bdd.php");
include("src/function.php");

echo '<pre>';
print_r($_POST);
echo '</pre>';
if (isset($_POST['TableSelect']) && !is_null($_POST)) {
  $ingredient = $_POST["TableSelect"];
  echo $ingredient;
  deleteTable($ingredient);
  msg("success","Table supprimé");
  header('Location: deletetable.php');

}?>

<form action="deletetable.php" method="POST">
  <div class="form-group">
    <label for="TableSelect">Sélectionnez une table</label>
    <select class="form-control" name="TableSelect">
      <option value="users">users</option>
      <option value="ingredients">ingredients</option>
      <option value="ingredients_has_list">ingredients_has_list</option>
      <option value="ingredients_has_meal">ingredients_has_meal</option>
      <option value="meal">meal</option>
      <option value="list">list</option>
    </select>
  </div>
  <button type="submit" class="btn btn-primary">Valider</button>
</form>



<?php include('commun/footer.php'); ?>