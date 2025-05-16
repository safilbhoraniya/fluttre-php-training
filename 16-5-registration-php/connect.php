<?php
    define('HOST','localhost');
    define('USER','safi');
    define('DB','first_batch');
    define('PASS','1234');
    
    $con=mysqli_connect(HOST,USER,PASS,DB) or die('unable to connect');
?>