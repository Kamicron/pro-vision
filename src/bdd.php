<?php
require_once('src/constant.php');
//======================================//
//       CONNEXION BASE DE DONNEE       //
//======================================//
function dbConnect()
{
    try {
        $database = new PDO(
            sprintf('mysql:host=%s;dbname=%s;port=%s', MYSQL_HOST, MYSQL_NAME, MYSQL_PORT),
            MYSQL_USER,
            MYSQL_PASSWORD
        );
        $database->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        return($database); 

    } catch(Exception $e) {
        die('Erreur : '.$e->getMessage());
    }
}
//======================================//

//======================================//
//          add item in table           //
//======================================//
function addItemInTable($table,$name_ingredient)
{
  $database=dbConnect();
  $Insert = $database->prepare("INSERT INTO $table (`id$table`, `name_$table`) VALUES (NULL, '$name_ingredient')");
  $Insert->execute();

  return $database->lastInsertId();
}
//======================================//

//======================================//
//         Delete selected table        //
//======================================//
function deleteTable($name_table)
{
  $database=dbConnect();
  $Insert = $database->prepare("SET FOREIGN_KEY_CHECKS = 0");
  $Insert->execute();

  $Insert = $database->prepare("TRUNCATE TABLE $name_table");
  $Insert->execute();
}
//======================================//

//======================================//
//            Check duplicate           //
//======================================//
function checkDuplicate($table, $nameItem)
{
  $database=dbConnect();
  $sql = "SELECT * FROM $table WHERE name_$table = '$nameItem'";
  $stmt = $database->prepare($sql);
  $stmt->execute();
  
  // Récupération des résultats de la requête
  $resultat = $stmt->fetch(PDO::FETCH_ASSOC);

  return $resultat;
}
//======================================//

//======================================//
//        select all ingredients        //
//======================================//
function selectAllIngredients()
{
  $database=dbConnect();
  $sql = "SELECT * FROM ingredients";
  $stmt = $database->prepare($sql);
  $stmt->execute();
  
  // Récupération des résultats de la requête
  $resultat = $stmt->fetchall();

  return $resultat;
}
//======================================//

//======================================//
//     add item in secondary table      //
//======================================//
function addItemInSecondaryTable($table1, $table2, $idTable1Array, $idTable2)
{
  $idTable1=$idTable1Array['idIngredients'];

  $table=$table1."_has_".$table2;
  $database=dbConnect();
  $name1=$table1."_id".$table1;
  $name2=$table2."_id".$table2;


  $Insert = $database->prepare("INSERT INTO `$table` (`$name1`, `$name2`) VALUES ('$idTable1', '$idTable2')");
  $Insert->execute();
}
//======================================//


//======================================//
//         Création utilsiateur         //
//======================================//

function createUser($username, $email, $password) {
  $database=dbConnect();
  $token = str_rand(60);
  $Insert = $database->prepare("INSERT INTO `users` (`id_users`, `username`, `email`, `password`, confirmation_token) VALUES (NULL, '$username', '$email', '$password', '$token')");
  $Insert->execute();
  $lastIdJoueur = $database->lastInsertId();
  echo '<hr>';
  echo $lastIdJoueur." ".$token;
  echo '<hr>';
  $url=URL;
  mail($email, "Confirmer votre compte","Afin de valider votre commpte merci de cliquer sur ce lien\n\nhttps://landers.ovh/confirm.php?id=$lastIdJoueur&token=$token");
  echo $email."Confirmer votre compte","Afin de valider votre commpte merci de cliquer sur ce lien\n\nhttps://landers.ovh/confirm.php?id=$lastIdJoueur&token=$token";
}
//======================================//

//======================================//
//      Vérification meme pseudo        //
//======================================//

function verificationPseudo($username) {
  $database=dbConnect();
  $Insert = $database->prepare("SELECT `id_users` FROM users WHERE username=?");
  $Insert->execute($username);
  
  return $Insert;
}
//======================================//

//======================================//
//      Vérification meme email         //
//======================================//

function verificationEmail($email) {
  $database=dbConnect();
  $Insert = $database->prepare("SELECT `id_users` FROM users WHERE email=?");
  $Insert->execute($email);
  
  return $Insert;
}
//======================================//

//======================================//
//      Validation inscription          //
//======================================//

function updateUser($id) {
  $database=dbConnect();
  $sql = "UPDATE `users` SET `confirmation_token`= NULL,`confirmed_at`= NOW() WHERE `id_users`=?;";
  $stmt= $database->prepare($sql);
  $stmt->execute([$id]);

  $database=dbConnect();
  $Insert = $database->prepare("INSERT INTO `users_has_user_role` (`idUsers`, `idUser_role`) VALUES ($id, '2')");
  $Insert->execute();

}

function validationUser($id,$token) {
  $database=dbConnect();
  $Insert = $database->prepare("
  SELECT *
  FROM `users` 
  WHERE id_users=".$id); 
  $Insert->execute();
  $user= $Insert->fetch();
  session_start();
  if($user && $user['confirmation_token']==$token) {
      echo('ok');
      echo 'sessions start';
      updateUser($id);
      echo 'updateusr';
      $_SESSION['auth'] = $user;
      echo 'redirection';
      header('Location: account.php');
      exit();
  } else {
      $_SESSION['flash']['danger']="Ce token n'est plus valide";
      header('Location: login.php');
      exit();
  }
}
//======================================//

//======================================//
//        Connexion d'un users          //
//======================================//

function connexionUser($username) {
  $database=dbConnect();
  $req = $database -> prepare ("
  SELECT *
  FROM `users` 
  WHERE (username= :username OR email= :username) AND  confirmed_at IS NOT NULL");
  $req -> execute(['username' => $username]);
  $user = $req -> fetch();
  return $user;
}
//======================================//

//======================================//
//         Vérification admin           //
//======================================//

function isAdmin($id) {

  $role=0;
  $database=dbConnect();
  $Insert = $database->prepare("SELECT * FROM `users_has_user_role` WHERE idUsers=$id;");
  $Insert->execute();
  $user = $Insert -> fetchAll();

  foreach ($user as $key => $datas) {
    if ($datas['idUser_role']==1) {
      $admin=true;
    }
    if ($datas['idUser_role']==2) {
      $membre=true;
    }
  }

  if ($admin) {
    $role=1;
  } else if ($membre) {
    $role=2;
  } else {
    $role=0;
  }
  return $role;
}
//======================================//
