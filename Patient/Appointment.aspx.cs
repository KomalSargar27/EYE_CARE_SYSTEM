using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;


public partial class Patient_Appointment : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["myconnection"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    protected void Page_Load(object sender, EventArgs e)
    {
        cn.Open();
        cmd.CommandText = "select count (apid)from Appointment ";
        cmd.Connection = cn;
        int n = Convert.ToInt32(cmd.ExecuteScalar());
        n++;
        txtapid.Text = n.ToString();
        cn.Close();
    }

    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd.CommandText = "insert into Appointment values(" + txtapid.Text + ",'" + txtuname.Text + "','" + txtapdate.Text + "','" + txtaptime.Text + "','" + txtproblem.Text + "')";
        cmd.Connection = cn;
        cmd.ExecuteNonQuery();
        cn.Close();
        ClientScript.RegisterStartupScript(Page.GetType(), "Submit", "<script language='Javascript'>alert('Apppointment submitted Successfully !!')</script>");
    }

    protected void btncancel_Click(object sender, EventArgs e)
    {
        txtapid.Text = "";
        txtuname.Text = "";
        txtapdate.Text = "";
        txtaptime.Text = "";
        txtproblem.Text = "";
       

    }

   
}