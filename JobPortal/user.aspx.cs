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
            Session["spec"] = null;
            Response.Redirect("index.aspx");
        }

        protected void edituserprof_Click(object sender, EventArgs e)
        {
            string resfile = FileUpload1.FileName;
            FileUpload1.SaveAs(Server.MapPath("uploads\\" + resfile));
            string path = "~//uploads//" + resfile.ToString();
            
            jobcon.Open();
            string updatesql = "UPDATE userinfo set name=@nam, city=@cty, contact=@mob, special=@uspec , skill=@skil, resume=@cv WHERE email = @usmail";
            
            SqlCommand upcmd = new SqlCommand(updatesql, jobcon);
            upcmd.Parameters.AddWithValue("@nam", edituname.Text);
            upcmd.Parameters.AddWithValue("@cty", editucity.Text);
            upcmd.Parameters.AddWithValue("@mob", editumob.Text);
            upcmd.Parameters.AddWithValue("@uspec", edituspec.SelectedItem.ToString());
            upcmd.Parameters.AddWithValue("@skil", edituskill.Text);
            upcmd.Parameters.AddWithValue("@cv", path); 
            upcmd.Parameters.AddWithValue("@usmail", Label1.Text);  
            int NumRows = 0;
            NumRows = upcmd.ExecuteNonQuery();
            
            Label2.Text = "Your Profile Updated ";
            jobcon.Close();


        }

        protected void Button5_Click(object sender, EventArgs e)
        {
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

        
    }
}