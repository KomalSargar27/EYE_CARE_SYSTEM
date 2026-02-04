using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class Admin_NewManageServices : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["myconnection"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnaddnew_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd.CommandText = "select count(Id)from ManageServices";
        cmd.Connection = cn;
        int n = Convert.ToInt32(cmd.ExecuteScalar());
        n++;
        txtid.Text = n.ToString();
        cn.Close();

    }

    protected void btnsave_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd.CommandText = "insert into ManageServices values(" + txtid.Text + ",'" + txtname.Text + "','" + txtdetail.Text + "','"+Image6.ImageUrl+"')";
        cmd.Connection = cn;
        cmd.ExecuteNonQuery();
        cn.Close();
        GridView1.DataBind();
        clear();
        ClientScript.RegisterStartupScript(Page.GetType(),"Submit", "<script language='javascript'>alert('Data Saved!!!')</script>");
    }

    protected void btnupdate_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd.CommandText= "Update ManageServices set Id=" + txtid.Text + ",sname='" + txtname.Text + "',sdetail='" + txtdetail.Text + "',photo='"+Image6.ImageUrl+"'";
        cmd.Connection = cn;
        cmd.ExecuteNonQuery();
        cn.Close();
        clear();
        ClientScript.RegisterStartupScript(Page.GetType(), "Update", "<script language='javascript'>alert('Data Updated!!!')</script>");
        
    }


    protected void btndelete_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd.CommandText = "delete from ManageServices where Id=" + txtid.Text + "";
        cmd.Connection = cn;
        cmd.ExecuteNonQuery();
        cn.Close();
        GridView1.DataBind();
        clear();
        ClientScript.RegisterStartupScript(Page.GetType(), "Delete", "<script language='javascript'>alert('Data Deleted!!!')</script>");

    }

    protected void btncnacel_Click(object sender, EventArgs e)
    {
        txtid.Text = "";
        txtname.Text = "";
        txtdetail.Text = "";
        Image6.ImageUrl = "";


    }
    protected void clear()
    {
        txtid.Text = "";
        txtname.Text = "";
        txtdetail.Text = "";
        Image6.ImageUrl = "";



    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        txtid.Text=GridView1.SelectedRow.Cells[1].Text;
        txtname.Text = GridView1.SelectedRow.Cells[2].Text;
        txtdetail.Text = GridView1.SelectedRow.Cells[3].Text;
        Image6.ImageUrl = GridView1.SelectedRow.Cells[4].Text;
    }

    protected void btnupload_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile == true)
        {
            FileUpload1.SaveAs(Server.MapPath("~\\Images\\" + FileUpload1.FileName));
            Image6.ImageUrl = "~\\Images\\" + FileUpload1.FileName;
        }
    }
}