using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Patient_ProductDetail : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["myconnection"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
 



    //protected void DropDownList1_SelectedIndexChanged1(object sender, EventArgs e)
    //{
    //    int count = DataList1.Items.Count;
    //    for (int i = 0; i < count; i++)
    //    {
    //        Label lblprice = DataList1.Items[i].FindControl("lblprice") as Label;
    //        int p = Convert.ToInt32(lblprice.Text);

    //        DropDownList drp = DataList1.Items[i].FindControl("DropDownList1") as DropDownList;
    //        int q = Convert.ToInt32(drp.Text);

    //        int t = p * q;
    //        Label lbltotal = DataList1.Items[i].FindControl("lbltotal") as Label;
    //        lbltotal.Text = t.ToString();
    //    }

    //}

    //protected void btncart_Click1(object sender, EventArgs e)
    //{
    //    int count = DataList1.Items.Count;
    //    for (int i = 0; i < count; i++)
    //    {
    //        Label lblid = DataList1.Items[i].FindControl("lblid") as Label;
    //        int id = Convert.ToInt32(lblid.Text);

    //        Label lblpname = DataList1.Items[i].FindControl("lblpname") as Label;
    //        string name = lblpname.Text;

    //        Label lblsubcat = DataList1.Items[i].FindControl("lblsubcat") as Label;
    //        string cat = lblpname.Text;

    //        Label lblprice = DataList1.Items[i].FindControl("lblprice") as Label;
    //        int p = Convert.ToInt32(lblprice.Text);

    //        DropDownList drp = DataList1.Items[i].FindControl("DropDownList1") as DropDownList;
    //        int q = Convert.ToInt32(drp.Text);

    //        int t = p * q;
    //        Label lbltotal = DataList1.Items[i].FindControl("lbltotal") as Label;
    //        lbltotal.Text = t.ToString();

    //        string l = Session["user"].ToString();

    //        cn.Open();
    //        cmd.CommandText = "insert into CartDetails values (" + id + ",'" + cat + "','" + name + "','" + l + "'," + p + "," + q + "," + t + ")";
    //        cmd.Connection = cn;
    //        cmd.ExecuteNonQuery();
    //        cn.Close();
    //        ClientScript.RegisterStartupScript(Page.GetType(), "Error", "<Script language='javascript'>alert('Added To Cart Successfully!!!')</Script");

    //    }
    //}

    //protected void btnaddtocart_Click(object sender, EventArgs e)
    //{
    //    int count = DataList1.Items.Count;
    //    for (int i = 0; i < count; i++)
    //    {
    //        Label lblid = DataList1.Items[i].FindControl("lblid") as Label;
    //        int id = Convert.ToInt32(lblid.Text);

    //        Label lblpname = DataList1.Items[i].FindControl("lblpname") as Label;
    //        string name = lblpname.Text;

    //        Label lblsubcat = DataList1.Items[i].FindControl("lblsubcat") as Label;
    //        string cat = lblpname.Text;

    //        Label lblprice = DataList1.Items[i].FindControl("lblprice") as Label;
    //        int p = Convert.ToInt32(lblprice.Text);

    //        DropDownList drp = DataList1.Items[i].FindControl("DropDownList1") as DropDownList;
    //        int q = Convert.ToInt32(drp.Text);

    //        int t = p * q;
    //        Label lbltotal = DataList1.Items[i].FindControl("lbltotal") as Label;
    //        lbltotal.Text = t.ToString();

    //        string l = Session["user"].ToString();

    //        cn.Open();
    //        cmd.CommandText = "insert into CartDetails values (" + id + ",'" + cat + "','" + name + "','" + l + "'," + p + "," + q + "," + t + ")";
    //        cmd.Connection = cn;
    //        cmd.ExecuteNonQuery();
    //        cn.Close();
    //        ClientScript.RegisterStartupScript(Page.GetType(), "Error", "<Script language='javascript'>alert('Added To Cart Successfully!!!')</Script");

    //    }
    //}





    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        int count = DataList1.Items.Count;
        for (int i = 0; i < count; i++)
        {
            Label lblprice = DataList1.Items[i].FindControl("lblprice") as Label;
            int p = Convert.ToInt32(lblprice.Text);

            DropDownList drp = DataList1.Items[i].FindControl("DropDownList1") as DropDownList;
            int q = Convert.ToInt32(drp.Text);

            int t = p * q;
            Label lbltotal = DataList1.Items[i].FindControl("lbltotal") as Label;
            lbltotal.Text = t.ToString();
        }


    }

    protected void btnaddtocart_Click1(object sender, EventArgs e)
    {
        int count = DataList1.Items.Count;
        for (int i = 0; i < count; i++)
        {
            Label lblid = DataList1.Items[i].FindControl("lblid") as Label;
            int id = Convert.ToInt32(lblid.Text);

            Label lblpname = DataList1.Items[i].FindControl("lblpname") as Label;
            string name = lblpname.Text;

            Label lblsubcat = DataList1.Items[i].FindControl("lblsubcat") as Label;
            string cat = lblpname.Text;

            Label lblprice = DataList1.Items[i].FindControl("lblprice") as Label;
            int p = Convert.ToInt32(lblprice.Text);

            DropDownList drp = DataList1.Items[i].FindControl("DropDownList1") as DropDownList;
            int q = Convert.ToInt32(drp.Text);

            int t = p * q;
            Label lbltotal = DataList1.Items[i].FindControl("lbltotal") as Label;
            lbltotal.Text = t.ToString();

            string l = Session["user"].ToString();

            cn.Open();
            cmd.CommandText = "insert into CartDetails values (" + id + ",'" + cat + "','" + name + "','" + l + "'," + p + "," + q + "," + t + ")";
            cmd.Connection = cn;
            cmd.ExecuteNonQuery();
            cn.Close();
            ClientScript.RegisterStartupScript(Page.GetType(), "Error", "<Script language='javascript'>alert('Added To Cart Successfully!!!')</Script");

        }
    }
}