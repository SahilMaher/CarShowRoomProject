using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;

public partial class registeradmin : System.Web.UI.Page
{
    MySqlConnection con = new MySqlConnection();
    MySqlCommand cmd = new MySqlCommand();

    MySqlDataAdapter da = new MySqlDataAdapter();

    DataSet ds = new DataSet(); 
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    public void ins()
    {
        try
        {

            con.ConnectionString = "SERVER=localhost;DATABASE=csr;USER=root;PASSWORD='';";
            con.Open();
            MySqlCommand cmd = new MySqlCommand();
            cmd.CommandType = System.Data.CommandType.Text;
            cmd.CommandText = "insert into emp(name,num,age,type,gen,adresh,pass) values('" + form3Example1cg.Text + "','" + form3Example3cg.Text + "','" + age.Text + "','client','" + RadioButtonList1.Text + "','" + form3Example4cdg.Text + "','" + form3Example4cg.Text + "')";
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            Label1.Text = "Client Register";
            con.Close();

        }
        catch (Exception ex)
        {
            Response.Write(ex);

        }


    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        ins();
    }
}