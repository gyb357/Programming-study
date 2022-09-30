using System;
using System.Drawing;
using System.Windows.Forms;

namespace Week04_01
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            Random rnd = new Random();    // 랜덤 함수 클래스


            int x_pos = rnd.Next(0, ClientSize.Width - 75); // 랜덤 X 값 생성
            int y_pos = rnd.Next(0, ClientSize.Height - 23); // 랜덤 Y 값 생성

            int R = rnd.Next(0, 255);     // 랜덤 Red   값 생성
            int G = rnd.Next(0, 255);     // 랜덤 Green 값 생성
            int B = rnd.Next(0, 255);     // 랜덤 Blue  값 생성

            button1.Location = new Point(x_pos, y_pos);
            button1.BackColor = Color.FromArgb(R, G, B);
        }
    }
}
