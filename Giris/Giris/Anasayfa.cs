using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Giris
{
    public partial class Anasayfa : Form
    {
        int customerId = 0;
        public Anasayfa(int customerId)
        {
            InitializeComponent();
            this.customerId = customerId;
        }

        private void button3_Click(object sender, EventArgs e)
        {

        }

        private void button1_Click(object sender, EventArgs e)
        {
            KonserFormu kf = new KonserFormu();
            kf.Show();
        }

        private void button2_Click(object sender, EventArgs e)
        {
            MuzeForm mf = new MuzeForm(customerId);
            mf.Show();
        }

        private void button4_Click(object sender, EventArgs e)
        {
            Application.Exit();
        }
    }
}
