<html>

  <head>
    <title> customer Signup | Car Rentals </title>
  </head>
  <?php session_start(); ?>
  <link rel="shortcut icon" type="image/png" href="assets/img/P.png.png">
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato">
    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/fonts/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="assets/css/customerlogin.css">

    <link rel="stylesheet" href="assets/w3css/w3.css">
  <script type="text/javascript" src="assets/js/jquery.min.js"></script>
  <script type="text/javascript" src="assets/js/bootstrap.min.js"></script>

  <body>
    <!-- Navigation -->
    <nav class="navbar navbar-custom navbar-fixed-top" role="navigation" style="color: black">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-main-collapse">
                    <i class="fa fa-bars"></i>
                    </button>
                <a class="navbar-brand page-scroll" href="index.php">
                   Car Rentals </a>
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->

            <?php
                if(isset($_SESSION['login_client'])){
            ?> 
            <div class="collapse navbar-collapse navbar-right navbar-main-collapse">
                <ul class="nav navbar-nav">
                    <li>
                        <a href="index.php">Home</a>
                    </li>
                    <li>
                        <a href="#"><span class="glyphicon glyphicon-user"></span> Welcome <?php echo $_SESSION['login_client']; ?></a>
                    </li>
                    <li>
                    <ul class="nav navbar-nav navbar-right">
            <li><a href="#" class="dropdown-toggle active" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><span class="glyphicon glyphicon-user"></span> Control Panel <span class="caret"></span> </a>
                <ul class="dropdown-menu">
              <li> <a href="enterbicycle.php">Add Car</a></li>
              <li> <a href="enterrider.php"> Add Driver</a></li>
              <li> <a href="clientview.php">View</a></li>

            </ul>
            </li>
          </ul>
                    </li>
                    <li>
                        <a href="logout.php"><span class="glyphicon glyphicon-log-out"></span> Logout</a>
                    </li>
                </ul>
            </div>
            
            <?php
                }
                else if (isset($_SESSION['login_customer'])){
            ?>
            <div class="collapse navbar-collapse navbar-right navbar-main-collapse">
                <ul class="nav navbar-nav">
                    <li>
                        <a href="index.php">Home</a>
                    </li>
                    <li>
                        <a href="#"><span class="glyphicon glyphicon-user"></span> Welcome <?php echo $_SESSION['login_customer']; ?></a>
                    </li>
                    <li>
                        <a href="#">History</a>
                    </li>
                    <li>
                        <a href="logout.php"><span class="glyphicon glyphicon-log-out"></span> Logout</a>
                    </li>
                </ul>
            </div>

            <?php
            }
                else {
            ?>

            <div class="collapse navbar-collapse navbar-right navbar-main-collapse">
                <ul class="nav navbar-nav">
                    <li>
                        <a href="index.php">Home</a>
                    </li>
                    <li>
                        <a href="clientlogin.php">Employee</a>
                    </li>
                    <li>
                        <a href="customerlogin.php">Customer</a>
                    </li>
                    <li>
                        <a href="#"> FAQ </a>
                    </li>
                </ul>
            </div>
                <?php   }
                ?>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>

<?php

require 'connection.php';
$conn = Connect();

function GetImageExtension($imagetype) {
    if(empty($imagetype)) return false;
    
    switch($imagetype) {
        case 'assets/img/cars/bmp': return '.bmp';
        case 'assets/img/cars/gif': return '.gif';
        case 'assets/img/cars/jpeg': return '.jpg';
        case 'assets/img/cars/png': return '.png';
        default: return false;
    }
}

$b_name = $conn->real_escape_string($_POST['b_name']);
$b_idfino = $conn->real_escape_string($_POST['b_idfino']);
$tube_price_per_hour = $conn->real_escape_string($_POST['tube_price_per_hour']);
$tubeless_price_per_hour = $conn->real_escape_string($_POST['tubeless_price_per_hour']);
$tube_price_per_day = $conn->real_escape_string($_POST['tube_price_per_day']);
$tubeless_price_per_day = $conn->real_escape_string($_POST['tubeless_price_per_day']);
$bicycle_availability = "yes";

//$query = "INSERT into bicycle(b_name,b_idfino,ac_price,tubeless_price_per_hour,bicycle_availability) VALUES('" . $b_name . "','" . $b_idfino . "','" . $ac_price . "','" . $tubeless_price_per_hour . "','" . $bicycle_availability ."')";
//$success = $conn->query($query);


if (!empty($_FILES["uploadedimage"]["name"])) {
    $file_name=$_FILES["uploadedimage"]["name"];
    $temp_name=$_FILES["uploadedimage"]["tmp_name"];
    $imgtype=$_FILES["uploadedimage"]["type"];
    $ext= GetImageExtension($imgtype);
    $imagename=$_FILES["uploadedimage"]["name"];
    $target_path = "assets/img/cars/".$imagename;

    if(move_uploaded_file($temp_name, $target_path)) {
        //$query0="INSERT into bicycle (b_img) VALUES ('".$target_path."')";
      //  $query0 = "UPDATE bicycle SET b_img = '$target_path' WHERE ";
        //$success0 = $conn->query($query0);

        $query = "INSERT into bicycle(b_name,b_idfino,b_img,tube_price_per_hour,tubeless_price_per_hour,tube_price_per_day,tubeless_price_per_day,bicycle_availability) VALUES('" . $b_name . "','" . $b_idfino . "','".$target_path."','" . $tube_price_per_hour . "','" . $tubeless_price_per_hour . "','" . $tube_price_per_day . "','" . $tubeless_price_per_day . "','" . $bicycle_availability ."')";
        $success = $conn->query($query);

        
    } 

}


// Taking b_id from bicycle

$query1 = "SELECT b_id from bicycle where b_idfino = '$b_idfino'";

$result = mysqli_query($conn, $query1);
$rs = mysqli_fetch_array($result, MYSQLI_BOTH);
$b_id = $rs['b_id'];
 

$query2 = "INSERT into clientcars(b_id,client_username) values('" . $b_id ."','" . $_SESSION['login_client'] . "')";
$success2 = $conn->query($query2);

if (!$success){ ?>
    <div class="container">
	<div class="jumbotron" style="text-align: center;">
        Car with the same vehicle number already exists!
        <?php echo $conn->error; ?>
        <br><br>
        <a href="enterbicycle.php" class="btn btn-default"> Go Back </a>
</div>
<?php	
}
else {
    header("location: enterbicycle.php"); //Redirecting 
}

$conn->close();

?>

    </body>
    <footer class="site-footer">
        <div class="container">
            <hr>
            <div class="row">
                <div class="col-sm-6">
                    <h5>© <?php echo date("Y"); ?> Car Rentals</h5>
                </div>
            </div>
        </div>
    </footer>
</html>