<?php
require APPPATH . '/libraries/TokenHandler.php';
//include Rest Controller library
require APPPATH . 'libraries/REST_Controller.php';

class Hccb extends REST_Controller
{

  protected $token;
  protected $server;
  public function __construct()
  {
    parent::__construct();

    date_default_timezone_set(get_settings('timezone'));

    $this->load->library('session');
    $this->load->model('api_instructor_model');
    $this->server = $this->oauth_model->getServer();

    // creating object of TokenHandler class at first
    header('Content-Type: application/json');
  }


  public function subscribe_NM_course_post()
  {
    $logMessage = array('data' => array("user_id" => null, "course_id" => null), 'status' => false, 'message' => 'Unauthorize request');
    $finalResponse=array('subscription_registration_status'=>false,'subscription_reference_id'=>null);
    $userdata = array();

    try {
      if (!$this->oauth_model->validateAccessToken()) {
        $this->set_response($finalResponse, REST_Controller::HTTP_UNAUTHORIZED);
        return;
      }


      $inputData = json_decode(file_get_contents('php://input'), true);
      $email = $inputData['email'];
      $course_id = $inputData['course_id'];

      if (!isset($course_id) || empty($course_id)) {
        $finalResponse['subscription_reference_id'] = null;
        $finalResponse['subscription_registration_status'] = false;
        $this->set_response($finalResponse, REST_Controller::HTTP_UNAUTHORIZED);
        return;
      }
      if (!isset($email) || empty($email)) {
        $finalResponse['subscription_reference_id'] = null;
        $finalResponse['subscription_registration_status'] = false;
        $this->set_response($finalResponse, REST_Controller::HTTP_UNAUTHORIZED);
        return;
      }
      if (!isset($inputData['student_name']) || empty($inputData['student_name'])) {
        $finalResponse['subscription_reference_id'] = null;
        $finalResponse['subscription_registration_status'] = false;
        $this->set_response($finalResponse, REST_Controller::HTTP_UNAUTHORIZED);
        return;
      }
      // if (!isset($inputData['college_code']) || empty($inputData['college_code'])) {
      //   $finalResponse['subscription_reference_id'] = null;
      //   $finalResponse['subscription_registration_status'] = false;
      //   $this->set_response($finalResponse, REST_Controller::HTTP_UNAUTHORIZED);
      //   return;
      // }
      // if (!isset($inputData['college_name']) || empty($inputData['college_name'])) {
      //   $finalResponse['subscription_reference_id'] = null;
      //   $finalResponse['subscription_registration_status'] = false;
      //   $this->set_response($finalResponse, REST_Controller::HTTP_UNAUTHORIZED);
      //   return;
      // }
      // if (!isset($inputData['branch_name']) || empty($inputData['branch_name'])) {
      //   $finalResponse['subscription_reference_id'] = null;
      //   $finalResponse['subscription_registration_status'] = false;
      //   $this->set_response($finalResponse, REST_Controller::HTTP_UNAUTHORIZED);
      //   return;
      // }
      // if (!isset($inputData['district']) || empty($inputData['district'])) {
      //   $finalResponse['subscription_reference_id'] = null;
      //   $finalResponse['subscription_registration_status'] = false;
      //   $this->set_response($finalResponse, REST_Controller::HTTP_UNAUTHORIZED);
      //   return;
      // }
      // if (!isset($inputData['university']) || empty($inputData['university'])) {
      //   $finalResponse['subscription_reference_id'] = null;
      //   $finalResponse['subscription_registration_status'] = false;
      //   $this->set_response($finalResponse, REST_Controller::HTTP_UNAUTHORIZED);
      //   return;
      // }

      $validity = $this->user_model->check_duplication('on_create', $email);
      if ($validity === 'unverified_user' || $validity == true) {
        if ($validity === true) {
          $response = $this->api_model->hccbsignup_post();

          if ($response['status'] == 403) {
            $finalResponse['subscription_reference_id'] = null;
            $finalResponse['subscription_registration_status'] = false;
            return $this->set_response($finalResponse, REST_Controller::HTTP_FORBIDDEN);
          }
        }
      }

      

      $query = $this->db->get_where('users', array('email' => $email, 'status' => 1));

      if ($query->num_rows() > 0) {
        $row = $query->row_array();
        $userdata['user_id'] = $row['id'];
        $userdata['role'] = strtolower(get_user_role('user_role', $row['id']));
        $userdata['portal_user_id'] =  $row['portal_user_id'];;
      }

      $logged_in_user_details['user_id'] =  $userdata['user_id'];

      $course_details = $this->crud_model->get_course_by_id($course_id)->row_array();
      if ($course_details['is_free_course'] == 1) {
        if ($course_details['expiry_period'] > 0) {
          $days = $course_details['expiry_period'] * 30;
          $data['expiry_date'] = strtotime("+" . $days . " days");
        } else {
          $data['expiry_date'] = null;
        }

        $data['gifted_by'] = 0;


        if ($this->db->get_where('enrol', ['course_id' => $course_id, 'user_id' => $logged_in_user_details['user_id']])->num_rows() > 0) {
          $data['last_modified'] = strtotime(date('D, d-M-Y'));
          $this->db->where('user_id', $logged_in_user_details['user_id']);
          $this->db->where('course_id', $course_id);
          $this->db->update('enrol', $data);
          // $finalResponse['message'] = 'already subscribed';
          // $finalResponse['status'] = true;
          // $finalResponse['data']["user_id"] = $logged_in_user_details['user_id'];
          // $finalResponse['data']["course_id"] = $course_id;
          $finalResponse['subscription_reference_id'] = null;
          $finalResponse['subscription_registration_status'] = false;
        } else {
          $data['course_id'] = $course_id;
          $data['user_id']   = $logged_in_user_details['user_id'];
          $data['date_added'] = strtotime(date('D, d-M-Y'));          
          $encryptedValue=$this->user_model->encrypt_decrypt('encrypt', $logged_in_user_details['user_id'].'-'.$course_id.'-'.strtotime(date('D, d-M-Y')).'-'.$userdata['portal_user_id']);
          $data['token']=$encryptedValue;
          $this->db->insert('enrol', $data);
          // $finalResponse['message'] = 'success';
          // $finalResponse['status'] = true;
          // $finalResponse['data']["user_id"] = $logged_in_user_details['user_id'];
          // $finalResponse['data']["course_id"] = $course_id;
          $finalResponse['subscription_reference_id'] = $encryptedValue;
          $finalResponse['subscription_registration_status'] = true;
        }
      } else {
        $finalResponse['subscription_reference_id'] = null;
        $finalResponse['subscription_registration_status'] = false;
      }
    } catch (Exception $th) {
      $finalResponse['subscription_reference_id'] = null;
      $finalResponse['subscription_registration_status'] = $th->getMessage();
     
     
      logger(__METHOD__,null,$th->getMessage());
      return $this->set_response($finalResponse, REST_Controller::HTTP_FORBIDDEN);
    }
    logger(__METHOD__,$inputData,$finalResponse);
    return $this->set_response($finalResponse, REST_Controller::HTTP_OK);
  }

  
  public function course_NM_by_id_post()
  {
    $responseMessage = array('access_status' => false, 'access_url' => null);
    $userdata = array();

    try {
      $inputData = json_decode(file_get_contents('php://input'), true);
      $portal_user_id = $inputData['user_id'];
      $course_id = $inputData['course_id'];

      if (!$this->oauth_model->validateAccessToken()) {
        $this->set_response($responseMessage, REST_Controller::HTTP_UNAUTHORIZED);
        return;
      }

      if (!isset($portal_user_id) || empty($portal_user_id)) {
        $responseMessage['access_url'] = null;
        $responseMessage['access_status'] = false;
        $this->set_response($responseMessage, REST_Controller::HTTP_FORBIDDEN);
        return;
      }
      if (!isset($course_id) || empty($course_id)) {
        $responseMessage['access_url'] = null;
        $responseMessage['access_status'] = false;
        $this->set_response($responseMessage, REST_Controller::HTTP_FORBIDDEN);
        return;
      }

      $query = $this->db->get_where('users', array('portal_user_id' => $portal_user_id, 'status' => 1));
     
      if ($query->num_rows() == 0) {
        $responseMessage['access_url'] = null;
        $responseMessage['access_status'] = false;
        $this->set_response($responseMessage, REST_Controller::HTTP_FORBIDDEN);
        return;
      }
      
      $row = $query->row_array();
      $user_id = $row['id']; 

      if (!isset($user_id) || empty($user_id)) {
        $responseMessage['access_url'] = null;
        $responseMessage['access_status'] = false;
        $this->set_response($responseMessage, REST_Controller::HTTP_FORBIDDEN);
        return;
      }

      $query = $this->db->get_where('enrol', ['course_id' => $course_id, 'user_id' =>  $user_id]);
      $row = $query->row_array();      

      if ($query->num_rows() == 0) {
        $responseMessage['access_url'] = null;
        $responseMessage['access_status'] = false;
        $this->set_response($responseMessage, REST_Controller::HTTP_FORBIDDEN);
        return;
      }
      if (empty($row['token']) || is_null($row['token'])) {
        $responseMessage['access_url'] = null;
        $responseMessage['access_status'] = false;
        $this->set_response($responseMessage, REST_Controller::HTTP_FORBIDDEN);
        return;
      }             
      
      $decryptedValue=explode("-",$this->user_model->encrypt_decrypt('decrypt', $row['token']));     

      if(array_slice($decryptedValue, 0, 1)[0]!=$user_id && array_slice($decryptedValue, 1, 1)[1]!=$course_id && array_slice($decryptedValue, 3, 1)[1]!=$portal_user_id){
        $responseMessage['access_url'] = null;
        $responseMessage['access_status'] = false;
        $this->set_response($responseMessage, REST_Controller::HTTP_FORBIDDEN);
        return;
      }

      $course = $this->api_model->hccb_course_object_by_id_get($user_id, $course_id,$row['token']);

      $responseMessage['access_url'] = $course['access_url'];
      $responseMessage['access_status'] = true; 

     
    } catch (Exception $th) {
      logger(__METHOD__,$inputData,$th->getMessage());
      $responseMessage['access_url'] = null;
      $responseMessage['access_status'] = false;
    }

    logger(__METHOD__,$inputData,$responseMessage);
    $this->set_response($responseMessage, REST_Controller::HTTP_OK);
  }

