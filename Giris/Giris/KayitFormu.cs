using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Data.Sql;
using System.Data.SqlClient;

namespace Giris
{
    public partial class KayitFormu : Form
    {
        byte customerType;
        public KayitFormu()
        {
            InitializeComponent();
        }

        SqlConnection baglanti = new SqlConnection("Data Source=DESKTOP-561S1L1;Initial Catalog=PlatformProject;Integrated Security=True");
        private void label1_Click(object sender, EventArgs e)
        {

        }

        private void radioButton1_CheckedChanged(object sender, EventArgs e)
        {

        }

        private void button1_Click(object sender, EventArgs e)
        {
            if (radioButton1.Checked == true)
            {
                customerType = 1;
            }
            else
            {
                customerType = 0;
            }
            string sorgu = "insert into customer(CustomerName,CustomerSurname,CustomerPhone,CustomerEmail,Password,Type,Age)values(@ad,@soyad,@telefon,@email,@sifre,@type,@yas)";
            SqlCommand komut = new SqlCommand(sorgu, baglanti);
            komut.Parameters.AddWithValue("@ad", textBox1.Text);
            komut.Parameters.AddWithValue("@soyad", textBox2.Text);
            komut.Parameters.AddWithValue("@telefon", textBox3.Text);
            komut.Parameters.AddWithValue("@email", textBox5.Text);
            komut.Parameters.AddWithValue("@sifre", textBox6.Text);
            komut.Parameters.AddWithValue("@type", customerType);
            komut.Parameters.AddWithValue("@yas", textBox4.Text);
            baglanti.Open();
            komut.ExecuteNonQuery();
            MessageBox.Show("Kayıt başarıyla oluşturulmuştur.");
            textBox1.Clear();
            textBox2.Clear();
            textBox3.Clear();
            textBox4.Clear();
            textBox5.Clear();
            textBox6.Clear();
            baglanti.Close();
        }
    }
}