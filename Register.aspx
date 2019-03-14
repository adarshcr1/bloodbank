<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Donar Registration</title>
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
            font-size: 15px;
        }
        .style17
        {
            font-family: Calibri;
        }
        .style18
        {
            color: #FFFFFF;
        }
        .style19
        {
            font-weight: normal;
        }
    </style> 
    <script type="text/javascript" src="http://code.jquery.com/jquery-1.8.2.js"></script>
    <script type="text/javascript">
        $(function () {
            $('#txt_MobileNo').keydown(function (e) {
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



        <script type="text/javascript" src="http://code.jquery.com/jquery-1.8.2.js"></script>
        <script type="text/javascript">
            function numeric(e) {

                var key = e.keyCode;
                if (!((key == 8) || (key >= 48 && key <= 57))) {
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
                                <span class="style1">Online Blood Bank</span>
                            </td>
                            <td align="right" width="50%">
                                24 X 7 Emergency Blood Helpline 9481029800 
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
        <table width="75%" align="center" cellspacing="0">
            <tr style="height:175px">
                <td>
                    <img src="Images/BannerAdults1.jpg" width="100%" height="175px" />
                </td>
            </tr>
            <tr style="height:3px">
                <td bgcolor="#ff9900"></td>
            </tr>
            <tr bgcolor="#999966">
                <td>
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
                    <table width="60%" bgcolor="#cccccc" align="center" style="font-size: 15px;border-style:solid;border-width:1px;border-color:Black">
                        <tr>
                            <td style="font-size: 15px;padding:2px" align="center" bgcolor="#666666" colspan="2">
                                <span class="style18">Donar Information</span>
                            </td>
                        </tr>
                        <tr>
                            <td width="30%" align="right" style="font-size: 15px;padding:2px">
                                <span class="style19">First Name :</span>
                            </td>
                            <td width="70%" align="left" style="font-size: 15px;padding:2px">
                                <asp:TextBox ID="txt_FirstName" Width="200px" runat="server" MaxLength="15" onkeypress="alphabet(event);" autocomplete="off"   onpaste="return false"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td width="30%" align="right" style="font-size: 15px;padding:2px">
                                <span class="style19">Last Name :</span>
                            </td>
                            <td width="70%" align="left" style="font-size: 15px;padding:2px">
                                <asp:TextBox ID="txt_LastName" Width="200px" runat="server" MaxLength="15"  onkeypress="alphabet(event);" autocomplete="off"   onpaste="return false"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td width="30%" align="right" style="font-size: 15px;padding:2px">
                                <span class="style19">Date of Birth :</span>
                            </td>
                            <td width="70%" align="left" style="font-size: 15px;padding:2px">
                                <asp:DropDownList ID="ddl_Year" Width="75px" runat="server" AutoPostBack="True" 
                                    onselectedindexchanged="ddl_Year_SelectedIndexChanged">
                                    <asp:ListItem>--YYYY--</asp:ListItem>
                                    <asp:ListItem>1980</asp:ListItem>
                                    <asp:ListItem>1981</asp:ListItem>
                                    <asp:ListItem>1982</asp:ListItem>
                                    <asp:ListItem>1983</asp:ListItem>
                                    <asp:ListItem>1984</asp:ListItem>
                                    <asp:ListItem>1985</asp:ListItem>
                                    <asp:ListItem>1986</asp:ListItem>
                                    <asp:ListItem>1987</asp:ListItem>
                                    <asp:ListItem>1988</asp:ListItem>
                                    <asp:ListItem>1989</asp:ListItem>                                    
                                    <asp:ListItem>1990</asp:ListItem>
                                    <asp:ListItem>1991</asp:ListItem>
                                    <asp:ListItem>1992</asp:ListItem>
                                    <asp:ListItem>1993</asp:ListItem>
                                    <asp:ListItem>1994</asp:ListItem>
                                    <asp:ListItem>1995</asp:ListItem>
                                    <asp:ListItem>1996</asp:ListItem>
                                    <asp:ListItem>1997</asp:ListItem>
                                    <asp:ListItem>1998</asp:ListItem>
                                    <asp:ListItem>1999</asp:ListItem>                                    
                                    <asp:ListItem>2000</asp:ListItem>
                                    <asp:ListItem>2001</asp:ListItem>
                                    <asp:ListItem>2002</asp:ListItem>
                                    <asp:ListItem>2003</asp:ListItem>
                                    <asp:ListItem>2004</asp:ListItem>
                                    <asp:ListItem>2005</asp:ListItem>
                                    <asp:ListItem>2006</asp:ListItem>
                                    <asp:ListItem>2007</asp:ListItem>
                                    <asp:ListItem>2008</asp:ListItem>
                                    <asp:ListItem>2009</asp:ListItem>                                    
                                    <asp:ListItem>2010</asp:ListItem>
                                    <asp:ListItem>2011</asp:ListItem>
                                    <asp:ListItem>2012</asp:ListItem>
                                    <asp:ListItem>2013</asp:ListItem>
                                    <asp:ListItem>2014</asp:ListItem>
                                    <asp:ListItem>2015</asp:ListItem>
                                    <asp:ListItem>2016</asp:ListItem>
                                    <asp:ListItem>2017</asp:ListItem>
                                    <asp:ListItem>2018</asp:ListItem>
                                    <asp:ListItem>2019</asp:ListItem>
                                    <asp:ListItem>2020</asp:ListItem>
                                </asp:DropDownList> -
                                <asp:DropDownList ID="ddl_Month" Width="75px" runat="server" 
                                    AutoPostBack="True" onselectedindexchanged="ddl_Month_SelectedIndexChanged">
                                    <asp:ListItem>--MM--</asp:ListItem>
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
                                </asp:DropDownList> -
                                <asp:DropDownList ID="ddl_Day" Width="75px" runat="server">
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td width="30%" align="right" style="font-size: 15px;padding:2px">
                                <span class="style19">Gender :</span>
                            </td>
                            <td width="70%" align="left" style="font-size: 15px;padding:2px">
                                <asp:DropDownList ID="ddl_Gender" Width="200px" runat="server">
                                    <asp:ListItem>--Select--</asp:ListItem>
                                    <asp:ListItem>Male</asp:ListItem>
                                    <asp:ListItem>Female</asp:ListItem>
                                </asp:DropDownList>                                
                            </td>
                        </tr>
                        <tr>
                            <td width="30%" align="right" style="font-size: 15px;padding:2px">
                                <span class="style19">Blood Group :</span>
                            </td>
                            <td width="70%" align="left" style="font-size: 15px;padding:2px">
                                <asp:DropDownList ID="ddl_BloodGroup" Width="200px" runat="server">
                                    <asp:ListItem>--Select--</asp:ListItem>
                                    <asp:ListItem>O+</asp:ListItem>
                                    <asp:ListItem>O-</asp:ListItem>
                                    <asp:ListItem>A+</asp:ListItem>
                                    <asp:ListItem>A-</asp:ListItem>
                                    <asp:ListItem>B+</asp:ListItem>
                                    <asp:ListItem>B+</asp:ListItem>
                                    <asp:ListItem>AB+</asp:ListItem>
                                    <asp:ListItem>AB-</asp:ListItem>
                                    <asp:ListItem>HH(BOMBAY)</asp:ListItem>
                                </asp:DropDownList>                                
                            </td>
                        </tr>
                        <tr>
                            <td width="30%" align="right" style="font-size: 15px;padding:2px">
                                <span class="style19">Weight :</span>
                            </td>
                            <td width="70%" align="left" style="font-size: 15px;padding:2px">
                                <asp:TextBox ID="txt_Weight" Width="200px" runat="server" onkeypress="numeric(event);" autocomplete="off"   onpaste="return false" MaxLength="2"></asp:TextBox> 
                                <span class="style19">Kgs</span>
                                <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txt_Weight" ErrorMessage="RangeValidator" MaximumValue="99" MinimumValue="40"></asp:RangeValidator>
                            </td>
                        </tr>
                        <tr>
                            <td width="30%" align="right" style="font-size: 15px;padding:2px" >
                                <span class="style19">Last Blood Donation Date :</span>
                            </td>
                            <td width="70%" align="left" style="font-size: 15px;padding:2px">
                                <asp:DropDownList ID="ddl_BDYear" Width="75px" runat="server" 
                                    AutoPostBack="True" onselectedindexchanged="ddl_BDYear_SelectedIndexChanged">
                                <asp:ListItem>--YYYY--</asp:ListItem>
                                    <asp:ListItem>1980</asp:ListItem>
                                    <asp:ListItem>1981</asp:ListItem>
                                    <asp:ListItem>1982</asp:ListItem>
                                    <asp:ListItem>1983</asp:ListItem>
                                    <asp:ListItem>1984</asp:ListItem>
                                    <asp:ListItem>1985</asp:ListItem>
                                    <asp:ListItem>1986</asp:ListItem>
                                    <asp:ListItem>1987</asp:ListItem>
                                    <asp:ListItem>1988</asp:ListItem>
                                    <asp:ListItem>1989</asp:ListItem>                                    
                                    <asp:ListItem>1990</asp:ListItem>
                                    <asp:ListItem>1991</asp:ListItem>
                                    <asp:ListItem>1992</asp:ListItem>
                                    <asp:ListItem>1993</asp:ListItem>
                                    <asp:ListItem>1994</asp:ListItem>
                                    <asp:ListItem>1995</asp:ListItem>
                                    <asp:ListItem>1996</asp:ListItem>
                                    <asp:ListItem>1997</asp:ListItem>
                                    <asp:ListItem>1998</asp:ListItem>
                                    <asp:ListItem>1999</asp:ListItem>                                    
                                    <asp:ListItem>2000</asp:ListItem>
                                    <asp:ListItem>2001</asp:ListItem>
                                    <asp:ListItem>2002</asp:ListItem>
                                    <asp:ListItem>2003</asp:ListItem>
                                    <asp:ListItem>2004</asp:ListItem>
                                    <asp:ListItem>2005</asp:ListItem>
                                    <asp:ListItem>2006</asp:ListItem>
                                    <asp:ListItem>2007</asp:ListItem>
                                    <asp:ListItem>2008</asp:ListItem>
                                    <asp:ListItem>2009</asp:ListItem>     
                                    <asp:ListItem>2010</asp:ListItem>
                                    <asp:ListItem>2011</asp:ListItem>
                                    <asp:ListItem>2012</asp:ListItem>
                                    <asp:ListItem>2013</asp:ListItem>
                                    <asp:ListItem>2014</asp:ListItem>
                                    <asp:ListItem>2015</asp:ListItem>
                                    <asp:ListItem>2016</asp:ListItem>
                                    <asp:ListItem>2017</asp:ListItem>
                                    <asp:ListItem>2018</asp:ListItem>
                                    <asp:ListItem>2019</asp:ListItem>
                                    <asp:ListItem>2020</asp:ListItem>
                                </asp:DropDownList> -
                                <asp:DropDownList ID="ddl_BDMonth" Width="75px" runat="server" 
                                    AutoPostBack="True" onselectedindexchanged="ddl_BDMonth_SelectedIndexChanged">
                                <asp:ListItem>--MM--</asp:ListItem>
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
                                </asp:DropDownList> -
                                <asp:DropDownList ID="ddl_BDDay" Width="75px" runat="server">
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td width="30%" align="right" style="font-size: 15px;padding:2px">
                                <span class="style19">How often have you donated blood in the past :</span>
                            </td>
                            <td width="70%" align="left" style="font-size: 15px;padding:2px">
                                <asp:DropDownList ID="ddl_DonarType" Width="200px" runat="server">
                                    <asp:ListItem>--Select--</asp:ListItem>
                                    <asp:ListItem>Yet to Donate</asp:ListItem>
                                    <asp:ListItem>Regular Donar</asp:ListItem>
                                    <asp:ListItem>On Need Basis</asp:ListItem>
                                </asp:DropDownList>                                
                            </td>
                        </tr>
                    </table>
                    <br /> 
                    <table width="60%" bgcolor="#cccccc" align="center" style="font-size: 15px;border-style:solid;border-width:1px;border-color:Black">
                        <tr>
                            <td style="font-size: 15px;padding:2px" align="center" bgcolor="#666666" colspan="2">
                                <span class="style18">Contact Information</span>
                            </td>
                        </tr>
                        <tr>
                            <td width="30%" align="right" style="font-size: 15px;padding:2px">
                                <span class="style19">Mobile No :</span>
                            </td>
                            <td width="70%" align="left" style="font-size: 15px;padding:2px">
                                <asp:TextBox ID="txt_MobileNo" MaxLength="10" Width="200px" runat="server"></asp:TextBox>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txt_MobileNo" ErrorMessage="Please Enter valid Phone no" ValidationExpression="^[6-9][0-9]{9}$"></asp:RegularExpressionValidator>
                            </td>
                        </tr>
                        <tr>
                            <td width="30%" align="right" style="font-size: 15px;padding:2px">
                                <span class="style19">Email ID :</span>
                            </td>
                            <td width="70%" align="left" style="font-size: 15px;padding:2px">
                                <asp:TextBox ID="txt_EMailID" Width="200px" runat="server"></asp:TextBox>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txt_EMailID" ErrorMessage="Invalid Email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                            </td>
                        </tr>
                        <tr>
                            <td width="30%" align="right" style="font-size: 15px;padding:2px">
                                <span class="style19">Address :</span>
                            </td>
                            <td width="70%" align="left" style="font-size: 15px;padding:2px">
                                <asp:TextBox ID="txt_Address" TextMode="MultiLine" Height="75px" Width="196px" runat="server" MaxLength="150"></asp:TextBox>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txt_Address" ErrorMessage="Minimum 10 Characters" ValidationExpression=".{10}.*"></asp:RegularExpressionValidator>
                            </td>
                        </tr>
                        <tr>
                            <td width="30%" align="right" style="font-size: 15px;padding:2px">
                                <span class="style19">City :</span>
                            </td>
                            <td width="70%" align="left" style="font-size: 15px;padding:2px">
                                <asp:TextBox ID="txt_City" Width="200px" runat="server" MaxLength="15" ></asp:TextBox>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="txt_City" ErrorMessage="minimum 5 characters" ValidationExpression=".{5}.*"   onkeypress="alphabet(event);" autocomplete="off"   onpaste="return false"></asp:RegularExpressionValidator>
                            </td>
                        </tr>
                    </table>
                    <br />
                    <table width="60%" align="center">
                        <tr>
                            <td align="left" style="font-size: 15px;padding:2px">
                                <asp:CheckBox ID="chk_TNC" runat="server" 
                                    Text="I have read the Eligibility Criteria and confirm that I am eligible to donate blood" 
                                    style="color: #FF0000;font-weight:normal" />
                            </td>
                        </tr>
                        <tr>
                            <td align="center" style="font-size: 15px;padding:2px">
                                <asp:Button ID="btn_Reset" runat="server" Text="Reset" Width="75px" 
                                    onclick="btn_Reset_Click" /> &nbsp
                                <asp:Button ID="btn_Register" runat="server" Text="Register" Width="75px" 
                                    onclick="btn_Register_Click" />
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:CONN %>" 
                                    SelectCommand="SELECT * FROM [tbl_DonarDetails]"></asp:SqlDataSource>
                            </td>
                        </tr>
                    </table> 
                    <br />
                </td>
            </tr>
            <tr bgcolor="#333300">
                <td align="center" class="style17">
                    <span class="style18">Copyright &copy 2018. Bms Blood Bank</span>
                </td>
            </tr>           
        </table> 
    </form>
</body>
</html>
