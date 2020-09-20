using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Yemekler : System.Web.UI.Page
{
    sqlbaglanti bagla = new sqlbaglanti();

    string islem = "";
    string id = "";
    protected void Page_Load(object sender, EventArgs e)
    {

        Panel2.Visible = false;
        Panel4.Visible = false;
        if (Page.IsPostBack == false)
        {

            id = Request.QueryString["YemekID"];
            islem = Request.QueryString["islem"];

            //Kategori Listesi
            SqlCommand komut2 = new SqlCommand("Select * from Kategoriler", bagla.baglanti());
            SqlDataReader dr2 = komut2.ExecuteReader();

            DropDownList1.DataTextField = "KategoriAd";
            DropDownList1.DataValueField = "KategoriID";

            DropDownList1.DataSource = dr2;
            DropDownList1.DataBind();

        }
        //Yemek Listesi
        SqlCommand komut = new SqlCommand("Select * from Yemekler", bagla.baglanti());
        SqlDataReader dr = komut.ExecuteReader();
        DataList1.DataSource = dr;
        DataList1.DataBind();

        //yemek silme
        if (islem == "sil")
        {
            SqlCommand komutsil = new SqlCommand("Delete from Yemekler where YemekID=@p1", bagla.baglanti());
            komutsil.Parameters.AddWithValue("@p1", id);
            komutsil.ExecuteNonQuery();
            bagla.baglanti().Close();
        }

        

    }

    protected void Button1_Click(object sender, EventArgs e)
    {//+ button
        Panel2.Visible = true;
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Panel2.Visible = false;
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        Panel4.Visible = true;
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        Panel4.Visible = false;
    }

    protected void btnekle_Click(object sender, EventArgs e)
    {// yemek ekleme kodlari

        SqlCommand komut = new SqlCommand("insert into Yemekler (YemekAd,YemekMalzeme,YemekTarif,KategoriID) values (@p1,@p2,@p3,@p4)", bagla.baglanti());
        komut.Parameters.AddWithValue("@p1", TextBox1.Text);
        komut.Parameters.AddWithValue("@p2", TextBox2.Text);
        komut.Parameters.AddWithValue("@p3", TextBox3.Text);
        komut.Parameters.AddWithValue("@p4", DropDownList1.SelectedValue);
        komut.ExecuteNonQuery();
        bagla.baglanti().Close();

        //Kategori Sayısını Arttırma
        SqlCommand komut2 = new SqlCommand("update Kategoriler set KategoriAdet=KategoriAdet+1 where KategoriID=@p1", bagla.baglanti());
        komut2.Parameters.AddWithValue("@p1", DropDownList1.SelectedValue);
        komut2.ExecuteNonQuery();
        bagla.baglanti().Close();


    }
}