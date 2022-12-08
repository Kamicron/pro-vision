<?php

$online=false ;
if ($online) {
    echo 'online';
    define('MYSQL_HOST','landervadminkami.mysql.db') ;
    define('MYSQL_PORT',3306) ;
    define('MYSQL_NAME','landervadminkami') ;
    define('MYSQL_USER','landervadminkami') ;
    define('MYSQL_PASSWORD','FCSMDzns32') ;
    define('URL','https://landers.ovh');
} else {
    echo 'offline';
    define('MYSQL_HOST','localhost') ;
    define('MYSQL_PORT',3306) ;
    define('MYSQL_NAME','landervadminkami') ;
    define('MYSQL_USER','root') ;
    define('MYSQL_PASSWORD','root') ;
    define('URL','http://localhost/cs_manager');
}
