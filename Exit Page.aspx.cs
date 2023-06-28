using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace Flowers_Store
{
    public partial class Exit_Page : System.Web.UI.Page
    {
        SqlConnection connection = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=\"C:\\Users\\aboud\\Desktop\\Flowers Store\\App_Data\\DBFlowers.mdf\";Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
        public void ProceedToCheckout_click(object sender, EventArgs e)
        {
        }

        protected void checkout_Click(object sender, EventArgs e)
        {
            connection.Open();
            SqlCommand command = new SqlCommand("Insert into Payment" + "(FullName, Email, Address, City, State, ZipCode, NameOnCard, CreditCardNumber, ExpMonth, ExpYear, CVV) values (@FullName, @Email, @Address, @City, @State, @ZipCode, @NameOnCard, @CreditCardNumber, @ExpMonth, @ExpYear, @CVV)", connection);
            do
            {
                try
                {
                    if (string.IsNullOrEmpty(fullName.Text) || string.IsNullOrEmpty(email.Text) || string.IsNullOrEmpty(address.Text) || string.IsNullOrEmpty(city.Text) || string.IsNullOrEmpty(state.Text) || string.IsNullOrEmpty(zipCode.Text) || string.IsNullOrEmpty(nameOnCard.Text) || string.IsNullOrEmpty(creditCardNumber.Text) || string.IsNullOrEmpty(expMonth.Text) || string.IsNullOrEmpty(expYear.Text) || string.IsNullOrEmpty(cvv.Text))
                    {
                        Response.Write("<script>alert('You should fill all boxes');</script>");
                        break;
                    }
                    else
                    {
                        command.Parameters.AddWithValue("@FullName", fullName.Text);
                        command.Parameters.AddWithValue("@Email", email.Text);
                        command.Parameters.AddWithValue("@Address", address.Text);
                        command.Parameters.AddWithValue("@City", city.Text);
                        command.Parameters.AddWithValue("@State", state.Text);
                        command.Parameters.AddWithValue("@ZipCode", zipCode.Text);
                        command.Parameters.AddWithValue("@NameOnCard", nameOnCard.Text);
                        command.Parameters.AddWithValue("@CreditCardNumber", creditCardNumber.Text);
                        command.Parameters.AddWithValue("@ExpMonth", expMonth.Text);
                        command.Parameters.AddWithValue("@ExpYear", expYear.Text);
                        command.Parameters.AddWithValue("@CVV", cvv.Text);
                        command.ExecuteNonQuery();
                        Response.Write("<script>alert('Payment Made Successful');</script>");
                        fullName.Text = string.Empty;
                        email.Text = string.Empty;
                        address.Text = string.Empty;
                        city.Text = string.Empty;
                        state.Text = string.Empty;
                        zipCode.Text = string.Empty;
                        nameOnCard.Text = string.Empty;
                        creditCardNumber.Text = string.Empty;
                        expMonth.Text = string.Empty;
                        expYear.Text = string.Empty;
                        cvv.Text = string.Empty;
                        break;
                    }
                }
                catch (Exception ex)
                {
                    Response.Write($"<script>alert('{ex.Message}');</script>");
                    break;
                }
            } while (true);
            connection.Close();
        }
    }
}