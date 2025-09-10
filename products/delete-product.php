<?php 
if(!isset($_SERVER['HTTP_REFERER'])){
    //redirect tem to your desired location
    header('location: http://localhost:8080/farmconnect/farmconnect/index.php');
    exit;
}
?>
<?php require "../includes/header.php"; ?>
<?php require "../config/config.php"; ?>

<?php

if(!isset($_SESSION['username'])){


    echo "<script> window.location.href='".APPURL."'; </script>";
}
if(isset($_POST['delete'])) {
    $id = $_POST['id'];

    $delete = $conn->prepare("DELETE FROM cart WHERE id = :id");
    $delete->bindParam(':id', $id, PDO::PARAM_INT);

    if ($delete->execute()) {
        echo "Delete successful";
    } else {
        echo "Delete failed";
    }
}
?>

<?php require "../includes/footer.php"; ?>