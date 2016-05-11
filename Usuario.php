<?php
require 'db_funciones.php';

Class Usuario{
    var $nombre;
    var $apellido;
    var $nomusuario;
    var $clave;
            
    public function __construct($snombre=NULL,$sapellido=NULL,$snomusuario,$sclave) {
        $this->nombre=$snombre;
        $this->apellido=$sapellido;
        $this->nomusuario=$snomusuario;
        $this->clave=$sclave;
    }
    
    function getNombre() {
        return $this->nombre;
    }

    function getApellido() {
        return $this->apellido;
    }

    function getNomusuario() {
        return $this->nomusuario;
    }

    function getClave() {
        return $this->clave;
    }

    public function Acceso(){
      
        /*Llamado a la función que crea la instancia del objeto PDO*/
        
        $db= dbconnect();
        
        /*Declaración de la sentencia SQL que se requiere ejecutar*/
        $squery="Select nombre from usuarios where usuario=:usr and clave=:pwd";
        
        /*Instancia del objeto que realizará el query*/
        $queryseleccion=$db->prepare($squery);
        
        $queryseleccion->bindParam(":usr",$this->nomusuario);
        $queryseleccion->bindParam(":pwd",$this->clave);
        
        $datos=$queryseleccion->execute();
        
        if($queryseleccion->rowCount()==1){
            $this->nombre=$queryseleccion->fetchColumn();
            return true;
        }
        else{
            return false;
        }
        
    }
    
    public function ModificaClave($nuevaClave){
        /*Llamado a la función que crea la instancia del objeto PDO*/
        
        $db= dbconnect();
        
        /*Declaración de la sentencia SQL que se requiere ejecutar*/
        $squery="update usuarios set clave=:pwd where usuario=:usr";
        
        /*Instancia del objeto que realizará el query*/
        $queryseleccion=$db->prepare($squery);
        
        $queryseleccion->bindParam(":usr",$this->nomusuario);
        $queryseleccion->bindParam(":pwd",$nuevaClave);
        
        $resultado=$queryseleccion->execute();
        
        return $resultado;
        
    }
    
     public function OpcionesMenu(){
        /*Llamado a la función que crea la instancia del objeto PDO*/
        
        $db= dbconnect();
        
        /*Declaración de la sentencia SQL que se requiere ejecutar*/
        $squery="SELECT spa.codigo
                    FROM sg_perfiles as sp 
                    INNER JOIN sg_perfilacceso as spa on sp.idperfil=spa.idperfil
                    INNER JOIN sg_perfilusuario as spu on sp.IDPERFIL=spu.idperfil
                    where spu.usuario=:usr and spa.tipoacceso='M'";
        
        /*Instancia del objeto que realizará el query*/
        $queryseleccion=$db->prepare($squery);
        
        $queryseleccion->bindParam(":usr",$this->nomusuario);
        
        $resultado=$queryseleccion->execute();
        
        return $resultado;
        
    }
    
}

?>
