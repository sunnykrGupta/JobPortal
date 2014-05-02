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
    public partial class WebForm5 : System.Web.UI.Page
    {
        SqlConnection jobcon = new SqlConnection(ConfigurationManager.ConnectionStrings["JobConnectionString"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            
            Label1.Text = Session["New"].ToString();
        }

        protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
        {

        }

        
        protected void rec_logout_Click(object sender, EventArgs e)
        {
            Session["New"] = null;
            Response.Redirect("index.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            try
            {


                jobcon.Open();
                string jobcreate = "Insert into jobs (rec_mail, title, web, category, area, vacancy, jobdesc, whoapply) values (@mail, @tit, @web, @cat, @area, @vac, @desc, @who)";
                SqlCommand comm = new SqlCommand(jobcreate, jobcon);
                comm.Parameters.AddWithValue("@mail", Label1.Text);
                comm.Parameters.AddWithValue("@tit", jobtitle.Text);
                comm.Parameters.AddWithValue("@web", website.Text);
                comm.Parameters.AddWithValue("@cat", jobcat.SelectedItem.ToString());
                comm.Parameters.AddWithValue("@area", jobarea.SelectedItem.ToString());
                comm.Parameters.AddWithValue("@vac", vacancy.Text);
                comm.Parameters.AddWithValue("@desc", jobdesc.Text);
                comm.Parameters.AddWithValue("@who", whoapply.Text);

                comm.ExecuteNonQuery();

                Labelcreatedjob.Text = "Successfully Job created";

                
            }
            catch(Exception ex){
                Response.Write("Job error");
            }

                jobcon.Close();
        }
    }
}