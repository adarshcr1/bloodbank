<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Home</title>
    <style type="text/css">
        a
        {
          text-decoration: none;
          color:White;
        }        
        a:hover 
        {
            color: Red;            
        }
        .style1
        {
            font-family: "Bernard MT Condensed";
            font-size: 25px;
            color: yellow;
        }
        .style2
        {
            font-family: Calibri;
            font-weight: bold;
            font-size: 28px;
        }
        .style11
        {
            font-size: large;
        }
        .style13
        {
            font-size: 15px;
            font-weight: normal;
            text-align: justify;
        }
        .style14
        {
            font-size: 15px;
            font-weight: normal;
        }
        .style15
        {
            text-align: justify;
        }
        .style16
        {
            font-size: 20px;
            text-align: left;
            font-weight: normal;
        }
        .style17
        {
            font-family: Calibri;
        }
        .style18
        {
            color: #FFFFFF;
        }
        .style20
        {
            font-weight: normal;
        }
        .style21
        {
            color: #FF0000;
            font-weight: normal;
        }
        #slideshow 
		{
			margin: 0px;		    
		    position: relative;
		    width: 1111px;
		    height: 175px;
		}
		#slideshow > div 
		{
		    position: absolute;	
		    width: 1111px;
		    height: 175px;	    
		}
        .auto-style1 {
            font-size: 15px;
            font-weight: normal;
            width: 27%;
        }
        .auto-style2 {
            width: 27%;
        }
        .auto-style3 {
            font-size: 15px;
            font-weight: normal;
            width: 27%;
            height: 22px;
        }
        .auto-style4 {
            height: 22px;
        }
        .auto-style5 {
            width: 23%;
            height: 577px;
        }
        .auto-style6 {
            height: 30px;
        }
        .auto-style7 {
            height: 577px;
        }
        .auto-style8 {
            height: 264px;
        }
    </style>
    <script type="text/javascript" src="http://code.jquery.com/jquery-1.8.2.js"></script>
    <script type="text/javascript">
        $(function () {
            $('#txt_ContactNo').keydown(function (e) {
                if (e.shiftKey || e.ctrlKey || e.altKey) {
                    e.preventDefault();
                } else {
                    var key = e.keyCode;
                    if (!((key == 8) || (key == 46) || (key >= 35 && key <= 40) || (key >= 48 && key <= 57) || (key >= 96 && key <= 105))) {
                        e.preventDefault();
                    }
                }
            })
        })
    </script> 
    <script type="text/javascript" src="http://code.jquery.com/jquery-1.8.2.js"></script>
    <script type="text/javascript">
        $(function () {
            $('#txt_RBContactNo').keydown(function (e) {
                if (e.shiftKey || e.ctrlKey || e.altKey) {
                    e.preventDefault();
                } else {
                    var key = e.keyCode;
                    if (!((key == 8) || (key == 46) || (key >= 35 && key <= 40) || (key >= 48 && key <= 57) || (key >= 96 && key <= 105))) {
                        e.preventDefault();
                    }
                }
            })
        })
    </script>
    <script type="text/javascript" src="//ajax.googleapis.com/ajax/libs/jquery/1.5.2/jquery.min.js"></script>
	<script type="text/javascript">
	    $(function () {

	        $("#slideshow > div:gt(0)").hide();
	        setInterval(function () {
	            $('#slideshow > div:first')
			    .fadeOut(1000)
			    .next()
			    .fadeIn(1000)
			    .end()
			    .appendTo('#slideshow');
	        }, 3000);

	    });
	</script>
