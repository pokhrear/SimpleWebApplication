using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace WebFormAssignment3
{
    public partial class Default : System.Web.UI.Page
    {
       

        protected void Page_Load(object sender, EventArgs e)
        {
            Label3.Visible = false;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Registration.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {

            using  (SqlConnection sqlCon= new SqlConnection("Data Source=LAPTOP-66DUCL3F\\SQLEXPRESS;Initial Catalog = CarSalesDB; Integrated Security = SSPI; Persist Security Info = false;"))
            {
                sqlCon.Open();
                string query = "SELECT COUNT(1) FROM dbo.Customer WHERE email=@email and password=@password";
                SqlCommand sqlcmd = new SqlCommand(query, sqlCon);
                sqlcmd.Parameters.AddWithValue("@email", TextBox1.Text.Trim());
                sqlcmd.Parameters.AddWithValue("@password", TextBox2.Text.Trim());
                int count = Convert.ToInt32(sqlcmd.ExecuteScalar());

                if (count == 1)
                {
                    //creating session with variable first name
                    Session["fname"] = TextBox1.Text;
                    Response.Redirect("Profile.aspx");

                }
                else
                {
                    Label3.Visible = true;
                }

                TextBox2.Text = String.Empty;
            }

        }
    }
}