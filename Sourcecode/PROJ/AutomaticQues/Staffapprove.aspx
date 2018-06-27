<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Staffapprove.aspx.cs" Inherits="Staffapprove" %>

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
                <a class="navbar-brand" href="#"><i class="fa fa-Question"></i>Automatic Question Generator</a>
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
  

  <div class="Content"  style="border: 1px solid black;height: 1295px;width: 1279px;margin: 1px 1px 1px 118px;background-color:#efe6d8;">
  
  
      <asp:Button ID="Button1" runat="server" Text="View Registered Staffs"  
          style="position:absolute; top: 241px; left: 329px; height: 54px; width: 321px;" 
          BackColor="#0066FF" Font-Names="cursive" Font-Size="20px" 
          ForeColor="White" onclick="Button1_Click"    />
  
  
      <asp:GridView ID="GridView1" runat="server" 
          style="position:absolute; top: 335px; left: 133px; height: 225px; width: 607px;" 
          BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" 
          CellPadding="3" CellSpacing="1" GridLines="None" AutoGenerateSelectButton="True"
          onselectedindexchanged="GridView1_SelectedIndexChanged"      >
          <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
          <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
          <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
          <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
          <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
          <SortedAscendingCellStyle BackColor="#F1F1F1" />
          <SortedAscendingHeaderStyle BackColor="#594B9C" />
          <SortedDescendingCellStyle BackColor="#CAC9C9" />
          <SortedDescendingHeaderStyle BackColor="#33276A" />
      </asp:GridView>
  
  
      <asp:Label ID="Label3" runat="server" Text="Staff Approve/Reject Area" 
          style="position:absolute; top: 106px; left: 138px;" Font-Italic="False" 
          Font-Names="cursive" Font-Size="28px" Font-Underline="True" 
          ForeColor="#000099"     ></asp:Label>


           <asp:Button ID="Button3" runat="server" 
          style="position:absolute; top: 1037px; left: 414px; height: 46px; width: 170px; right: 467px;"      
          Text="APPROVE" BackColor="#009933" Font-Names="cursive" Font-Size="18px" 
          ForeColor="White" onclick="Button3_Click1" />
      <asp:Button ID="Button2" runat="server" 
          style="position:absolute; top: 1036px; left: 644px; height: 46px; width: 170px;"      
          Text="REJECT" BackColor="#CC0000" Font-Names="cursive" Font-Size="18px" 
          ForeColor="White" onclick="Button2_Click" />


   <asp:TextBox ID="TextBox2" runat="server" 
          style="position:absolute; top: 912px; left: 635px; height: 30px; width: 174px;" 
          Enabled="False" ></asp:TextBox>
       <asp:TextBox ID="TextBox1" runat="server" 
          style="position:absolute; top: 842px; left: 637px; height: 30px; width: 174px;" 
          Enabled="False" ></asp:TextBox>
       
  
      <asp:Label ID="Label1" runat="server" Text="Staff ID" 
          style="position:absolute; top: 916px; left: 494px;" Font-Names="cursive" 
          Font-Size="18px" ForeColor="#660033"></asp:Label>
  
  
       <asp:Label ID="Label2" runat="server" Text="Staff Name" 
          style="position:absolute; top: 848px; left: 488px;" Font-Names="cursive" 
          Font-Size="18px" ForeColor="#660033"></asp:Label>
       
  
      <asp:Button ID="Button4" runat="server" Text="View valid Staff" 
          style="position:absolute; top: 250px; left: 1098px; height: 42px; width: 227px;" 
          BackColor="#663300" Font-Names="cursive" Font-Size="18px" ForeColor="White" 
          onclick="Button4_Click"     />
       
  
      <asp:GridView ID="GridView2" runat="server" 
          style="position:absolute; top: 336px; left: 973px; height: 207px; width: 403px;" 
          CellPadding="4" ForeColor="#333333" GridLines="None"     >
          <AlternatingRowStyle BackColor="White" />
          <EditRowStyle BackColor="#7C6F57" />
          <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
          <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
          <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
          <RowStyle BackColor="#E3EAEB" />
          <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
          <SortedAscendingCellStyle BackColor="#F8FAFA" />
          <SortedAscendingHeaderStyle BackColor="#246B61" />
          <SortedDescendingCellStyle BackColor="#D4DFE1" />
          <SortedDescendingHeaderStyle BackColor="#15524A" />
      </asp:GridView>
       
  
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
