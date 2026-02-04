using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class User_Feedback : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["myconnection"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd.CommandText = "insert into Feedback values('" + txtname.Text + "','" + txtemail.Text + "','" + txtaddress.Text + "'," + txtage.Text + ",'" + txtresponse.Text + "')";
        cmd.Connection = cn;
        cmd.ExecuteNonQuery();
        ClientScript.RegisterStartupScript(Page.GetType(), "Submit", "<script language='javascript'>alert('Feedback Submitted Successfully!!!')</script>");

    }

    protected void btncancel_Click(object sender, EventArgs e)
    {
        txtname.Text = " " ;
        txtemail.Text = " ";
        txtaddress.Text = " ";
        txtage.Text = " ";
        txtresponse.Text = " ";
    }
}