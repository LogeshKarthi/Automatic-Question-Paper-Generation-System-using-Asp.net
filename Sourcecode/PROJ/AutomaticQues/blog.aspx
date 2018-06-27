<%@ Page Language="C#" AutoEventWireup="true" CodeFile="blog.aspx.cs" Inherits="preview_dotnet_templates_1_col_portfolio_blog" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>AutomaticQuestionGenerator</title>
    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <!-- SmartMenus jQuery Bootstrap Addon CSS -->
    <link href="css/jquery.smartmenus.bootstrap.css" rel="stylesheet">
    <link href="css/owl/owl.carousel.css" rel="stylesheet" type="text/css" />
    <link href="css/owl/owl.theme.css" rel="stylesheet" type="text/css" />
    <link href="css/owl/owl.transitions.css" rel="stylesheet" type="text/css" />
    <!-- Custom CSS -->
    <link href="css/1-col-portfolio.css" rel="stylesheet">
    <link href='https://fonts.googleapis.com/css?family=Ubuntu:300,400,700' rel='stylesheet'
        type='text/css'>
    <link href="http://fonts.googleapis.com/css?family=Open+Sans:300,400italic,700italic,400,700"
        rel="stylesheet" type="text/css" />
    <!-- Required plugin - Animate.css -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.4.0/animate.min.css">
    <link href="fonts/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
    <form id="form1" runat="server">
    <!-- Navbar fixed top -->
    <div class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span><span
                        class="icon-bar"></span><span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="#"><i class="fa fa-diamond"></i>Akshara</a>
            </div>
            <div class="navbar-collapse collapse">
                <!-- Left nav -->
                <ul class="nav navbar-nav navbar-right">
                    <li><a href="index.aspx">Home</a></li>
                    <li><a href="services.aspx">Services</a></li>
                    <li><a href="#">Portfolio</a></li>
                    <li class="dropdown active"><a href="blog.aspx" class="dropdown-toggle" data-toggle="dropdown"
                        role="button" aria-haspopup="true" aria-expanded="false" runat="server">Blog<span class="caret"></span></a>
                        <ul class="dropdown-menu" data-dropdown-in="fadeInUp" data-dropdown-out="fadeOutDown">
                            <li><a href="#">blog-1</a></li>
                            <li><a href="#">Another action</a></li>
                            <li><a href="#">Something else here</a></li>
                            <li><a href="#">Separated link</a></li>
                        </ul>
                    </li>
                    <li><a id="A1" href="contact.aspx" runat="server">Contact</a></li>
                    <li>
                        <!-- add search form -->
                        <div class="navbar-form" role="search">
                        <div class="input-group">
                            <asp:TextBox ID="txtsearch" runat="server" placeholder="Search this site" class="form-control"></asp:TextBox>
                            <span class="input-group-btn">
                                <asp:LinkButton runat="server" ID="lbsearch" ToolTip="Search" CssClass="btn btn-default"
                                    Text='<i class="glyphicon glyphicon-search"></i>' />
                            </span>
                        </div>
                        </div>
                    </li>
                </ul>
            </div>
        </div>
    </div>
    <div id="banner">
        <div class="container">
            <h1>
                100% Free Fully Responsive HTML5 Bootstrap Template.
                <br />
                Grab it now for free!
            </h1>
            <h3>
                This is a Fully Responsive and Modern App Landing Page Template.</h3>
        </div>
    </div>
    <div class="padding100" id="blog">
        <div class="container">
            <!-- Page Heading -->
            <div class="row">
                <div class="col-lg-12">
                    <h2 class="background double animated wow fadeInUp" data-wow-delay="0.2s">
                        <span><strong>B</strong>log</span></h2>
                    <!--  Heading Style - 1              
               <h1>Main Title</h1>
               <p class="subtitle fancy"><span>A fancy subtitle</span></p>
               -->
                    <!-- Heading Style - 2 -->
                    <!--  <h2 class="background">Blog</h2>-->
                    <!-- <h2 class="background"><span>Line-behind title</span></h2>
               <h2 class="background double"><span>Double-lined title</span></h2>
               <h2 class="no-background"><span>Line-behind title <b>(no bg)</b></span></h2>
               <h2 class="no-span">Line-behind title <b>(no span/no bg)</b></h2> -->
                </div>
            </div>
            <!-- /.row -->
            <div class="row">
                <div class="col-md-7">
                    <a href="#">
                        <img class="img-responsive animated wow fadeInUp" data-wow-delay="0.2s" src="img/700x300.jpg"
                            alt="">
                    </a>
                </div>
                <div class="col-md-5 animated wow fadeInRight" data-wow-delay="0.4s">
                    <h3>
                        <strong>Our Projects</strong></h3>
                    <h4>
                        NewBingo</h4>
                    <p>
                        Akshara is a library to buy Bootstrap themes and templates for your business need.
                        Want more Bootstrap themes & templates? Subscribe to our mailing list to receive
                        an update when new items arrive!</p>
                    <a class="btn btn-success" href="#">View Project <span class="glyphicon glyphicon-chevron-right">
                    </span></a>
                </div>
            </div>
            <hr>
            <div class="row">
                <div class="col-md-7">
                    <a href="#">
                        <img class="img-responsive animated wow fadeInUp" data-wow-delay="0.2s" src="img/700x300.jpg"
                            alt="">
                    </a>
                </div>
                <div class="col-md-5 animated wow fadeInRight" data-wow-delay="0.4s">
                    <h3>
                        <strong>Our Projects</strong></h3>
                    <h4>
                        NewBingo</h4>
                    <p>
                        Akshara is a library to buy Bootstrap themes and templates for your business need.
                        Want more Bootstrap themes & templates? Subscribe to our mailing list to receive
                        an update when new items arrive!</p>
                    <a class="btn btn-success" href="#">View Project <span class="glyphicon glyphicon-chevron-right">
                    </span></a>
                </div>
            </div>
            <hr>
            <div class="row">
                <div class="col-md-7">
                    <a href="#">
                        <img class="img-responsive animated wow fadeInUp" data-wow-delay="0.2s" src="img/700x300.jpg"
                            alt="">
                    </a>
                </div>
                <div class="col-md-5 animated wow fadeInRight" data-wow-delay="0.4s">
                    <h3>
                        <strong>Our Projects</strong></h3>
                    <h4>
                        NewBingo</h4>
                    <p>
                        Akshara is a library to buy Bootstrap themes and templates for your business need.
                        Want more Bootstrap themes & templates? Subscribe to our mailing list to receive
                        an update when new items arrive!</p>
                    <a class="btn btn-success" href="#">View Project <span class="glyphicon glyphicon-chevron-right">
                    </span></a>
                </div>
            </div>
            <!-- /.row -->
        </div>
    </div>
    <!-- /.container -->
    <div class="modal fade" id="image-gallery" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
        aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">
                        <span aria-hidden="true">×</span><span class="sr-only">Close</span></button>
                    <h4 class="modal-title" id="image-gallery-title">
                    </h4>
                </div>
                <div class="modal-body">
                    <img id="image-gallery-image" class="img-responsive" src="">
                </div>
                <div class="modal-footer">
                    <div class="col-md-2">
                        <button type="button" class="btn btn-primary" id="show-previous-image">
                            Previous</button>
                    </div>
                    <div class="col-md-8 text-justify" id="image-gallery-caption">
                        This text will be overwritten by jQuery
                    </div>
                    <div class="col-md-2">
                        <button type="button" id="show-next-image" class="btn btn-default">
                            Next</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <footer id="fh5co-footer" class="padding100">
			
			<div class="fh5co-footer-content">
				<div class="container">
					<div class="row">
						<div class="col-md-3 col-sm-4 col-md-push-3 animated wow fadeInUp" data-wow-delay="0.2s">
							<h3 class="fh5co-lead">About</h3>
							<ul>
								<li><a href="#">Tour</a></li>
								<li><a href="#">Company</a></li>
								<li><a href="#">Jobs</a></li>
								<li><a href="#">Blog</a></li>
								<li><a href="#">New Features</a></li>
								<li><a href="#">Contact Us</a></li>
							</ul>
						</div>
						<div class="col-md-3 col-sm-4 col-md-push-3 animated wow fadeInUp" data-wow-delay="0.4s">
							<h3 class="fh5co-lead">Support</h3>
							<ul>
								<li><a href="#">Help Center</a></li>
								<li><a href="#">Terms of Service</a></li>
								<li><a href="#">Security</a></li>
								<li><a href="#">Privacy Policy</a></li>
								<li><a href="#">Careers</a></li>
								<li><a href="#">More Apps</a></li>
							</ul>
						</div>
						<div class="col-md-3 col-sm-4 col-md-push-3 animated wow fadeInUp" data-wow-delay="0.6s">
							<h3 class="fh5co-lead">More Links</h3>
							<ul>
								<li><a href="#">Feedback</a></li>
								<li><a href="#">Frequently Ask Questions</a></li>
								<li><a href="#">Terms of Service</a></li>
								<li><a href="#">Privacy Policy</a></li>
								<li><a href="#">Careers</a></li>
								<li><a href="#">More Apps</a></li>
							</ul>
						</div>

						<div class="col-md-3 col-sm-12 col-md-pull-9 animated wow fadeInUp" data-wow-delay="0.8s">
							<div class="fh5co-footer-logo"><a href="index.html">Akshara</a></div>
							<p class="fh5co-copyright"><small>&copy; 2015. All Rights Reserved. <br>	by <a href="http://aboostrap.com/" target="_blank">aspxtemplates.com</a> Images: <a href="http://aspxtemplates.com/" target="_blank">Pexels</a></small></p>
							<p class="fh5co-social-icons">
								<a href="#"><i class="fa fa-twitter"></i></a>
								<a href="#"><i class="fa fa-facebook"></i></a>
								<a href="#"><i class="fa fa-instagram"></i></a>
								<a href="#"><i class="fa fa-dribbble"></i></a>
								<a href="#"><i class="fa fa-youtube"></i></a>
							</p>
						</div>
						
					</div>
				</div>
			</div>
		</footer>
    <!-- jQuery -->
    <script src="js/jquery.js"></script>
    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>
    <script src="js/wow.min.js" type="text/javascript"></script>
    <script src="js/tutorial.js"></script>
    <script src="css/owl/owl.carousel.js" type="text/javascript"></script>
    <!-- SmartMenus jQuery plugin -->
    <script type="text/javascript" src="js/jquery.smartmenus.js"></script>
    <!-- SmartMenus jQuery Bootstrap Addon -->
    <script type="text/javascript" src="js/jquery.smartmenus.bootstrap.js"></script>
    </form>
</body>
</html>
