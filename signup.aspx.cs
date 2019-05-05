using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

namespace testing
{
    public partial class signup : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["id"] != null)
            {
                Response.Redirect("Welcome.aspx");
            }
            signuptext.Visible = false;
            otp.Visible = false;
            Button3.Visible = false;
            Label6.Visible = false;

        }

        int RandomNumber(int min, int max)
        {
            Random random = new Random();
            return random.Next(min, max);
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            try
            {
                MySqlConnection con = new MySqlConnection("Server = localhost ; port = 3306 ; Database = test ; Uid = root ; Pwd = ;");

                string email = TextBox1.Text;
                string pass = TextBox2.Text;
                int act = 0;
                Session["email"] = email;
                Session["pass"] = pass;
                Session["act"] = act;



                if (String.IsNullOrEmpty(email) || String.IsNullOrEmpty(pass))
                {
                    signuptext.Visible = true;
                    signuptext.ForeColor = System.Drawing.Color.Red;
                    signuptext.Text = "please enter email or password";
                }
                if (DropDownList1.SelectedValue == "")
                {
                    signuptext.Visible = true;
                    signuptext.ForeColor = System.Drawing.Color.Red;
                    signuptext.Text = "please select a account type";
                }
                else
                {
                    con.Open();

                    string qry = "select email from login where login.email='"+email+"'";
                    MySqlCommand cmd = new MySqlCommand(qry, con);
                    MySqlDataReader sdr = cmd.ExecuteReader();
                    if (sdr.Read())
                    {
                        signuptext.Visible = true;
                        signuptext.ForeColor = System.Drawing.Color.Red;
                        signuptext.Text = "duplicate account";

                    }
                    else
                    {

                        MailMessage mail = new MailMessage();
                        mail.From = new MailAddress("suriyavadivelan@gmail.com");
                        mail.To.Add(email);
                        mail.Subject = "OTP";
                        string abcd = RandomNumber(1000, 9999).ToString();
                        Session["val"] = abcd;

                        mail.Body = "<b>OTP</b> for account validation is " + abcd;
                        mail.IsBodyHtml = true;
                        SmtpClient client = new SmtpClient("smtp.gmail.com", 587);
                        client.EnableSsl = true;
                        client.DeliveryMethod = SmtpDeliveryMethod.Network; // [2] Added this
                        client.UseDefaultCredentials = false;
                        client.Credentials = new System.Net.NetworkCredential("suriyavadivelan@gmail.com", "hermione8862");
                        client.Send(mail);

                        otp.Visible = true;
                        Label6.Visible = true;
                        Button2.Visible = false;
                        Button3.Visible = true;
                        Label4.Visible = false;
                        TextBox2.Visible = false;
                        Label5.Visible = false;
                        DropDownList1.Visible = false;
                    }
                }
            }
            catch(Exception ex)
            {

            }
        }
        protected void val(object sender, EventArgs e)
        {
            MySqlConnection con = new MySqlConnection("Server = localhost ; port = 3306 ; Database = test ; Uid = root ; Pwd = ;");
            signuptext.Visible = true;
            signuptext.ForeColor = System.Drawing.Color.Red;
            string email = Session["email"].ToString();
            string pass = Session["pass"].ToString();
            int act = (int)Session["act"];

            if (otp.Text.Equals(Session["val"]))
            {

                try
                {
                    String uuid = Guid.NewGuid().ToString();
                    String type = DropDownList1.SelectedValue;
                    con.Open();
                    string qry = "insert into login values('" + uuid + "','" + email + "','" + pass + "','" + type + "','" + act + "')";
                    MySqlCommand cmd = new MySqlCommand(qry, con);
                    int sdr = cmd.ExecuteNonQuery();
                    if (sdr != 0)
                    {
                        signuptext.Visible = true;
                        signuptext.ForeColor = System.Drawing.Color.Green;
                        signuptext.Text = "signup successfull";
                    }
                    else
                    {
                        signuptext.Visible = true;
                        signuptext.ForeColor = System.Drawing.Color.Red;
                        signuptext.Text = "UserId & Password Is not correct Try again..!!";
                    }
                    con.Close();

                }
                catch (Exception ex)
                {
                    Response.Write(ex.Message);
                }
            }
            else
            {
                signuptext.Visible = true;
                signuptext.ForeColor = System.Drawing.Color.Red;
                signuptext.Text = "invalid login";
            }
        }
    
    }
}