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
            jobcon.Open();
            var edit = "Select name, city, contact, skill from userinfo where email = @user";
            SqlCommand editu = new SqlCommand(edit, jobcon);
            editu.Parameters.AddWithValue("@user", Label1.Text);
            SqlDataReader dr = editu.ExecuteReader();

            //edituskill.Multiline = true;

            while (dr.Read())
            {
                edituname.Text = dr.GetString(0);
                editucity.Text = dr.GetString(1);
                editumob.Text = dr.GetString(2);
                string Result = dr[3].ToString();
                edituskill.Text = dr.GetString(3);
                edituskill.Text += Environment.NewLine;
                
            }
            jobcon.Close();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Session["New"] = null;
            Response.Redirect("index.aspx");
        }

        
    }
}