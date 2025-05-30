using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace web_project
{
  
    public partial class Courses : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection("Data Source=DESKTOP-C0H6O3I; multipleactiveresultsets=true; Initial Catalog=edu;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
          
        }

        protected void apply_btn_Click(object sender, EventArgs e)
        {
            cn.Open();
            SqlCommand cm = new SqlCommand($"select id from courses.customers where name='{username_txt.Text}'", cn);
            SqlDataReader sdr=cm.ExecuteReader();
            sdr.Read();
            int id= Convert.ToInt32(sdr["id"]);
            if (sdr.HasRows == true && Session["username"] != null)
            {
                string crs_name = select_crs.Items[select_crs.SelectedIndex].Text;
                SqlCommand cm2 = new SqlCommand($"select course_id from courses.courses where Name='{crs_name}' ", cn);
               SqlDataReader sdr2= cm2.ExecuteReader();
                sdr2.Read();
                if(sdr2.HasRows == true)
                {
                    if (Session["username"] != username_txt.Text)
                    {
                        Response.Write("<script>alert('Wrong Username for this account')</script>");
                    }
                    else
                    {
                        int course_id = Convert.ToInt32(sdr2["course_id"]);
                        SqlCommand apply = new SqlCommand($"insert into courses.enrollments values('{id}','{course_id}')", cn);
                        apply.ExecuteNonQuery();
                        Response.Write("<script>alert('Selected Course Enrolled')</script>");
                        username_txt.Text = null;
                        select_crs.Value = "Select course";

                    }
                  

                }
               
            }
 
            else
            {
                Response.Write("<script>alert('Cannot Enroll A Course Without Logging In')</script>");
            }
            cn.Close();
        }
    }
}