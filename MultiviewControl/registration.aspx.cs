using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace MultiviewControl
{
    public partial class registration : System.Web.UI.Page
    {
        SqlConnection conn;
        SqlDataReader sdr;
        SqlDataAdapter adapt;
        int id;
        string fname, email, password, gender, contact_no, address, designation, date_register, profile_link;
        protected void Page_Load(object sender, EventArgs e)
        {
            ImageButton1.ImageUrl = txtprofilelink.Text.ToString();
            label11.Text = "Page Refreshed at: " + DateTime.Today.ToLongDateString() + " Time : " + DateTime.Now.ToLongTimeString();
            conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=
            C:\Users\bibek\Documents\appointment.mdf;Integrated Security=True;Connect Timeout=30");
        }

        protected void btnregister_Click(object sender, EventArgs e)
        {
            string sql = "INSERT INTO registration (fname, email, password, gender, contact_no, address, designation, date_register, profile_link) values (@fname, @email, @password, @gender, @contact_no, @address, @designation, @date_register, @profile_link)";

            conn.Open();

            SqlCommand cmd = new SqlCommand(sql, conn);
            cmd.Parameters.AddWithValue("@fname", txtfname.Text);
            cmd.Parameters.AddWithValue("@email", txtemail.Text);
            cmd.Parameters.AddWithValue("@password", txtpassword.Text);
            cmd.Parameters.AddWithValue("@gender", RadioButtonList1.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@contact_no", txtcontactno.Text);
            cmd.Parameters.AddWithValue("@address", txtaddress.Text);
            cmd.Parameters.AddWithValue("@designation", DropDownList1.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@date_register", Calendar1.SelectedDate.ToOADate());
            cmd.Parameters.AddWithValue("@profile_link", txtprofilelink.Text.ToString());
            int v = cmd.ExecuteNonQuery();

            ClientScript.RegisterClientScriptBlock(this.GetType(), "B", "swal('Good Job', 'You have successfully registered!...', 'success')", true);
            conn.Close();
        }

        protected void btnloadimage_Click(object sender, EventArgs e)
        {
            ImageButton1.ImageUrl = txtprofilelink.Text.ToString();
        }
    }
}