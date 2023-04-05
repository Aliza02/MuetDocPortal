<?php
$servername="localhost";
$username="root";
$password="";
$databasename="muetdoc";


$conn=mysqli_connect($servername,$username,$password,$databasename);

session_start(); // Must be called before accessing any session data

$_SESSION['time-stamp'] = isset($_SESSION['time-stamp']) ? $_SESSION['time-stamp'] : time();
$_SESSION['refresh'] = isset($_SESSION['refresh']) ? $_SESSION['refresh'] : true;

header("refresh:10");

if(!$conn)
{
	die("Connection Failed:".mysqli_connect_error());

}

if(isset($_POST['save']))
{
	$first_name=$_POST['First_Name'];
	$father_name=$_POST['Father_Name'];
	$roll_no=$_POST['Roll_no'];
	$email=$_POST['Email'];
	$phone=$_POST['Phone'];
	$batch=$_POST['Batch'];
	$programm=$_POST['program'];
	$paymentType=$_POST['PaymentType'];
	$dept=$_POST['Department'];
	$challan=$_POST['pay'];
	$documentt=$_POST['document'];

	$sql_query="INSERT INTO std VALUES('$first_name','$father_name','$roll_no','$email','$phone','$batch','$dept','$programm','$documentt','$challan','$paymentType')";
	if(mysqli_query($conn,$sql_query))
	{
		
		
		// echo '<a href="last.html"><input type="submit" value="PDF Download" style="margin-left:500px; background-color:#ff7236; border:none; width:500px; height:50px; font-size:20px; color:white"></a>';
		// header('location:application.html');
		

	}
	else
	{

		echo "Error:" . $sql."" . mysqli_error($conn);

	}
	
}
?>
<html>
    
<head>        
        
    <!-- Meta -->
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1">
    
    
    <title>MUET Document Portal</title>
  
    
    <!-- Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i%7CLato:100,100i,300,300i,400,400i,700,700i,900,900i" rel="stylesheet" />
    <link href="css/font-awesome.min.css" rel="stylesheet" type="text/css" />
    
    <!-- Mobile Menu -->
    <link href="css/mmenu.css" rel="stylesheet" type="text/css" />
    <link href="css/mmenu.positioning.css" rel="stylesheet" type="text/css" />
    
    <!-- Stylesheet -->
    <link href="style.css" rel="stylesheet" type="text/css" />
    <style>
        #std-data{
            width:90%;
            margin-top: 1%;
            margin-left: auto;
            margin-right: auto;
            padding: 10px;
            border-radius: 10px;
            background-color: beige;
        }
        #std-data tr td{
            text-align:center;
        }
        .app-heading{
            font-size: 40px;
            margin-top:2%;
            text-align: center;
            color:black;
        }
        .container-fluid{
            padding:4%;
        }
       
    </style>
    
