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

