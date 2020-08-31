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
    public partial class homepage : System.Web.UI.Page
    {
         
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ToString());
        protected void Page_Load(object sender, EventArgs e)
        {
            usernamelbl.Text = Session["name"].ToString();
            Session["searchs"] = TextBox1.Text;
           // Session.Remove("name");
            
            GridView2.Visible = false;
           
        }

        protected void ImageButton1_Click1(object sender, ImageClickEventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void addcartbtn_Click1(object sender, EventArgs e)
        {
            String username = usernamelbl.Text;
            String productid = addcarttxtbx.Text;
            String productqantity = quantitytxtbx.Text;
            if(productid!=""&&productqantity!=""){
            int[] price=new int[15]{0,450,650,650,750,750,550,550,1550,1050,999,999,11990,599,999};
            int[] id=new int[15]{0,001,002,003,004,005,006,007,008,009,010,011,012,013,014};
            int perprice=0;
            
            int txtbxid = int.Parse(addcarttxtbx.Text);
            for(int i=0;i<id.Length;i++)
            {
                if(txtbxid==id[i])
                {
                    perprice = price[i];
                }
            }
            int items=int.Parse(quantitytxtbx.Text);
            double totalprice = items * perprice;
            try
            {
                con.Open();
                string qry = "insert into cartdb values('" + username + "','" + productid + "','" + productqantity + "','" + totalprice + "')";
                SqlCommand cmd = new SqlCommand(qry, con);
                cmd.ExecuteNonQuery();
               
              /*  String counts = "select COUNT(quantity) as rowcount from cartdb where username='" + username + "' ";
                SqlCommand cmmd = new SqlCommand(counts, con);
                cmmd.ExecuteNonQuery();
                SqlDataReader reader = cmmd.ExecuteReader();
                if (reader.Read())
                {
                   // cartno.Text = reader[0].["rowcount"].Tostring();

                }  */
                con.Close();
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }else{
                Response.Write("please enter the correct product id and quantity");
            }
        
        }

        protected void cartbtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("cartpage.aspx");
        }

        protected void hsearchbtn_Click(object sender, EventArgs e)
        {
          //  String serachtxt=Session["searchs"];
            GridView2.Visible = true;
        }

        protected void logoutbtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("logoutpage.aspx");
            Session.Remove("searchs");
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }
    }
}