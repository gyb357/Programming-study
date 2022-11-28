using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Drawing.Drawing2D;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Week12_02
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


            int w = this.ClientSize.Width / 2;
            int h = this.ClientSize.Height / 2;
            // 110, 114 -> 70, 84


            // 정적 좌표
            /*
            Point[] pts =
            {
                new Point(110, 40), new Point(125, 91),
                new Point(180, 91), new Point(135, 123),
                new Point(152, 172), new Point(110, 141),
                new Point(66, 172), new Point(82, 122),
                new Point(40, 91), new Point(95, 91),
            };
            */
            // 동적 좌표
            Point[] pts =
            {
                new Point(w, h-84), new Point(w+15, h-23),
                new Point(w+70, h-23), new Point(w+25, h+9),
                new Point(w+42, h+58), new Point(w, h+27),
                new Point(w-42, h+58), new Point(w-25, h+9),
                new Point(w-70, h-23), new Point(w-15, h-23),
            };
            Point[] pts1 =
            {
                new Point(110, 114), new Point(125, 91),
                new Point(180, 91), new Point(135, 123),
            };


            PathGradientBrush b = new PathGradientBrush(pts);
            b.CenterColor = Color.Yellow;
            g.FillRectangle(b, ClientRectangle);
            b.Dispose();


            PathGradientBrush b1 = new PathGradientBrush(pts1);
            b1.CenterColor = Color.Orange;
            g.FillRectangle(b1, ClientRectangle);
            b1.Dispose();
        }
    }
}
