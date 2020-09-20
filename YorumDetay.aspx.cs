using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class YorumDetay : System.Web.UI.Page
{
    sqlbaglanti bagla = new sqlbaglanti();
    string id = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        id = Request.QueryString["YorumID"];

        if (Page.IsPostBack == false)
        {

            SqlCommand komut = new SqlCommand("Select YorumAdSoyad,YorumMail,Yorumicerik,YemekAd from Yorumlar inner join Yemekler on Yorumlar.YemekID=Yemekler.YemekID where YorumID=@p1", bagla.baglanti());
            komut.Parameters.AddWithValue("@p1", id);
            SqlDataReader dr = komut.ExecuteReader();
            while (dr.Read())
            {
                txtad.Text = dr[0].ToString();
                txtmail.Text = dr[1].ToString();
                txticerik.Text = dr[2].ToString();
                txtyemek.Text = dr[3].ToString();
            }
            bagla.baglanti().Close();
        }
    }

    protected void btnonayla_Click(object sender, EventArgs e)
    {
        SqlCommand komut = new SqlCommand("Update Yorumlar set Yorumicerik=@p1,YorumOnay=@p2 where YorumId=@p3", bagla.baglanti());
        komut.Parameters.AddWithValue("@p1", txticerik.Text);
        komut.Parameters.AddWithValue("@p2", "True");
        komut.Parameters.AddWithValue("@p3", id);
        komut.ExecuteNonQuery();
        bagla.baglanti().Close();
    }
}