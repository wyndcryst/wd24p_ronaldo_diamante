<?php

include_once ("config.php");
include_once ("constants.php");

$path = "";
$hasError = false;
foreach ($_FILES as $key) 
{
    $name = $key["name"];
    $path = "../images/$name";

    @move_uploaded_file($key["tmp_name"], $path);
}

if ($hasError)
{
    $response["code"] = SERVER_ERROR;
    $response["description"] = "Max File Reached";
    echo json_encode($response);
    return;
}

$id = $_POST['data'];

$sqlCommand = "
    UPDATE users
    SET `profile_pic` = '$path'
    WHERE id = $id
    ";

$isInserted = $connection->query($sqlCommand);

$response = array();

if ($isInserted)
{
    $response["code"] = SUCCESS;
    $response["description"] = "Successfully updated profile picture.";
} else
{
    $response["code"] = SERVER_ERROR;
    $response["description"] = "Error while updating profile picture.";
}

echo json_encode($response);

?>