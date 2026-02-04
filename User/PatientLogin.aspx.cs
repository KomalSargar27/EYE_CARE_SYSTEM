using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class User_PatientLogin : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["myconnection"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    SqlDataAdapter da = new SqlDataAdapter();
    DataTable dt = new DataTable();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnlogin_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd.CommandText = "select Name,Password from Registration where Name='" + txtusername.Text + "'and Password='" + txtpassword.Text + "'";
        cmd.Connection = cn;
        cmd.ExecuteNonQuery();
        da.SelectCommand = cmd;
        da.Fill(dt);
        string a = txtusername.Text;
        if (dt.Rows.Count > 0)
        {
            //ClientScript.RegisterStartupScript(Page.GetType(), "Error", "<Script language='javascript'>alert('Login Successfully')</Script");
            Session["user"] = txtusername.Text;
            Response.Redirect("~/Patient/Home.aspx");
        }
        else
        {
            ClientScript.RegisterStartupScript(Page.GetType(), "Error", "<Script language='javascript'>alert('Invalid User Name or Password')</Script");
        }
    }

    protected void btncancel_Click(object sender, EventArgs e)
    {
        txtusername.Text = " ";
        txtpassword.Text = " ";
    }
}