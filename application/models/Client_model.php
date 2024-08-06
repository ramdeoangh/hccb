<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Client_model extends CI_Model {

    public function __construct() {
        parent::__construct();
    }

    public function create_client($client_id, $client_secret, $redirect_uri,$client_name) {
        $data = [
            'client_id' => $client_id,
            'client_secret' => $client_secret,
            'redirect_uri' => $redirect_uri,
            'grant_types' => 'client_credentials refresh_token',  //  client_credentials refresh_token
            'scope' => NULL,
            'user_id' => NULL,
            'client_name'=>$client_name,
            'date_added'=> strtotime(date("Y-m-d H:i:s"))
        ];

        return $this->db->insert('oauth_clients', $data);
    }

    public function get_client($client_id) {
        $query = $this->db->get_where('oauth_clients', ['client_id' => $client_id]);
        return $query->row_array();
    }
}
