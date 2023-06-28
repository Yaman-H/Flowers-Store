using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


namespace Flowers_Store
{
    public partial class Products : System.Web.UI.Page
    {
        SqlConnection Connection = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=\"C:\\Users\\aboud\\Desktop\\Flowers Store\\App_Data\\DBFlowers.mdf\";Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            Connection.Open();
            DataTable dt = new DataTable();
            SqlCommand cmd = Connection.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select * from InfoFlowers";
            cmd.ExecuteNonQuery();
            SqlDataAdapter adapter = new SqlDataAdapter(cmd);
            adapter.Fill(dt);
            Repeater1.DataSource = dt;
            Repeater1.DataBind();
            Connection.Close();
        }
    }
}