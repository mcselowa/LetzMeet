using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using LetzMitWebServer;

namespace WebApplication1.user
{
    public partial class userHome : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           Events.Text = Login.Usr.GetEvents();
        }
    }
}