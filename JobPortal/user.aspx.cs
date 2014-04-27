using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;


namespace JobPortal
{
    public partial class WebForm6 : System.Web.UI.Page
    {
        SqlConnection jobcon = new SqlConnection(ConfigurationManager.ConnectionStrings["JobConnectionString"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = Session["New"].ToString();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Session["New"] = null;
            Response.Redirect("index.aspx");
        }

        
    }
}