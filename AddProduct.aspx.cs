using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Flowers_Store
{
    public partial class AddProduct : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
        public void Insert_Click(object sender, EventArgs e)
        {
            SqlDataSource1.InsertParameters["Name"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("name")).Text;
            SqlDataSource1.InsertParameters["Price"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("price")).Text;
            SqlDataSource1.InsertParameters["Desc"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("desc")).Text;
            SqlDataSource1.InsertParameters["Img"].DefaultValue = @"Images\" + ((FileUpload)GridView1.FooterRow.FindControl("image")).FileName;
            SqlDataSource1.Insert();
        }
    }
}