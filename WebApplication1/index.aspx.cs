using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class index : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString.Count > 1)
            {
                string Data = Request.QueryString["TextBox1"] + Request.QueryString["TextBox2"] + Request.QueryString["TextBox3"];
                TextBox3.Text = "Hello? i think im workin";
            }

            HomeEvents.Text = Login.Usr.GetEvents();
            // else { Response.Redirect("index.aspx"); }
        }

         protected void Button1_Click(Object sender, System.EventArgs e)
    {
        string Name = TextBox1.Text.ToString();
        string email = TextBox2.Text.ToString();
        string message = TextBox3.Text.ToString();
        string query = string.Format("index.aspx?TextBox1={0}&TextBox2={1}&TextBox3={2}", Name, email, message);

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

    }
}