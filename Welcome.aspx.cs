using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page 
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            //System.Diagnostics.Process.Start(@"C:\Users\Praveen\Desktop\Speech Scripts\Welcome.vbs");    
        }
    }
}