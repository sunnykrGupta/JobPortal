
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

            string find = "Select count(*) from appliedjob where jobtitle = @tit and usermail = @uemail";
            SqlCommand findcmd = new SqlCommand(find, jobcon);
            findcmd.Parameters.AddWithValue("@tit",tit);
            findcmd.Parameters.AddWithValue("@uemail",uemail);
            int result = Convert.ToInt32(findcmd.ExecuteScalar().ToString());

            if (result < 1)
            {
                Guid gid = Guid.NewGuid();
                string user = "select name from userinfo where email ='" + uemail + "'";
                SqlCommand usql = new SqlCommand(user, jobcon);
                string username = usql.ExecuteScalar().ToString();

                string applyjob = "Insert into appliedjob (Id, rec_mail, jobtitle, usermail, name) values (@id, @rmail, @jtit, @umail, @uname)";
                SqlCommand cmd = new SqlCommand(applyjob, jobcon);
                cmd.Parameters.AddWithValue("@id", gid);
                cmd.Parameters.AddWithValue("@rmail", recemail);
                cmd.Parameters.AddWithValue("@jtit", tit);
                cmd.Parameters.AddWithValue("@umail", uemail);
                cmd.Parameters.AddWithValue("@uname", username);

                cmd.ExecuteNonQuery();

                Label1.Text = "Successfully Job Applied";
            }
            else
                Label1.Text = "Job Already Applied";
        }

       
        
    }
}