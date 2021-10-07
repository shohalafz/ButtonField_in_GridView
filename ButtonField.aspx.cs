using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace ButtonField_in_GridView
{
    public partial class ButtonField : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.DataSource = SqlDataSource1;
            GridView1.DataBind();
        }

       

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "sroll")
            {
                int crow;
                crow = Convert.ToInt32(e.CommandArgument.ToString());
                string v = GridView1.Rows[crow].Cells[0].Text;



                Label1.Text = "Rollno of Selected Student is " + v;

            }
            if (e.CommandName == "sname")
            {
                int crow;
                crow = Convert.ToInt32(e.CommandArgument.ToString());
                string v = GridView1.Rows[crow].Cells[1].Text;



                Label1.Text = "Name of Selected Student is " + v;

            }

        }
    }
}