using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class iletisim : System.Web.UI.Page
{
    sqlbaglanti bagla = new sqlbaglanti();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlCommand komut = new SqlCommand("insert into Mesajlar (MesajGonderen,MesajBaslik,MesajMail,Mesajicerik) values (@p1,@p2,@p3,@p4)", bagla.baglanti());
        komut.Parameters.AddWithValue("@p1", TxtGonderen.Text);
        komut.Parameters.AddWithValue("@p2", txtmail.Text);
        komut.Parameters.AddWithValue("@p3", txtkonu.Text);
        komut.Parameters.AddWithValue("@p4", txtmesaj.Text);
        komut.ExecuteNonQuery();
        bagla.baglanti().Close();

    }
}