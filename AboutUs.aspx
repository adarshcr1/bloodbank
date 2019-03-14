<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AboutUs.aspx.cs" Inherits="AboutUs" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>About Us</title>
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
            color: #CCFFCC;
        }
        .style20
        {
            color: #003366;
        }
        .style21
        {
            font-size: large;
            font-weight: normal;
        }
    </style>
    <style type="text/css">
        html { height: 100% }
        body { height: 100%; margin: 0; padding: 0 }
        #map_canvas { height: 100% }
            </style>
    <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyC6v5-2uaq_wusHDktM9ILcqIrlPtnZgEk&sensor=false"></script>
    <script type="text/javascript" src="http://maps.googleapis.com/maps/api/js?sensor=false&libraries=places"></script>
    <script type="text/javascript">
        if (navigator.geolocation) 
        {
            navigator.geolocation.getCurrentPosition(success);
        }
        else 
        {
            alert("Geo Location is not supported on your current browser!");
        }

        function success(position) 
        {
            var lat = position.coords.latitude;
            var long = position.coords.longitude;
            var city = position.coords.locality;
            var myLatlng = new google.maps.LatLng(lat, long);
            var myOptions = { center: myLatlng, zoom: 12, mapTypeId: google.maps.MapTypeId.ROADMAP };
            var map = new google.maps.Map(document.getElementById("map_canvas"), myOptions);
            var marker = new google.maps.Marker({ position: myLatlng, title: "lat: " + lat + " long: " + long });
            marker.setMap(map);
            var infowindow = new google.maps.InfoWindow({ content: "<b>User Address</b><br/> Latitude:" + lat + "<br /> Longitude:" + long + "" });
            //infowindow.open(map, marker);
        }
    </script> 
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
                    <img src="Images/About-Us-Banner.png" width="100%" height="175px" />
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
            <tr bgcolor="white" style="height:400px">
                <td align="center" class="style2" valign="top">
                    <br />
                        <table width="95%" align="center">
                        <tr>
                            <td width="70%" valign="middle" style="border-right-style:solid;border-right-color:Navy;border-right-width:2px;padding:10px">
                                &nbsp;</td>
                            <td width="30%" style="padding:10px">
                                <br />
                                <table width="100%" style="border-style:dotted;border-width:1px;border-color:Black">
                                    <tr bgcolor="#ff6600">
                                        <td align="left" style="padding:5px">
                                            <span class="style13">Contact Info</span>
                                        </td>                                        
                                    </tr>
                                    <tr>
                                        <td style="padding:5px">
                                            <span class="style8"><b>Phone: </b></span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="padding:5px">
                                            <span class="style8"><b>Email: </b></span>&nbsp;</td>
                                    </tr>
                                </table>
                                <br />
                                <table width="100%" style="border-style:dotted;border-width:1px;border-color:Black">
                                    <tr bgcolor="#ff6600">
                                        <td align="left" style="padding:5px">
                                            <span class="style13">Location</span>
                                        </td>                                        
                                    </tr>
                                    <tr>
                                        <td style="padding:5px">
                                            BMS</td>
                                    </tr>                                    
                                </table>
                                <br />
                                <table width="100%" style="border-style:dotted;border-width:1px;border-color:Black">
                                    <tr bgcolor="#ff6600">
                                        <td align="left" style="padding:5px">
                                            <span class="style13">Google Map</span>
                                        </td>                                        
                                    </tr>
                                    <tr>
                                        <td style="padding:5px">
                                            <div id="map_canvas" style="width: 100%; height: 150px"/>
                                                                     
                                        </td>
                                    </tr>                                    
                                </table>
                               <br />
                            </td>
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


