using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class User_PatientRegistration : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["myconnection"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
   
    protected void Page_Load(object sender, EventArgs e)
    {
        cn.Open();
        cmd.CommandText = "select count(id)from Registration";
        cmd.Connection = cn;
        int n = Convert.ToInt32(cmd.ExecuteScalar());
        n++;
        txtuserid.Text = n.ToString();
        cn.Close();
    }


    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd.CommandText="insert into Registration values("+txtuserid.Text+",'"+txtpname.Text+"','"+txtaddress.Text+"','"+txtemail.Text+"',"+txtmobile.Text+",'"+txtusername.Text+"','"+txtpassword.Text+ "',"+txtage.Text+")";
        cmd.Connection = cn;
        cmd.ExecuteNonQuery();
        ClientScript.RegisterStartupScript(Page.GetType(), "Submit", "<script language='javascript'>alert('Registration Successfully!!!')</script>");

    }

    protected void btncancel_Click(object sender, EventArgs e)
    {
       
        txtpname.Text = "";
        txtaddress.Text = "";
        txtemail.Text = "";
        txtmobile.Text = "";
        txtusername.Text = "";
        txtpassword.Text = "";
        txtconfirmpassword.Text = "";
        txtage.Text = "";
    }
}