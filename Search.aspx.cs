using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Net.Mail;
using System.IO;
using System.Linq;
using System.Net;




public partial class Search : System.Web.UI.Page
{
    string Connection = ConfigurationManager.ConnectionStrings["CONN"].ConnectionString;
    static string mobileno = "8971107674";
    string FromEmailID = "onlinebb22@gmail.com";
    string EmailPassword = "8971107674";
    string ToEmailID = "ganeshm9797@gmail.com"; // change this to receive email

    //Fields
    static string fName = "";
    static string lName = "";
    static string dob = "";
    static string gender = "";
    static string bloodgroup = "";
    static string weight = "";
    static string previousblooddonationdate = "";
    static string donartype = "";
    static string contactno = "";
    static string email = "";
    static string address = "";
    static string city = "";

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {            
            pnl_Results.Visible = false; 
            GetCity();
        }
    }
    protected void GetCity()
    {
        SqlConnection con = new SqlConnection(Connection);
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = con;
        cmd.CommandType = System.Data.CommandType.Text;
        SqlDataReader dr;

        try
        {
            con.Open();
            cmd.CommandText = string.Format("Select Distinct(City) from tbl_DonarDetails");
            dr = cmd.ExecuteReader();
            ddl_City.Items.Clear();   
            
            if (dr.HasRows)
            {
                ddl_City.Items.Add("--Select--");
                while (dr.Read())
                {
                    ddl_City.Items.Add(dr["City"].ToString());  
                }
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
    protected void btn_Search_Click(object sender, EventArgs e)
    {
        if (ddl_City.SelectedIndex == 0)
        {
            Response.Write("<script>alert('Please select the City')</script>");
            ddl_City.Focus(); 
        }
        else if (ddl_BloodGroup.SelectedIndex == 0)
        {
            Response.Write("<script>alert('Please select the Blood Group')</script>");
            ddl_City.Focus(); 
        }
        else if (chk_TNC.Checked == false)
        {
            Response.Write("<script>alert('Please agree to T & C')</script>");
            chk_TNC.Focus();
        }
        else
        {
            LoadData();
        }
    }
    protected void LoadData()
    {
        SqlConnection con = new SqlConnection(Connection);
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = con;
        cmd.CommandType = System.Data.CommandType.Text;
        SqlDataAdapter da = new SqlDataAdapter();
        System.Data.DataSet ds = new System.Data.DataSet();

        try
        {
            cmd.CommandText = string.Format("Select FirstName as 'First Name', LastName as 'Last Name', DOB,Gender,BloodGroup,MobileNo from tbl_DonarDetails where City like '{0}' And BloodGroup like '{1}'",ddl_City.Text,ddl_BloodGroup.Text);
            da.SelectCommand = cmd;
            da.Fill(ds,"A");

            if (ds.Tables["A"].Rows.Count > 0)
            {
                pnl_Results.Visible = true;  
                GridView1.DataSource = ds.Tables["A"];
                GridView1.DataBind();
            }
            else
            {
                pnl_Results.Visible = false; 
                Response.Write("<script>alert('No data found')</script>");
                GridView1.DataSource = null;
                GridView1.DataBind();
            }
        }
        catch (Exception ex)
        {
            Response.Write("<script>alert('"+ex.Message+"')</script>");
        }
    }
    protected void GridView1_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
    {
        mobileno = GridView1.Rows[e.NewSelectedIndex].Cells[6].Text;

        TextBox1.Text = mobileno;
    }
    protected void GetDonarDetails()
    {
        SqlConnection con = new SqlConnection(Connection);
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = con;
        cmd.CommandType = System.Data.CommandType.Text;
        SqlDataReader dr;

        try
        {
            con.Open();
            cmd.CommandText = string.Format("Select * from tbl_DonarDetails where MobileNo like '{0}'",mobileno);
            dr = cmd.ExecuteReader();

            if (dr.HasRows)
            {                
                while (dr.Read())
                {
                    fName = dr["FirstName"].ToString();
                    lName = dr["LastName"].ToString();
                    dob = dr["DOB"].ToString();
                    gender = dr["Gender"].ToString();
                    bloodgroup = dr["BloodGroup"].ToString();
                    weight = dr["Weight"].ToString();
                    previousblooddonationdate = dr["LastBloodDonationDate"].ToString();
                    donartype = dr["DonarType"].ToString();
                    contactno = dr["MobileNo"].ToString();
                    email = dr["Email"].ToString();
                    address = dr["Address"].ToString();
                    city = dr["City"].ToString();
                }
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
    protected void btn_Request_Click(object sender, EventArgs e)
    {
        if (TextBox2.Text.Trim().Length == 0)
        {

            Response.Write("<script>alert('Please enter Message')</script>");
            TextBox2.Focus();
        }
        else if (TextBox1.Text.Trim().Length == 0)
        {
            Response.Write("<script>alert('Please Phone Number to send Message')</script>");
            TextBox1.Focus();
        }


        else
        {

            string Mobile = "7483128830";
            string Password = "@Way2sms";
            string Texto = "\n--Bms Blood Bank";
            string Text = TextBox2.Text+Texto;
            string No = TextBox1.Text;
            string key = "adarscX41ebA36HEPwLx";
            string URL = "https://smsapi.engineeringtgr.com/send/?Mobile=" + Mobile + "&Password=" + Password + "&Key=" + key + "&Message=" + Text + "&To=" + No + "";
            ServicePointManager.ServerCertificateValidationCallback = delegate { return true; };
            ServicePointManager.SecurityProtocol = SecurityProtocolType.Tls12 | SecurityProtocolType.Tls11 | SecurityProtocolType.Tls | SecurityProtocolType.Ssl3;
            HttpWebRequest request = (HttpWebRequest)WebRequest.Create(URL);
            request.Method = "GET";
            request.ContentType = "application/json";
            request.ContentLength = 0;
            try
            {
                HttpWebResponse webResponse = (HttpWebResponse)request.GetResponse();
                Stream webStream = webResponse.GetResponseStream();
                StreamReader responseReader = new StreamReader(webStream);
                string response = responseReader.ReadToEnd();
                Console.Out.WriteLine(response);
                responseReader.Close();
                Response.Write("<script>alert('Message Succesfully sent')</script>");
                TextBox1.Text = "";
                TextBox2.Text = "";


            }
            catch (Exception xe)
            {
                Console.Out.WriteLine(".....................");
                Console.Out.WriteLine(xe.Message);
            }

        }

    }
    protected void SendDonarDetails()
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
            mail.To.Add(TextBox1.Text);
            mail.Subject = "Blood Donar Details";
            mail.IsBodyHtml = true;
            mail.Body = "<html><body>Hi<br/><br/>Please find the Blood Donar Details<br/><br/><table border = 1 width = 60% bgcolor = PaleGoldenRod border-style = solid><tr><td width = 30% align = right><b>First Name :</b></td><td>" + fName + "</td></tr><tr><td width = 30% align = right><b>Last Name :</b></td><td>" + lName + "</td></tr><tr><td width = 30% align = right><b>Date of Birth :</b></td><td>" + dob + "</td></tr><tr><td width = 30% align = right><b>Gender :</b></td><td>" + gender + "</td></tr><tr><td width = 30% align = right><b>Blood Group :</b></td><td>" + bloodgroup + "</td></tr><tr><td width = 30% align = right><b>Weight :</b></td><td>" + weight + "</td></tr><tr><td width = 30% align = right><b>Previous Blood Donation Date :</b></td><td>" + previousblooddonationdate + "</td></tr><tr><td width = 30% align = right><b>Donar Type :</b></td><td>" + donartype + "</td></tr><tr><td width = 30% align = right><b>Contact No :</b></td><td>" + contactno + "</td></tr><tr><td width = 30% align = right><b>Email ID :</b></td><td>" + email + "</td></tr><tr><td width = 30% align = right><b>Address :</b></td><td>" + address + "</td></tr><tr><td width = 30% align = right><b>City :</b></td><td>" + city + "</td></tr></table><br/>Regards<br/>Admin obb.in<br/><p>••• This is an auto generated email, please do not reply •••</p></body></html>";             
            smtpServer.Send(mail);
            Response.Write("<script>alert('Donar details sent!!')</script>");
        }
        catch (Exception ex)
        {
            Response.Write("<script>alert('" + ex.Message + "')</script>");
        }
    }
    protected void btn_Reset_Click(object sender, EventArgs e)
    {
        ddl_City.SelectedIndex = 0;
        ddl_BloodGroup.SelectedIndex = 0;
        chk_TNC.Checked = false; 
        pnl_Results.Visible = false;
        TextBox1.Text = "";
        TextBox2.Text = "";



    }






}