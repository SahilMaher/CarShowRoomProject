using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;


public partial class soldcar : System.Web.UI.Page
{
  
    
    String id;
    String img;
    MySqlConnection con = new MySqlConnection();
    MySqlCommand cmd = new MySqlCommand();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            data();
        }
    }
    public void data()
    {

        con.ConnectionString = "server=localhost;database=csr;user=root;password=;";

        

        cmd.Connection = con;
        cmd.CommandText = "select * from carsell";
        con.Open();
        Repeater1.DataSource = cmd.ExecuteReader();
        Repeater1.DataBind();
        con.Close();
    }
    protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        String prc = ((TextBox)e.Item.FindControl("txtprc")).Text;
        if (e.CommandName == "del")
        {
            MySqlConnection con1 = new MySqlConnection();
            con1.ConnectionString = "server=localhost;database=csr;user=root;password=;";
            
            String id = ((Label)e.Item.FindControl("Label1")).Text;
            try
            {
                con1.Open();
                MySqlCommand cmd = new MySqlCommand();
                cmd.CommandText = "DELETE from carsell where id ='" + id + "'";
                cmd.CommandType = CommandType.Text;

                cmd.Connection = con1;
                cmd.ExecuteNonQuery();
                data();
            }
            catch (Exception ex)
            {
                Response.Write("<div class='alert alert-danger' role='alert'>" + ex.Message + "</div>");
            }
        }
  
      
    }

}
