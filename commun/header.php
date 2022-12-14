<?php 
  if (session_status() == PHP_SESSION_NONE) {
    session_start(); 
  }
   
?>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href='css/constant.css' rel='stylesheet'>
    <link href='css/normalize.css' rel='stylesheet'>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">    
    <!-- <link href="css/bootstrap.Css" rel="stylesheet">     -->
    <link href='css/header.css' rel='stylesheet'>
    <link href='css/footer.css' rel='stylesheet'>
    <link href='css/main.css' rel='stylesheet'>

    <title>Document</title>
</head>
<body>


<header class="p-3 text-bg-dark">
    <div class="container">
      <div class="d-flex flex-wrap align-items-center justify-content-center justify-content-lg-start">
        <?php include('nav.php');?>
      </div>
    </div>
  </header>
  <?php
    if (isset($_SESSION['flash'])) {
      foreach ($_SESSION['flash'] as $type => $message) { ?>
        <div class="alert alert-<?php echo $type ;?>"><?php echo $message ;?></div> 
      <?php }
    }
    unset($_SESSION['flash']);
  ?>
  
    <div class="wrapper">