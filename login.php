<?php 
include('commun/header.php');
include('src/bdd.php');
include('src/function.php');

if (!empty($_POST) && !empty($_POST['username']) && !empty($_POST['password'])) {
  $user=connexionUser($_POST['username']);
  $admin=isAdmin($user['id_users']);
  if(password_verify($_POST['password'], $user['password'])) {
    $_SESSION['auth'] = $user;
    $_SESSION['admin'] = $admin;
    $_SESSION['flash']['success'] = "Vous êtes maintenant connecté";
    
    echo '<pre>';
    print_r($_SESSION);
    echo '</pre>';
    // header('Location: account.php');
    exit();
  } else {
    $_SESSION['flash']['danger'] = "Identifant ou mot de passe incorrecte";
  }

}
?>
<h1>Se connecter</h1>

<form action="" method="POST">
  <div class="form-group">
      <label for="">Pseudo ou email</label>
      <input type='text' name='username' class="form-control" requiered>
  </div>


  <div class="form-group">
      <label for="">Mot de passe</label>
      <input type='password' name='password' class="form-control" requiered>
  </div>

  <button type="submit" class="btn btn-primary">Se connecter</button>
</form>


<?php include('commun/footer.php') ?>