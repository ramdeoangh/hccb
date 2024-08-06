<?php
defined('BASEPATH') or exit('No direct script access allowed');

require APPPATH . '/libraries/TokenHandler.php';
//include Rest Controller library
require APPPATH . 'libraries/REST_Controller.php';
//require APPPATH .'libraries/OauthHandler.php';

use OAuth2\Request as OAuth2Request;
use OAuth2\Response as OAuth2Response;

class Oauth extends REST_Controller
{
    private $server;
    private $client_id;
    private $secrets;
    private $grant_type;

    public function __construct()
    {
        parent::__construct();
        
        $this->client_id="lfPzBhDUvMYpyIrdHuZaW7JsOqoLjRF4";
        $this->secrets="RL4QUmi1zYDnKxkCFqpO2TvM0jAEgHlw";
        $this->grant_type="client_credentials";

        date_default_timezone_set(get_settings('timezone'));

        $this->load->database();
        $this->load->library('session');       
        $this->server = $this->oauth_model->getServer();

        header('Content-Type: application/json');
    }

    public function create_client_post()
    {
        $responseMessage = array('data' => null, 'status' => false, 'message' => 'fail');

        try {
            $this->load->helper('string');
            $client_id = random_string('alnum', 32);
            $client_secret = random_string('alnum', 32);
            $redirect_uri = "";
            $inputData = json_decode(file_get_contents('php://input'), true);
            $client_name =  $inputData['client_name'];

            if (empty($client_name)) {
                $responseMessage['data'] = null;
                $responseMessage['message'] = 'client name is required';
                $responseMessage['status'] = false;
                $this->output->set_content_type('application/json')->set_output(json_encode($responseMessage));
                return;
            }

            $res = $this->client_model->create_client($client_id, $client_secret, $redirect_uri, $client_name);
            if($res){
                $response = [
                    'client_id' => $client_id,
                    'client_secret' => $client_secret,
                    'client_name' => $client_name
                ];
    
                $responseMessage['data'] = $response;
                $responseMessage['message'] = "success";
                $responseMessage['status'] = true;
            }
           
        } catch (Exception $e) {
            $responseMessage['data'] = null;
            $responseMessage['message'] = $e->getMessage();
            $responseMessage['status'] = false;
        }

        $this->output->set_content_type('application/json')->set_output(json_encode($responseMessage));
    }
    public function token_post()
    {
        $request = OAuth2Request::createFromGlobals();
        $response = new OAuth2Response();
        $this->server->handleTokenRequest($request, $response)->send();
    }

    public function nm_token_post()
    {        
        $responseMessage = array('access_key' => null, 'refresh_key' => null);        
        $inputData = json_decode(file_get_contents('php://input'), true);
        $requestInput['client_Id'] = $inputData["client_key"];
        $requestInput['client_secret'] = $inputData["client_secret"];
        $requestInput['grant_type'] = $this->grant_type;
        $_POST = $requestInput;  
        
        $request = OAuth2Request::createFromGlobals();

        $request->headers['PHP_AUTH_USER']= $requestInput['client_Id'];
        $request->headers['PHP_AUTH_PW']= $requestInput['client_secret'];
        $request->request['grant_type']=$this->grant_type;

        $response = new OAuth2Response();        
        $this->server->handleTokenRequest($request, $response);
        $responseMessage["access_key"]=$response->getParameter("access_token");
        $responseMessage["refresh_key"]=$response->getParameter("refresh_token");
 
        ///*******Logger */
        logger(__METHOD__,$requestInput,$responseMessage);
        ///*******Logger */

       return $this->set_response($responseMessage, REST_Controller::HTTP_OK);
    }

    public function nm_token_refresh_post()
    {        
        $responseMessage = array('access_key' => null, 'refresh_key' => null);        
        $inputData = json_decode(file_get_contents('php://input'), true);
    
        $requestInput['client_Id'] =$this->client_id;
        $requestInput['client_secret'] = $this->secrets;
        $requestInput['refresh_token'] = $inputData["refresh"];
        $requestInput['grant_type'] = $this->grant_type; 

        $request = OAuth2Request::createFromGlobals();

        $request->headers['PHP_AUTH_USER']=$this->client_id;
        $request->headers['PHP_AUTH_PW']=$this->secrets;
        $request->request['grant_type']=$this->grant_type;
        $request->request['refresh_token']=$requestInput['refresh_token'];
 

        $response = new OAuth2Response();        
        $this->server->handleTokenRequest($request, $response);
        $responseMessage["access_key"]=$response->getParameter("access_token");
        $responseMessage["refresh_key"]=$response->getParameter("refresh_token");
       
         ///*******Logger */ 
         logger(__METHOD__,$requestInput,$responseMessage);
         ///*******Logger */
         
       return $this->set_response($responseMessage, REST_Controller::HTTP_OK);
    }

    public function authorize_get()
    {
        $request = OAuth2Request::createFromGlobals();
        $response = new OAuth2Response();

        // Validate the authorize request
        if (!$this->server->validateAuthorizeRequest($request, $response)) {
            $response->send();
            die;
        }

        // Display an authorization form
        if (empty($_POST)) {
            exit('
            <form method="post">
              <label>Do You Authorize TestClient?</label><br />
              <input type="submit" name="authorized" value="yes">
              <input type="submit" name="authorized" value="no">
            </form>');
        }

        // Print the authorization code if the user authorized the client
        $is_authorized = ($_POST['authorized'] === 'yes');
        $user_id = 'some_user_id'; // You should replace this with the authenticated user's ID
        $this->server->handleAuthorizeRequest($request, $response, $is_authorized, $user_id);
        if ($is_authorized) {
            $code = substr($response->getHttpHeader('Location'), strpos($response->getHttpHeader('Location'), 'code=') + 5, 40);
            exit("SUCCESS! Authorization Code: $code");
        }
        $response->send();
    }   
}
