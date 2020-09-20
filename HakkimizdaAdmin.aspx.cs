using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class HakkimizdaAdmin : System.Web.UI.Page
{
    sqlbaglanti bagla = new sqlbaglanti();
    protected void Page_Load(object sender, EventArgs e)
    {
        Panel2.Visible = false;

        if (Page.IsPostBack == false)
        {



            SqlCommand komut = new SqlCommand("Select * from Hakkimizda", bagla.baglanti());
            SqlDataReader dr = komut.ExecuteReader();
            while (dr.Read())
            {
                txtmetin.Text = dr[0].ToString();
            }
            bagla.baglanti().Close();
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Panel2.Visible = true;
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Panel2.Visible = false;
    }

    protected void btnguncelle_Click(object sender, EventArgs e)
    {
        SqlCommand komut = new SqlCommand("update Hakkimizda set Metin=@p1", bagla.baglanti());
        komut.Parameters.AddWithValue("@p1", txtmetin.Text);
        komut.ExecuteNonQuery();
        bagla.baglanti().Close();

    }
}