using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient; //this namespace is for sqlclient server  
using System.Configuration;
using System.Data;

namespace shopping_shop
{
    public partial class cartpage : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ToString());

        protected void Page_Load(object sender, EventArgs e)
        {
            con.Open();
           namelabel.Text = Session["name"].ToString();
           String usname = Session["name"].ToString();
          /* String qry = "select * from cartdb where username='"+usname+"'";
           SqlCommand cmd = new SqlCommand(qry, con);
           SqlDataAdapter da = new SqlDataAdapter(cmd);
           DataSet ds = new DataSet();
           da.Fill(ds);
           con.Close();
           GridView1.DataSource = ds;
           GridView1.DataBind();*/
           con.Close();
        }

        protected void homebtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("homepage.aspx");
        }

        protected void logoutbtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("logoutpage.aspx");
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void removebtn_Click(object sender, EventArgs e)
        {
            con.Open();
            String id = removetxtbx.Text;
            string qry = "delete from cartdb where product_id='" +id+"'";
            SqlCommand cmd = new SqlCommand(qry, con);
            cmd.ExecuteNonQuery();
            con.Close();
        }

        protected void placeorderbtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("placeorder.aspx");
        }
    }
}