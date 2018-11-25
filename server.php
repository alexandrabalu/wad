<?php
session_start();

// initializing variables
$first_name = "";
$last_name ="";
$email    = "";
$message ="";
$errors = array();

// connect to the database
$db = mysqli_connect('localhost', 'root', '1s7b9r0m', 'wad');

// REGISTER USER
if (isset($_POST['mess_btn'])) {
    // receive all input values from the form
    $first_name = mysqli_real_escape_string($db, $_POST['first_name']);
    $last_name = mysqli_real_escape_string($db, $_POST['last_name']);
    $email = mysqli_real_escape_string($db, $_POST['email']);
    $message = mysqli_real_escape_string($db, $_POST['message']);


    // form validation: ensure that the form is correctly filled ...
    // by adding (array_push()) corresponding error unto $errors array
    if (empty($first_name)) { array_push($errors, "First name is required"); }
    if (empty($last_name)) { array_push($errors, "Last name is required"); }
    if (empty($email)) { array_push($errors, "Email is required"); }
    if (empty($message)) { array_push($errors, "Message is required"); }




    // Finally, sent message if there are no errors in the form
    if (count($errors) == 0) {


        $query = "INSERT INTO contact (first_name,last_name email, message) 
  			  VALUES('$first_name','$last_name' '$email', '$message')";
        mysqli_query($db, $query);
        $_SESSION['success'] = "You have sent the message";
        header('location: contact.php');
    }
}