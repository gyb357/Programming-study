using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Windows.Forms.VisualStyles;

namespace Week13_07
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void Form1_Paint(object sender, PaintEventArgs e)
        {
            Graphics g = e.Graphics;

            Image img = new Bitmap("C:\\Users\\USER\\source\\repos\\2022년도 윈도우 프로그래밍 실습 20192718\\Week13_07\\원광대로고.png");
            //g.DrawImage(img, 0, 0);

            Point[] pts1 =
            {
                new Point(0, 0), new Point(200, 0),
                new Point(50, 100)
            };
            Point[] pts2 =
            {
                new Point(0, 100), new Point(200, 100),
                new Point(0, 0)
            };
            Point[] pts3 = {
                new Point(100, 0), new Point(100, 200), new Point(0, 0)
            };
            Rectangle sr = new Rectangle(0, 0, 80, 30); // 원본의 부분적인 크기
            Rectangle dr = new Rectangle(0, 0, 200, 100); // 그려질 영역 크기
            g.DrawImage(img, dr, sr, GraphicsUnit.Pixel);

            //g.DrawImage(img, pts3);
        }
    }
}
