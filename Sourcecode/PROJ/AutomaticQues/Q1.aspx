<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Q1.aspx.cs" Inherits="Q1" %>

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
    <link rel ="Stylesheet" href="css/mystyle.css" type ="text/css" />
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
    <form id="form1" runat="server">
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
                       <li><a href="Staffalloc.aspx">View Question</a></li>
                      <li><a href="Adminlogin.aspx">Logout</a></li>               
                   
                </ul>
            </div>
        </div>
    </div>
    <br />
    <br />
   
    <div class="container">
        
        <div style="text-align:center">             
                <h1><asp:Label ID="l1" runat="server" >Questions</asp:Label></h1>
                <hr />
            <asp:Panel ID="pnlPerson" runat="server">
                <div class="row">
                    <h4><asp:Label runat="server" ID="l2">Subject Code</asp:Label></h4>
                    <asp:Label runat="server" ID="l3"></asp:Label>             
                    <hr />
                    
                      <h4><asp:Label ID="l4" runat="server">2 Marks</asp:Label></h4>
                        <br />
                    <div style="text-align:left;font-size :20px;">     
                    
                       <table class="a">
                          <tr>
                               <td class="b">
                                   <asp:Label ID="n1" runat="server">1</asp:Label>
                               </td>
                              <td class="b">
                                  <asp:Label ID="Label1" runat="server" ></asp:Label>
                              </td>
                              <td class="b" >
                                  <asp:Label ID="a1" runat="server"></asp:Label><br />
                              </td>
                          </tr>
                           <tr>
                                <td class="b">
                                   <asp:Label ID="n2" runat="server">2</asp:Label>
                               </td>
                               <td class="b">
                                   <asp:Label ID="Label2" runat="server" ></asp:Label>
                               </td>
                               <td class="b">
                                   <asp:Label ID="b1" runat="server" ></asp:Label><br />
                               </td>
                           </tr>
                        <tr>
                             <td class="b">
                                   <asp:Label ID="n3" runat="server">3</asp:Label>
                               </td>
                            <td class="b">
                                <asp:Label ID="Label3" runat="server" ></asp:Label>
                            </td>
                            <td class="b">
                                <asp:Label ID="C" runat="server" ></asp:Label><br />
                            </td>
                        </tr>
                        <tr>
                             <td class="b">
                                   <asp:Label ID="n4" runat="server">4</asp:Label>
                               </td>
                            <td class="b">
                                <asp:Label ID="Label4" runat="server" ></asp:Label>
                            </td>
                            <td class="b">
                                <asp:Label ID="d" runat="server" ></asp:Label><br />
                            </td>
                        </tr>
                        <tr>
                             <td class="b">
                                   <asp:Label ID="n5" runat="server">5</asp:Label>
                               </td>
                            <td class="b">
                                <asp:Label ID="Label5" runat="server" ></asp:Label>
                            </td>
                            <td class="b">
                                <asp:Label ID="e1" runat="server" ></asp:Label><br />
                            </td>
                        </tr>
                        <tr>
                             <td class="b">
                                   <asp:Label ID="n6" runat="server">6</asp:Label>
                               </td>
                            <td class="b">
                                <asp:Label ID="Label6" runat="server" ></asp:Label>
                            </td>
                            <td class="b">
                                <asp:Label ID="f1" runat="server" ></asp:Label><br />
                            </td>
                        </tr>
                           <tr>
                                <td class="b">
                                   <asp:Label ID="n7" runat="server">7</asp:Label>
                               </td>
                            <td class="b">
                                <asp:Label ID="Label7" runat="server" ></asp:Label>
                            </td>
                            <td class="b">
                                <asp:Label ID="g" runat="server" ></asp:Label><br />
                            </td>
                        </tr>
                           <tr>
                                <td class="b">
                                   <asp:Label ID="n8" runat="server">8</asp:Label>
                               </td>
                            <td class="b">
                                <asp:Label ID="Label8" runat="server" ></asp:Label>
                            </td>
                            <td class="b">
                                <asp:Label ID="h" runat="server" ></asp:Label><br />
                            </td>
                        </tr>
                           <tr>
                                <td class="b">
                                   <asp:Label ID="n9" runat="server">9</asp:Label>
                               </td>
                            <td class="b">
                                <asp:Label ID="Label9" runat="server" ></asp:Label>
                            </td>
                            <td class="b">
                                <asp:Label ID="i1" runat="server" ></asp:Label><br />
                            </td>
                        </tr>
                           <tr>
                                <td class="b">
                                   <asp:Label ID="n10" runat="server">10</asp:Label>
                               </td>
                            <td class="b">
                                <asp:Label ID="Label10" runat="server" ></asp:Label>
                            </td>
                            <td class="b">
                                <asp:Label ID="j" runat="server" ></asp:Label><br />
                            </td >
                        </tr>
                      </table>
                      
                    </div>

                        <h4><asp:Label ID="Label11" runat="server">10 Marks</asp:Label></h4>
                        <br />
                    <div style="text-align:left;font-size :20px;">     
                       <table class="a">
                           <tr>
                               <td class="b">
                                   <asp:Label ID="n11" runat="server">11</asp:Label>
                               </td>
                               <td class="b">
                                   <asp:Label ID="Label12" runat="server"></asp:Label>
                               </td>
                               <td class="b">
                                    <asp:Label ID="k" runat="server" ></asp:Label>
                               </td>
                           </tr>
                            <tr>
                                <td>

                                </td>
                                <td>
                                    <h5 style="text-align:center" ><asp:Label ID="Label20" runat="server">OR</asp:Label></h5>
                                </td>
                                <td></td>
                            </tr>                       

                       
                            <tr>
                                <td class="b">
                                   <asp:Label ID="n12" runat="server" Text="12"></asp:Label>
                               </td>
                                <td class="b">
                                    <asp:Label ID="Label13" runat="server"></asp:Label>
                                </td>
                                 <td class="b">
                                    <asp:Label ID="l" runat="server" ></asp:Label>
                               </td>
                            </tr>
                            <tr>
                                <td class="b">
                                   <asp:Label ID="n13" runat="server">13</asp:Label>
                               </td>
                                <td class="b">
                                    <asp:Label ID="Label15" runat="server"></asp:Label>
                                </td>
                                 <td class="b">
                                    <asp:Label ID="m" runat="server" ></asp:Label>
                               </td>
                            </tr>
                       <tr>
                           <td></td>
                           <td>
                                <h5 style="text-align:center"><asp:Label ID="Label14" runat="server">OR</asp:Label></h5>
                           </td>
                           <td></td>
                       </tr>
                        
                       

                         
                            <tr>
                                <td class="b">
                                   <asp:Label ID="n14" runat="server">14</asp:Label>
                               </td>
                                <td class="b">
                                    <asp:Label ID="Label16" runat="server"></asp:Label>
                                </td>
                                 <td class="b">
                                    <asp:Label ID="n" runat="server" ></asp:Label>
                               </td>
                            </tr>
                            <tr>
                                <td class="b">
                                   <asp:Label ID="n15" runat="server">15</asp:Label>
                               </td>
                                <td class="b">
                                    <asp:Label ID="Label18" runat="server"></asp:Label>
                                </td>
                                 <td class="b">
                                    <asp:Label ID="o" runat="server" ></asp:Label>
                               </td>
                            </tr>
                       <tr>
                           <td>

                           </td>
                           <td>
                                <h5 style="text-align:center"><asp:Label ID="Label17" runat="server">OR</asp:Label></h5>
                           </td>
                           <td>

                           </td>
                       </tr>
                       
                       
                            <tr>
                                <td class="b">
                                    <asp:Label ID="n16" runat="server">16</asp:Label>
                                 </td>
                                <td class="b">
                                     <asp:Label ID="Label19" runat="server"></asp:Label>
                                </td>
                                <td class="b">
                                    <asp:Label ID="p" runat="server" ></asp:Label>
                                </td>
                       
                            </tr>
                        </table>
                    </div>    
                        
                </div>
            </asp:Panel>
               <hr />
                <asp:Button ID = "Button1" runat="server" class="btn btn-block btn-lg btn-warning" 
                            Text="Export_As_PDF" onclick="b1_Click"/>
               <hr />
                
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
