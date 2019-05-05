using System;
using MySql.Data.MySqlClient;


namespace testing
{
    public partial class License : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if ((Session["id"] == null))
            {
                Response.Redirect("login.aspx");
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            String uid = Session["id"].ToString();
            SKGL.Generate generate = new SKGL.Generate();
            generate.secretPhase = uid;
            String key = generate.doKey(30);

            MySqlConnection con = new MySqlConnection("Server = localhost ; port = 3306 ; Database = test ; Uid = root ; Pwd = ;");
            try
            {
                    con.Open();
                    string qry = "insert into license(uuid,licensekey,trail) values('" + uid + "','" + key + "','"+1+"')";
                    string qry1 = "update login set activation =1 where uid='"+uid+"'";
                    string qry2 = "select * from license where uuid ='" + uid + "'";
                    


                    MySqlCommand cmd = new MySqlCommand(qry, con);
                    int sdr = cmd.ExecuteNonQuery();
                    MySqlCommand cmd1 = new MySqlCommand(qry1, con);
                    int sdr1 = cmd1.ExecuteNonQuery();
                    
                    MySqlCommand cmd2 = new MySqlCommand(qry2, con);
                    MySqlDataReader sdr12 = cmd2.ExecuteReader();
                    if (sdr12.Read())
                    {
                        Session["license"] = sdr12.GetString("licensekey");
                        int validkey = sdr12.GetInt32(3);
                    Button1.Text = Session["license"].ToString();

                    if (validkey==1) {
                    }
                }
                    sdr12.Close();
    
                    if (sdr!=0&&sdr1!=0)
                    {
                        Response.Redirect("Welcome.aspx");
                    }
                    else
                    {
                    
                    }
                    con.Close();
                
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }

        }
    }
}