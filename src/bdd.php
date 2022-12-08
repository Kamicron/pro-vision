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
//            add Ingredients           //
//======================================//
function addIngredients($name_ingredient)
{
  $database=dbConnect();
  $Insert = $database->prepare("INSERT INTO `ingredients` (`idIngredients`, `name_ingredients`) VALUES (NULL, '$name_ingredient')");
  $Insert->execute();
}
//======================================//

//======================================//
//         Delete selected table        //
//======================================//
function deleteTable($name_ingredient)
{
  $database=dbConnect();
  $Insert = $database->prepare("SET FOREIGN_KEY_CHECKS = 0");
  $Insert->execute();

  $Insert = $database->prepare("TRUNCATE TABLE $name_ingredient");
  $Insert->execute();
}
//======================================//