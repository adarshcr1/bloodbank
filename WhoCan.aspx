<%@ Page Language="C#" AutoEventWireup="true" CodeFile="WhoCan.aspx.cs" Inherits="WhoCan" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Who Can?</title>
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
            font-family: "Times New Roman", Times, serif;
            font-size: x-large;
            color: #666666;
            font-weight: bold;
        }
        .style20
        {
            color: #003366;
            font-weight: bold;
        }
        .style21
        {
            color: #003366;
        }
        .style22
        {
            font-family: Calibri;
            text-align: justify;
        }
        .style23
        {
            text-align: justify;
        }
        .style24
        {
            font-family: Calibri;
            color: #FFFFFF;
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
                    <img src="Images/binaryimage.jpg" width="100%" height="175px" />
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
                <td valign="top">
                    <table width="100%" align="center">
                        <tr>
                            <td width="20%" style="padding-right:5px;border-right-style:solid;border-right-width:1px;border-right-color:Maroon" valign="top">
                                <table width="100%" style="font-family:Calibri;font-size:15px">
                                    <tr bgcolor="#b6b692">
                                        <td align="right">
                                            <asp:LinkButton ID="lnk_WhoCanDonate" runat="server" 
                                                onclick="lnk_WhoCanDonate_Click">Who can Donate »</asp:LinkButton>
                                        </td>
                                    </tr>                                    
                                    <tr bgcolor="#b6b692">
                                        <td align="right">
                                            <asp:LinkButton ID="lnk_BloodConditions" runat="server" 
                                                onclick="lnk_BloodConditions_Click">Blood Conditions »</asp:LinkButton>
                                        </td>
                                    </tr>
                                    <tr bgcolor="#b6b692">
                                        <td align="right">
                                            <asp:LinkButton ID="lnk_TypesOfDonation" runat="server" onclick="lnk_TypesOfDonation_Click">Types of Donation »</asp:LinkButton>
                                        </td>
                                    </tr>
                                    <tr bgcolor="#b6b692">
                                        <td align="right">
                                            <asp:LinkButton ID="lnk_BloodTesting" runat="server" 
                                                onclick="lnk_BloodTesting_Click">Blood Testing »</asp:LinkButton>
                                        </td>
                                    </tr>
                                    <tr bgcolor="#b6b692">
                                        <td align="right">
                                            <asp:LinkButton ID="lnk_TipsForDonating" runat="server" 
                                                onclick="lnk_TipsForDonating_Click">Tips for Donating »</asp:LinkButton>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                            <td style="padding-right:5px">
                                <asp:Panel ID="pnl_WhoCanDonate" Width="100%" runat="server">
                                    <table width="95%" align="center">
                                        <tr>
                                            <td>
                                                <span class="style19">Who can Donate Blood?</span>
                                            </td>
                                        </tr>
                                        <tr style="font-family: Calibri">
                                            <td>
                                                    In order to donate blood you should not be suffering from any of the following 
                                                    diseases or taking medicines for them
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <span class="style17">» Hepatitis B, C </span>
                                                <br class="style17" />
                                                <span class="style17">» AIDS # Diabetes (are you under medication currently?)
                                                </span>
                                                <br class="style17" />
                                                <span class="style17">» Fits/ Convulsions (are you under medication currently?)
                                                </span>
                                                <br class="style17" />
                                                <span class="style17">» Cancer # Leprosy or any other infectious diseases </span>
                                                <br class="style17" />
                                                <span class="style17">» Any allergies (Only if you are suffering from severe 
                                                symptoms) </span>
                                                <br class="style17" />
                                                <span class="style17">» Hemophilia/ Bleeding problems </span>
                                                <br class="style17" />
                                                <span class="style17">» Kidney disease </span>
                                                <br class="style17" />
                                                <span class="style17">» Heart disease </span>
                                                <br class="style17" />
                                                <span class="style17">» Hormonal disorders </span>
                                                <br class="style17" />
                                                <span class="style17">» Any other type of Jaundice (within 5 years) </span>
                                                <br class="style17" />
                                                <span class="style17">» Tuberculosis (within 2 years) </span>
                                                <br class="style17" />
                                                <span class="style17">» Chicken Pox (within 1 year) </span>
                                                <br class="style17" />
                                                <span class="style17">» Malaria (within 1 year) </span>
                                                <br class="style17" />
                                                <span class="style17">» Organ Transplant (within one year) </span>
                                                <br class="style17" />
                                                <span class="style17">» Blood Transfusion (within the last 6 months) </span>
                                                <br class="style17" />
                                                <span class="style17">» Pregnancy (within the last 6 months) </span>
                                                <br class="style17" />
                                                <span class="style17">» Blood Donation (within the last 3 months) </span>
                                                <br class="style17" />
                                                <span class="style17">» Major Surgery (within the last 3 months) </span>
                                                <br class="style17" />
                                                <span class="style17">» Small Pox Vaccination (within the last 3weeks) </span>
                                                <br class="style17" />
                                                <span class="style17">» Hemoglobin deficiency / Anemia (recently) </span>
                                                <br class="style17" />
                                                <span class="style17">» Drastic weight loss (recently)</span> <br />
                                            </td>
                                        </tr>
                                    </table>
                                    <br />
                                </asp:Panel>
                                <asp:Panel ID="pnl_TipsForDonating" Width="100%" runat="server">
                                    <table width="95%" align="center">
                                        <tr>
                                            <td>
                                                <span class="style19">Tips for Donating</span>
                                            </td>
                                        </tr>
                                        <tr style="height:430px">
                                            <td style="font-family: Calibri" valign="top">
                                                » Please have a good meal at least 3 hours before donating blood.<br /> 
                                                <br />
                                                » Please accept the snacks offered to you after the donation, it is vital you have them. You are recommended to have a good meal later. <br />
                                                <br />
                                                » Please avoid smoking on the day before donating. You can smoke 3 hours after donation. <br />
                                                <br />
                                                » You will not be eligible to donate blood if you have consumed alcohol 48 hours before donatio <br />
                                            </td>
                                        </tr>
                                    </table>
                                </asp:Panel>
                                <asp:Panel ID="pnl_BloodConditions" Width="100%" runat="server">
                                    <table width="95%" align="center">
                                        <tr>
                                            <td>
                                                <span class="style19">Blood Conditions</span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <ul>
                                                    <li class="style23">
                                                        <span class="style17"><span class="style20">Hemorrhage (bleeding):</span> Blood 
                                                        leaking out of blood vessels may be obvious, as from a wound penetrating the 
                                                        skin. Internal bleeding (such as into the intestines, or after a car accident) 
                                                        may not be immediately apparent.</span><br class="style17" />    
                                                    </li>
                                                    <li class="style22">
                                                        <span class="style21"><b>Hematoma:</b></span> A collection of blood inside the 
                                                        body tissues. Internal bleeding often causes a hematoma.
                                                    </li>
                                                    <li class="style22">
                                                        <span class="style21"><b>Leukemia:</b></span> A form of blood cancer, in which 
                                                        white blood cells multiply abnormally and circulate through the blood. The 
                                                        excessive large numbers of white cells deposit in the body&#39;s tissues, causing 
                                                        damage.
                                                    </li>
                                                    <li class="style22">
                                                        <b><span class="style21">Multiple myeloma:</span> </b>A form of blood cancer of 
                                                        plasma cells similar to leukemia. Anemia, kidney failure and high blood calcium 
                                                        levels are common in multiple myeloma.
                                                    </li>
                                                    <li class="style22">
                                                        <span class="style21"><b>Lymphoma:</b></span> A form of blood cancer, in which 
                                                        white blood cells multiply abnormally inside lymph nodes and other tissues. The 
                                                        enlarging tissues, and disruption of blood&#39;s functions, can eventually cause 
                                                        organ failure.        
                                                    </li>
                                                    <li class="style22">
                                                        <span class="style21"><b>Anemia:</b></span> An abnormally low number of red 
                                                        blood cells in the blood. Fatigue and breathlessness can result, although anemia 
                                                        often causes no noticeable symptoms.    
                                                    </li>
                                                    <li class="style22">
                                                        <span class="style21"><b>Hemolytic anemia:</b></span> Anemia caused by rapid 
                                                        bursting of large numbers of red blood cells (hemolysis). An immune system 
                                                        malfunction is one cause.        
                                                    </li>
                                                    <li class="style22">
                                                        <span class="style21"><b>Hemochromatosis:</b></span> A disorder causing 
                                                        excessive levels of iron in the blood. The iron deposits in the liver, pancreas 
                                                        and other organs, causing liver problems and diabetes.
                                                    </li>
                                                    <li class="style22">
                                                        <span class="style21"><b>Sickle cell disease:</b></span> A genetic condition in 
                                                        which red blood cells periodically lose their proper shape (appearing like 
                                                        sickles, rather than discs). The deformed blood cells deposit in tissues, 
                                                        causing pain and organ damage.    
                                                    </li>
                                                    <li class="style22">
                                                        <span class="style21"><b>Bacteremia:</b></span> Bacterial infection of the 
                                                        blood. Blood infections are serious, and often require hospitalization and 
                                                        continuous antibiotic infusion into the veins.    
                                                    </li>
                                                    <li class="style22">
                                                        <span class="style21"><b>Malaria:</b></span> Infection of red blood cells by 
                                                        Plasmodium, a parasite transmitted by mosquitos. Malaria causes episodic fevers, 
                                                        chills, and potentially organ damage.    
                                                    </li>
                                                    <li class="style22">
                                                        <span class="style21"><b>Thrombocytopenia:</b></span> Abnormally low numbers of 
                                                        platelets in the blood. Severe thrombocytopenia may lead to bleeding.    
                                                    </li>
                                                    <li class="style22">
                                                        <span class="style21"><b>Leukopenia:</b></span> Abnormally low numbers of white 
                                                        blood cells in the blood. Leukopenia can result in difficulty fighting 
                                                        infections.    
                                                    </li>
                                                    <li class="style22">
                                                        <span class="style21"><b>Disseminated intravascular coagulation (DIC):</b></span> 
                                                        An uncontrolled process of simultaneous bleeding and clotting in very small 
                                                        blood vessels. DIC usually results from severe infections or cancer.    
                                                    </li>
                                                    <li class="style22">
                                                        <span class="style21"><b>Hemophilia:</b></span> An inherited (genetic) 
                                                        deficiency of certain blood clotting proteins. Frequent or uncontrolled bleeding 
                                                        can result from hemophilia.
                                                    </li>
                                                </ul>                                                
                                            </td>
                                        </tr>
                                    </table>
                                </asp:Panel>
                                <asp:Panel ID="pnl_TypesOfDonation" Width="100%" runat="server">
                                    <table width="95%" align="center">
                                        <tr>
                                            <td>
                                                <span class="style19">Types of Donation</span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="style17">
                                                <div class="style23">
                                                    Donation of &#39;whole blood&#39; is the most common type of blood donation, but there 
                                                    are a few other types of blood donation. Donation types include:
                                                </div>
                                                <ul>
                                                    <li>Blood (or Whole Blood)</li>
                                                    <li>Platelets</li>
                                                    <li>Double Red Cells</li>
                                                    <li>Plasma</li>
                                                </ul>
                                                In addition, there are two special donation types that have to do with who is 
                                                making the donation:
                                                <ul>
                                                    <li>Autologous</li>
                                                    <li>Directed</li>
                                                </ul>
                                                <div class="style23">
                                                    The best type of donation for each individual depends on their blood type, 
                                                    physical characteristics, personal preferences and the availability of 
                                                    convenient donation opportunities. Giving the &quot;right type&quot; of donation helps 
                                                    ensure the best use of your valuable contribution.
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <br />
                                                <table width="90%" align="center" style="border-style:solid;border-width:1px;border-color:Black">
                                                    <tr bgcolor="#999966">
                                                        <td colspan="2" align="center" style="font-weight: 700; font-family: Calibri">Blood (or Whole Blood) Donation</td>
                                                    </tr>
                                                    <tr>
                                                        <td width="25%" valign="middle" align="center">
                                                            <img src="Images/RedCell_Symbol.thumbnail.jpg" />
                                                        </td>
                                                        <td width="75%">
                                                            <ul>
                                                                <li class="style22">This is the most common type of donation, during which approximately a pint of 'whole blood' is given.</li>
                                                                <li class="style22">The blood is separated into transfusable components – red cells, plasma, platelets and/or cryoprecipitated AHF.</li>
                                                                <li class="style22">This type of blood donation usually takes about an hour, though the actual donation takes about 8-10 minutes.</li>
                                                                <li class="style22">You are eligible to donate 'whole blood' every 56 days.</li>
                                                            </ul>
                                                        </td>
                                                    </tr>
                                                    <tr bgcolor="#999966">
                                                        <td colspan="2" align="center" style="font-weight: 700; font-family: Calibri">Platelet Apheresis</td>
                                                    </tr>
                                                    <tr>
                                                        <td width="25%" valign="middle" align="center">
                                                            <img src="Images/Platelets_Symbol.thumbnail.jpg" />
                                                        </td>
                                                        <td width="75%">
                                                            <ul>
                                                                <li class="style22">Platelet donations are collected at select American Red Cross Blood Donation centers only.</li>
                                                                <li class="style22">During this type of donation, an apheresis machine collects the platelets and some plasma and returns the red cells and most of the plasma back to the donor.</li>
                                                                <li class="style22">Platelets are a vital element of cancer and organ transplant treatments, as well as many surgical procedures as they help prevent massive blood loss.</li>
                                                                <li class="style22">A single donation of platelets collected by apheresis can constitute one or several transfusable units, while it takes about four to six whole blood donations to constitute a single transfusable unit of platelets.</li>
                                                                <li class="style22">The donation takes approximately one and-a-half to two and-a-half hours.</li>
                                                                <li class="style22">Call 1-800-RED-CROSS to find platelet apheresis donation opportunities near you.</li>
                                                            </ul>
                                                        </td>
                                                    </tr>
                                                    <tr bgcolor="#999966">
                                                        <td colspan="2" align="center" style="font-weight: 700; font-family: Calibri">Plasma Apheresis</td>
                                                    </tr>
                                                    <tr>
                                                        <td width="25%" valign="middle" align="center">
                                                            <img src="Images/Plasma_Symbol.thumbnail.jpg" />
                                                        </td>
                                                        <td width="75%">
                                                            <ul>
                                                                <li class="style22">Plasma is collected simultaneously with a platelet donation and is collected at select American Red Cross Donation Centers only.</li>
                                                                <li class="style22">During a plasma apheresis donation, the blood is collected by a machine, which separates the plasma, red cells and platelets and returns the red cells and/or platelets back to the donor.</li>
                                                                <li class="style22">While donors with Type AB blood can only give red cells to other Type AB recipients, they are the universal plasma donors. The ‘right type’ donation for AB donors may be an apheresis donation of plasma or plasma and platelets.</li>
                                                                <li class="style22">The donation takes approximately 1 hour and 15 minutes.</li>
                                                                <li class="style22">Call 1-800-RED-CROSS to find plasma apheresis donation opportunities near you. </li>                                                                
                                                            </ul>
                                                        </td>
                                                    </tr>
                                                    <tr bgcolor="#999966">
                                                        <td colspan="2" align="center" style="font-weight: 700; font-family: Calibri">Double Red Cells</td>
                                                    </tr>
                                                    <tr>
                                                        <td width="25%" valign="middle" align="center">
                                                            <img src="Images/DoubleRed_Symbol.thumbnail.jpg" />
                                                        </td>
                                                        <td width="75%">
                                                            <ul>
                                                                <li class="style22">Double red cell donation is done with the help of an apheresis machine which collects the red cells but returns most of the plasma and platelets to the donor.</li>
                                                                <li class="style22">Red cells are the most transfused blood component, and certain blood types are often in short supply.</li>
                                                                <li class="style22">Double red cell donations from Type O donors and donors with Rh-negative blood types play a very important role in maintaining blood supply levels.</li>
                                                                <li class="style22">Donors need to meet slightly higher hemoglobin and body height/weight requirements in order to be able to give a double red cell donation.</li>
                                                                <li class="style22">Double red cell donations take approximately 30 minutes longer than a whole blood donation and allow you to give two units of red cells.</li>  
                                                                <li class="style22">Available in most donation centers and some blood drives.</li>                                                              
                                                                <li class="style22">Donors are eligible to give double red cells every 112 days.</li>
                                                            </ul>
                                                        </td>
                                                    </tr>
                                                    <tr bgcolor="#999966">
                                                        <td colspan="2" align="center" style="font-weight: 700; font-family: Calibri">Autologous Donations</td>
                                                    </tr>
                                                    <tr>
                                                        <td width="75%" colspan="2">
                                                            <ul>
                                                                <li class="style22">These are donations that individuals give for their own use with a doctor's prescription - for example, before a surgery.</li>
                                                                <li class="style22">Not subject to the same testing criteria as other donations, and therefore, if they are not used by the patient, they are discarded.</li>
                                                                <li class="style22">Must be scheduled in advance by calling 1-800-RED-CROSS. Be sure to indicate that you are requesting an autologous appointment when scheduling.</li>                                                                
                                                            </ul>
                                                        </td>
                                                    </tr>
                                                    <tr bgcolor="#999966">
                                                        <td colspan="2" align="center" style="font-weight: 700; font-family: Calibri">Directed Donations</td>
                                                    </tr>
                                                    <tr>
                                                        <td width="75%" colspan="2">
                                                            <ul>
                                                                <li class="style22">Donations made for a specific patient by a friend or family member with a doctor's prescription.</li>
                                                                <li class="style22">Subject to all testing requirements of other donations, and if for some reason they are not or cannot be utilized by the patient, they may be made available for other patients in need.</li>
                                                                <li class="style22">Please call 1-800-RED-CROSS if you would like to schedule a directed donation.</li>                                                                
                                                            </ul>
                                                        </td>
                                                    </tr>
                                                </table>
                                                <br />
                                            </td>
                                        </tr>
                                    </table>                                    
                                </asp:Panel>
                                <asp:Panel ID="pnl_BloodTesting" Width="100%" runat="server">
                                    <table width="95%" align="center">
                                        <tr>
                                            <td>
                                                <span class="style19">Blood Testing</span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="style22">
                                                There are laboratory tests for multiple infectious disease markers on every unit 
                                                of donated blood. Tests are upgraded or replaced with more sensitive 
                                                technologies as these become available. These tests include:
                                                <ul>
                                                    <li>Chagas disease (T. cruzi)</li>
                                                    <li>Hepatitis B virus (HBV)</li>
                                                    <li>Hepatitis C virus (HCV 3.0)</li>
                                                    <li>Human Immunodeficiency viruses, Types 1 and 2 (HIV 1,2)</li>
                                                    <li>Human T-Lymphotropic virus (HTLV-I/II)</li>
                                                    <li>Syphilis (Treponema pallidum)</li>
                                                    <li>West Nile virus (WNV)</li>
                                                </ul>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <table width="90%" align="center" style="border-style:solid;border-width:1px;border-color:Black">
                                                    <tr>
                                                        <td colspan="2" bgcolor="#666633" align="left">
                                                            <span class="style24">Chagas disease (T. cruzi) Antibody Testing (2007)</span>
                                                        </td>
                                                    </tr>
                                                    <tr bgcolor="#EEEEEE">                                                    
                                                        <td width="75%" style="text-align: justify; font-family: Calibri">
                                                            Chagas disease is a serious, often fatal disease caused by the parasite Trypanosoma cruzi (T. cruzi). The agent is endemic in the Americas but most commonly occurs in Latin America. The test used is an enzyme-linked immunosorbent assay (ELISA) for the qualitative detection of antibodies to T. cruzi in human serum and plasma specimens. A radioimmunoprecipitation assay (RIPA) is used in confirmatory testing. Because rates of recipient infection from transfusion are so low, the Red Cross qualifies each donor (rather than each donation) for negativity to antiboides to T. cruzi.
                                                        </td>
                                                        <td width="25%" align="center">
                                                            <img src="Images/for_hospitals_1.png" />
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td colspan="2" bgcolor="#666633" align="left">
                                                            <span class="style24">
                                                                Hepatitis B virus (HBV) B Surface Antigen (HBsAg) (1971), Hepatitis B Core Antibody (HBc) (1986), and Nucleic Acid Testing (NAT) (2009)
                                                            </span>
                                                        </td>
                                                    </tr>
                                                    <tr>                                                    
                                                        <td width="75%" style="text-align: justify; font-family: Calibri">
                                                            HBsAg and HBV DNA are the first viral markers to circulate in an individual infected with HBV. Anti-HBc appears in the serum of individuals infected with HBV one to four weeks after the appearance of HBsAg, and at the onset of symptoms for the minority of adults (5% or less) who develop symptoms. A chemiluminescent immunoassay (ChLIA) is used for the qualitative detection of HBsAg and anti-HBc in human serum and plasma specimens. Specific antigen neutralization is used for HBsAg reactive confirmation; anti-HBc confirmation is done by testing each individual reactive donation sample by ultrasensitive HBV DNA detection by polymerase chain reaction (PCR, a type of NAT). HBV DNA detection by NAT for routine blood donor screening is done using transcription mediated amplification (TMA) technology; a type of NAT similar to PCR. Screening is performed in small minipools of 16 donations using a combined test that detects HBV DNA as well as HIV and HCV RNA. All TMA-reactive donations are confirmed by PCR. NAT using TMA in minipools of 16 reduces the window as compared to HBsAg detection by 4-7 days. The risk of hepatitis B infection through blood transfusion is between 1 in 200,000 and 1 in 500,0001,2.
                                                        </td>
                                                        <td width="25%" align="center">
                                                            <img src="Images/for_hospitals_2.png" />
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td colspan="2" bgcolor="#666633" align="left">
                                                            <span class="style24">Hepatitis C virus (HCV 3.0) Antibody testing (1990) and Nucleic Acid Testing (NAT) (1999)</span>
                                                        </td>
                                                    </tr>
                                                    <tr bgcolor="#EEEEEE">                                                    
                                                        <td width="75%" style="text-align: justify; font-family: Calibri">
                                                            HCV is known to be the causative agent for most, if not all, blood-borne non-A, non-B hepatitis (NANBH). The enzyme-linked, immunosorbent assay (ELISA) test system used for blood donor screening is a third generation, qualitative test that detects antibodies to HCV in human serum or plasma. A recombinant immunoblot assay (RIBA) is used for confirmation of anti-HCV reactivity. HCV RNA detection, by NAT using TMA in minipools of 16 as described above, reduces the window period between infection and the detection of antibody by about 1-2 months. The current risk of transfusion-transmitted HCV is 1 in 1,390,0001.
                                                        </td>
                                                        <td width="25%" align="center">
                                                            <img src="Images/for_hospitals_3.png" />
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td colspan="2" bgcolor="#666633" align="left">
                                                            <span class="style24">
                                                                Human Immunodeficiency viruses, Types 1 and 2 (HIV 1,2) Antibody testing (1985) and NAT (1999)
                                                            </span>
                                                        </td>
                                                    </tr>
                                                    <tr>                                                    
                                                        <td width="75%" style="text-align: justify; font-family: Calibri">
                                                            Enzyme Immunoassay (EIA) is used for the qualitative detection of antibodies to both HIV-1 and HIV-2 in a combined ChLIA test that uses human serum or plasma. HIV-1 and HIV- 2 confirmation is performed using one or a combination of tests including an HIV-1 indirect immunofluorescence assay (IFA) and HIV-2 EIA; a rapid diagnostic test is used for HIV-1 and HIV-2 differentiation. HIV-1 antibody detection includes the major HIV groups and variants including HIV-1 Group O. HIV RNA detection by NAT, using TMA in minipools of 16 (as described for HBV testing), closes the window period between infection and the detection of antibody by about 4-7 days. The current risk of transfusion-transmission of HIV is approximately 1 in 2,000,0001.
                                                        </td>
                                                        <td width="25%" align="center">
                                                            <img src="Images/for_hospitals_4.png" />
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td colspan="2" bgcolor="#666633" align="left">
                                                            <span class="style24">Human T-Lymphotropic virus Antibody testing (HTLV-I/II) (1988)</span>
                                                        </td>
                                                    </tr>
                                                    <tr bgcolor="#EEEEEE">                                                    
                                                        <td width="75%" style="text-align: justify; font-family: Calibri">
                                                            HTLV-I is a human Type-C retrovirus that has been associated with neoplastic conditions and a variety of demyelinating disorders. HTLV-II is not yet proven unequivocally to be of significant clinical concern. Qualitative antibody detection for both HTLV-I and HTLV-II in a combined test is performed with a ChLIA. The current risk of transfusion-transmitted (HTLV-I) is less than 1 in 2,000,0003.
                                                        </td>
                                                        <td width="25%" align="center">
                                                            <img src="Images/for_hospitals_5.png" />
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td colspan="2" bgcolor="#666633" align="left">
                                                            <span class="style24">
                                                                Syphilis (Treponema pallidum) Antibody testing (1940's)
                                                            </span>
                                                        </td>
                                                    </tr>
                                                    <tr>                                                    
                                                        <td width="75%" style="text-align: justify; font-family: Calibri">
                                                            The test used for syphilis is a qualitative screening test that detects the presence of antibodies to Treponema pallidum. The assay is based on the principle of agglutination and pattern recognition. Confirmation is performed using another serologic test for total antibodies, an EIA, as well as a test for reagin (a protein-like substance that is present during acute infection and for several months following resolution of infection).  No cases of transfusion-transmitted syphilis have been recorded for more than 30 years.
                                                        </td>
                                                        <td width="25%" align="center">
                                                            <img src="Images/for_hospitals_6.png" />
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td colspan="2" bgcolor="#666633" align="left">
                                                            <span class="style24">West Nile virus (WNV) Antibody testing (2003) </span>
                                                        </td>
                                                    </tr>
                                                    <tr bgcolor="#EEEEEE">                                                    
                                                        <td width="75%" style="text-align: justify; font-family: Calibri">
                                                            WNV is a flavivirus commonly found in Africa, West Asia, and the Middle East that is most commonly transmitted to humans through mosquito bites; it was first introduced in the US in 1999 and reached epidemic proportions in 2002, the same year that WNV was documented to be transmitted by blood and organs. WNV RNA is detected by NAT using the same type of assay as used for HBV, HIV-1 and HCV. Following the introduction of blood donor screening there have been 11 documented cases of transfusion transmission; all are due to donations having very low viral loads and none involved donations to the Red Cross. Measures are in place to reduce the risk of such transmissions from occurring in WNV epidemic areas during epidemic time periods by converting from testing donations in minipools of 16 (as described for HBV, HIV-1 and HCV NAT) to testing donors individually.
                                                        </td>
                                                        <td width="25%" align="center">
                                                            <img src="Images/for_hospitals_7.png" />
                                                        </td>
                                                    </tr>
                                                </table> 
                                                <br />
                                            </td>
                                        </tr>
                                    </table>
                                </asp:Panel>
                            </td>
                        </tr>
                    </table> 
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

