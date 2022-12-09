<?php include('commun/header.php');
include('src/bdd.php');
include('src/function.php');
?>


<?php
  if(!empty($_POST)) {
    $errors = array();
    if (empty($_POST['username']) || !preg_match('/^[a-zA-Z0-9_]+$/',$_POST['username'])) {
      $errors['username']="Votre pseudo n'est pas correct";
    } else {
      $verif=verificationPseudo([$_POST['username']]);
      $user=$verif->fetch();
      if($user) {
        $errors['username']="Ce pseudo à déjà été utilisé";
      };
    }

    if (empty($_POST['email']) || !filter_var($_POST['email'], FILTER_VALIDATE_EMAIL) ) {
      $errors['email']="Votre email n'est pas correct";
    } else {
      $verif=verificationEmail([$_POST['email']]);
      $user=$verif->fetch();
      if($user) {
        $errors['mail']="Cet email à déjà été utilisé";
      };
    }

    if (empty($_POST['password']) || $_POST['password']!=$_POST['password_confirm'] ) {
      $errors['password']="Votre devez rentrer un mot de pass valide";
    }

    if (empty($errors)) {
      $_SESSION['flash']['success'] = "Un email de confirmation vous a été envoyé pour valider votre compte";
      $password = password_hash($_POST['password'], PASSWORD_BCRYPT);
      createUser($_POST['username'], $_POST['email'], $password);
    }
  }
?>

<h1>S'inscrire</h1>

<?php
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
  } else { ?>
  <?php
  }
?>
<form action="" method="POST">
  <div class="form-group">
      <label for="">Pseudo</label>
      <input type='text' name='username' class="form-control" requiered>
  </div>

  <div class="form-group">
      <label for="">Email</label>
      <input type='email' name='email' class="form-control" requiered>
  </div>

  <div class="form-group">
      <label for="">Mot de passe</label>
      <input type='password' name='password' class="form-control" requiered>
  </div>

  <div class="form-group">
      <label for="">Confirmé vitre mot de passe</label>
      <input type='password' name='password_confirm' class="form-control" requiered>
  </div>

  <button type="submit" class="btn btn-primary">S'inscrire</button>
</form>

<?php include('commun/footer.php') ?>