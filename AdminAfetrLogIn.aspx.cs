using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Postbloodreq : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (DropDownList2.SelectedIndex != 0)
        {
            GridView1.DataSourceID = "SqlDataSource2";
            GridView2.DataSourceID = "SqlDataSource7";
        }
        if (DropDownList2.SelectedIndex == 0)
        {
            GridView1.DataSourceID = "SqlDataSource1";
            GridView2.DataSourceID = "SqlDataSource6";

        }
    }
    protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (DropDownList2.SelectedIndex!=0 && DropDownList3.SelectedIndex!=0)
        {
            GridView1.DataSourceID = "SqlDataSource3";
            GridView2.DataSourceID = "SqlDataSource8";
        }
        if (DropDownList1.SelectedIndex!=0 && DropDownList3.SelectedIndex==0)
        {
            GridView1.DataSourceID = "SqlDataSource2";
            GridView2.DataSourceID = "SqlDataSource7";

        }
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (DropDownList1.SelectedIndex == 0)
        {
            Panel2.Visible = false;
            Panel3.Visible = false;
        }
        if (DropDownList1.SelectedIndex == 1)
        {
            Panel2.Visible = true;
            Panel3.Visible = false;
        }
        if (DropDownList1.SelectedIndex == 0)
        {
            Panel2.Visible = false;
            Panel3.Visible = true;
        }
    }
}