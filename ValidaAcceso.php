<?php
require 'Usuario.php';
/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

$oUsr=new Usuario(NULL,NULL,$_POST["usuario"],$_POST["clave"]);

echo json_encode($oUsr->Acceso());
?>

