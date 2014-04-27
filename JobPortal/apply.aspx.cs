
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

namespace JobPortal
{   
    
    public partial class WebForm4 : System.Web.UI.Page
    {
        SqlConnection jobcon = new SqlConnection(ConfigurationManager.ConnectionStrings["JobConnectionString"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void applyjob_Click(object sender, EventArgs e)
        {
            jobcon.Open();
            var tit = Request.QueryString[0];
            string rmail = "select rec_mail from jobs where title ='" + tit + "'";
            SqlCommand recsql = new SqlCommand(rmail, jobcon);
            string recemail = recsql.ExecuteScalar().ToString();

            string uemail = Session["New"].ToString();

            string user = "select name from userinfo where email ='" + uemail + "'";
            SqlCommand usql = new SqlCommand(user, jobcon);
            string username = usql.ExecuteScalar().ToString();

            string applyjob = "insert into appliedjob (rec_mail, jobtitle, usermail, name) values (@rmail, @jtit, @umail, @uname)";
            SqlCommand cmd = new SqlCommand(applyjob, jobcon);
            cmd.Parameters.AddWithValue("@rmail", recemail);
            cmd.Parameters.AddWithValue("@jtit", tit);
            cmd.Parameters.AddWithValue("@umail", uemail);
            cmd.Parameters.AddWithValue("@uname", username);

            cmd.ExecuteNonQuery();

            Label1.Text = "Successfully Job Applied";
        }

       
        
    }
}