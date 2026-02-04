using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class User_DoctorLogin : System.Web.UI.Page
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
        cmd.CommandText = "select docname,password from DoctorLogin where docname='" + txtdocname.Text + "'and password=" + txtpassword.Text + "";
        cmd.Connection = cn;
        cmd.ExecuteNonQuery();
        da.SelectCommand = cmd;
        da.Fill(dt);
        string a = txtdocname.Text;
        if (dt.Rows.Count > 0)
            Response.Redirect("~/Doctor/DoctorHome.aspx");
        else
            ClientScript.RegisterStartupScript(Page.GetType(), "ERROR", "<script language='javascript'>alert('Incorrect user name or password')</script");

          
        
    }

    protected void btncancel_Click(object sender, EventArgs e)
    {
        txtdocname.Text = "";
        txtpassword.Text = "";
    }
}