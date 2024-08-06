<?php
defined('BASEPATH') or exit('No direct script access allowed');

// require_once('oauth2-server-php/src/OAuth2/Autoloader.php');
// OAuth2\Autoloader::register();

use OAuth2\Request as OAuth2Request;
use OAuth2\Response as OAuth2Response;


class Oauth_model extends CI_Model
{

    private $server;
    private $storages;

   
    function __construct()
	{
		parent::__construct();


        require_once APPPATH . '/libraries/OAuth2/Autoloader.php';
        OAuth2\Autoloader::register();


        $username = 'u694807547_lmsproduser';
        $password ='Ramdeo321#@!';       
        $host = '127.0.0.1';
        $db   = 'u694807547_lmsprod'; 
        $charset = 'utf8';

        $dsn = "mysql:host=$host;dbname=$db;charset=$charset";

        $this->storages = new OAuth2\Storage\Pdo([
            'dsn' => $dsn,
            'username' => $username,
            'password' => $password
        ]);  
       // $this->load->library('OauthHandler');
		/*cache control*/
		$this->output->set_header('Cache-Control: no-store, no-cache, must-revalidate, post-check=0, pre-check=0');
		$this->output->set_header('Pragma: no-cache');


	}

    public function getServer() {
        $this->server = new \OAuth2\Server($this->storages, ['always_issue_new_refresh_token' => true]);

        //$this->server = new \OAuth2\Server($this->storages, ['always_issue_new_refresh_token' => true]);
       // $this->server->addGrantType(new OAuth2\GrantType\UserCredentials($this->storages));
        $this->server->addGrantType(new OAuth2\GrantType\ClientCredentials($this->storages));
       // $this->server->addGrantType(new OAuth2\GrantType\AuthorizationCode($this->storages));
        $this->server->addGrantType(new OAuth2\GrantType\RefreshToken($this->storages)); 
        return $this->server;
    }

    public function validateAccessToken() {
        $request = OAuth2Request::createFromGlobals();
        $response = new OAuth2Response();
        
        if (!$this->server->verifyResourceRequest($request, $response)) {
            return false;           
        }
        return true;
    }

    public function getValue() {
         
        return "from oauth model";
    }
}
