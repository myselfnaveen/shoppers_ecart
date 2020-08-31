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
    public partial class loginpage : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ToString());
        string uid;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void cancelbtn_Click(object sender, EventArgs e)
        {
            lgnamebox.Text = "";
            lgpassword.Text = "";
        }

        protected void signinbtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("registerpage.aspx");
        }

        protected void loginbtn_Click(object sender, EventArgs e)
        {
            
            try
            {
                uid = lgnamebox.Text;
                string pass = lgpassword.Text;
                con.Open();
                string qry = "select * from userdb where username='" + uid + "' and password='" + pass + "'";
                SqlCommand cmd = new SqlCommand(qry, con);
                SqlDataReader sdr = cmd.ExecuteReader();

                //   SqlDataAdapter da = new SqlDataAdapter(cmd);
                //  DataTable dt = new DataTable();
                //  DataSet ds = new DataSet();
                // da.Fill(ds);
                // cmd.ExecuteNonQuery();
                // if (ds.Tables[0].Rows.Count==1)
                if (sdr.Read())
                {
                    Response.Write("<script>alert('Login successfully')</script>");
                    Session["name"] = lgnamebox.Text;
                    Response.Redirect("homepage.aspx");
                   
                }
                else
                {
                    Response.Write("<script>alert('UserId & Password Is not correct Try again..!!')</script>");

                }
                con.Close();
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
    
            //Server.Transfer("homepage.aspx");
            //Server.Transfer("cartpage.aspx");
        }

        protected void forgotlink_Click(object sender, EventArgs e)
        {
            Response.Redirect("forgotpage.aspx");
        }
    }
}