</head>
<body style="background-image:url(Images/medical-cross.jpg);background-repeat:repeat;background-attachment:fixed">
    <form id="form1" runat="server">

        <script type="text/javascript" src="http://code.jquery.com/jquery-1.8.2.js"></script>
        <script type="text/javascript">
            function alphabet(e) {

                var key = e.keyCode;
                if (!((key == 32) || (key == 8) || (key >= 65 && key <= 90) || (key >= 97 && key <= 122))) {
                    e.preventDefault();
                }
            }
        </script>



        <table width="100%" cellspacing="0">
            <tr bgcolor="#003366" style="height:50px">
                <td style="font-family:Calibri;font-size:15px;color:White" align="center">
                    <table width="75%">
                        <tr>
                            <td align="left" width="50%">
                                <span class="style1">Bms&nbsp; Blood Bank</span>
                            </td>
                            <td align="right" width="50%">
                                24 X 7 Emergency Blood Helpline 9738375221 
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
        <table width="75%" align="center" cellspacing="0">
            <tr style="height:175px">
                <td>
                    <div id="slideshow">
                        <div>
                            <img src="Images/banner.jpg" width="100%" height="175px">
                        </div>
                        <div>
                            <img src="Images/ARC_Banner3.jpg" width="100%" height="175px">
                        </div>
                        <div>
                            <img src="Images/bloodbank_banner.jpg" width="100%" height="175px">
                        </div>  
                        <div>
                            <img src="Images/banner_mother_son.jpg" width="100%" height="175px">
                        </div> 
                        <div>
                            <img src="Images/BannerAdults1.jpg" width="100%" height="175px">
                        </div> 
                        <div>
                            <img src=" Images/binaryimage.jpg" width="100%" height="175px">
                        </div>                                   
                    </div>
                </td>
            </tr>
            <tr style="height:3px">
                <td bgcolor="#ff9900"></td>
            </tr>
            <tr bgcolor="#999966">
                <td bgcolor="#FF5050">
                    <table width="70%" align="left" cellspacing="0" style="font-family:Calibri;font-size:15px">
                        <tr>
                            <td align="center" width="14%" style="border-right-style:solid;border-color:Black;border-width:2px">
                                <a href="Home.aspx">Home</a>
                            </td>
                            <td align="center" width="14%" style="border-right-style:solid;border-color:Black;border-width:2px">
                                <a href="Register.aspx">Register</a>
                            </td>
                            <td align="center" width="14%" style="border-right-style:solid;border-color:Black;border-width:2px">
                                <a href="Search.aspx">Search</a>
                            </td>                            
                            <td align="center" width="14%" style="border-right-style:solid;border-color:Black;border-width:2px">
                                <a href="Facts.aspx">Facts</a>
                            </td>
                            <td align="center" width="14%" style="border-right-style:solid;border-color:Black;border-width:2px">
                                <a href="WhoCan.aspx">Who Can?</a>
                            </td>                            
                            <td align="center" width="14%" style="border-right-style:solid;border-color:Black;border-width:2px">
                                <a href="BloodBanks.aspx">Blood Banks</a>
                            </td>
                            <td align="center" width="14%" style="border-right-style:solid;border-color:Black;border-width:2px">
                                <a href="AboutUs.aspx">About Us</a>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr style="height:3px">
                <td bgcolor="#ff9900"></td>
            </tr>
            <tr bgcolor="white" style="height:100px">
                <td align="center" class="style2">
                <br />
                    <table width="90%" align="center">
                        <tr>
                            <td align="left" valign="top" 
                                style="border-right: 2px solid Gray; padding-right:5px; font-size: 15px; border-left-color: Gray; border-left-width: 2px; border-top-color: Gray; border-top-width: 2px; border-bottom-color: Gray; border-bottom-width: 2px;" class="auto-style5">
                                &nbsp;<br />
                                <br />
                                <table width="300px" bgcolor="#cccccc" align="center" style="border-style:solid;border-width:2px;border-color:Olive">
                                    <tr bgcolor="#666633" 
                                        style="font-size: 15px; text-align: center; color: #FFFFFF">
                                        <td colspan="2" style="background-color: #FF0000" bgcolor="#FFFFCC" class="auto-style4">
                                            Request a Blood Donation Camp
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="right" class="auto-style1">
                                            Name :
                                        </td>
                                        <td style="font-size: 15px;padding-left:2px" width="70%" align="left">
                                            <asp:TextBox ID="txt_Name" runat="server" Width="185px" Height="16px"  MaxLength="15" onkeypress="alphabet(event);" autocomplete="off"   onpaste="return false"></asp:TextBox> 
                                            <span class="style21">*</span></td>
                                    </tr>
                                    <tr>
                                        <td align="right" style="font-size: 15px" class="auto-style2">
                                            <span class="style20">Org :</span>
                                        </td>
                                        <td style="font-size: 15px;padding-left:2px" width="70%" align="left">
                                            <asp:TextBox ID="txt_Organization" runat="server" Width="185px" MaxLength="15" onkeypress="alphabet(event);" autocomplete="off"   onpaste="return false"></asp:TextBox> 
                                            <span class="style21">*</span>
                                            <br />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="right" class="auto-style1">
                                            Contact No :
                                        </td>
                                        <td style="font-size: 15px;padding-left:2px" width="70%" align="left">
                                            <asp:TextBox ID="txt_ContactNo" MaxLength="10" runat="server" Width="185px" ></asp:TextBox> 
                                            <span class="style21">*<br />
                                            </span>
                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txt_ContactNo" ErrorMessage="InValid Mobile Number" ValidationExpression="^[6-9][0-9]{9}$"></asp:RegularExpressionValidator>
                                            <br />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="right" class="auto-style1">
                                            Email ID :
                                        </td>
                                        <td style="font-size: 15px;padding-left:2px" width="70%" align="left">
                                            <asp:TextBox ID="txt_EmailID" runat="server" Width="185px" Height="37px"></asp:TextBox> 
                                            <span class="style21">*</span>
                                            <br />
                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txt_EmailID" ErrorMessage="invalid email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="right" class="auto-style3">
                                            Camp Date :
                                        </td>
                                        <td style="font-size: 15px;padding-left:2px" width="70%" align="left" class="auto-style4">
                                            <asp:DropDownList ID="ddl_Year" Width="60px" runat="server" AutoPostBack="True" 
                                                onselectedindexchanged="ddl_Year_SelectedIndexChanged">
                                                <asp:ListItem>YYYY</asp:ListItem>
                                                <asp:ListItem>2018</asp:ListItem>
                                                <asp:ListItem>2019</asp:ListItem>
                                                <asp:ListItem>2020</asp:ListItem>
                                            </asp:DropDownList>
                                            <asp:DropDownList ID="ddl_Month" Width="60px" runat="server" 
                                                AutoPostBack="True" onselectedindexchanged="ddl_Month_SelectedIndexChanged">
                                                <asp:ListItem>MM</asp:ListItem>
                                                <asp:ListItem>01</asp:ListItem>
                                                <asp:ListItem>02</asp:ListItem>
                                                <asp:ListItem>03</asp:ListItem>
                                                <asp:ListItem>04</asp:ListItem>
                                                <asp:ListItem>05</asp:ListItem>
                                                <asp:ListItem>06</asp:ListItem>
                                                <asp:ListItem>07</asp:ListItem>
                                                <asp:ListItem>08</asp:ListItem>
                                                <asp:ListItem>09</asp:ListItem>
                                                <asp:ListItem>10</asp:ListItem>
                                                <asp:ListItem>11</asp:ListItem>
                                                <asp:ListItem>12</asp:ListItem>
                                            </asp:DropDownList>
                                            <asp:DropDownList ID="ddl_Day" Width="60px" runat="server">
                                            </asp:DropDownList> <span class="style21">*</span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="center" colspan="2" style="font-size: 15px">
                                            <asp:Button ID="btn_OK" runat="server" Text="Submit" Width="63px" 
                                                onclick="btn_OK_Click"/> 

                                            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" style="margin-left: 15px" Text="Reset" Width="65px" />

                                           </td>                                     
                                    </tr>
                                </table> 
                                <br />
                                <table width="300px" bgcolor="#cccccc" align="center" style="border-style:solid;border-width:2px;border-color:Olive">
                                    <tr bgcolor="#666633" 
                                        style="font-size: 15px; text-align: center; color: #FFFFFF">
                                        <td colspan="2" bgcolor="#FF5050">
                                            Request Blood
                                        </td>
                                    </tr>
                                        <td align="right" width="30%" class="style14">
                                            Blood Group :
                                        </td>
                                        <td style="font-size: 15px;padding-left:2px" width="70%" align="left">
                                            <asp:DropDownList ID="ddl_BloodGroup" Width="187px" runat="server">
                                            <asp:ListItem>--Select--</asp:ListItem>
                                            <asp:ListItem>O+</asp:ListItem>
                                            <asp:ListItem>O-</asp:ListItem>
                                            <asp:ListItem>A+</asp:ListItem>
                                            <asp:ListItem>A-</asp:ListItem>
                                            <asp:ListItem>B+</asp:ListItem>
                                            <asp:ListItem>B-</asp:ListItem>
                                            <asp:ListItem>AB+</asp:ListItem>
                                            <asp:ListItem>AB-</asp:ListItem> 
                                            <asp:ListItem>HH(BOMBAY)</asp:ListItem>   
                                            </asp:DropDownList> <span class="style21">*</span>
                                        </td>
                                    <tr>
                                        <td align="right" width="30%" class="style14">
                                            Name :
                                        </td>
                                        <td style="font-size: 15px;padding-left:2px" width="70%" align="left">
                                            <asp:TextBox ID="txt_RB_Name" runat="server" Width="185px" onkeypress="alphabet(event);" autocomplete="off"   onpaste="return false" MaxLength="15"></asp:TextBox> 
                                            <span class="style21">*</span>
                                        </td>
                                    </tr>                                    
                                    <tr>
                                        <td align="right" width="30%" class="style14">
                                            Contact No :
                                        </td>
                                        <td style="font-size: 15px;padding-left:2px" width="70%" align="left">
                                            <asp:TextBox ID="txt_RBContactNo" MaxLength="10" runat="server" Width="185px"></asp:TextBox> 
                                            <span class="style21">*</span>
                                            <br />
                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txt_RBContactNo" ErrorMessage="Invalid Mobile Number" ValidationExpression="^[6-9][0-9]{9}$"></asp:RegularExpressionValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="right" width="30%" class="style14">
                                            Email ID :
                                        </td>
                                        <td style="font-size: 15px;padding-left:2px" width="70%" align="left">
                                            <asp:TextBox ID="txt_RBEmailID" runat="server" Width="185px" Height="31px"></asp:TextBox> 
                                            <span class="style21">*</span>
                                            <br />
                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="txt_RBEmailID" ErrorMessage="Invalid Email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                                        </td>+
                                    </tr>                                    
                                    <tr>
                                        <td align="center" colspan="2" style="font-size: 15px" class="auto-style6">
                                            <asp:Button ID="btn_Submit" runat="server" Text="Submit" Width="60px" onclick="btn_Submit_Click" 
                                                />   
                                            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" style="margin-left: 19px" Text="Reset" Width="64px" />
                                        </td>                                     
                                    </tr>
                                </table> 
                            </td>
                            <td width="80%" align="center" valign="top" style="padding-left:5px " class="auto-style7">                            
                                <table width="100%" style="padding:5px">
                                    <tr>
                                        <td align="left">
                                            <span class="style16">» Donate Blood and Save a Life!!</span>
                                        </td>                                        
                                    </tr>
                                    <tr>
                                        <td class="style13">
                                            While some of us have the privilege of having more than enough of our lifeline – BLOOD, there are some who don’t have enough. As a result, scores of people die every year. Take this opportunity to give another the gift of life and donate blood TODAY!!! 
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="left" style="font-size: 15px">
                                        <br />
                                            <span class="style16">» Before you Donate</span> 
                                            <ul class="style14">
                                                <li class="style15">
                                                    Make sure you are fit to donate blood. Have a look at the Eligibility Requirements before you go to a blood donation Center to donate blood, even if you are an experienced blood donor familiar with the process.
                                                </li>
                                                <li class="style15">
                                                    Make sure that you haven’t donated blood for the past 3-4 months before you go to donate blood again.
                                                 donated blood for the past 3-4 months before you go to donate blood again.
                                                </li>
                                                <li class="style15">
                                                    Blood donors should not be fasting at the time of blood donation and should finish their last meal 3 hours before they actually donate blood.
                                                </li>
                                            </ul>  
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="left" valign="top" class="auto-style8">
                                            <span class="style16">» Eligiblity Requirments</span>
                                                <ul class="style14" style="padding-top:0px">
                                                    <li>Age: Not less than 15 and not more than 55 years</li>
                                                    <li>Weight: Not less than 45 kilograms.</li>
                                                    <li>Body Temperature: Below 37.5 °C (99.6 ° F)</li>
                                                    <li>Pulse: 60 to 100 beats/minute</li>
                                                    <li>Blood Pressure: Systlic: 110-140mm Hg</li>
                                                    <li>Diastolic: 70-90mm Hg</li>
                                                    <li>Skin Lesions: The skin at site of venepuncture should not have skin lesions (dam aged tissue on the skin) and needle pricks</li>
                                                    <li>Donation Frequency: 12 weeks for males and 16 weeks for females</li>
                                                    <li>Haemoglobin level: Not below 12.5 g/dl</li>
                                                    <li>No acute respiratory illness</li>
                                                </ul>                                         
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table> 
                </td>
            </tr>
     
                
                     
        </table> 
    </form>
</body>
</html>
