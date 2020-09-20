using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class YemekDetay : System.Web.UI.Page
{
    sqlbaglanti bagla = new sqlbaglanti();
    string yemekid = "";
    protected void Page_Load(object sender, EventArgs e)
    {//Veri Çekme
        yemekid = Request.QueryString["yemekid"];

        SqlCommand komut = new SqlCommand("Select YemekAd from Yemekler where YemekID=@p1", bagla.baglanti());
        komut.Parameters.AddWithValue("@p1", yemekid);
        SqlDataReader dr = komut.ExecuteReader();
        while (dr.Read())
        {
            Label3.Text = dr[0].ToString();
        }
        bagla.baglanti().Close();

        //Yorumları Listeleme
        SqlCommand komut2 = new SqlCommand("Select * from Yorumlar  where YemekID=@p2 and YorumOnay=1", bagla.baglanti());
        komut2.Parameters.AddWithValue("@p2", yemekid);
        SqlDataReader dr2 = komut2.ExecuteReader();
        DataList2.DataSource = dr2;
        DataList2.DataBind();
    }

    //Yorum Ekleme Kodu
    protected void Button1_Click(object sender, EventArgs e)
    {


        SqlCommand komut = new SqlCommand("insert into Yorumlar (YorumAdSoyad,YorumMail,Yorumicerik,YemekID) values (@p1,@p2,@p3,@p4)", bagla.baglanti());
        komut.Parameters.AddWithValue("@p1", TextBox1.Text);
        komut.Parameters.AddWithValue("@p2", TextBox2.Text);
        komut.Parameters.AddWithValue("@p3", TextBox3.Text);
        komut.Parameters.AddWithValue("@p4", yemekid);
        komut.ExecuteNonQuery();
        bagla.baglanti().Close();

    }
}