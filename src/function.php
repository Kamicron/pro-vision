<?php
  
function debug($variable) {
  echo '<pre>' . print_r($variable,true) . '</pre>';
}

function str_rand($length) {
  $alphabet="0123456789azertyuiopqsdfghjklmwxcvbnAZERTYUIOPQSDFGHJKLMWXCVBN";
  return(substr(str_shuffle(str_repeat($alphabet,$length)), 0, $length));
}

function notLogged() {
  if (session_status() == PHP_SESSION_NONE) {
    session_start(); 
  }

  if(!isset($_SESSION['auth'])) {
    $_SESSION['flash']['danger'] = "Vous n'avez pas le droit d'accéder à cette page";
    header('Location: login.php');
    exit();
  }
}

function notAdmin() {
  if (session_status() == PHP_SESSION_NONE) {
    session_start(); 
  }

  if(!isset($_SESSION['auth'])) {
    $_SESSION['flash']['danger'] = "Vous n'avez pas le droit d'accéder à cette page";
    header('Location: login.php');
    exit();
  }
}

function msg($type,$msg) {
  $_SESSION['flash'][$type] = $msg;  
}