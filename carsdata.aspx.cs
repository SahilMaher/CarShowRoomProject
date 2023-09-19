using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;

public partial class carsdata : System.Web.UI.Page
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
        cmd.CommandText = "select * from car";
        con.Open();
        Repeater1.DataSource = cmd.ExecuteReader();
        Repeater1.DataBind();
        con.Close();
    }
    protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
    {

        if (e.CommandName == "del")
        {
            MySqlConnection con1 = new MySqlConnection();
            con1.ConnectionString = "server=localhost;database=csr;user=root;password=;";

            String id = ((Label)e.Item.FindControl("Label1")).Text;
            try
            {
                con1.Open();
                MySqlCommand cmd = new MySqlCommand();
                cmd.CommandText = "DELETE from car where id ='" + id + "'";
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
        if (e.CommandName == "upd")
        {
            MySqlConnection con1 = new MySqlConnection();
            con1.ConnectionString = "server=localhost;database=csr;user=root;password=;";
            con1.Open();
            try
            {
                id = ((Label)e.Item.FindControl("Label1")).Text;
                String name = ((TextBox)e.Item.FindControl("txtname1")).Text;
                String model = ((TextBox)e.Item.FindControl("txtmodel")).Text;
                String prc = ((TextBox)e.Item.FindControl("txtprc")).Text;
                String clr = ((TextBox)e.Item.FindControl("txtclr")).Text;
                String disc = ((TextBox)e.Item.FindControl("txtdisc")).Text;
                String yrs = ((TextBox)e.Item.FindControl("txtyrs")).Text;

                MySqlConnection con = new MySqlConnection();
                con.ConnectionString = "server=localhost;database=csr;user=root;password=;";
                con.Open();
                MySqlCommand cmd = new MySqlCommand();
                cmd.CommandText = "UPDATE car SET name = '" + name + "',model='" + model + "',prc='" + prc + "',color='" + clr + "',disc='" + disc + "',yrs='" + yrs + "' where id ='" + id + "'";
                cmd.CommandType = System.Data.CommandType.Text;
                cmd.Connection = con;
                cmd.ExecuteNonQuery();
                Label9.Text = "Car Update";
                data();
            }
            catch (Exception ex)
            {
                Response.Write("<div class='alert alert-danger' role='alert'>" + ex.Message + "</div>");
            }
        
         
            
        }
        if (e.CommandName == "sel1")
        {
          
            MySqlConnection con1 = new MySqlConnection();
            con1.ConnectionString = "server=localhost;database=csr;user=root;password=;";
            con1.Open();
            try
            {
                id = ((Label)e.Item.FindControl("Label1")).Text;
                img = ((Label)e.Item.FindControl("Label8")).Text;
                String name = ((TextBox)e.Item.FindControl("txtname1")).Text;
                String model = ((TextBox)e.Item.FindControl("txtmodel")).Text;
                String prc = ((TextBox)e.Item.FindControl("txtprc")).Text;
                String clr = ((TextBox)e.Item.FindControl("txtclr")).Text;
                String disc = ((TextBox)e.Item.FindControl("txtdisc")).Text;
                String yrs = ((TextBox)e.Item.FindControl("txtyrs")).Text;

                MySqlConnection con = new MySqlConnection();
                con.ConnectionString = "server=localhost;database=csr;user=root;password=;";
                con.Open();
                MySqlCommand cmd = new MySqlCommand();
                cmd.CommandText = "insert into carsell(name,year,model,color,prc,disc,img) values('"+name+"','"+yrs+"','"+model+"','"+clr+"','"+prc+"','"+disc+"','"+img+"')";
                cmd.CommandType = System.Data.CommandType.Text;
                cmd.Connection = con;
                cmd.ExecuteNonQuery();

              
                MySqlCommand cmd1 = new MySqlCommand();
                cmd1.CommandText = "delete from car where id='"+id+"'";
                cmd1.CommandType = System.Data.CommandType.Text;
                cmd1.Connection = con;
                cmd1.ExecuteNonQuery();
                Label9.Text = "Sold Car";
                data();
            }
            catch (Exception ex)
            {
                Response.Write("<div class='alert alert-danger' role='alert'>" + ex.Message + "</div>");
            }
          
        }
    }

}