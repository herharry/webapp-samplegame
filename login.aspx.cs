using System;
using MySql.Data.MySqlClient;
using System.ComponentModel.DataAnnotations;

namespace testing
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (Session["id"] != null)
            {
                Response.Redirect("Welcome.aspx");
            }
            lblErrorMessage.Visible = false;
        }
        
        protected void Login(object sender, EventArgs e)
        {
            MySqlConnection con = new MySqlConnection("Server = 192.168.43.214 ; port = 3306 ; Database = test ; Uid = root ; Pwd = ;");
            try
            {
                

                string uid = txtusername.Text;
                string pass = txtpassword.Text;
                if (String.IsNullOrEmpty(uid) || String.IsNullOrEmpty(pass))
                {
                    lblErrorMessage.Visible = true;
                    lblErrorMessage.Text = "mail id or password is empty";
                }
                else
                {
                    con.Open();
                    string qry = "select * from login where email ='" + uid + "' and pass='" + pass + "'";
                    MySqlCommand cmd = new MySqlCommand(qry, con);
                    MySqlDataReader sdr = cmd.ExecuteReader();
                    if (sdr.Read())
                    {
                        Session["id"] =sdr.GetString("uid");
                        Session["type"] = sdr.GetString("type");
                        Session["email"] = sdr.GetString("email");
                        int chc = sdr.GetInt32("activation");
                        Session["activation"] = chc;
                        uid = sdr.GetString("uid");
                        sdr.Close();

                        if (chc==0) {
                            Response.Redirect("License.aspx");
                        }
                        else
                        {
                            string qry1 = "select * from license where uuid ='"+uid+"'";
                            cmd = new MySqlCommand(qry1, con);
                            sdr = cmd.ExecuteReader();
                            if (sdr.Read())
                            {
                                Session["license"] = sdr.GetString("licensekey");
                                Response.Redirect("Welcome.aspx");
                                sdr.Close();
                            }
                            else
                            {
                                lblErrorMessage.Visible = true;
                                lblErrorMessage.Text = "Error retiving data";
                            }
                        }
                    }
                    else
                    {
                    
                        lblErrorMessage.Visible = true;
                        lblErrorMessage.Text = "UserId & Password Is not correct Try again..!!";
                    }
                    con.Close();
                }
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }

        


        
    }
}