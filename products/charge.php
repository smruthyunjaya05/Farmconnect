<?php 
if(!isset($_SERVER['HTTP_REFERER'])){
    //redirect tem to your desired location
    header('location: http://localhost:8080/farmconnect/farmconnect/index.php');
    exit;
}
?>
<?php require "../includes/header.php"; ?>
<?php
if(!isset($_SESSION['username'])){


  echo "<script> window.location.href='".APPURL."'; </script>";
}


?>

        <div class="banner">
            <div class="jumbotron jumbotron-bg text-center rounded-0" style="background-image: url('<?php echo APPURL ; ?>/assets/img/bg-header.jpg');">
                <div class="container">
                    <h1 class="pt-5">
                      Pay with PayPal Page
                        
                    </h1>
                    <p class="lead">
                        Save time and leave the groceries to us.
                    </p>
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
        </div>

    <div class="container">
      <!-- Replace "test" with your own sandbox Business account app client ID -->
      <script src="https://www.paypal.com/sdk/js?client-id=Ab1NIxuve-jrR6dIDdaF1dQTveFd9QF8zBk5KG9xru07ZaqKZbeIfcbi5_19S6Ppta4EXY93G8ahefWi&currency=USD"></script>

      <!-- Set up a container element for the button -->
      <div class="d-flex justify-content-center">
        <div id="paypal-button-container"></div>
      </div>

      <script>
        paypal.Buttons({
          // Sets up the transaction when a payment button is clicked
          createOrder: (data, actions) => {
            return actions.order.create({
              purchase_units: [{
                amount: {
                  value: '<?php echo $_SESSION['total_price']; ?>', // Can also reference a variable or function
                  currency_code: 'USD' // Ensure this is correctly placed
                }
              }]
            });
          },
          // Finalize the transaction after payer approval
          onApprove: (data, actions) => {
            return actions.order.capture().then(function(orderData) {
              // Successful capture! For demo purposes:
              //console.log('Capture result', orderData, JSON.stringify(orderData, null, 2));
              //const transaction = orderData.purchase_units[0].payments.captures[0];
              //alert(`Transaction ${transaction.status}: ${transaction.id}\n\nSee console for all available details`);

              // Redirect to a success page
              window.location.href='success.php';
            });
          },
          onError: (err) => {
            console.error('PayPal Buttons Error:', err);
            alert('An error occurred with the PayPal transaction. Please check the console for details.');
          }
        }).render('#paypal-button-container');
      </script>

                </div>
            </div>
        </div>



        
    </div>
    <?php require "../includes/footer.php"; ?>