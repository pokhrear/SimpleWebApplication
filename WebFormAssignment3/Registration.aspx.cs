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
    public partial class Registration : System.Web.UI.Page
    {
        string connectionString = null;
        SqlConnection cnn;
        SqlCommand command;

        public Registration()
        {
           // InitializeComponent();
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            connectionString = "Data Source=LAPTOP-66DUCL3F\\SQLEXPRESS;Initial Catalog = CarSalesDB; Integrated Security = SSPI; Persist Security Info = false";

            cnn = new SqlConnection(connectionString);
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                cnn.Open();
                command = new SqlCommand("Insert into dbo.Customer values(@cname, @cadd, @cpostal, @cphone, @cemail, @ccemail, @cpass)", cnn);

                command.Parameters.AddWithValue("@cname", this.TextBox1.Text);
                command.Parameters.AddWithValue("@cadd", this.TextBox2.Text);
                command.Parameters.AddWithValue("@cpostal", this.TextBox3.Text);
                command.Parameters.AddWithValue("@cphone", this.TextBox4.Text);
                command.Parameters.AddWithValue("@cemail", this.TextBox5.Text);
                command.Parameters.AddWithValue("@ccemail", this.TextBox6.Text);
                command.Parameters.AddWithValue("@cpass", this.TextBox7.Text);
               


                 command.ExecuteNonQuery();

                Label2.Text= ("Customer record added!!!");

                TextBox1.Text = String.Empty;
                TextBox2.Text = String.Empty;
                TextBox3.Text = String.Empty;
                TextBox4.Text = String.Empty;
                TextBox5.Text = String.Empty;
                TextBox6.Text = String.Empty;
                TextBox7.Text = String.Empty;

                cnn.Close();
            }
            catch (SqlException ex)
            {
               Label2.Text=("Error in SQL! " + ex.Message);
            }
            finally
            {
                if (cnn.State == ConnectionState.Open)
                {
                    cnn.Close();
                }
            }

            Response.Redirect("Default.aspx");

        }
    }
}