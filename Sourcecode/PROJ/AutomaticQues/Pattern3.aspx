<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Pattern3.aspx.cs" Inherits="Pattern3" %>

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
                    <li><a href="Staffproc.aspx">Home</a></li>
                   

                    

                      <li><a href="Stafflogin.aspx">Logout</a></li>
                    
                   
                   
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
  

  <div class="Content"  style="border: 1px solid black;height: 2273px;width: 1279px;margin: 1px 1px 1px 118px;background-color:#e4fee5;">
  
  <div class="question" style="border: 1px solid black;width: 1100px;height: 1367px;margin: 754px 1px 1px 86px; background-color:#f8d0a4; ">
  
  
  
      <asp:Label ID="Label7" runat="server" Text="ADD QUESTIONS" 
          style="position:absolute; top: 776px; left: 555px;" Font-Names="Algerian" 
          Font-Size="30px" ForeColor="#336600"    ></asp:Label>
  
   <asp:Label ID="Label5" runat="server" Text="ENTER 2Marks  QUESTIONS" 
          style="position:absolute; top: 834px; left: 218px;" Font-Names="Algerian" 
          Font-Size="20px" ForeColor="#660033"    ></asp:Label>

            <asp:Label ID="Label18" runat="server" Text="ENTER 15Marks  QUESTIONS" 
          style="position:absolute; top: 1591px; left: 224px;" Font-Names="Algerian" 
          Font-Size="20px" ForeColor="#660033"    ></asp:Label>




  
      <asp:TextBox ID="TextBox5" runat="server" 
          
          
          style="position:absolute; top: 899px; left: 449px; height: 41px; width: 514px;" 
          AutoPostBack="True" ontextchanged="TextBox5_TextChanged"   ></asp:TextBox>

            <asp:TextBox ID="TextBox6" runat="server" 
          
          
          
          style="position:absolute; top: 967px; left: 447px; height: 41px; width: 514px;" 
          AutoPostBack="True" ontextchanged="TextBox6_TextChanged"   ></asp:TextBox>
  
  
    <asp:TextBox ID="TextBox7" runat="server" 
          
          
          
          
          style="position:absolute; top: 1033px; left: 447px; height: 41px; width: 514px;" 
          AutoPostBack="True" ontextchanged="TextBox7_TextChanged1"   ></asp:TextBox>


           <asp:TextBox ID="TextBox8" runat="server" 
          
          
          
          
          style="position:absolute; top: 1092px; left: 445px; height: 41px; width: 514px;" 
          AutoPostBack="True" ontextchanged="TextBox8_TextChanged"   ></asp:TextBox>


           <asp:TextBox ID="TextBox9" runat="server" 
          
          
          
          
          style="position:absolute; top: 1165px; left: 447px; height: 41px; width: 514px;" 
          AutoPostBack="True" ontextchanged="TextBox9_TextChanged"   ></asp:TextBox>




          <asp:TextBox ID="TextBox10" runat="server" 
          
          
          
          
          
          style="position:absolute; top: 1233px; left: 448px; height: 41px; width: 514px;" 
          AutoPostBack="True" ontextchanged="TextBox10_TextChanged1"   ></asp:TextBox>



          <asp:TextBox ID="TextBox11" runat="server" 
          
          
          
          style="position:absolute; top: 1297px; left: 450px; height: 41px; width: 514px;" 
          AutoPostBack="True" ontextchanged="TextBox11_TextChanged"   ></asp:TextBox>


           <asp:TextBox ID="TextBox12" runat="server" 
          
          
          
          
          style="position:absolute; top: 1359px; left: 451px; height: 41px; width: 514px;" 
          AutoPostBack="True" ontextchanged="TextBox12_TextChanged"   ></asp:TextBox>

          <asp:TextBox ID="TextBox13" runat="server" 
          
          
          
          style="position:absolute; top: 1417px; left: 452px; height: 41px; width: 514px;" 
          AutoPostBack="True" ontextchanged="TextBox13_TextChanged"   ></asp:TextBox>

           <asp:TextBox ID="TextBox14" runat="server" 
          
          
          style="position:absolute; top: 1478px; left: 452px; height: 41px; width: 514px;" 
          AutoPostBack="True" ontextchanged="TextBox14_TextChanged"   ></asp:TextBox>


           <asp:TextBox ID="TextBox15" runat="server" 
          
          
          
          style="position:absolute; top: 1662px; left: 438px; height: 41px; width: 514px;" 
          AutoPostBack="True" ontextchanged="TextBox15_TextChanged"   ></asp:TextBox>


           <asp:TextBox ID="TextBox16" runat="server" 
          
          
          
          style="position:absolute; top: 1778px; left: 436px; height: 41px; width: 514px;" 
          AutoPostBack="True" ontextchanged="TextBox16_TextChanged"   ></asp:TextBox>

           <asp:TextBox ID="TextBox17" runat="server" 
          
          
          style="position:absolute; top: 1849px; left: 440px; height: 41px; width: 514px; right: 338px;" 
          AutoPostBack="True" ontextchanged="TextBox17_TextChanged"   ></asp:TextBox>


           <asp:TextBox ID="TextBox18" runat="server" 
          
          
          
          style="position:absolute; top: 1964px; left: 443px; height: 41px; width: 514px;" 
          AutoPostBack="True" ontextchanged="TextBox18_TextChanged"   ></asp:TextBox>
         
         
          
      <asp:Label ID="Label10" runat="server" Text="Q3" 
          style="position:absolute; top: 1036px; left: 386px;" Font-Names="cursive" 
          Font-Size="22px"    ></asp:Label>
   <asp:Label ID="Label11" runat="server" Text="Q4" 
          style="position:absolute; top: 1097px; left: 386px;" Font-Names="cursive" 
          Font-Size="22px"    ></asp:Label>

           <asp:Label ID="Label12" runat="server" Text="Q5" 
          style="position:absolute; top: 1169px; left: 386px;" Font-Names="cursive" 
          Font-Size="22px"    ></asp:Label>

           <asp:Label ID="Label13" runat="server" Text="Q6" 
          style="position:absolute; top: 1236px; left: 387px;" Font-Names="cursive" 
          Font-Size="22px"    ></asp:Label>




     <asp:Label ID="Label9" runat="server" Text="Q2" 
          style="position:absolute; top: 975px; left: 389px;" Font-Names="cursive" 
          Font-Size="22px"    ></asp:Label>
  
  
  
      <asp:Label ID="Label8" runat="server" Text="Q1" 
          style="position:absolute; top: 905px; left: 392px;" Font-Names="cursive" 
          Font-Size="22px"    ></asp:Label>



          
                 <asp:Label ID="Label14" runat="server" Text="Q7" 
          style="position:absolute; top: 1301px; left: 390px; height: 33px;" Font-Names="cursive" 
          Font-Size="22px"    ></asp:Label>
  


   <asp:Label ID="Label15" runat="server" Text="Q8" 
          
          
          style="position:absolute; top: 1361px; left: 390px; height: 33px; " Font-Names="cursive" 
          Font-Size="22px"    ></asp:Label>


          <asp:Label ID="Label16" runat="server" Text="Q9" 
          style="position:absolute; top: 1423px; left: 392px; height: 33px;" Font-Names="cursive" 
          Font-Size="22px"    ></asp:Label>

             <asp:Label ID="Label17" runat="server" Text="Q10" 
          style="position:absolute; top: 1484px; left: 390px; height: 33px;" Font-Names="cursive" 
          Font-Size="22px"    ></asp:Label>


           <asp:Label ID="Label19" runat="server" Text="Q11" 
          style="position:absolute; top: 1665px; left: 358px; height: 33px;" Font-Names="cursive" 
          Font-Size="22px"    ></asp:Label>



          <asp:Label ID="Label20" runat="server" Text="Q12" 
          style="position:absolute; top: 1781px; left: 357px; " Font-Names="cursive" 
          Font-Size="22px"    ></asp:Label>

            <asp:Label ID="Label21" runat="server" Text="Q13" 
          style="position:absolute; top: 1857px; left: 356px; height: 33px;" Font-Names="cursive" 
          Font-Size="22px"    ></asp:Label>

           <asp:Label ID="Label22" runat="server" Text="Q14" 
          style="position:absolute; top: 1965px; left: 361px; height: 36px;" Font-Names="cursive" 
          Font-Size="22px"    ></asp:Label>



           <asp:Label ID="Label28" runat="server" Text="OR" 
          style="position:absolute; top: 1910px; left: 651px;" Font-Names="Algerian" 
          Font-Size="22px" ForeColor="Blue"    ></asp:Label>






          <asp:Label ID="Label27" runat="server" Text="OR" 
          style="position:absolute; top: 1726px; left: 652px;" Font-Names="Algerian" 
          Font-Size="22px" ForeColor="Blue"    ></asp:Label>




      <asp:Label ID="Label29" runat="server" Text="Label" 
          style="position:absolute; top: 906px; left: 986px; bottom: 381px;" Font-Names="cursive" 
          Font-Size="18px" ForeColor="#CC0000"></asp:Label>


           


           <asp:Label ID="Label30" runat="server" Text="Label" 
          style="position:absolute; top: 971px; left: 985px;" Font-Names="cursive" 
          Font-Size="18px" ForeColor="#CC0000"></asp:Label>


           <asp:Label ID="Label31" runat="server" Text="Label" 
          style="position:absolute; top: 1034px; left: 991px;" Font-Names="cursive" 
          Font-Size="18px" ForeColor="#CC0000"></asp:Label>




           <asp:Label ID="Label32" runat="server" Text="Label" 
          style="position:absolute; top: 1099px; left: 988px;" Font-Names="cursive" 
          Font-Size="18px" ForeColor="#CC0000"></asp:Label>


           <asp:Label ID="Label33" runat="server" Text="Label" 
          style="position:absolute; top: 1169px; left: 992px;" Font-Names="cursive" 
          Font-Size="18px" ForeColor="#CC0000"></asp:Label>



            <asp:Label ID="Label34" runat="server" Text="Label" 
          style="position:absolute; top: 1235px; left: 990px;" Font-Names="cursive" 
          Font-Size="18px" ForeColor="#CC0000"></asp:Label>




            <asp:Label ID="Label35" runat="server" Text="Label" 
          style="position:absolute; top: 1300px; left: 990px;" Font-Names="cursive" 
          Font-Size="18px" ForeColor="#CC0000"></asp:Label>




            <asp:Label ID="Label36" runat="server" Text="Label" 
          style="position:absolute; top: 1367px; left: 989px;" Font-Names="cursive" 
          Font-Size="18px" ForeColor="#CC0000"></asp:Label>


           <asp:Label ID="Label37" runat="server" Text="Label" 
          style="position:absolute; top: 1423px; left: 988px;" Font-Names="cursive" 
          Font-Size="18px" ForeColor="#CC0000"></asp:Label>

           <asp:Label ID="Label38" runat="server" Text="Label" 
          style="position:absolute; top: 1486px; left: 995px;" Font-Names="cursive" 
          Font-Size="18px" ForeColor="#CC0000"></asp:Label>


             <asp:Label ID="Label39" runat="server" Text="Label" 
          style="position:absolute; top: 1668px; left: 980px;" Font-Names="cursive" 
          Font-Size="18px" ForeColor="#CC0000"></asp:Label>
          <asp:Label ID="Label40" runat="server" Text="Label" 
          style="position:absolute; top: 1782px; left: 978px;" Font-Names="cursive" 
          Font-Size="18px" ForeColor="#CC0000"></asp:Label>

           <asp:Label ID="Label41" runat="server" Text="Label" 
          style="position:absolute; top: 1858px; left: 981px;" Font-Names="cursive" 
          Font-Size="18px" ForeColor="#CC0000"></asp:Label>



             <asp:Label ID="Label42" runat="server" Text="Label" 
          style="position:absolute; top: 1964px; left: 978px;" Font-Names="cursive" 
          Font-Size="18px" ForeColor="#CC0000"></asp:Label>


  
      <asp:GridView ID="GridView1" runat="server" 
          style="position:absolute; top: 239px; left: 233px; height: 170px; width: 879px;" 
          CellPadding="3" GridLines="Vertical" AutoGenerateSelectButton="True" 
          ForeColor="Black" onselectedindexchanged="GridView1_SelectedIndexChanged" 
          BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" 
              >
          <AlternatingRowStyle BackColor="#CCCCCC" />
          <FooterStyle BackColor="#CCCCCC" />
          <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
          <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
          <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
          <SortedAscendingCellStyle BackColor="#F1F1F1" />
          <SortedAscendingHeaderStyle BackColor="#808080" />
          <SortedDescendingCellStyle BackColor="#CAC9C9" />
          <SortedDescendingHeaderStyle BackColor="#383838" />
      </asp:GridView>
  
  
      <asp:Button ID="Button1" runat="server" Text="Questions Entered" 
          style="position:absolute; top: 2057px; left: 620px; height: 48px; width: 219px;" 
          BackColor="Blue" Font-Names="cursive" Font-Size="20px" ForeColor="White" 
          onclick="Button1_Click"     />
  
  
  </div>


  
      <asp:Label ID="Label3" runat="server" Text="Staff Questions Enter Area" 
          style="position:absolute; top: 106px; left: 138px;" Font-Italic="False" 
          Font-Names="cursive" Font-Size="28px" Font-Underline="True" 
          ForeColor="#333300"     ></asp:Label>


   <asp:TextBox ID="TextBox2" runat="server" 
          style="position:absolute; top: 685px; left: 377px; height: 30px; width: 174px;" 
          Enabled="False" ></asp:TextBox>
         
          <asp:TextBox ID="TextBox3" runat="server" 
          style="position:absolute; top: 631px; left: 818px; height: 30px; width: 174px;" 
          Enabled="False" ></asp:TextBox>



       <asp:TextBox ID="TextBox1" runat="server" 
          style="position:absolute; top: 624px; left: 377px; height: 30px; width: 174px;" 
          Enabled="False" ></asp:TextBox>
       
  


       
  
      <asp:Label ID="Label1" runat="server" Text="Subject Code" 
          style="position:absolute; top: 631px; left: 680px;" Font-Names="cursive" 
          Font-Size="18px" ForeColor="Blue"></asp:Label>
  

  
   <asp:Label ID="Label4" runat="server" Text="Staff ID" 
          style="position:absolute; top: 677px; left: 228px;" Font-Names="cursive" 
          Font-Size="18px" ForeColor="Blue"></asp:Label>
  

  
       <asp:Label ID="Label2" runat="server" Text="Staff Name" 
          style="position:absolute; top: 627px; left: 228px;" Font-Names="cursive" 
          Font-Size="18px" ForeColor="Blue"></asp:Label>
       
  
      
       
  
      <asp:Label ID="Label6" runat="server" Text="Label" 
          style="position:absolute; height: 20px; top: 115px; left: 718px;"    ></asp:Label>
       
  
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
