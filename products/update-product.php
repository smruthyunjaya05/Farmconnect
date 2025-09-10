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
if(isset($_POST['update'])) {
    $id = $_POST['id'];
    $pro_qty = $_POST['pro_qty'];
    $subtotal = $_POST['subtotal'];

    $update = $conn->prepare("UPDATE cart SET pro_qty = :pro_qty, pro_subtotal = :subtotal WHERE id = :id");
    $update->bindParam(':pro_qty', $pro_qty, PDO::PARAM_INT);
    $update->bindParam(':subtotal', $subtotal, PDO::PARAM_STR);
    $update->bindParam(':id', $id, PDO::PARAM_INT);

    if ($update->execute()) {
        echo "Update successful";
    } else {
        echo "Update failed";
    }
}
?>

<?php require "../includes/footer.php"; ?>