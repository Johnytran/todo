<?php 
    function loadClasss($classname){
        $classdir  = 'classes';
        $classfile = strtolower($classname).'.class.php';
        //include the file from directory
        include($classdir .'/'.$classfile);
    }
    spl_autoload_register('loadClasss');
?>