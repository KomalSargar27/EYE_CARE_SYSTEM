using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Patient_CartDetails : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["myconnection"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    SqlDataAdapter da = new SqlDataAdapter();
    SqlDataReader dr;
    Dataset ds = new Dataset();
    int p, q, t;
    int st2;
    int st3,id;
    protected void Page_Load(object sender, EventArgs e)
    {

        lblname.Text = Session["user"].ToString();

        cn.Open();
        cmd.CommandText = "select count(PId) from CartDetails where username='"+lblname.Text+"'";
        cmd.Connection = cn;
        int y = Convert.ToInt32(cmd.ExecuteScalar());
        cn.Close();
        if (y == 0)
            ClientScript.RegisterStartupScript(Page.GetType(), "Error", "<script language ='javascript'>alert('Your Cart Is Empty')</script>");
        else
        {
            
            cn.Open();
            cmd.CommandText = "select count(OId) from [Order]";
            cmd.Connection = cn;
            int x = Convert.ToInt32(cmd.ExecuteScalar());
            x++;
            lblid.Text = x.ToString();
            cn.Close();

            lbldat.Text = System.DateTime.Now.ToShortDateString();
            cn.Open();
            cmd.CommandText = "select sum(Total) from CartDetails";
            double amt = Convert.ToDouble(cmd.ExecuteScalar());
            cmd.Connection = cn;
            lblamount.Text = amt.ToString();
            lbltime.Text = System.DateTime.Now.ToShortTimeString();
            cn.Close();
        }
    }

    protected void btnconf_Click(object sender, EventArgs e)
    {
        string Status = "in Process";
        for (int i = 0; i < GridView1.Rows.Count; i++)
        {
            int oid = Convert.ToInt32(lblid.Text);
             id = Convert.ToInt32(GridView1.Rows[i].Cells[0].Text);
            string name = Session["user"].ToString();
            string cat = Convert.ToString(GridView1.Rows[i].Cells[1].Text);
            string pname = Convert.ToString(GridView1.Rows[i].Cells[2].Text);
            string username = Convert.ToString(GridView1.Rows[i].Cells[3].Text);
            p = Convert.ToInt32(GridView1.Rows[i].Cells[4].Text);
            q = Convert.ToInt32(GridView1.Rows[i].Cells[5].Text);
            t = Convert.ToInt32(GridView1.Rows[i].Cells[6].Text);
            cn.Open();
            cmd.CommandText = "insert into OrderDetails values(" + oid + "," + id + ",'" + name + "','" + cat + "','" + pname + "'," + q + "," + p + "," + t + ",'" + txtaddress.Text + "')";
            cmd.Connection = cn;
            cmd.ExecuteNonQuery();
            cn.Close();
        }

        cn.Open();
        cmd.CommandText = "insert into [Order] values (" + lblid.Text + ",'" + txtaddress.Text + "'," + txtcontact.Text + ",'" + lbldat.Text + "'," + lblamount.Text + ",'" + Status + "','" + lblname.Text + "','" + txtcity.Text + "')";
        cmd.ExecuteNonQuery();
        cn.Close();
        ClientScript.RegisterStartupScript(Page.GetType(), "Save", "<scriptlanguage ='javascript'>alert('Order Confirmed')</script>");
        Session["id"] = lblid.Text;
        Session["Total"] = lblamount.Text;
               cn.Open();
        cmd.CommandText = "select stock from ManageProducts";
        cmd.Connection = cn;
        st2 = Convert.ToInt32(cmd.ExecuteScalar());
        cn.Close();
        int st3 = st2 - q;

        cn.Open();
        cmd.CommandText = "update [ManageProducts] set stock=" + st3 + " where Id="+ id +" ";
        cmd.Connection = cn;
        cmd.ExecuteNonQuery();
        cn.Close();

        cn.Open();
        cmd.CommandText = "delete from CartDetails";
        cmd.Connection = cn;
        cmd.ExecuteNonQuery();
        cn.Close();
        Response.Redirect("~\\Patient\\PaymentDetail.aspx");


    }




}