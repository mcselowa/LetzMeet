using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1.user
{
    public partial class UserProfile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            List<string> UserDets = Login.UserInfo;
            txtName.Text = UserDets[1];
            txtSurname.Text = UserDets[2];
            txtemail.Text = UserDets[3];
            txtDOB.Text = UserDets[4];
            txtCellNum.Text = UserDets[5];
            txtAddress.Text = UserDets[7];
            txtCity.Text = UserDets[8];
            txtProvince.Text = UserDets[9];
            txtPostCode.Text = UserDets[10];

        }
    }
}