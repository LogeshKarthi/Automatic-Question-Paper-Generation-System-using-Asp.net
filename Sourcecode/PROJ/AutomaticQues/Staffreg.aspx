<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Staffreg.aspx.cs" Inherits="Staffreg" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

  <script type="text/javascript">
      function ShowPreview(input) {
          if (input.files && input.files[0]) {
              var ImageDir = new FileReader();
              ImageDir.onload = function (e) {
                  $('#impPrev').attr('src', e.target.result);
              }
              ImageDir.readAsDataURL(input.files[0]);
          }
      }  
    </script>  




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
                <a class="navbar-brand" href="#"><i class="fa fa-question"></i>AutomaticQuestionGenerator</a>
            </div>
            <div class="navbar-collapse collapse">
                <!-- Left nav -->
                <ul class="nav navbar-nav navbar-right"  style="font-family:Cursive;font-size:20px;">
                    <li><a href="index.aspx">Home</a></li>
                     <li><a id="A2" href="Adminlogin.aspx" runat="server">Admin</a></li>
                   
                  
                   
                    <li ><a id="cont" href="contact.aspx">Contact</a></li>
                    <li>
                        <div class="input-group">
                            <input type="text" class="form-control" placeholder="Search this site">
                            <span class="input-group-btn">
                                <button type="submit" class="btn btn-default">
                                    <span class="glyphicon glyphicon-search"></span>
                                </button>
                            </span>
                        </div>
                    </li>
                </ul>
            </div>
        </div>
    </div>
    
    <div class="login"  style="border: 1px solid black;height: 1203px;width: 1339px;margin: 90px 16px 1px 73px;  background-color:#d7d8ff ">
    <div class="lcontent" style="border: 1px solid black;width: 809px;height: 1069px;margin: 80px 1px 1px 264px;background-color:#cbcecf;     ">
    
        <asp:TextBox ID="TextBox1" runat="server"  
            
            
            style="position:absolute; top: 446px; left: 703px; height: 34px; width: 238px;" ></asp:TextBox>
    
        <asp:TextBox ID="TextBox2" runat="server"
            
            
            style="position:absolute; top: 520px; left: 704px; height: 32px; width: 236px; bottom: 63px;"     ></asp:TextBox>
    
        <asp:TextBox ID="TextBox3" runat="server"
            
            
            style="position:absolute; top: 590px; left: 704px; height: 32px; width: 234px;" 
            Enabled="False"></asp:TextBox>
    
        <asp:Panel ID="Panel1" runat="server"  
            style="position:absolute; top: 171px; left: 339px; height: 88px; width: 809px;" 
            BackColor="#660033"   >
        </asp:Panel>
    
        <asp:Label ID="Label1" runat="server" Text="STAFF  REGISTRATION  AREA" 
            style="position:absolute; top: 199px; left: 513px; height: 32px; width: 476px;" 
            Font-Size="28px" ForeColor="White"     ></asp:Label>
    
        <asp:TextBox ID="TextBox4" runat="server" 
            
            
            
            style="position:absolute; top: 666px; left: 705px; height: 32px; width: 234px;"></asp:TextBox>

                
        <asp:TextBox ID="TextBox5" runat="server" 
            
            
            
            style="position:absolute; top: 732px; left: 704px; height: 32px; width: 234px;"></asp:TextBox>


               <asp:TextBox ID="TextBox7" runat="server"  placeholder="dd-mmm-yyyy"
            
            
            
            
            style="position:absolute; top: 952px; left: 701px; height: 32px; width: 234px;"></asp:TextBox>

               <asp:TextBox ID="TextBox8" runat="server"
            
            
            
            
            style="position:absolute; top: 1022px; left: 699px; height: 32px; width: 234px;"></asp:TextBox>


               <asp:TextBox ID="TextBox9" runat="server" 
            
            
            
            
            style="position:absolute; top: 1084px; left: 701px; height: 32px; width: 234px;"></asp:TextBox>


    
               <asp:TextBox ID="TextBox6" runat="server" placeholder="dd-mmm-yyyy"
            
            
            
            style="position:absolute; top: 812px; left: 703px; height: 32px; width: 234px;"></asp:TextBox>


    
        <asp:FileUpload ID="FileUpload1" runat="server"   onchange="ShowPreview(this)"
            
            style="position:absolute; top: 383px; left: 900px; height: 26px; width: 226px;" 
            ForeColor="Blue"    />


    
        <asp:Image ID="impPrev" runat="server"  
            style="position:absolute; top: 300px; left: 708px; height: 106px; width: 188px;"  />


    
        <asp:Label ID="Label3" runat="server" Text="Staff username" 
            style="position:absolute; top: 447px; left: 550px;" Font-Names="cursive" 
            Font-Size="19px" ForeColor="#660033"></asp:Label>
         
         
        <asp:Label ID="Label4" runat="server" Text="Department" 
            style="position:absolute; top: 664px; left: 558px;" Font-Names="cursive" 
            Font-Size="19px" ForeColor="#660033"></asp:Label>
         
         
        <asp:Label ID="Label5" runat="server" Text="Profile photo" 
            style="position:absolute; top: 303px; left: 568px;" Font-Names="cursive" 
            Font-Size="19px" ForeColor="#660033"></asp:Label>
         
         
        <asp:Label ID="Label6" runat="server" Text="Staff ID" 
            style="position:absolute; top: 589px; left: 564px;" Font-Names="cursive" 
            Font-Size="19px" ForeColor="#660033"></asp:Label>
         
         
        <asp:Label ID="Label7" runat="server" Text="Address" 
            style="position:absolute; top: 1087px; left: 544px;" Font-Names="cursive" 
            Font-Size="19px" ForeColor="#660033"></asp:Label>
         
         
        <asp:Label ID="Label8" runat="server" Text="Password" 
            style="position:absolute; top: 520px; left: 563px;" Font-Names="cursive" 
            Font-Size="19px" ForeColor="#660033"></asp:Label>
         
         
        <asp:Label ID="Label9" runat="server" Text="Position" 
            style="position:absolute; top: 732px; left: 559px;" Font-Names="cursive" 
            Font-Size="19px" ForeColor="#660033"></asp:Label>
           
           <asp:Label ID="Label12" runat="server" Text="Gender" 
            
            style="position:absolute; top: 894px; left: 555px; height: 27px; width: 63px; right: 631px;" Font-Names="cursive" 
            Font-Size="19px" ForeColor="#660033"></asp:Label>
          
        <asp:Label ID="Label10" runat="server" Text="DOB" 
            style="position:absolute; top: 958px; left: 552px;" Font-Names="cursive" 
            Font-Size="19px" ForeColor="#660033"></asp:Label>
             
        <asp:Label ID="Label11" runat="server" Text="Email ID" 
            style="position:absolute; top: 1030px; left: 547px;" Font-Names="cursive" 
            Font-Size="19px" ForeColor="#660033"></asp:Label>




    
        <asp:DropDownList ID="DropDownList1" runat="server"  
            style="position:absolute; top: 896px; left: 708px; height: 32px; width: 152px;" 
            Font-Names="cursive" Font-Size="17px"  >
            <asp:ListItem>Male</asp:ListItem>
            <asp:ListItem>Female</asp:ListItem>
            <asp:ListItem>Transgender</asp:ListItem>
        </asp:DropDownList>




    
        <asp:Label ID="Label2" runat="server" Text="DOJ" 
            style="position:absolute; top: 813px; left: 563px;" Font-Names="cursive" 
            Font-Size="19px" ForeColor="#660033"></asp:Label>
         
         
        <asp:Button ID="Button1" runat="server" Text="REGISTER"  
            style="position:absolute; top: 1164px; left: 618px; height: 46px; width: 208px;" 
            BackColor="#0066FF" Font-Names="Algerian" Font-Size="20px" 
            ForeColor="White" onclick="Button1_Click"      />




    
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
							<div class="fh5co-footer-logo"><a href="index.html">Automatic Question Generator</a></div>
							<p class="fh5co-copyright"><small>&copy; 2018. All Rights Reserved. <br>	by <a href="#" target="_blank"></a> Images: <a href="#" target="_blank">Pexels</a></small></p>
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
    <script src="js/contact.js" type="text/javascript"></script>
    <script src="js/tutorial.js"></script>
    <script src="css/owl/owl.carousel.js" type="text/javascript"></script>
    <!-- SmartMenus jQuery plugin -->
    <script type="text/javascript" src="js/jquery.smartmenus.js"></script>
    <!-- SmartMenus jQuery Bootstrap Addon -->
    <script type="text/javascript" src="js/jquery.smartmenus.bootstrap.js"></script>
    </form>
</body>
</html>
