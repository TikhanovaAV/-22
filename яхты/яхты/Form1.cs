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
    public partial class Form1 : Form
    {
        public static Registr USER { get; set; }
        Model1 db = new Model1();

        //byte schert = 3;   // счетчик для количества попыток
       // byte seconds = 60;   // переменная для определения оставшегося времени до разблокировки
        public Form1()
        {
            InitializeComponent();
        }

        private void label2_Click(object sender, EventArgs e)
        {

        }

        private void Form1_Load(object sender, EventArgs e)
        {
           // byte schert = 3;            
           // erorrM.Text = "";
        }

        private void button1_Click(object sender, EventArgs e)
        {
            if (textBox1.Text == "" || textBox3.Text == "" || textBox2.Text == "")
            {
                MessageBox.Show("Нужно задать логин, пароль и роль!");
                return;
            }
            Registr usr = db.Registrs.Find(textBox1.Text);
            if ((usr != null) && (usr.Password == textBox3.Text))
            {
                USER = usr;
                if (usr.Role == "Пользователь")
                {
                    Form3 frm = new Form3();
                    frm.Show();
                    this.Hide();
                  //  schert = 3;  // одновление счетчика
                   // erorrM.Text = "";  // очистка поля ошибки, ведь логин пароль верны
                }
                else
                if (usr.Role == "Администратор")
                {
                    Form2 frm = new Form2();
                    frm.Show();
                    this.Hide();
                }
                else
                {
                    MessageBox.Show($"Роли {usr.Role} в системе нет!");
                    return;
                }
            }
            else
            {
                MessageBox.Show("Пользователя с таким логином и паролем нет!");
                return;
            }
        }

        private void button2_Click(object sender, EventArgs e)
        {
            Form4 frm = new Form4();
            frm.Show();
            this.Hide();
        }

        private void timer1_Tick(object sender, EventArgs e)
        {
           // sec.Enabled = false;      // отключает секундный таймер
           // erorrM.Text = "";    // очищает поле ошибки
           //schert = 3;  // востанавливает кол-во попыток
            //seconds = 60;  // востанавливает кол-во времени до разблокировки (на будущее)
           // block.Enabled = false;  // выключает секундный таймер
        }
    }
}
