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
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(IsPostBack)
            {
                SqlConnection jobcon = new SqlConnection(ConfigurationManager.ConnectionStrings["JobConnectionString"].ConnectionString);
                jobcon.Open();
                string checkuser = "Select count(*) from recruiter where email='" + rec_email.Text + "'";
                SqlCommand comm = new SqlCommand(checkuser, jobcon);
                int temp = Convert.ToInt32(comm.ExecuteScalar().ToString());
                if(temp == 1)
                {
                    Label7.Text = "Client Email Already Registered";
                }
                jobcon.Close();
            }
        }

       
        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection jobcon = new SqlConnection(ConfigurationManager.ConnectionStrings["JobConnectionString"].ConnectionString);
                jobcon.Open();
                string recinsert = "Insert into recruiter (email, password, organization, type, address, contact) values(@remail, @rpass, @organ, @type, @radd, @cont)";
                SqlCommand comm = new SqlCommand(recinsert, jobcon);
                comm.Parameters.AddWithValue("@remail",rec_email.Text);
                comm.Parameters.AddWithValue("@rpass", rec_pass.Text);
                comm.Parameters.AddWithValue("@organ", rec_organ.Text);
                comm.Parameters.AddWithValue("@type", rec_type.SelectedItem.ToString());
                comm.Parameters.AddWithValue("@radd", rec_address.Text);
                comm.Parameters.AddWithValue("@cont", rec_contact.Text);

                comm.ExecuteNonQuery();

                Label7.Text = "Successfully Client Registered";
                Response.Redirect("index.aspx");
                
                
                jobcon.Close();
            }
            catch(Exception ex)
            {
                Response.Write("Error Faced");
            }
        }
    }
}