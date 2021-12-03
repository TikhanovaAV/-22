using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace яхты
{
    public partial class Form2 : Form
    {
        Model1 db = new Model1();
        public Customer sp { get; set; }
        public Form2()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            Form5 frm = new Form5();
           frm.db = db;
           frm.sp = null;
            DialogResult dr = frm.ShowDialog();
            if (dr == DialogResult.OK)
            {
                customerBindingSource.DataSource = null;
                customerBindingSource.DataSource = db.Customers.ToList();

            }
        }

        private void Form2_Load(object sender, EventArgs e)
        {
            customerBindingSource.DataSource = db.Customers.ToList();
            
        }

        private void button2_Click(object sender, EventArgs e)
        {
            Customer sp = (Customer)customerBindingSource.Current;
            Form5 frm = new Form5();
            frm.db = db;
            frm.sp = sp;
            this.Hide();
            DialogResult dr = frm.ShowDialog();
            if (dr == DialogResult.OK)
            {
                customerBindingSource.DataSource = null;
                customerBindingSource.DataSource = db.Customers.ToList();
            }
        }

        private void button3_Click(object sender, EventArgs e)
        {
            Customer sp = (Customer)customerBindingSource.Current;
            DialogResult dr = MessageBox.Show("Удалить " + sp.FistName + "?", "Удаление",
            MessageBoxButtons.YesNo, MessageBoxIcon.Question);
            if (dr == DialogResult.Yes)
            {
                db.Customers.Remove(sp);
                try
                {
                    db.SaveChanges();
                   customerBindingSource.DataSource = db.Customers.ToList();
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.InnerException.InnerException.Message);
                }
            }
        }
    }
}
