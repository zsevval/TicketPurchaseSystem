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
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }
        SqlConnection baglanti = new SqlConnection("Data Source=DESKTOP-561S1L1;Initial Catalog=PlatformProject;Integrated Security=True");
      
        private void button2_Click(object sender, EventArgs e)
        {
            int customerId = 0;
            baglanti.Open();
            SqlCommand komut = new SqlCommand("select * from customer where CustomerEmail='" + textBox1.Text + "'and Password='" + textBox2.Text + "'", baglanti);
            SqlDataReader dr = komut.ExecuteReader();
            if (dr.Read())
            {
                customerId = Convert.ToInt32(dr[0]);
                Anasayfa frm = new Anasayfa(customerId);
                frm.Show();
                textBox1.Clear();
                textBox2.Clear();
            }
            else
            {
                MessageBox.Show("Kullanıcı adı veya şifre hatalı");
                textBox1.Clear();
                textBox2.Clear();
            }
            baglanti.Close();
        }

        

        private void button1_Click(object sender, EventArgs e)
        {
            KayitFormu form = new KayitFormu();
            form.Show();
        }

        private void Form1_Load(object sender, EventArgs e)
        {

        }
    }
}