using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Admin_ManageDoctor : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["myconnection"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    
    protected void Page_Load(object sender, EventArgs e)
    {

    }








   

    protected void btnaddnew_Click1(object sender, EventArgs e)
    {
        cn.Open();
        cmd.CommandText = "select count(id) from ManageDoctor";
        cmd.Connection = cn;
        int n = Convert.ToInt32(cmd.ExecuteScalar());
        n++;
        txtid.Text = n.ToString();
        cn.Close();
    }

    protected void btnsave_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd.CommandText = "insert into ManageDoctor values(" + txtid.Text + ",'" + txtname.Text + "','" + txtaddress.Text + "','" + txtqualification.Text + "','" + txtemail.Text + "'," + txtmobile.Text + ",'" + txtspecialization.Text + "','" + Image1.ImageUrl + "')";
        cmd.Connection = cn;
        cmd.ExecuteNonQuery();
        cn.Close();
        GridView1.DataBind();
        ClientScript.RegisterStartupScript(Page.GetType(), "Submit", "<script language='javascript'>alert ('Data Submitted !!!')</script>");
    }

    protected void btnupdate_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd.CommandText = "update ManageDoctor set name='" + txtname.Text + "', address='" + txtaddress.Text + "',qualification='" + txtqualification.Text + "',email='" + txtemail.Text + "',mobile='" + txtmobile.Text + "',specialization='" + txtspecialization.Text + "' ,photo='" + Image1.ImageUrl + "'where id=" + txtid.Text + "";
        cmd.Connection = cn;
        cmd.ExecuteNonQuery();
        cn.Close();
        GridView1.DataBind();
        ClientScript.RegisterStartupScript(Page.GetType(), "Update", "<script language='javascript'>alert ('Updated !!!')</script>");
    }

    protected void btndelete_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd.CommandText = "delete from ManageDoctor where id=" + txtid.Text + "";
        cmd.Connection = cn;
        cmd.ExecuteNonQuery();
        cn.Close();
        GridView1.DataBind();
        ClientScript.RegisterStartupScript(Page.GetType(), "Delete", "<script language='javascript'>alert ('Data Deleted !!!')</script>");
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        txtid.Text = GridView1.SelectedRow.Cells[1].Text;
        txtname.Text = GridView1.SelectedRow.Cells[2].Text;
        txtaddress.Text = GridView1.SelectedRow.Cells[3].Text;
        txtqualification.Text = GridView1.SelectedRow.Cells[4].Text;
        txtemail.Text = GridView1.SelectedRow.Cells[5].Text;
        txtmobile.Text = GridView1.SelectedRow.Cells[6].Text;
        txtspecialization.Text = GridView1.SelectedRow.Cells[7].Text;
        Image1.ImageUrl = GridView1.SelectedRow.Cells[8].Text;

    }


    protected void btncancel_Click(object sender, EventArgs e)
    {
        txtid.Text = " ";
        txtname.Text = " ";
        txtaddress.Text = " ";
        txtqualification.Text = " ";
        txtemail.Text = " ";
        txtmobile.Text = " ";
        txtspecialization.Text = " ";
        Image1.ImageUrl = " ";
    }

    protected void btnupload_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile == true)
        {
            FileUpload1.SaveAs(Server.MapPath("~\\Images\\" + FileUpload1.FileName));
            Image1.ImageUrl = "~\\Images\\" + FileUpload1.FileName;
        }
    }
}

   