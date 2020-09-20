using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class TarifOnerDetay : System.Web.UI.Page
{
    sqlbaglanti bagla = new sqlbaglanti();
    string id = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        id = Request.QueryString["TarifID"];

        if (Page.IsPostBack == false)
        {

            SqlCommand komut = new SqlCommand("Select * from Tarifler where TarifID=@p1", bagla.baglanti());
            komut.Parameters.AddWithValue("@p1", id);
            SqlDataReader dr = komut.ExecuteReader();
            while (dr.Read())
            {
                txttarifad.Text = dr[1].ToString();
                txttarifmalzeme.Text = dr[2].ToString();
                txttarifyapilis.Text = dr[3].ToString();
                txttarifoneren.Text = dr[5].ToString();
                txttarifonerenmail.Text = dr[6].ToString();
            }
            bagla.baglanti().ToString();

            //Kategori Listesi
            SqlCommand komut2 = new SqlCommand("Select * from Kategoriler", bagla.baglanti());
            SqlDataReader dr2 = komut2.ExecuteReader();

            DropDownList1.DataTextField = "KategoriAd";
            DropDownList1.DataValueField = "KategoriID";

            DropDownList1.DataSource = dr2;
            DropDownList1.DataBind();
        }
    }

    protected void btnonayla_Click(object sender, EventArgs e)
    {
        //durum güncelleme

        SqlCommand komut = new SqlCommand("update Tarifler set TarifDurum=1 where TarifID=@p1", bagla.baglanti());
        komut.Parameters.AddWithValue("@p1", id);
        komut.ExecuteNonQuery();
        bagla.baglanti().Close();

        //yemegi anasayfaya ekleme

        SqlCommand komut2 = new SqlCommand("insert into Yemekler (YemekAd,YemekMalzeme,YemekTarif,KategoriID) values (@p1,@p2,@p3,@p4)", bagla.baglanti());
        komut2.Parameters.AddWithValue("@p1", txttarifad.Text);
        komut2.Parameters.AddWithValue("@p2", txttarifmalzeme.Text);
        komut2.Parameters.AddWithValue("@p3", txttarifyapilis.Text);
        komut2.Parameters.AddWithValue("@p4", DropDownList1.SelectedValue);
        komut2.ExecuteNonQuery();
        bagla.baglanti().Close();

    }
}