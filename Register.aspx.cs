using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;  

public partial class Register : System.Web.UI.Page
{
    string Connection = ConfigurationManager.ConnectionStrings["CONN"].ConnectionString;   

    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack)
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
    protected void ddl_Month_SelectedIndexChanged(object sender, EventArgs e)
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
        ddl_Day.Items.Add("--DD--");
        for (int i = 1; i <= dayCount; i++)
        {
            ddl_Day.Items.Add(i.ToString());   
        }
    }
    protected void ddl_BDYear_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ddl_BDYear.SelectedIndex > 0 && ddl_BDMonth.SelectedIndex > 0)
        {
            GetBDDay();
        }
    }
    protected void ddl_BDMonth_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ddl_BDYear.SelectedIndex > 0 && ddl_BDMonth.SelectedIndex > 0)
        {
            GetBDDay();
        }
    }
    protected void GetBDDay()
    {
        int dayCount = DateTime.DaysInMonth(int.Parse(ddl_BDYear.Text), int.Parse(ddl_BDMonth.Text));
        ddl_BDDay.Items.Clear();
        ddl_BDDay.Items.Add("--DD--");
        for (int i = 1; i <= dayCount; i++)
        {
            ddl_BDDay.Items.Add(i.ToString());
        }
    }
    protected void btn_Register_Click(object sender, EventArgs e)
    {
        if (txt_FirstName.Text.Trim().Length == 0)
        {
            Response.Write("<script>alert('Please enter the First Name')</script>");
            txt_FirstName.Focus(); 
        }
        else if (txt_LastName.Text.Trim().Length == 0)
        {
            Response.Write("<script>alert('Please enter the Last Name')</script>");
            txt_LastName.Focus();
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
        else if (ddl_Gender.SelectedIndex == 0)
        {
            Response.Write("<script>alert('Please select the Gender')</script>");
            ddl_Gender.Focus();
        }
        else if (ddl_BloodGroup.SelectedIndex == 0)
        {
            Response.Write("<script>alert('Please select the Blood Group')</script>");
            ddl_BloodGroup.Focus();
        }
        else if (txt_Weight.Text.Trim().Length == 0)
        {
            Response.Write("<script>alert('Please enter the Weight')</script>");
            txt_Weight.Focus();
        }
        else if (ddl_BDYear.SelectedIndex == 0)
        {
            Response.Write("<script>alert('Please select the Year')</script>");
            ddl_BDYear.Focus();
        }
        else if (ddl_BDMonth.SelectedIndex == 0)
        {
            Response.Write("<script>alert('Please select the Month')</script>");
            ddl_BDMonth.Focus();
        }
        else if (ddl_BDDay.SelectedIndex == 0)
        {
            Response.Write("<script>alert('Please select the Day')</script>");
            ddl_BDDay.Focus();
        }
        else if (ddl_DonarType.SelectedIndex == 0)
        {
            Response.Write("<script>alert('Please select the Type')</script>");
            ddl_DonarType.Focus();
        }
        else if (txt_MobileNo.Text.Trim().Length == 0)
        {
            Response.Write("<script>alert('Please enter the Mobile No')</script>");
            txt_MobileNo.Focus();
        }
        else if (txt_EMailID.Text.Trim().Length == 0)
        {
            Response.Write("<script>alert('Please enter the Email ID')</script>");
            txt_EMailID.Focus();
        }
        else if (txt_Address.Text.Trim().Length == 0)
        {
            Response.Write("<script>alert('Please enter the Address')</script>");
            txt_Address.Focus();
        }
        else if (txt_City.Text.Trim().Length == 0)
        {
            Response.Write("<script>alert('Please enter the City')</script>");
            txt_City.Focus();
        }
        else if (CheckExistingRecord())
        {
            Response.Write("<script>alert('Your detail already exist in our database!!')</script>");            
        }
        else if (chk_TNC.Checked == false)
        {
            Response.Write("<script>alert('Please agree to T&C')</script>");
            chk_TNC.Focus();
        }
        else
        {
            SaveDonarDetails();
        }
    }
    protected bool CheckExistingRecord()
    {
        bool recordAvailable = false;        
        SqlConnection con = new SqlConnection(Connection);
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = con;
        cmd.CommandType = System.Data.CommandType.Text;
        SqlDataReader dr;

        try
        {
            txt_City.Text = txt_City.Text.ToUpper();
            con.Open();
            cmd.CommandText = string.Format("select * from dbo.tbl_DonarDetails where FirstName like '{0}' And LastName like '{1}' and Gender like '{2}' and BloodGroup like '{3}' and  MobileNo like '{4}' and Email like '{5}' and Address like '{6}' and City like '{7}'", txt_FirstName.Text, txt_LastName.Text, ddl_Gender.Text, ddl_BloodGroup.Text, txt_MobileNo.Text, txt_EMailID.Text, txt_Address.Text, txt_City.Text);
            dr = cmd.ExecuteReader();

            if (dr.HasRows)
            {
                recordAvailable = true;
            }                
        }
        catch (Exception ex)
        {
            Response.Write("<script>alert('"+ex.Message+"')</script>");
        }
        finally
        {
            con.Close();
        }

        return recordAvailable;
    }
    protected void SaveDonarDetails()
    {
        DateTime DOB = Convert.ToDateTime(ddl_Year.Text + "-" + ddl_Month.Text + "-" + ddl_Day.Text);
        DateTime BDDate = Convert.ToDateTime(ddl_BDYear.Text + "-" + ddl_BDMonth.Text + "-" + ddl_BDDay.Text );

        SqlConnection con = new SqlConnection(Connection);
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = con;
        cmd.CommandType = System.Data.CommandType.Text;
        int count = 0;

        try
        {
            con.Open();
            cmd.CommandText = string.Format("Insert into tbl_DonarDetails values('{0}','{1}','{2}','{3}','{4}','{5}','{6}','{7}','{8}','{9}','{10}','{11}')", txt_FirstName.Text, txt_LastName.Text, DOB, ddl_Gender.Text, ddl_BloodGroup.Text, txt_Weight.Text + "Kgs", BDDate, ddl_DonarType.Text, txt_MobileNo.Text, txt_EMailID.Text, txt_Address.Text, txt_City.Text);
            count = cmd.ExecuteNonQuery();

            if (count > 0)
            {
                Response.Write("<script>alert('Donar registered successfully')</script>");
                Reset();
            }
        }
        catch (Exception ex)
        {
            Response.Write("<script>alert('"+ex.Message+"')</script>");
        }
        finally
        {
            con.Close();
        }
    }
    protected void Reset()
    {
        txt_FirstName.Text = "";
        txt_LastName.Text = "";
        ddl_Year.SelectedIndex = 0;
        ddl_Month.SelectedIndex = 0;
        ddl_Day.Items.Clear();
        ddl_Gender.SelectedIndex = 0;
        ddl_BloodGroup.SelectedIndex = 0;
        txt_Weight.Text = "";
        ddl_BDYear.SelectedIndex = 0;
        ddl_BDMonth.SelectedIndex = 0;
        ddl_BDDay.Items.Clear();
        ddl_DonarType.SelectedIndex = 0;
        txt_MobileNo.Text = "";
        txt_EMailID.Text = "";
        txt_Address.Text = "";
        txt_City.Text = "";
        chk_TNC.Checked = false; 
    }
    protected void btn_Reset_Click(object sender, EventArgs e)
    {
        Reset();
    }
}