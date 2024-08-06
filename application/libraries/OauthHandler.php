<?php
defined('BASEPATH') OR exit('No direct script access allowed');
 
// use OAuth2\Storage\Pdo;
// use OAuth2\GrantType\UserCredentials;

class OauthHandler {

    public $storage;

    public function __construct() {
        require_once APPPATH . '/libraries/OAuth2/Autoloader.php';
        OAuth2\Autoloader::register();
            
    }

    public function getStorage() {
        $username = 'u694807547_lmsproduser';
        $password ='Ramdeo321#@!';
       
        $host = '127.0.0.1';

        $db   = 'u694807547_lmsprod';
 
        $charset = 'utf8mb4';

        $dsn = "mysql:host=$host;dbname=$db;charset=$charset";

        $this->storage = new OAuth2\Storage\Pdo([
            'dsn' => $dsn,
            'username' => $username,
            'password' => $password
        ]);  
        return $this->storage;
    }
}

