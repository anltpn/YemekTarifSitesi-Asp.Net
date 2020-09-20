using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class KategoriAdminDetay : System.Web.UI.Page
{
    sqlbaglanti bagla = new sqlbaglanti();
    string id;
    protected void Page_Load(object sender, EventArgs e)
    {
        id = Request.QueryString["KategoriID"];

        if(Page.IsPostBack  ==  false)
        { 
            SqlCommand komut = new SqlCommand("Select * from Kategoriler where KategoriID=@p1", bagla.baglanti());
            komut.Parameters.AddWithValue("@p1", id);
            SqlDataReader dr = komut.ExecuteReader();
                while (dr.Read())
            {
                TextBox1.Text = dr[1].ToString();
                TextBox2.Text = dr[2].ToString();
            }
            bagla.baglanti().Close();
        }
    }

    protected void btnguncelle_Click(object sender, EventArgs e)
    {
        SqlCommand komut = new SqlCommand("update Kategoriler set KategoriAd=@p1, KategoriAdet=@p2 where KategoriID=@p3", bagla.baglanti());
        komut.Parameters.AddWithValue("@p1", TextBox1.Text);
        komut.Parameters.AddWithValue("@p2", TextBox2.Text);
        komut.Parameters.AddWithValue("@p3", id);
        komut.ExecuteNonQuery();
        bagla.baglanti().Close();
    }
}