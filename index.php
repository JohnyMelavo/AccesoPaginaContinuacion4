<?php 
session_start();
require 'Usuario.php';
?>
<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <meta charset="UTF-8">
        <title></title>
    </head>
    <!-- URL de prueba http://jsfiddle.net/33hmj/ -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
    <body>

        <?php require 'ValidaSesion.php';?>

<?php

$oUsr=unserialize($_SESSION['oUsr']);

echo "Bienvenido:".$oUsr->getNombre()." ".$oUsr->getApellido();
?>
<a href="logout.php"> Salir</a>
<a href="CambiarClave.php"> Cambiar Clave</a>

</body>
</html>