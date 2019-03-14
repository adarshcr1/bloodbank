<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Search.aspx.cs" Inherits="Search" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Search Blood Donar</title>
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
        .style20
        {
            color: #FF0000;
        }
        .auto-style1 {
            height: 37px;
        }
        .auto-style2 {
            height: 53px;
        }
        .auto-style3 {
            height: 32px;
        }
        </style> 
</head>
<body style="background-image:url(Images/medical-cross.jpg);background-repeat:repeat;background-attachment:fixed">
    <form id="form1" runat="server">


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
                                24 X 7 Emergency Blood 
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
        <table width="75%" align="center" cellspacing="0">
            <tr style="height:175px">
                <td>
                    <img src="Images/ARC_Banner3.jpg" width="100%" height="175px" />
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
            <tr bgcolor="white" style="height:455px">
                <td align="center" class="style2" valign="top">
                    <br /> 
                     <table width="50%" align="center" bgcolor="#ffe9b9">
                        <tr bgcolor="#999999">
                            <td colspan="2" align="center">
                               Find a Donor 
                            </td>
                        </tr>
                        <tr>
                            <td align="right" width="30%">
                                <span class="style19">City :</span>
                            </td>
                            <td align="left" width="70%">
                                <asp:DropDownList ID="ddl_City" Width="200px" runat="server">
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td align="right" width="30%" class="style19">
                                Blood Group :
                            </td>
                            <td align="left" width="70%">
                                <asp:DropDownList ID="ddl_BloodGroup" Width="200px" runat="server">
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
                                    
                                    
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2" align="center" style="font-weight:normal">
                                <asp:CheckBox ID="chk_TNC" Text="I have read and agree to abide by the terms and conditions" runat="server" />
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2" align="center">
                                <asp:Button ID="btn_Reset" runat="server" Width="75px" Text="Reset" 
                                    onclick="btn_Reset_Click" /> &nbsp
                                <asp:Button ID="btn_Search" runat="server" Width="75px" Text="Search" 
                                    onclick="btn_Search_Click" />
                            </td>
                        </tr>
                     </table> 
                     <br />
                    <asp:Panel ID="pnl_Results" runat="server">
                      <table width="75%" align="center">
                        <tr>
                            <td>
                                <asp:GridView ID="GridView1" Width="100%" runat="server" AllowPaging="True" 
                                    BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" 
                                    CellPadding="4" EnableModelValidation="True" 
                                    onselectedindexchanging="GridView1_SelectedIndexChanging">
                                    <Columns>
                                        <asp:CommandField SelectText="Select »" ShowSelectButton="True" />
                                    </Columns>
                                    <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                                    <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                                    <RowStyle BackColor="White" ForeColor="#330099" />
                                    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                                </asp:GridView>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style1">
                                <b><span class="style20">NOTE:</span> </b>You may request for Blood Donar&nbsp; by typing his phone number in the below Textbox
                                <br />
                            </td>
                        </tr>
                        <tr>
                            <td align="left" class="auto-style2" style="font-size: medium">
                                <asp:Label ID="Label1" runat="server" Height="40px" Text="Message to Be Sent: "></asp:Label>
                                <asp:TextBox ID="TextBox2" runat="server" TextMode="MultiLine" Width="517px" Height="35px"></asp:TextBox>

                            </td>
                        </tr>
                            



                        <tr>
                            <td align="center" style="font-weight:bold">
                                Phone no</td>
                        </tr>
                        <tr>
                            <td align="center" style="padding:2px">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:TextBox ID="TextBox1" Width="250px" runat="server"  onkeypress="numeric(event);" autocomplete="off"   onpaste="return false" MaxLength="10" ></asp:TextBox>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="invalid phone number" ValidationExpression="^[6-9][0-9]{9}$"></asp:RegularExpressionValidator>
                            </td>

                  
     


                        </tr>
                        <tr>
                            <td align="center" style="padding:2px" class="auto-style3">
                                <asp:Button ID="btn_Request" runat="server" Text="click to send" 
                                    width="120px" onclick="btn_Request_Click" />
                            </td>
                        </tr>
                     </table> 
                    </asp:Panel>                   
                </td>
            </tr>
            <tr bgcolor="#333300">
                <td align="center" class="style17">
                    <span class="style18">Copyright &copy 2018. Online Blood Bank </span> </td>   </tr>           
        </table>

    </form>
</body>
</html>
