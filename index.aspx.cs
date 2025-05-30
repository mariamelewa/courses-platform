using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace web_project
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection("Data Source=DESKTOP-C0H6O3I; multipleactiveresultsets=true; Initial Catalog=edu;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] == null)
            {
                Button1.Visible = true;
                Button2.Visible = true;
                signout_btn.Visible = false;
            }
            else
            {
                Button1.Visible = false;
                Button2.Visible = false;
                signout_btn.Visible = true;
            }

        }

        protected void signup_btn_Click1(object sender, EventArgs e)
        {
            cn.Open();
            SqlCommand cm1 = new SqlCommand($"select * from courses.customers where email='{email_txt.Text}'", cn);
            SqlDataReader sdr = cm1.ExecuteReader();
            sdr.Read();
            if (sdr.HasRows==true)
            {
                Response.Write("<script>alert('Email Already Exists')</script>");
                email_txt.Text=username_txt.Text=pass_txt.Text=null;
            }
            else
            {
                SqlCommand cm2 = new SqlCommand($"insert into [courses].[customers] values('{username_txt.Text}','{email_txt.Text}','{pass_txt.Text}')", cn);
                cm2.ExecuteNonQuery();
                Response.Write("<script>alert('Account Created Successfully'</script>)");
                username_txt.Text=email_txt.Text=pass_txt.Text= null;
            }
           
            cn.Close();
        }


        protected void login_btn_Click(object sender, EventArgs e)
        {
           
            cn.Open();
            SqlCommand cm = new SqlCommand($"select * from courses.customers where email='{email.Text}' and password='{password.Text}'", cn);
            SqlDataReader sdr = cm.ExecuteReader();
            sdr.Read();
            if(sdr.HasRows==true)
            {
                 Session["username"] = sdr["name"];
                Session["Email"] = sdr["email"];
                Response.Redirect("Account.aspx");
            }
            else
            {
                Response.Write("<script>alert('Wrong Email Or Password')</script>");
                email.Text = password.Text = null;

            }
            cn.Close();
        }

        protected void signout_btn_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("index.aspx");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Meetings.aspx");
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Courses.aspx");
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Response.Redirect("Courses.aspx");
        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            Response.Redirect("Meetings.aspx");
        }

        protected void LinkButton5_Click(object sender, EventArgs e)
        {
            Response.Redirect("Courses.aspx");
        }

        protected void LinkButton6_Click(object sender, EventArgs e)
        {
            Response.Redirect("Meetings.aspx");
        }
    }
}