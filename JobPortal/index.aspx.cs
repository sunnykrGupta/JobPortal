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
    public partial class WebForm3 : System.Web.UI.Page
    {
        SqlConnection jobcon = new SqlConnection(ConfigurationManager.ConnectionStrings["JobConnectionString"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void login_index_Click(object sender, EventArgs e)
        {
            jobcon.Open();

            if (login_cat.SelectedItem.ToString() == "User")
            {
                string checkuser = "Select count(*) from userinfo where email='" + login_mail.Text + "'";
                SqlCommand comm = new SqlCommand(checkuser, jobcon);
                int temp = Convert.ToInt32(comm.ExecuteScalar().ToString());

                if (temp == 1)
                {
                    string checkpass = "select password from userinfo where email ='" + login_mail.Text + "'";
                    SqlCommand passcmd = new SqlCommand(checkpass, jobcon);
                    string pass = passcmd.ExecuteScalar().ToString();
                    if (pass == login_pass.Text)
                    {
                        Session["New"] = login_mail.Text;
                        Response.Write("password correct");
                        Response.Redirect("home.aspx");
                    }
                    else
                    {
                        Label1.Text = "Password Incorrect! Try Again";
                    }

                }
                else
                {
                    Label1.Text = "Email Incorrect! ";
                }
            }
            else
            {
                string checkrec = "Select count(*) from recruiter where email='" + login_mail.Text + "'";
                SqlCommand comm = new SqlCommand(checkrec, jobcon);
                int temprec = Convert.ToInt32(comm.ExecuteScalar().ToString());

                if (temprec == 1)
                {
                    string checkpass = "select password from recruiter where email ='" + login_mail.Text + "'";
                    SqlCommand passcmd = new SqlCommand(checkpass, jobcon);
                    string pass = passcmd.ExecuteScalar().ToString();
                    if (pass == login_pass.Text)
                    {
                        Session["New"] = login_mail.Text;
                        Response.Write("Password correct");
                        Response.Redirect("recruiter.aspx");
                    }
                    else
                    {
                        Label1.Text = "Password Incorrect! Try Again";
                    }

                }
                else
                {
                    Label1.Text = "Email Incorrect!";
                }

            }

            jobcon.Close();

        }

    }
}