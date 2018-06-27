<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Staffalloc.aspx.cs" Inherits="Staffalloc" %>

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
                <a class="navbar-brand" href="#">Automatic Question Generator</a>
            </div>
            <div class="navbar-collapse collapse">
                <!-- Left nav -->
                <ul class="nav navbar-nav navbar-right">
                    <li><a href="index.aspx">Home</a></li>
                    <li><a href="Staffapprove.aspx">Staff Approve/Reject</a></li>

                     <li><a href="Staffalloc.aspx">Staff Allocation</a></li>
                       <li><a href="viewques.aspx">View Question</a></li>
                       
                      <li><a href="Adminlogin.aspx">Logout</a></li>
                    
                   
                   
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
  

  <div class="Content"  style="border: 1px solid black;height: 795px;width: 1279px;margin: 1px 1px 1px 118px;background-color:#efe6d8;">
  
  
      <asp:Label ID="Label3" runat="server" Text="Staff Allocation" 
          style="position:absolute; top: 106px; left: 138px;" Font-Italic="False" 
          Font-Names="cursive" Font-Size="28px" Font-Underline="True" 
          ForeColor="#000099"     ></asp:Label>
          

       <asp:TextBox ID="TextBox3" runat="server" 
          
          
          style="position:absolute; top: 180px; left: 537px; height: 30px; width: 174px;" 
          ontextchanged="TextBox3_TextChanged" AutoPostBack="True" ></asp:TextBox>
       

       <asp:TextBox ID="TextBox4" runat="server" 
          
          style="position:absolute; top: 231px; left: 537px; height: 30px; width: 174px;" ></asp:TextBox>
       
    
    

       <asp:TextBox ID="TextBox1" runat="server" 
          
          
          
          style="position:absolute; top: 522px; left: 531px; height: 30px; width: 174px;" ></asp:TextBox>
       

      <asp:Label ID="Label1" runat="server" Text="Subject Name" 
          style="position:absolute; top: 524px; left: 383px;" Font-Names="cursive" 
          Font-Size="18px" ForeColor="#660033"></asp:Label>

            <asp:Label ID="Label5" runat="server" Text="Year" 
          style="position:absolute; top: 353px; left: 426px;" Font-Names="cursive" 
          Font-Size="18px" ForeColor="#660033"></asp:Label>


            <asp:Label ID="Label6" runat="server" Text="Department" 
          style="position:absolute; top: 290px; left: 400px;" Font-Names="cursive" 
          Font-Size="18px" ForeColor="#660033"></asp:Label>


            <asp:Label ID="Label7" runat="server" Text="Semester" 
          style="position:absolute; top: 397px; left: 400px;" Font-Names="cursive" 
          Font-Size="18px" ForeColor="#660033"></asp:Label>


  
    <asp:Label ID="Label4" runat="server" Text="Subject Code" 
          style="position:absolute; top: 459px; left: 387px;" Font-Names="cursive" 
          Font-Size="18px" ForeColor="#660033"></asp:Label>

  
       <asp:Label ID="Label2" runat="server" Text="Staff ID" 
          style="position:absolute; top: 184px; left: 406px;" Font-Names="cursive" 
          Font-Size="18px" ForeColor="#660033"></asp:Label>
        <asp:Label ID="Label8" runat="server" Text="Staff Name" 
          style="position:absolute; top: 234px; left: 400px;" Font-Names="cursive" 
          Font-Size="18px" ForeColor="#660033"></asp:Label>
  
        <asp:DropDownList ID="DropDownList3" runat="server" 
          
          
          
          
          style="position:absolute; top: 352px; left: 540px; height: 31px; width: 154px; bottom: 293px;" 
          AutoPostBack="True" 
          onselectedindexchanged="DropDownList3_SelectedIndexChanged">
            <asp:ListItem>1</asp:ListItem>
            <asp:ListItem>2</asp:ListItem>
            <asp:ListItem>3</asp:ListItem>
            <asp:ListItem>4</asp:ListItem>
      </asp:DropDownList>


      <asp:DropDownList ID="DropDownList1" runat="server" 
          
          
          
          
          style="position:absolute; top: 460px; left: 541px; height: 31px; width: 154px; bottom: 185px;" 
          AutoPostBack="True" 
          onselectedindexchanged="DropDownList1_SelectedIndexChanged">
           
      </asp:DropDownList>








        <asp:DropDownList ID="DropDownList4" runat="server" 
          
          
          
          
          
          
          style="position:absolute; top: 289px; left: 541px; height: 31px; width: 154px; bottom: 356px;">
            <asp:ListItem>CSE</asp:ListItem>
            <asp:ListItem>EEE</asp:ListItem>
            <asp:ListItem>ECE</asp:ListItem>
            <asp:ListItem>MECH</asp:ListItem>
            <asp:ListItem>IT</asp:ListItem>
            <asp:ListItem>CIVIL</asp:ListItem>
      </asp:DropDownList>

       
   <asp:DropDownList ID="DropDownList2" runat="server" 
          
          
          
          
          
          style="position:absolute; top: 399px; left: 542px; height: 31px; width: 154px;" 
          onselectedindexchanged="DropDownList2_SelectedIndexChanged" 
          AutoPostBack="True">
      </asp:DropDownList>
      <asp:Button ID="Button1" runat="server" Text="Allocate Staff" 
          style="position:absolute; top: 622px; left: 460px; height: 50px; width: 186px;" 
          BackColor="#000099" Font-Names="cursive" Font-Size="18px" 
          ForeColor="White" onclick="Button1_Click"     />
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
							<p class="fh5co-copyright"><small>&copy; 2018. All Rights Reserved. <br>	by <a href="#" target="_blank"></a> Images: <a href="#" target="_blank"></a></small></p>
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
