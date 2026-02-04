using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class Admin_ManageProduct : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["myconnection"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    protected void Page_Load(object sender, EventArgs e)
    {

    }




    protected void btnaddnew_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd.CommandText = "select count (id)from ManageProducts ";
        cmd.Connection = cn;
        int n = Convert.ToInt32(cmd.ExecuteScalar ());
        n++;
        txtid.Text = n.ToString();
        cn.Close();
    }

    protected void btnsave_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd.CommandText = "insert  into ManageProducts values(" + txtid.Text + ",'" + txtname.Text + "','" + drpcategory.Text + "','" + drpsubcategory.Text + "'," + txtprice.Text + ",'" + txtspecification.Text + "','" + Image1.ImageUrl + "',"+txtstock.Text +")";
        cmd.Connection = cn;
        int n = Convert.ToInt32(txtstock.Text);
        if (n < 0)
        {
            ClientScript.RegisterStartupScript(Page.GetType(), "submit", "<script language='javascript'>alert('Stock Could not be Negative')</script");

        }
        else
        {
             cmd.ExecuteNonQuery();
            cn.Close();
            GridView1.DataBind();
            ClientScript.RegisterStartupScript(Page.GetType(), "submit", "<script language='javascript'>alert('Data Saved!!!!')</script");
        }
        }

    protected void btnupdate_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd.CommandText = "update ManageProducts set pname='" + txtname.Text + "',pcategory='" + drpcategory.Text + "',psubcat='" + drpsubcategory.Text + "',pprice='" + txtprice.Text + "',pspecification='" + txtspecification.Text + "',photo='" + Image1.ImageUrl + "',stock="+txtstock.Text +" where Id=" + txtid.Text + "";
        cmd.Connection = cn;
        int n = Convert.ToInt32(txtstock.Text);
        if (n < 0)
        {
            ClientScript.RegisterStartupScript(Page.GetType(), "submit", "<script language='javascript'>alert('Stock Could not be Negative')</script");

        }
        else
        {
            cmd.ExecuteNonQuery();
            cn.Close();
            GridView1.DataBind();
            ClientScript.RegisterStartupScript(Page.GetType(), "Update", "<script language='javascript'>alert('Data Updated!!!') </script>");
        }
    }

    protected void btndelete_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd.CommandText="delete from ManageProducts where Id="+txtid.Text+"";
        cmd.Connection = cn;
        cmd.ExecuteNonQuery();
        cn.Close();
        GridView1.DataBind();
        ClientScript.RegisterStartupScript(Page.GetType(), "Delete", "<script language='javascript'>alert ('Data Deleted !!!')</script");
    }

    protected void btncancel_Click(object sender, EventArgs e)
    {
        txtid.Text = "";
        txtname.Text = "";
        txtprice.Text = "";
        txtspecification.Text = "";
        Image1.ImageUrl  = "";

    }

    protected void btnupload_Click(object sender, EventArgs e)
    {
        if(FileUpload1.HasFile==true)
        {
            FileUpload1.SaveAs(Server.MapPath("~\\Images\\" + FileUpload1.FileName));
            Image1.ImageUrl = "~\\Images\\" + FileUpload1.FileName;
        }
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        txtid.Text = GridView1.SelectedRow.Cells[1].Text;
        txtname.Text = GridView1.SelectedRow.Cells[2].Text;
        drpcategory.Text = GridView1.SelectedRow.Cells[3].Text;
        drpsubcategory.Text = GridView1.SelectedRow.Cells[4].Text;
        txtprice.Text = GridView1.SelectedRow.Cells[5].Text;
        txtspecification.Text = GridView1.SelectedRow.Cells[6].Text;
        Image1.ImageUrl  = GridView1.SelectedRow.Cells[7].Text;
        txtstock.Text = GridView1.SelectedRow.Cells[8].Text;
    }
}