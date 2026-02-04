using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User_OurProducts : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btn1_Click(object sender, EventArgs e)
    {
        Button btn = sender as Button;
        string str = btn.CommandArgument;
        Session["cat"] = str;
    }



    protected void btnviewmore_Click(object sender, EventArgs e)
    {
        Button btn = sender as Button;
        string str = btn.CommandArgument;
        Session["id"] = str;
        Response.Redirect("~/User/ProductDetails.aspx");
    }



    protected void btn1_Click1(object sender, EventArgs e)
    {

        Button btn = sender as Button;
        string str = btn.CommandArgument;
        Session["cat"] = str;

    }
}