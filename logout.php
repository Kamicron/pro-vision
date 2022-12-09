<?php include('commun/header.php');
include('src/bdd.php');
include('src/function.php');
 ?>
<?php
  echo "mes couilles3";
  unset($_SESSION['auth']);
  $_SESSION['flash']['success'] = "Vous êtes déconnecté !";
  header('Location : login.php');
?>
<?php include('commun/footer.php') ?>


