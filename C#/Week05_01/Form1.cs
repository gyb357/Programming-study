using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Week05_01
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void Form1_Load(object sender, EventArgs e)
        {
            this.ActiveControl = button1;
        }

        private void textBox1_Click(object sender, EventArgs e)
        {
            if (textBox1.Text == "아이디를 입력 하시오.")
            {
                textBox1.Text = "";
            }
        }

        private void textBox1_Leave(object sender, EventArgs e)
        {
            if (textBox1.Text == "")
            {
                textBox1.Text = "아이디를 입력 하시오.";
            }
        }

        private void button1_Click(object sender, EventArgs e)
        {
            if (textBox1.Text.Equals("윈도우프로그래밍실습") && textBox2.Text.Equals("1234"))
            {
                Form2 _Form2 = new Form2();

                _Form2.Owner = this;        // Form1의 자손 폼으로 설정
                _Form2.Show();
            }
            else
            {
                MessageBox.Show("아이디 또는 패스워드가 잘못 되었습니다.");

                textBox1.Text = "";
                textBox2.Text = "";
            }
        }

        private void linkLabel1_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            System.Diagnostics.Process.Start(linkLabel1.Text); // https://www.wku.ac.kr/
        }
    }
}
