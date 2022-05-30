using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        FormView1.DataBind();
        TextBox Uyeadi1 = (TextBox)FormView1.FindControl("UyeadiTextBox");
        if (FormView1.DataItemCount > 0)
        {
            
            Session["Uyeadi"] = Uyeadi1.Text.ToString();
            Label1.Visible = false;
            
            TextBox4.Text = Uyeadi1.Text;
            TextBox2.Text = "";
            TextBox3.Text = "";
            MultiView1.ActiveViewIndex = 1;
        }
        else
        {
            Label1.Visible = true;
            Label1.Text = "Üye girişi ve şifre yanlış.";
            TextBox2.Text = "";
            TextBox3.Text = "";
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Session["Uyeadi"] = "";
        Session.Abandon();
        MultiView1.ActiveViewIndex = 0;
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {

    }
}