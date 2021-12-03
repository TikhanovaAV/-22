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
    public partial class Form3 : Form
    {
        Model1 db = new Model1();
        public Form3()
        {
            InitializeComponent();
        }

        private void Form3_Load(object sender, EventArgs e)
        {
            //accessoryBindingSource.DataSource = db.Accessory.ToList();

           
        }
    }
}