</head>
<div>
	<?php
	$query="select * from std";
    
	if(mysqli_query($conn,$query) && (time() - $_SESSION['time-stamp'] < 15)){
		?>
 <header id="header-v1" class="navbar-wrapper">
            <div class="container">
                <div class="row">
                    <nav class="navbar navbar-default">
                        <div class="row">
                            <div class="col-md-3">
                                <div class="navbar-header">
                                    <div class="navbar-brand">
                                        <h1>
                                            <a href="index.html">MUET Document Portal
                                                
                                            </a>
                                        </h1>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-9">
                                <!-- Header Topbar -->
                                <div class="header-topbar hidden-sm hidden-xs">
                                    <div class="row">
                                        <div class="col-sm-6">
                                            <div class="topbar-info">
                                                <a href="tel: +92 (22) 2772250-73"><i class="fa fa-phone"></i>+92 (22) 2772250-73</a>
                                              <br>  
                                                <a href="mailto: registrar@admin.muet.edu.pk "><i class="fa fa-envelope"></i> registrar@admin.muet.edu.pk </a>
                                            </div>
                                        </div>
                                        
                                    </div>
                                </div>
                                <div class="navbar-collapse hidden-sm hidden-xs">
                                    <ul class="nav navbar-nav">
                                        <li>
                                            <a  href="index.html">Home</a>
                                            
                                        </li>
                                        
                                        <li><a href="about.html">About US</a></li>
                                        <li><a href="contact.html">Contact</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                         <div class="mobile-menu hidden-lg hidden-md">
                            <a href="#mobile-menu"><i class="fa fa-navicon"></i></a>
                            <div id="mobile-menu">
                                <ul>
                                    <li class="mobile-title">
                                        <h4>Navigation</h4>
                                        <a href="#" class="close"></a>
                                    </li>
                                    <li>
                                        <a href="index.html">Home</a>
                                        
                                    </li>
                                    
                                   
                                    
                                    <li><a href="about.html">About US</a></li>
                                    <li><a href="contact.html">Contact</a></li>
                                </ul>
                            </div>
                        </div>
                    </nav>
                </div>
            </div>
        </header>
        
        <div  id="home-header-carousel">
                
                
        <div class="carousel">
            <div class="item ">
                <figure>
                    <img id="category-header" alt="Home " src="images/istockphoto-1316404524-170667a.jpg" />
                </figure>
                
            </div>
            
            
        </div>

        <div class="container-fluid bg-warning">
            <h2 class="app-heading">Dashboard</h2>
        <table id="std-data">
            <tr>
                <td>First Name</td>
                <td>Last Name</td>
                <td>Roll no</td>
                <td>Email</td>
                <td>Phone</td>
                <td>Document</td>
                <td>Status</td>
            </tr>
		<?php
		$q = "select * from std where rollNo=02";
       $query = mysqli_query($conn,$q);
       $x = 0;
       while($res = mysqli_fetch_array($query)){
       $x = $x + 1;
	   ?>
	   
		<tr>
		<td ><?php echo $res['firstName'] ;?></td>
		<td ><?php echo $res['lastName'] ;?></td>
		<td ><?php echo $res['rollNo'] ;?></td>
		<td  ><?php echo $res['email'] ;?></td>
		<td ><?php echo $res['phone'] ;?></td>
		<td ><?php echo $res['document'] ;?></td>
        <td> <a href="certf.pdf"> <button class = "btn btn-success"><?php echo (time() - $_SESSION['time-stamp'] < 10)? "Pending":"Download"?>  </button> </a></td>
           
		</tr>
        
	   
	 <?php  
	}
	?>
	<?php 
    
}
            // unset ($_SESSION['time-stamp']);
?>

    </table>
        </div>
        
        <footer class="site-footer">
            <div class="container">
                <div id="footer-widgets">
                    <div class="row">
                        <div  id="widget1" class="col-md-4 col-sm-6 widget-container" >
                            <div id="text-2" class="widget widget_text">
                                <h3 class="footer-widget-title">About Doc Portal.</h3>
                                <span class="underline left"></span>
                                <div class="textwidget">
                                   Online portal is the backbone of any University/BOARD/INSTITUTE and also plays a vital role in the functioning of a University.This platform ensure that any Certificate that goes out of this university is genuine and is being issued after completion and fulfillment of all the legal requirements for this purpose.

All work and processes are being done according to the Act, Statutes, Rules, and Regulations
                                </div>
                                <address>
                                    <div class="info">
                                        <i class="fa fa-location-arrow"></i>
                                        <span>Mehran University of Engineering & Technology
MUET , Jamshoro
Sindh Pakistan</span>
                                    </div>
                                    <div class="info">
                                        <i class="fa fa-envelope"></i>
                                        <span><a href="mailto:controller.exam@admin.muet.edu.pk">controller.exam@admin.muet.edu.pk

</a></span>
                                    </div>
                                    <div class="info">
                                        <i class="fa fa-phone"></i>
                                        <span><a href="tel:(+92-22) 2771631">(+92-22) 2771631</a></span>
                                    </div>
                                </address>
                            </div>
                        </div>
                        <div id="widget2"class="col-md-2 col-sm-6 widget-container">
                            <div id="nav_menu-2" class="widget widget_nav_menu">
                                <h3 class="footer-widget-title">Quick Links</h3>
                                <span class="underline left"></span>
                                <div class="menu-quick-links-container">
                                    <ul id="menu-quick-links" class="menu">
                                        <li><a href="marksheet.html">Marksheet</a></li>
                                        <li><a href="pass-cert.html">Pass Certificate</a></li>
                                        <li><a href="degree.html">Degree</a></li>
                                        <li><a href="dup-degree.html">Duplicate Degree</a></li>
                                        <li><a href="transcript.html">Transcript</a></li>
                                        <li><a href="dup-transcript.html">Duplicate Transcript</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="clearfix hidden-lg hidden-md hidden-xs tablet-margin-bottom"></div>
                        <div class="col-md-2 col-sm-6 widget-container">
                            <div id="text-4" class="widget widget_text">
                                <h3 class="footer-widget-title">Timing</h3>
                                <span class="underline left"></span>
                                <div class="timming-text-widget">
                                    <time>Mon - fri: 8 am - 3 pm</time>
                                    
                                </div>
                            </div>			
                        </div>
                     
                    </div>
                </div>                
            </div>
            
        </footer>
    </div>

</html>