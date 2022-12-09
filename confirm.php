<?php 
include('commun/header.php');
include('src/bdd.php');
include('src/function.php');
 ?>

<?php
    $user_id = $_GET['id'];
  $token = $_GET['token'];
  $_SESSION['flash']['success']="Votre compte à bien été validé";
  validationUser($user_id,$token);

  //http://localhost/pro-vision/confirm.php?id=1&token=0XWzO3KKP69GXfdIvVzoine31r2qlQf20yAgNUS1Q4AzfiuEjdZQpj4ASsFi
?>

<?php include('commun/footer.php') ?>