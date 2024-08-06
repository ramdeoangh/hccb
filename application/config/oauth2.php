<?php
defined('BASEPATH') OR exit('No direct script access allowed');

$config['oauth2'] = [
    'storage' => 'Pdo', // PDO storage
    'dsn' => 'mysql:dbname=your_database;host=localhost',
    'username' => 'your_db_username',
    'password' => 'your_db_password',
    'options' => [
        'client_table' => 'oauth_clients',
        'access_token_table' => 'oauth_access_tokens',
        'refresh_token_table' => 'oauth_refresh_tokens',
        'code_table' => 'oauth_authorization_codes',
        'user_table' => 'oauth_users',
        'jwt_table' => 'oauth_jwt',
        'scope_table' => 'oauth_scopes',
        'public_key_table' => 'oauth_public_keys',
    ],
];
