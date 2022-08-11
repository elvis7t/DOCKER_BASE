<?php
$host = "mysql";
$user = "db_user";
$pass = "db_user_pass";
$database = "useacabeca";


$conn = mysqli_connect($host, $user, $pass, $database) or die("Couldn't connect to database'");
if (!$conn) {echo "Não foi possível conectar ao banco MySQL."; exit;}
else {echo "Parabéns!! A conexão ao banco de dados ocorreu normalmente!.";
}
?>