using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class silme : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["adi"] != "")
        {
            Label1.Text = Session["Uyeadi"].ToString();
        }
        else
        {
            Response.Redirect("Default.aspx");
        }
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        TextBox1.Text = GridView1.SelectedDataKey.Value.ToString();
    }
    protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
    {
        TextBox1.Text = GridView1.SelectedDataKey.Value.ToString();
    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {
        
    }
    protected void FormView1_ItemDeleted(object sender, FormViewDeletedEventArgs e)
    {
        GridView1.DataBind();
    }
    protected void FormView1_PageIndexChanging(object sender, FormViewPageEventArgs e)
    {

    }
    protected void AccessDataSource1_Deleted(object sender, SqlDataSourceStatusEventArgs e)
    {

    }
}