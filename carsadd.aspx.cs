using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;

public partial class carsadd : System.Web.UI.Page
{
    MySqlConnection con = new MySqlConnection();
    MySqlCommand cmd = new MySqlCommand();

    MySqlDataAdapter da = new MySqlDataAdapter();

    DataSet ds = new DataSet();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        ins();
    }
    public void ins()
    {
        if (FileUpload1.HasFile)
        {

            string filename = FileUpload1.PostedFile.FileName;
            string filepath = "upload/" + FileUpload1.FileName;
            FileUpload1.PostedFile.SaveAs(Server.MapPath("~/upload/") + filename);
            try
            {


                con.ConnectionString = "SERVER=localhost;DATABASE=csr;USER=root;PASSWORD='';";
                con.Open();
                MySqlCommand cmd = new MySqlCommand();
                cmd.CommandType = System.Data.CommandType.Text;
                cmd.CommandText = "insert into car(name,model,prc,color,yrs,disc,imgs) values('" + TextBox1.Text + "','" + model.Text + "','" + price.Text + "','" + color1.Text + "','" + TextBox2.Text + "','" + disc.Text + "','" + filepath + "')";
                cmd.Connection = con;
                cmd.ExecuteNonQuery();
                Label1.Text = "Car Added";
                con.Close();

            }
            catch (Exception ex)
            {
                Response.Write(ex);

            }

        }
        else
        {
            Response.Write("try again");
        }

    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        TextBox1.Text = "";
        TextBox2.Text = "";
        color1.Text = "";
        model.Text = "";
        disc.Text = "";
        price.Text = "";
    }
}
