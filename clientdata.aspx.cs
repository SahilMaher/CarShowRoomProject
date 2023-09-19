using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;

public partial class clientdata : System.Web.UI.Page
{
    MySqlConnection con = new MySqlConnection();
    MySqlCommand cmd = new MySqlCommand();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack) {
            data();
        }
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
      
    }
    public void data()
    {

        con.ConnectionString = "server=localhost;database=csr;user=root;password=;";



        cmd.Connection = con;
        cmd.CommandText = "select * from emp where type='client'";
        con.Open();
        Repeater1.DataSource = cmd.ExecuteReader();
        Repeater1.DataBind();
        con.Close(); 
    }
    protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
    {


        if (e.CommandName == "delete")
        {
           MySqlConnection con1 = new MySqlConnection();
           con1.ConnectionString = "server=localhost;database=csr;user=root;password=;";
            
            String id = ((Label)e.Item.FindControl("Label1")).Text;
            try
            {
                con1.Open();
                MySqlCommand cmd = new MySqlCommand();
                cmd.CommandText = "DELETE from emp where id ='" + id + "'";
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
        if (e.CommandName == "up")
        {
            MySqlConnection con1 = new MySqlConnection();
            con1.ConnectionString = "server=localhost;database=csr;user=root;password=;";
            con1.Open();
            try
            {
                String id = ((Label)e.Item.FindControl("Label1")).Text;
                String name = ((TextBox)e.Item.FindControl("txtname1")).Text;
                String num = ((TextBox)e.Item.FindControl("txtnum1")).Text;
                String age = ((TextBox)e.Item.FindControl("txtage1")).Text;
                String add1 = ((TextBox)e.Item.FindControl("txtadd1")).Text;
                String gen = ((TextBox)e.Item.FindControl("txtgen1")).Text;
                String tp = ((TextBox)e.Item.FindControl("txttp1")).Text;
               
                MySqlConnection con = new MySqlConnection();
                con.ConnectionString = "server=localhost;database=csr;user=root;password=;";
                con.Open();
                MySqlCommand cmd = new MySqlCommand();
                cmd.CommandText = "UPDATE emp SET name = '" + name + "',num='" + num + "',age='" + age + "',gen='" + gen + "',adresh='" + add1 + "' where id ='" + id + "'";
                cmd.CommandType = System.Data.CommandType.Text;
                cmd.Connection = con;
                cmd.ExecuteNonQuery();
                Label9.Text="Data Update";
                data();
              
            }
            catch (Exception ex)
            {
                Response.Write("<div class='alert alert-danger' role='alert'>" + ex.Message + "</div>");
            }
        }
       
            
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        
    }
    protected void Button1_Command(object sender, CommandEventArgs e)
    {

    }
    protected void delete(object sender, CommandEventArgs e)
    {

    }

    protected void Button2_Click1(object sender, EventArgs e)
    {
        
        
    }
}