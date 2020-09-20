using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Kullanici : System.Web.UI.MasterPage
{
    sqlbaglanti bagla = new sqlbaglanti();
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlCommand komut = new SqlCommand("select k.KategoriID,k.KategoriAd,COUNT(YemekID) as KategoriAdet from Yemekler y inner join  Kategoriler k on y.KategoriID=k.KategoriID group by k.KategoriID,k.KategoriAd", bagla.baglanti());
        SqlDataReader oku = komut.ExecuteReader();
        DataList1.DataSource = oku;
        DataList1.DataBind();
    }
}
