using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Data.SqlClient;
using System.Configuration;

public partial class Home : System.Web.UI.Page
{
    string Connection = ConfigurationManager.ConnectionStrings["CONN"].ConnectionString;
    string FromEmailID = "bms.bloodbank@gmail.com";
    string EmailPassword = "8073881704";
    string ToEmailID = "adarsh.ram01@gmail.com"; //change this to receive emails 
    static string donarEmailIDs = "";
    static string temp = "";

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

        }
    }
    protected void ddl_Year_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ddl_Year.SelectedIndex > 0 && ddl_Month.SelectedIndex > 0)
        {
            GetDay();
        }
    }
    protected void GetDay()
    {
        int dayCount = DateTime.DaysInMonth(int.Parse(ddl_Year.Text), int.Parse(ddl_Month.Text));
        ddl_Day.Items.Clear();
        ddl_Day.Items.Add("DD");
        for (int i = 1; i <= dayCount; i++)
        {
            ddl_Day.Items.Add(i.ToString());
        }
    }
    protected void ddl_Month_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ddl_Year.SelectedIndex > 0 && ddl_Month.SelectedIndex > 0)
        {
            GetDay();
        }
    }
    protected void btn_OK_Click(object sender, EventArgs e)
    {
        if (txt_Name.Text.Trim().Length == 0)
        {
            Response.Write("<script>alert('Please enter your Name')</script>");
            txt_Name.Focus();
        }
        else if (txt_Organization.Text.Trim().Length == 0)
        {
            Response.Write("<script>alert('Please enter your Organization Name')</script>");
            txt_Organization.Focus();
        }
        else if (txt_ContactNo.Text.Trim().Length == 0)
        {
            Response.Write("<script>alert('Please enter your Contact No')</script>");
            txt_ContactNo.Focus();
        }
        else if (txt_EmailID.Text.Trim().Length == 0)
        {
            Response.Write("<script>alert('Please enter your Email ID')</script>");
            txt_EmailID.Focus();
        }
        else if (ddl_Year.SelectedIndex == 0)
        {
            Response.Write("<script>alert('Please select the Year')</script>");
            ddl_Year.Focus();
        }
        else if (ddl_Month.SelectedIndex == 0)
        {
            Response.Write("<script>alert('Please select the Month')</script>");
            ddl_Month.Focus();
        }
        else if (ddl_Day.SelectedIndex == 0)
        {
            Response.Write("<script>alert('Please select the Day')</script>");
            ddl_Day.Focus();
        }
        else
        {
            SendEmail();
        }
    }
    protected void SendEmail()
    {
        try
        {
            SmtpClient smtpServer = new SmtpClient();
            MailMessage mail = new MailMessage();
            smtpServer.Credentials = new System.Net.NetworkCredential(FromEmailID, EmailPassword);
            smtpServer.Port = 587;
            smtpServer.Host = "smtp.gmail.com";
            smtpServer.EnableSsl = true;
            mail.From = new MailAddress(FromEmailID);
            mail.To.Add(txt_EmailID.Text);
            mail.Subject = "Bms Blood Bank :: Blood Donation Camp Request Alert";
            mail.Body = "Dear "+txt_Name.Text +"," + Environment.NewLine + Environment.NewLine + "You have received a new Blood Donation Camp Request, Details are as below:" + Environment.NewLine + "Requestor Name :" + txt_Name.Text + Environment.NewLine + "Organization :" + txt_Organization.Text + Environment.NewLine + "Contact No :" + txt_ContactNo.Text + Environment.NewLine + "Email ID :" + txt_EmailID.Text + Environment.NewLine + "Blood Donation Camp Date :" + ddl_Day.Text + "/" + ddl_Month.Text + "/" + ddl_Year.Text + Environment.NewLine + Environment.NewLine + "Regards," + Environment.NewLine + "Team Bms blood bank" + Environment.NewLine + "--- This is a system generated email, please don't reply ---";
            smtpServer.Send(mail);
            Response.Write("<script>alert('Your request sent successfully')</script>");
        }
        catch (Exception ex)
        {
            Response.Write("<script>alert('" + ex.Message + "')</script>");
        }
    }
    protected void btn_Submit_Click(object sender, EventArgs e)
    {
        if (ddl_BloodGroup.SelectedIndex == 0)
        {
            Response.Write("<script>alert('Please select Blood Group')</script>");
            ddl_BloodGroup.Focus();
        }
        else if (txt_RB_Name.Text.Trim().Length == 0)
        {
            Response.Write("<script>alert('Please enter the Name')</script>");
            txt_RB_Name.Focus();
        }
        else if (txt_RBContactNo.Text.Trim().Length == 0)
        {
            Response.Write("<script>alert('Please enter the Contact No')</script>");
            txt_RBContactNo.Focus();
        }
        else if (txt_RBEmailID.Text.Trim().Length == 0)
        {
            Response.Write("<script>alert('Please enter the Email ID')</script>");
            txt_RBEmailID.Focus();
        }
        else
        {
            GetDonarEmailID();
            SendRequestEmail();
        }
    }
    protected void SendRequestEmail()
    {
        try
        {
            SmtpClient smtpServer = new SmtpClient();
            MailMessage mail = new MailMessage();
            smtpServer.Credentials = new System.Net.NetworkCredential(FromEmailID, EmailPassword);
            smtpServer.Port = 587;
            smtpServer.Host = "smtp.gmail.com";
            smtpServer.EnableSsl = true;
            mail.From = new MailAddress(FromEmailID);
            mail.To.Add(txt_RBEmailID.Text);
            mail.Subject = "Emergency!!! Blood Request Alert!";
            mail.Body = "Dear Blood Donar," + Environment.NewLine + Environment.NewLine + "You have received a Blood Donation Request from:" + Environment.NewLine + "Requestor Name :" + txt_RB_Name.Text + Environment.NewLine + "Contact No:" + txt_RBContactNo.Text + Environment.NewLine + "Email ID:" + txt_RBEmailID.Text + Environment.NewLine + Environment.NewLine + "Regards," + Environment.NewLine  + Environment.NewLine + " Team Bms Blood Bank--- This is a system generated email, please don't reply ---";
            smtpServer.Send(mail);
            Response.Write("<script>alert('Your request sent successfully')</script>");
        }
        catch (Exception ex)
        {
            Response.Write("<script>alert('" + ex.Message + "')</script>");
        }
    }
    protected void GetDonarEmailID()
    {
        ToEmailID = txt_EmailID.Text;
        SqlConnection con = new SqlConnection(Connection);
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = con;
        cmd.CommandType = System.Data.CommandType.Text;
        SqlDataReader dr;

        try
        {
            con.Open();
            cmd.CommandText = string.Format("select * from dbo.tbl_DonarDetails where BloodGroup like '{0}'", ddl_BloodGroup.Text);
            dr = cmd.ExecuteReader();

            if (dr.HasRows)
            {
                while (dr.Read())
                {
                    temp += dr["Email"].ToString() + ",";
                }

                donarEmailIDs = temp.Substring(0, temp.Length - 1);
            }
        }
        catch (Exception ex)
        {
            Response.Write("<script>alert('" + ex.Message + "')</script>");
        }
        finally
        {
            con.Close();
        }
    }



    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect(Request.RawUrl);
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect(Request.RawUrl);
    }
}