using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Net;
using System.Net.Mail;


namespace JobPortal
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        SqlConnection jobcon = new SqlConnection(ConfigurationManager.ConnectionStrings["JobConnectionString"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            if(IsPostBack)
            {
                
                jobcon.Open();
                string checkuser = "Select count(*) from userinfo where email='" + user_email.Text + "'";
                SqlCommand comm = new SqlCommand(checkuser, jobcon);
                int temp = Convert.ToInt32(comm.ExecuteScalar().ToString());
                if(temp == 1)
                {
                    Label7.Text = "Email Already Registered";
                }
                jobcon.Close();
            }
        
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            try
            {

                if (FileUpload1.HasFile)
                {
                    string filename = FileUpload1.FileName;
                    FileUpload1.SaveAs(Server.MapPath("uploads\\" + filename));
                    string path = "~//uploads//" + filename.ToString();
                    jobcon.Open();
                    string u_info = "insert into userinfo (email, name, password, contact, city, category, special, skill, resume) values (@uemail, @uname, @upass, @ucont, @ucity, @ucat, @uspec, @uskill, @uresume)";
                    SqlCommand cmd = new SqlCommand(u_info, jobcon);
                    cmd.Parameters.AddWithValue("@uemail", user_email.Text);
                    cmd.Parameters.AddWithValue("@uname", user_name.Text);
                    cmd.Parameters.AddWithValue("@upass", user_pass.Text);
                    cmd.Parameters.AddWithValue("@ucont", user_contact.Text);
                    cmd.Parameters.AddWithValue("@ucity", user_city.Text);
                    cmd.Parameters.AddWithValue("@ucat", user_cat.SelectedItem.ToString());
                    cmd.Parameters.AddWithValue("@uspec", user_spec.SelectedItem.ToString());
                    cmd.Parameters.AddWithValue("@uskill", user_skill.Text);
                    cmd.Parameters.AddWithValue("@uresume", path);

                    cmd.ExecuteNonQuery();
                    jobcon.Close();
                    Label7.Text = "User Successfully registered";
                    
                    var fromAddress = new MailAddress("abc04@gmail.com", "From JobPortal");
                    var toAddress = new MailAddress(user_email.Text, "To Users");
                    
                    const string fromPassword = "your_passWORD";
                    const string subject = "Welcome to Jobportal";
                    
                    string body = "Hello," + user_name.Text + "! We are glad to have you as our customer. Welcome and get profit from our system. Regard's Job Portal";

                    var smtp = new SmtpClient
                    {
                        Host = "smtp.gmail.com",
                        Port = 587,
                        EnableSsl = true,
                        DeliveryMethod = SmtpDeliveryMethod.Network,
                        UseDefaultCredentials = false,
                        Credentials = new NetworkCredential(fromAddress.Address, fromPassword)
                    };
                    using (var message = new MailMessage(fromAddress, toAddress)
                    {
                        Subject = subject,
                        Body = body
                    })
                    {
                        smtp.Send(message);
                    }

                }
                else
                {
                    Label7.Text = "Upload resume";
                }
            }
            catch(Exception ex)
            {
                Response.Write("Error Faced");
            }
        }
    }
}