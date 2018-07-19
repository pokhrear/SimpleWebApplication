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
    public partial class Profile : System.Web.UI.Page
    {
        string connectionString = null;
        SqlConnection cnn;
        SqlCommand command;
        SqlDataReader reader = null;

        protected void Page_Load(object sender, EventArgs e)
        {
            Label10.Visible = false;
            connectionString = "Data Source=LAPTOP-66DUCL3F\\SQLEXPRESS;Initial Catalog = CarSalesDB; Integrated Security = SSPI; Persist Security Info = false";



            //Reading a value from a session variables
            String fname = (String)(Session["fname"]);
            int indexOfAt = fname.IndexOf('@');
            String domain = fname.Substring(0, indexOfAt );
            Response.Write("WelCome " + domain.ToUpper());

            

            string queryString = "select customer_name, address, postal, phone, email from dbo.Customer where email='" + fname + "' ";
            cnn = new SqlConnection(connectionString);

            cnn.Open();

            command = new SqlCommand(queryString, cnn);
            reader = command.ExecuteReader();

            //Display the customer information details

            while (reader.Read())
            {
               // reader.Read();
                Label3.Text = "Name: "+ reader["customer_name"].ToString();

               // reader.Read();
                Label4.Text = "Address: "+reader["address"].ToString();

               // reader.Read();
                Label5.Text = "Postal: "+reader["postal"].ToString();

                //reader.Read();
                Label6.Text = "Phone No: "+reader["phone"].ToString();

               // reader.Read();
                Label7.Text = "Email: "+reader["email"].ToString();
            }
            reader.Close();
            cnn.Close();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                cnn.Open();
                command = new SqlCommand("Insert into dbo.CustomerOrder values(@cname, @cadd, @cpostal, @cphone, @cemail)", cnn);

                command.Parameters.AddWithValue("@cname", this.TextBox1.Text);
                command.Parameters.AddWithValue("@cadd", this.TextBox2.Text);
                command.Parameters.AddWithValue("@cpostal", this.TextBox3.Text);
                command.Parameters.AddWithValue("@cphone", this.TextBox4.Text);
                command.Parameters.AddWithValue("@cemail", this.TextBox5.Text);
                


                command.ExecuteNonQuery();

                Label10.Visible = true;

                Label10.Text = ("Thank You! Your Order has been placed");

                TextBox1.Text = String.Empty;
                TextBox2.Text = String.Empty;
                TextBox3.Text = String.Empty;
                TextBox4.Text = String.Empty;
                TextBox5.Text = String.Empty;

                cnn.Close();
            }
            catch (SqlException ex)
            {
                Label10.Text = ("Error in SQL! " + ex.Message);
            }
            finally
            {
                if (cnn.State == ConnectionState.Open)
                {
                    cnn.Close();
                }
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string queryString = "select * from dbo.CustomerOrder";
            cnn = new SqlConnection(connectionString);
            try
            {
                cnn.Open();

                command = new SqlCommand(queryString, cnn);
                reader = command.ExecuteReader();
                ListBox1.Items.Clear();

                while (reader.Read())
                {
                    this.ListBox1.Items.Add(reader["Brand"].ToString() + " - " + reader["Model"].ToString() + " - " + reader["Year"].ToString() + " - "
                        + reader["Color"].ToString() + " - " + reader["Price"].ToString());
                }
            }
            catch (SqlException ex)
            {
                Label10.Visible = true;
                Label10.Text=("Error in SQL!" + ex.Message);
            }
            finally
            {
                if (cnn.State == ConnectionState.Open)
                {
                    cnn.Close();
                }

            }
        }
    }
}