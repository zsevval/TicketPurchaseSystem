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
    public partial class MuzeForm : Form
    {
        SqlConnection baglanti;
        
        SqlDataAdapter ad;

        int customerId = 0;
        public MuzeForm(int customerId)
        {
            InitializeComponent();
            this.customerId = customerId;
        }
        void MuzeGetir()
        {
            baglanti = new SqlConnection("server=.;Initial Catalog=PlatformProject;Integrated Security=SSPI");
            baglanti.Open();
            ad = new SqlDataAdapter("SELECT MuseumName,MuseumPlace,Explanation,StartDate,EndDate,MuseumPrice FROM Museum m1 INNER JOIN MuseumInfo m2 on m1.MuseumID = m2.MuseumID", baglanti);
            DataTable tablo = new DataTable();
            ad.Fill(tablo);
            dataGridView1.DataSource = tablo;
            baglanti.Close();
        }
       


        private void MuzeForm_Load_1(object sender, EventArgs e)
        {
            MuzeGetir();

        }

        private void sorgu1ToolStripButton_Click(object sender, EventArgs e)
        {
            try
            {
                this.museumInfoTableAdapter.sorgu1(this.platformProjectDataSet1.MuseumInfo);
            }
            catch (System.Exception ex)
            {
                System.Windows.Forms.MessageBox.Show(ex.Message);
            }

        }

        private void button1_Click(object sender, EventArgs e)
        {
            
            string metin1 = textBox1.Text;
            string metin2 = textBox2.Text;
            string metin3 = textBox3.Text;
            DateTime metin4 = Convert.ToDateTime(textBox4.Text).Date;
            DateTime metin5 = Convert.ToDateTime(textBox5.Text).Date;
            string metin6 = textBox6.Text;
            int metin_6 = Int32.Parse(textBox6.Text);
            string girilenKupon = textBox7.Text;
            DateTime now = DateTime.Now;
            Int32 couponid = 4;
            Int32 discountpercentage = 0;




            string DataSource = "Data Source=DESKTOP-561S1L1;Initial Catalog=PlatformProject;Integrated Security=True";

            SqlConnection baglanti;
            baglanti = new SqlConnection("server=.;Initial Catalog=PlatformProject;Integrated Security=SSPI");
            baglanti.Open();


            if (!String.IsNullOrEmpty(textBox7.Text))
            {
                SqlCommand cmd = new SqlCommand("SELECT CouponID FROM Coupon WHERE CouponName= @CouponName", baglanti);
                cmd.Parameters.AddWithValue("@CouponName", girilenKupon);
                couponid = (Int32)cmd.ExecuteScalar();

                SqlCommand cmd2 = new SqlCommand("SELECT DiscountPercentage FROM Coupon WHERE CouponID= @CouponID", baglanti);
                cmd2.Parameters.AddWithValue("@CouponID", couponid);
                discountpercentage = (Int32)cmd2.ExecuteScalar();
            }

            SqlCommand cmd3 = new SqlCommand("SELECT MuseumID FROM Museum WHERE MuseumName= @MuseumName", baglanti);
            cmd3.Parameters.AddWithValue("@MuseumName", metin1);
            Int32 museumid = (Int32)cmd3.ExecuteScalar();

            SqlCommand cmd4 = new SqlCommand("SELECT MuseumInfoID FROM Museum INNER JOIN MuseumInfo ON Museum.MuseumID = MuseumInfo.MuseumID WHERE StartDate = @StartDate AND EndDate = @EndDate", baglanti);
            cmd4.Parameters.AddWithValue("@StartDate", metin4.Date);
            cmd4.Parameters.AddWithValue("@EndDate", metin5.Date);
            Int32 museuminfoid = (Int32)cmd4.ExecuteScalar();
            baglanti.Close();

            double son_fiyat = metin_6 - ((discountpercentage * 0.01) * metin_6);

            string sonuc = "Satın almak istediğiniz bilet bilgileri listelenmiştir, onaylıyor musunuz ? " +
                "\nMüze:"+metin1+"\nYer:"+metin2+ "\nAçıklama:" + metin3+ "\nBaşlangıç Tarihi:" + metin4.Date+ "\nBitiş Tarihi:" + metin5.Date+ "\nFiyat:"+son_fiyat+ " ₺";

            

            DialogResult d;
            d = MessageBox.Show(sonuc,"ONAY EKRANI", MessageBoxButtons.YesNo, MessageBoxIcon.Information);
            if (d == DialogResult.Yes)
            {
                string sorgu2 = "insert into OrderTicket(CustomerID,ConcertID,TravelInfoID,MuseumInfoID,CouponID,OrderDate,Price)values(@customerid,@concertId,@travelInfoId,@museumInfoID,@couponid,@now,@son_fiyat)";
                SqlCommand komut2 = new SqlCommand(sorgu2, baglanti);
                komut2.Parameters.AddWithValue("@customerid", customerId);
                komut2.Parameters.AddWithValue("@concertId", DBNull.Value);
                komut2.Parameters.AddWithValue("@travelInfoId", DBNull.Value);
                komut2.Parameters.AddWithValue("@museumInfoID", museuminfoid);
                if (couponid == 4)
                {
                    komut2.Parameters.AddWithValue("@couponid", DBNull.Value);
                }
                else
                {
                    komut2.Parameters.AddWithValue("@couponid", couponid);
                }
                komut2.Parameters.AddWithValue("@now", now);
                komut2.Parameters.AddWithValue("@son_fiyat", son_fiyat);
                baglanti.Open();
                komut2.ExecuteNonQuery();
                baglanti.Close();

                DialogResult bilgi;
                bilgi = MessageBox.Show("İşleminiz başarıyla gerçekleştirilmiştir.", "BİLGİ EKRANI", MessageBoxButtons.OK, MessageBoxIcon.Information);
                this.Close();
            }
            
            baglanti.Close();
        }

        private void dataGridView1_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            int index = e.RowIndex;// get the Row Index
            DataGridViewRow selectedRow = dataGridView1.Rows[index];
            textBox1.Text = selectedRow.Cells[0].Value.ToString();
            textBox2.Text = selectedRow.Cells[1].Value.ToString();
            textBox3.Text = selectedRow.Cells[2].Value.ToString();
            textBox4.Text = Convert.ToDateTime(selectedRow.Cells[3].Value).ToString("dd-MM-yyyy");
            textBox5.Text = Convert.ToDateTime(selectedRow.Cells[4].Value).ToString("dd-MM-yyyy");
            textBox6.Text = selectedRow.Cells[5].Value.ToString();
        }
    }
}
