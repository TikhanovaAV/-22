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
    public partial class Form4 : Form
    {
        Model1 db = new Model1();
        public static Form Form1 = null;
        public Form4()
        {
            InitializeComponent();
        }

        private void textBox2_TextChanged(object sender, EventArgs e)
        {

        }

        private void label6_Click(object sender, EventArgs e)
        {

        }

        private void Form4_Load(object sender, EventArgs e)
        {

        }

        private void dateTimePicker1_ValueChanged(object sender, EventArgs e)
        {
            dateTimePicker1.MaxDate = DateTime.Today;
            int Age = DateTime.Today.Year - dateTimePicker1.Value.Year;
        }

        private void button2_Click(object sender, EventArgs e)
        {
            Form1 frm = new Form1();
            this.Hide();
            frm.Show();
        }

        private void button3_Click(object sender, EventArgs e)
        {
            Application.Exit();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            if (textBox2.Text == " " ||
             textBox3.Text == " " ||  maskedTextBox1.Text == " " ||
             comboBox1.Text == " " || dateTimePicker1.Text == " " 
            || textBox10.Text == " "  || textBox13.Text == " " || textBox4.Text == " " )
            {
                MessageBox.Show(" Нужно задать все данные!");
                return;
            }
            if (textBox13.Text != textBox4.Text)
            {
                MessageBox.Show(" Значения паролей не совпадают!");
                return;
            }
            if ((comboBox1.Text != "Пользователь") && (comboBox1.Text != "Администратор"))
            {
                MessageBox.Show(" Задана неверная роль! ");
                return;
            }
            Registr usr = db.Registrs.Find(textBox2.Text);           
            if (usr != null)
            {
                MessageBox.Show("Пользователь уже есть!");
                return;
            }

            usr = new Registr();
            usr.Surname = textBox3.Text;
            usr.Name = textBox2.Text;
            usr.Born = dateTimePicker1.Text;
            usr.E_mail = textBox10.Text;
            usr.Phone = maskedTextBox1.Text;
            usr.Role = comboBox1.Text;
            usr.Login = textBox1.Text;
            usr.Password = textBox13.Text;



            db.Registrs.Add(usr);
            try
            {
                db.SaveChanges();
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
                return;
            }
            MessageBox.Show(" Пользователь " + usr.Surname + " зарегистрирован! ");
            Form1 frm = new Form1();
            this.Hide();
            frm.Show();
            return;
        }

        private void textBox1_TextChanged(object sender, EventArgs e)
        {

        }
    }
}
