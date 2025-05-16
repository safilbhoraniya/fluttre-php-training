<?php
    include('connect.php');

    $mobile=$_REQUEST["mobile"];
    $password=$_REQUEST["password"];
   

    $select="select * from register where mobile='$mobile' and password='$password'";
    $result=mysqli_query($con,$select);

    $num=mysqli_num_rows($result);

    if($num>0)
    {
        $fetch=mysqli_fetch_object($result);
        echo json_encode(['code'=>200]);
    }
    else
    {
        echo "100";
    }
?>