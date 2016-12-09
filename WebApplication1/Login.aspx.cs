using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using LetzMitWebServer;

namespace WebApplication1
{


    public partial class Login : System.Web.UI.Page
    {

        public static  List<string> UserInfo;

        protected void Page_Load(object sender, EventArgs e)
        {

            if (Request.QueryString.Count > 1)
            {
                if (Request.QueryString.ToString().Contains("message"))
                {
                    Sendmessage(Request.QueryString["name"], Request.QueryString["email"], Request.QueryString["message"]);
                }
                else
                        if (Request.QueryString.ToString().Contains("login_name"))
                {
                    login();
                }
                else
                        if (Request.QueryString.ToString().Contains("register_name"))
                {
                    register();
                }
            }
            // else { Response.Redirect("index.aspx"); }
        }

        protected void sendmessage_Click(Object sender, System.EventArgs e)
        {
            Sendmessage();
        }
        public void Sendmessage()
        {
            string Name = name.Text.ToString();
            string email = this.email.Text.ToString();
            string message = this.message.Text.ToString();
            //string query = string.Format("Login.aspx?name={0}&email={1}&message={2}", Name, email, message);

            MailMessage mail = new MailMessage("confidence@bizspa.co.za", email);//NB: Change to new email for letzmeet and create auto response
            mail.ReplyToList.Add(email);
            SmtpClient client = new SmtpClient();
            client.Port = 25;
            client.DeliveryMethod = SmtpDeliveryMethod.Network;
            client.UseDefaultCredentials = false;
            client.Host = "smtp.bizspa.co.za";
            client.Credentials = new System.Net.NetworkCredential("confidence@bizspa.co.za", "9408306008083MCS!");
            mail.Subject = "Message From LetzMeet Website";
            mail.Body = message;
            client.Send(mail);


            PopMessage.Text = "Thank You, Your Message Has Been Submitted";
            popup.Visible = true;
        }
        public void Sendmessage(string Name, string email, string message)
        {
            MailMessage mail = new MailMessage("confidence@bizspa.co.za", email);//NB: Change to new email for letzmeet and create auto response
            mail.ReplyToList.Add(email);
            SmtpClient client = new SmtpClient();
            client.Port = 25;
            client.DeliveryMethod = SmtpDeliveryMethod.Network;
            client.UseDefaultCredentials = false;
            client.Host = "smtp.bizspa.co.za";
            client.Credentials = new System.Net.NetworkCredential("confidence@bizspa.co.za", "9408306008083MCS!");
            mail.Subject = "Message From LetzMeet Website";
            mail.Body = message;
            client.Send(mail);

            Response.Write("Thank You, Your Message Has Been Submitted");

            // PopMessage.Text = "Thank You, Your Message Has Been Submitted";
            //popup.Visible = true;
        }
        public void login()
        {
            
        }
        public void login(string email, string password)
        {

        }
        public void register(string name, string surname, string email, string number, string address, string province, string city, string postcode)
        {

        }

        protected void Btnlogin_Click(object sender, EventArgs e)//Gets User Data and sets global data
        {
            MysqlData Usr = new MysqlData();
            UserInfo = Usr.login(passwordTxt.Text, usernameTxt.Text);
            if (UserInfo.Count > 1)
            {

            }
            else popup.Visible = true; PopMessage.Text = UserInfo[0];
        }

        protected void Signup_Click(object sender, EventArgs e)
        {
            Signup.Visible = false;
            Btnlogin.Visible = false;
            SignupComplete.Visible = true;
            UserName.Visible = true;
            SURNAME.Visible = true;
            emailverify.Visible = true;
            number.Visible = true;
            address.Visible = true;
            province.Visible = true;
            city.Visible = true;
            postcode.Visible = true;
            passwordverify.Visible = true;
            // DOB.Visible = true;
            DateOfBirth.Visible = true;
        }

        protected void SignupComplete_Click(object sender, EventArgs e)
        {
            MysqlData Usr = new MysqlData();
            Usr.singup(UserName.Text, SURNAME.Text, number.Text, usernameTxt.Text, DateOfBirth.Text, address.Text, city.Text, passwordTxt.Text, province.Text, postcode.Text);
        }
    }

}