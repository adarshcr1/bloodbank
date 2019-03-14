using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class WhoCan : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {            
            pnl_WhoCanDonate.Visible = true;
            pnl_TipsForDonating.Visible = false;
            pnl_BloodConditions.Visible = false;
            pnl_TypesOfDonation.Visible = false;
            pnl_BloodTesting.Visible = false; 
        }
    }
    protected void lnk_WhoCanDonate_Click(object sender, EventArgs e)
    {
        pnl_WhoCanDonate.Visible = true;
        pnl_TipsForDonating.Visible = false;
        pnl_BloodConditions.Visible = false;
        pnl_TypesOfDonation.Visible = false;
        pnl_BloodTesting.Visible = false;
    }
    protected void lnk_TipsForDonating_Click(object sender, EventArgs e)
    {
        pnl_TipsForDonating.Visible = true;
        pnl_WhoCanDonate.Visible = false;
        pnl_BloodConditions.Visible = false;
        pnl_TypesOfDonation.Visible = false;
        pnl_BloodTesting.Visible = false;
    }
    protected void lnk_BloodConditions_Click(object sender, EventArgs e)
    {
        pnl_BloodConditions.Visible = true;
        pnl_TipsForDonating.Visible = false;
        pnl_WhoCanDonate.Visible = false;
        pnl_TypesOfDonation.Visible = false;
        pnl_BloodTesting.Visible = false;
    }
    protected void lnk_TypesOfDonation_Click(object sender, EventArgs e)
    {
        pnl_TypesOfDonation.Visible = true; 
        pnl_BloodConditions.Visible = false;
        pnl_TipsForDonating.Visible = false;
        pnl_WhoCanDonate.Visible = false;
        pnl_BloodTesting.Visible = false;
    }
    protected void lnk_BloodTesting_Click(object sender, EventArgs e)
    {
        pnl_BloodTesting.Visible = true;
        pnl_TypesOfDonation.Visible = false;
        pnl_BloodConditions.Visible = false;
        pnl_TipsForDonating.Visible = false;
        pnl_WhoCanDonate.Visible = false;
    }
}