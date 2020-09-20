using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class YemekDuzenle : System.Web.UI.Page
{
    sqlbaglanti bagla = new sqlbaglanti();
    string id;
    protected void Page_Load(object sender, EventArgs e)
    {
        id = Request.QueryString["YemekID"];

        if (Page.IsPostBack == false)
        {
            SqlCommand komut = new SqlCommand("Select * from Yemekler where YemekID=@p1", bagla.baglanti());
            komut.Parameters.AddWithValue("@p1", id);
            SqlDataReader dr = komut.ExecuteReader();
            while (dr.Read())
            {
                TextBox1.Text = dr[1].ToString();
                TextBox2.Text = dr[2].ToString();
                TextBox3.Text = dr[3].ToString();
            }
            bagla.baglanti().Close();


            if (Page.IsPostBack == false)
            {
                //Kategori Listesi
                SqlCommand komut2 = new SqlCommand("Select * from Kategoriler", bagla.baglanti());
                SqlDataReader dr2 = komut2.ExecuteReader();

                DropDownList1.DataTextField = "KategoriAd";
                DropDownList1.DataValueField = "KategoriID";

                DropDownList1.DataSource = dr2;
                DropDownList1.DataBind();

            }

        }

    }

    protected void btnguncelle_Click(object sender, EventArgs e)
    {
        FileUpload1.SaveAs(Server.MapPath("/resimler/" + FileUpload1.FileName));

        SqlCommand komut = new SqlCommand("update Yemekler set YemekAd=@p1, YemekMalzeme=@p2, YemekTarif=@p3, KategoriID=@p4, YemekResim=@p6 where YemekID=@p5", bagla.baglanti());
        komut.Parameters.AddWithValue("@p1", TextBox1.Text);
        komut.Parameters.AddWithValue("@p2", TextBox2.Text);
        komut.Parameters.AddWithValue("@p3", TextBox3.Text);
        komut.Parameters.AddWithValue("@p4", DropDownList1.SelectedValue);
        komut.Parameters.AddWithValue("@p5", id);
        komut.Parameters.AddWithValue("@p6", "~/resimler/"+FileUpload1.FileName);
        komut.ExecuteNonQuery();
        bagla.baglanti().Close();

    }

    protected void Button1_Click(object sender, EventArgs e)
    {//tüm yemeklerin durumunu false yap kodlari

        SqlCommand komut = new SqlCommand("update Yemekler set Durum=0", bagla.baglanti());
        komut.ExecuteNonQuery();
        bagla.baglanti().Close();

        // günün yemegi için idye göre durumunu true çevirme kodlari

        SqlCommand komut2 = new SqlCommand("update Yemekler set Durum=1 where YemekID=@p1", bagla.baglanti());
        komut2.Parameters.AddWithValue("@p1", id);
        komut2.ExecuteNonQuery();
        bagla.baglanti().Close();

    }
}