  public function course_progress_post()
  {
    $responseMessage = array('message' => 'Unauthorize request');

    try {
      $inputData = json_decode(file_get_contents('php://input'), true);
      $portal_user_id = $inputData['user_id'];
      $course_id = $inputData['course_id'];
      $user_id = $inputData['user_id'];

      if (!$this->oauth_model->validateAccessToken()) {
        $this->set_response($responseMessage, REST_Controller::HTTP_UNAUTHORIZED);
        return;
      }

      if (!isset($user_id) || empty($user_id)) {
        $responseMessage['message'] = 'invalid user id';      
        $this->set_response($responseMessage, REST_Controller::HTTP_FORBIDDEN);
        return;
      }
      if (!isset($course_id) || empty($course_id)) {
        $responseMessage['message'] = 'invalid course id';  
        $this->set_response($responseMessage, REST_Controller::HTTP_FORBIDDEN);
        return;
      }

      $query = $this->db->get_where('users', array('portal_user_id' => $portal_user_id, 'status' => 1));

      if ($query->num_rows() > 0) {
        $row = $query->row_array();
        $user_id= $row['id'];
      }
      $res=$this->api_model->hccb_update_watch_history_with_duration_post($user_id, $course_id,$portal_user_id);   
      $responseMessage=$res;
    } catch (Exception $th) {     
      $responseMessage['message'] = $th->getMessage();     
    }
    $this->set_response($responseMessage, REST_Controller::HTTP_OK);
  }
 
}
