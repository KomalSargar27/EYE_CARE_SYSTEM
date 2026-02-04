using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Patient_Product : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["myconnection"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    protected void Page_Load(object sender, EventArgs e)
    {
    }


    protected void btn_Click(object sender, EventArgs e)
    {
        Button btn = sender as Button;
        string str = btn.CommandArgument;
        Session["cat"] = str;
    }




   

    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        ImageButton btn = sender as ImageButton;
        string str = btn.CommandArgument;
        Session["sub"] = str;
    }

     protected void Button1_Click1(object sender, EventArgs e)
    {
        Button btn = sender as Button;
        string str = btn.CommandArgument;
        Session["id"] = str;
        Response.Redirect("~/Patient/ProductDetail.aspx");
    }

    protected void btnviewmore_Click(object sender, EventArgs e)
    {

        Button btn = sender as Button;
        string str = btn.CommandArgument;
        Session["id"] = str;
        Response.Redirect("~/Patient/ProductDetail.aspx");
    }

    protected void btn1_Click1(object sender, EventArgs e)
    {

        Button btn = sender as Button;
        string str = btn.CommandArgument;
        Session["cat"] = str;
    }
}