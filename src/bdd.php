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

