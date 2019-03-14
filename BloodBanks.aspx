<%@ Page Language="C#" AutoEventWireup="true" CodeFile="BloodBanks.aspx.cs" Inherits="BloodBanks" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Blood Banks</title>
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
            font-weight: normal;
            text-align: center;
        }
        .style21
        {
            color: #FFFFFF;
            font-weight: bold;
        }
        </style> 
</head>
<body style="background-image:url(Images/medical-cross.jpg);background-repeat:repeat;background-attachment:fixed">
    <form id="form1" runat="server">
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
                    <img src="Images/bloodbank_banner.jpg" width="100%" height="175px" />
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
                    <table bgcolor="#e0ebeb" border="yes" style="border-style:solid;border-width:1px;border-color:Black">
                       <tr bgcolor="#999966">
                            <td width="370" class="style19" align="center">
                                <span class="style21">Hospital/Blood Bank</span>
                            </td>
                            <td width="220" class="style20" align="center">
                                <span class="style18">
                                <b style="text-align: right">Contact No's</b></span>
                            </td>
                       </tr>
                       <tr>
                        <td width="370" align="left" class="style19">Bangalore Baptist Hospital</td>
                        <td width="220" class="style20" >23330322 / 23330323</td>
                      </tr>
                      <tr>
                        <td width="370" align="left" class="style19">Bangalore Children's Hospital &amp;    Research Centre</td>
                        <td width="220" class="style20" >28600252 / 28600552</td>
                      </tr>
                      <tr>
                        <td width="370" align="left" class="style19">Bangalore Hospital</td>
                        <td width="220" class="style20" >26562753 / 26565494</td>
                      </tr>
                      <tr>
                        <td width="370" align="left" class="style19">Bangalore Institute of Oncology</td>
                        <td width="220" class="style20" >22225698 / 22225644</td>
                      </tr>
                      <tr>
                        <td width="370" align="left" class="style19">Bhagwan Mahaveer    Jain Hospital</td>
                        <td width="220" class="style20" >22207640 / 22207649</td>
                      </tr>
                      <tr>
                        <td width="370" align="left" class="style19">BKF - Round Table Voluntary Blood    Bank</td>
                        <td width="220" class="style20" >26392697</td>
                      </tr>
                      <tr>
                        <td width="370" align="left" class="style19">Dr. Shivaji Rao's Blood Bank</td>
                        <td width="220" class="style20" >22224044</td>
                      </tr>
                      <tr>
                        <td width="370" align="left" class="style19">Grace Blood Bank</td>
                        <td width="220" class="style20" >23336608</td>
                      </tr>
                      <tr>
                        <td width="370" align="left" class="style19">HOSMAT</td>
                        <td width="220" class="style20" >25543746</td>
                      </tr>
                      <tr>
                        <td width="370" align="left" class="style19">Karnataka Red Cross Blood Bank (    Voluntary )</td>
                        <td width="220" class="style20" >22268435</td>
                      </tr>
                      <tr>
                        <td width="370" align="left" class="style19">KIMS Hospital</td>
                        <td width="220" class="style20" >26673056 / 26624870</td>
                      </tr>
                      <tr>
                        <td width="370" align="left" class="style19">Lions Blood Bank ( Voluntary )</td>
                        <td width="220" class="style20" >22266807</td>
                      </tr>
                      <tr>
                        <td width="370" align="left" class="style19">Jeeva Voluntary Blood Bank &amp;    Diagnotic Centre</td>
                        <td width="220" class="style20" >26500736</td>
                      </tr>
                      <tr>
                        <td width="370" align="left" class="style19">Jayadeva Institute of Cardiology</td>
                        <td width="220" class="style20" >26534600</td>
                      </tr>
                      <tr>
                        <td width="370" align="left" class="style19">Minerva Voluntary Blood Bank</td>
                        <td width="220" class="style20" >26574830</td>
                      </tr>
                      <tr>
                        <td width="370" align="left" class="style19">M S Ramaiah    Medical Hospital</td>
                        <td width="220" class="style20" >23606545 / 23606524</td>
                      </tr>
                      <tr>
                        <td width="370" align="left" class="style19">Narayana Hrudayala</td>
                        <td width="220" class="style20" >27835000 / 27835001</td>
                      </tr>
                      <tr>
                        <td width="370" align="left" class="style19">Navarang Blood Bank</td>
                        <td width="220" class="style20" >23521233</td>
                      </tr>
                      <tr>
                        <td width="370" align="left" class="style19">Naveen Blood Bank</td>
                        <td width="220" class="style20" >26341907</td>
                      </tr>
                      <tr>
                        <td width="370" align="left" class="style19">NIMHANS</td>
                        <td width="220" class="style20" >26995000 / 26568121</td>
                      </tr>
                      <tr>
                        <td width="370" align="left" class="style19">Rashtrothana Blood Bank</td>
                        <td width="220" class="style20" >26612730</td>
                      </tr>
                      <tr>
                        <td width="370" align="left" class="style19">Rotary - TTK Blood Bank</td>
                        <td width="220" class="style20" >25293486 / 25287903</td>
                      </tr>
                      <tr>
                        <td width="370" align="left" class="style19">Sagar Apollo    Hospital</td>
                        <td width="220" class="style20" >26536700 / 26536701</td>
                      </tr>
                      <tr>
                        <td width="370" align="left" class="style19">Sanjay Gandhi    Accodent Hospital    &amp; Research Institute </td>
                        <td width="220" class="style20" >26564516</td>
                      </tr>
                        <tr>
                        <td width="370" align="left" class="style19">Sushruta Voluntary Blood Bank</td>
                        <td width="220" class="style20" >23447666 / 23340153</td>
                      </tr>
                      <tr>
                        <td width="370" align="left" class="style19">Unique Blood Bank</td>
                        <td width="220" class="style20" >26700685 / 26709970</td>
                      </tr>
                      <tr>
                        <td width="370" align="left" class="style19">Vanivilas Hospital</td>
                        <td width="220" class="style20" >26705206</td>
                      </tr>
                      <tr>
                        <td width="370" align="left" class="style19">Victoria Hospital</td>
                        <td width="220" class="style20" >26701150</td>
                      </tr>
                    </table> 
                    <br />           
                </td>
            </tr>
            <tr bgcolor="#333300">
                <td align="center" class="style17">
                    <span class="style18">Copyright &copy 2018. Online Blood Bank</span>
                </td>
            </tr>           
        </table> 
    </form>
</body>
</html>

