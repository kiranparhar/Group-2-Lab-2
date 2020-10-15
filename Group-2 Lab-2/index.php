<?php

//Alternative way for the project, is to split code up for better reuse and more MVC style. To create classes, FormEntry and FormEntryRepo to handle the different parts
//FormEntryRepo could have methods such as store, fetch and prepareAndBind to handle the sql queries etc.


define( 'DB_HOST', 'localhost' );
define( 'DB_USERNAME', 'root' );
define( 'DB_PASSWORD', '' );
define( 'DB_NAME', 'lab2 Group-2' );
define( 'DB_PORT', '3306' );
/* Attempt MySQL server connection. Assuming, running MySQL
server with default setting (user 'root' with no password) */
    $conn = mysqli_connect(DB_HOST, DB_USERNAME, DB_PASSWORD, DB_NAME);
 
    // Check connection
    if(!$conn){
     die("ERROR: Could not connect. " . mysqli_connect_error());
    }

     

   ?>