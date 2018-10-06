using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data.SqlClient;

public partial class UserControls_MyControl : System.Web.UI.UserControl
{
    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\DesignDB.mdf;Integrated Security=True");
    SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnSave_Click(object sender, EventArgs e)
    {
        con.Open();
        cmd = new SqlCommand("INSERT INTO Services VALUES (@svcName, @type, @package, @squareblock, @unitprice, @vat)", con);

        cmd.Parameters.AddWithValue("@svcName", txtName.Text);
        cmd.Parameters.AddWithValue("@type", ddlType.SelectedValue.ToString());
        cmd.Parameters.AddWithValue("@package", ddlPackage.SelectedValue.ToString());
        cmd.Parameters.AddWithValue("@squareblock", ddlSqrBlk.SelectedValue);
        cmd.Parameters.AddWithValue("@unitprice", ddlUnitPrice.SelectedValue);
        cmd.Parameters.AddWithValue("@vat", txtVat.Text);     

        
        cmd.ExecuteNonQuery();
        con.Close();

        txtName.Text = "";
        txtVat.Text = "";
        

    }
}