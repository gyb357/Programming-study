using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Week13_04
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

            Point[] pts =
            {
                new Point(30, 30),
                new Point(60, 30), new Point(30, 60),
                new Point(60, 60),
                new Point(90, 60), new Point(60, 90),
                new Point(90, 90),
                new Point(120, 90), new Point(90, 120),
                new Point(120, 120),
                new Point(150, 120), new Point(120, 150),
                new Point(150, 150)
            };

            g.DrawBeziers(Pens.DeepPink, pts);
        }
    }
}
