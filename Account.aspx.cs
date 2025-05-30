using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace web_project
{
    public partial class Account : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] != null)
            {
                username_txt.Text = Session["username"].ToString();
                gmail.Text = Session["Email"].ToString();    
            }
        }

        protected void signout_btn_Click(object sender, EventArgs e)
        {
            Session.Abandon();
           Response.Redirect("index.aspx");
        }
    }
}