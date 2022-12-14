<?php 
session_start();
require('commun/header.php'); 
include('src/bdd.php');
include('src/function.php');

notLogged();

$data=selectAll("list");


if (isset($_POST) && !is_null($_POST) && isset($_POST['nameList'])) {
  
  if ($_POST['nameList'] == "") {
    msg("danger", "Vous n'avez pas inscrit de nom deliste");
    header("Location: list.php");
  } else {
    $check=checkDuplicate("list","name_List",$_POST['nameList']);
    if($check) {
      msg("danger", "La liste: ".$_POST['nameList']." existe déjà"); 
    } else {
      addNewList($_POST['nameList'], $_SESSION['auth']['id_users']);
      msg("success", "Vous avez ajouter la liste: ".$_POST['nameList']); 
    }

    header("Location: list.php");
  }
}

?>

<h1>Bonjour <?php echo $_SESSION['auth']['username'] ;?> ! Voici vos listes</h1>

<?php
?>

<form action="" method="POST">
  <div class="form-group">
      <label for="">List</label>
      <input type='text' name='nameList' class="form-control">
  </div>
  <button type="submit" class="btn btn-primary">Ajouter</button>
</form>

<div>
  <ul>
  <?php foreach ($data as $keylist => $list) { ?>
      <li><?php echo $list['name_list'] ;?></li>

      
    <?php
  };
  ?>
  </ul>
</div>

<?php require('commun/footer.php') ?>