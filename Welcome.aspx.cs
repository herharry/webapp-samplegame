using System;


namespace testing
{
    public partial class Welcome : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if ((Session["id"] == null))
            {
                Response.Redirect("login.aspx");
            }
            else
            {
                String i = Session["license"].ToString();
                SKGL.Validate validate = new SKGL.Validate();
                validate.secretPhase = Session["id"].ToString();
                validate.Key = i;

                //MessageBox.Show("Creation Date:" + validate.CreationDate + "\r\n" + "Expiration Date: " + validate.ExpireDate + "\r\n" + "Days left" + validate.DaysLeft, "Message", MessageBoxButtons.OK, MessageBoxIcon.Information);
                Label1.Text = validate.CreationDate.ToString();
                Label2.Text = validate.ExpireDate.ToString();
                Label3.Text = validate.DaysLeft.ToString();

                if (validate.IsExpired)
                {
                    Response.Redirect("License.aspx");
                }
                Button1.Visible = true;

            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            Session.Clear();
            Response.Redirect("login.aspx");
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("index.html");
        }
    }
    }