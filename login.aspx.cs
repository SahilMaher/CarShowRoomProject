using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using MySql.Data.MySqlClient;
using System.Data;
public partial class login : System.Web.UI.Page
{
   MySqlConnection con = new MySqlConnection();
   MySqlCommand cmd = new MySqlCommand(); 
    MySqlCommand cmd1 = new MySqlCommand();
    MySqlDataAdapter da = new MySqlDataAdapter();
    MySqlDataAdapter da1= new MySqlDataAdapter();
    DataSet ds = new DataSet(); DataSet ds1 = new DataSet();



    protected void Page_Load(object sender, EventArgs e)
    {
       
    }

    
   
   

    public void operation()
    {
     
            con.ConnectionString = "server=localhost;database=csr;user=root;password=;";
            con.Open();
            cmd.CommandText = "select * from emp where num='" + TextBox1.Text + "' and pass='" + TextBox2.Text + "' and type='admin' ";
            cmd.Connection = con;
            da.SelectCommand = cmd;
            da.Fill(ds, "emp");
            cmd1.CommandText = "select * from emp where num='" + TextBox1.Text + "' and pass='" + TextBox2.Text + "' and type='client' ";
            cmd1.Connection = con;
            da1.SelectCommand = cmd1;
            da1.Fill(ds1, "emp");
           
            if (ds.Tables[0].Rows.Count > 0)
            {
                Response.Redirect("clientdata.aspx");
            }
       
        else if(ds1.Tables[0].Rows.Count > 0)
            {
                Response.Redirect("carsadd.aspx");
           }

            else
            {
                Response.Write("try again");
            }
   
    
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        operation();
    }
}
