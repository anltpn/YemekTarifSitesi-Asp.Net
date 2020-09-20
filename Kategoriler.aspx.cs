using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Kategoriler : System.Web.UI.Page
{
    sqlbaglanti bagla = new sqlbaglanti();
    string id = "";
    string islem = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            id = Request.QueryString["KategoriID"];
            islem = Request.QueryString["islem"];
        }
        SqlCommand komut = new SqlCommand("Select * from Kategoriler", bagla.baglanti());
        SqlDataReader dr = komut.ExecuteReader();
        DataList1.DataSource = dr;
        DataList1.DataBind();

        //Silme İşlemi
        if (islem == "sil")
        {
            SqlCommand komutsil = new SqlCommand("delete from Kategoriler where KategoriID=@p1", bagla.baglanti());
            komutsil.Parameters.AddWithValue("@p1", id);
            komutsil.ExecuteNonQuery();
            bagla.baglanti().Close();

        }

        Panel2.Visible = false;
        Panel4.Visible = false;

    }

    protected void Button1_Click(object sender, EventArgs e)
    {//+ tuş kodlari
        Panel2.Visible = true;

    }

    protected void Button2_Click(object sender, EventArgs e)
    {//- tuş kodlari
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
    {
        SqlCommand komut = new SqlCommand("insert into Kategoriler (KategoriAd) values (@p1)", bagla.baglanti());
        komut.Parameters.AddWithValue("@p1", TextBox1.Text);
        komut.ExecuteNonQuery();
        bagla.baglanti().Close();
    }
}