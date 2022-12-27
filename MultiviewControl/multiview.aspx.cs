using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace MultiviewControl
{
    public partial class multiview : System.Web.UI.Page
    {
        SqlConnection conn;
        SqlDataReader sdr;
        SqlDataAdapter adapt;
        string fname, enrollment, gender, degree, email, cno, address, designation;

        protected void btnsave_Click(object sender, EventArgs e)
        {
            string sql = "INSERT INTO multiview (fname, enrollment, gender, degree, email, cno, address, designation) values (@fname, @enrollment, @gender, @degree, @email, @cno, @address, @designation)";

            conn.Open();

            SqlCommand cmd = new SqlCommand(sql, conn);
            cmd.Parameters.AddWithValue("@fname", txtfname.Text);
            cmd.Parameters.AddWithValue("@enrollment", txtenrollmentno.Text);
            cmd.Parameters.AddWithValue("@gender", RadioButtonList1.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@degree", DropDownList1.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@email", txtemail.Text);
            cmd.Parameters.AddWithValue("@cno", txtcontactno.Text);
            cmd.Parameters.AddWithValue("@address", txtaddress.Text);
            cmd.Parameters.AddWithValue("@designation", DropDownList2.SelectedItem.Text);
            int v = cmd.ExecuteNonQuery();

            ClientScript.RegisterClientScriptBlock(this.GetType(), "B", "swal('Good Job', 'You have successfully registered!...', 'success')", true);
            conn.Close();
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=
            C:\Users\bibek\Documents\appointment.mdf;Integrated Security=True;Connect Timeout=30");
        }

        protected void btnnext1_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex += 1;
        }

        protected void btnnext2_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex += 1;
        }

        protected void btnpre2_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex -= 1;
        }

        protected void btnback_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex -= 1;
        }

        protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void btnfetch_Click(object sender, EventArgs e)
        {
            lblfname.Text = txtfname.Text;
            lblenrollment.Text = txtenrollmentno.Text;
            lblgender.Text = RadioButtonList1.SelectedItem.Text;
            lbldegree.Text = DropDownList1.SelectedItem.Text;
            lblemail.Text = txtemail.Text;
            lblcontactno.Text = txtcontactno.Text;
            lbladdress.Text = txtaddress.Text;
            lbldesignation.Text = DropDownList2.SelectedItem.Text;
        }
    }
}