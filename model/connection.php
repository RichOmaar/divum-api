<?php

class Connection {
    public function get_connection() { 
        $user = "legendar_divum";
        $pass = "PINTOhome.l";
        $host = "127.0.0.1";
        $db = "legendar_divum";
        // $user = "root";
        // $pass = "root";
        // $host = "localhost";
        // $db = "divum";
        $connection = new PDO(
            "mysql:host={$host}; 
            dbname={$db};", 
            $user, 
            $pass, 
            array(
                PDO::MYSQL_ATTR_INIT_COMMAND => "SET NAMES utf8"
                )
            );
        return ($connection);
    }
}