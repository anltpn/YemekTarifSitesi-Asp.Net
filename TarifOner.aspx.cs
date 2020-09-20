﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class TarifOner : System.Web.UI.Page
{
    sqlbaglanti bgl = new sqlbaglanti();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnTarifOner_Click1(object sender, EventArgs e)
    {
        SqlCommand komut = new SqlCommand("insert into Tarifler (TarifAd,TarifMalzeme,TarifYapilis,TarifResim,TarifSahip,TarifSahipMail) values (@t1,@t2,@t3,@t4,@t5,@t6)", bgl.baglanti());
        komut.Parameters.AddWithValue("@t1", txtTarifAd.Text);
        komut.Parameters.AddWithValue("@t2", txtMalzeme.Text);
        komut.Parameters.AddWithValue("@t3", txtYapilis.Text);
        komut.Parameters.AddWithValue("@t4", FileUpload1.FileName);
        komut.Parameters.AddWithValue("@t5", txtTarifOner.Text);
        komut.Parameters.AddWithValue("@t6", txtMail.Text);
        komut.ExecuteNonQuery();
        bgl.baglanti().Close();
        Response.Write("Tarifiniz Alınmıştır.");
    }
}