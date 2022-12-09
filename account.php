<?php 
session_start();
require('commun/header.php'); 
include('src/bdd.php');
include('src/function.php');

notLogged();

if (!empty($_POST)) {
  if ($_POST['password'] != $_POST['password_confirm']) {
    msg('danger',"Les deux mots de passe ne sont pas identique");
  }
}
?>

<h1>Bonjour <?php echo $_SESSION['auth']['username'] ;?></h1>


<form action="" method="POST">
  <div class="form-group">
      <label for="">Mot de passe</label>
      <input type='password' name='password' class="form-control" placeholder="Changer de mot de passe">
  </div>

  <div class="form-group">
      <label for="">Mot de passe</label>
      <input type='password' name='password_confirm' class="form-control" placeholder="Confirmation du mot de passe">
  </div>

  <button type="submit" class="btn btn-primary">Modifier</button>
</form>

<?php require('commun/footer.php') ?>