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
    public partial class Form5 : Form
    {
        public Model1 db { get; set; }
        public Customer sp { get; set; } = null;
        public Form5()
        {
            InitializeComponent();
        }

        private void Form5_Load(object sender, EventArgs e)
        {
            if (sp == null)

            {
                customerBindingSource.AddNew();
                this.Text = "Добавление";
            }
            else
            {
                customerBindingSource.Add(sp);
                this.Text = "Корректировка данных " + sp.FistName;
            }
        }

        private void button1_Click(object sender, EventArgs e)
        {
            if(sp == null)
{ // если создан новый объект, то получаем его промеж. объекта
                sp = (Customer)customerBindingSource.Current;
                // сохраняем созданный и заполненный объект в коллекции
                db.Customers.Add(sp);
                //db.Izdatelstvo.Add(iz);
                //db.Avtor.Add(av);

            }
            try
            {
                db.SaveChanges();

                // если задать значение свойству DialogResult, то форма закроется

                DialogResult = DialogResult.OK;
            }
            catch (Exception ex)
            { // если возникла ошибка, то показываем сообщение
                MessageBox.Show("Ошибка" + ex.Message);
                // если DialogResult значение не задано, форма не закрывается
            }
        }

        private void Назад_Click(object sender, EventArgs e)
        {
            Form2 frm = new Form2();
            this.Hide();
            frm.Show();
        }
    }
}
