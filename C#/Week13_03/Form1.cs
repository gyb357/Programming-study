using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Week13_03
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void Form1_Paint(object sender, PaintEventArgs e)
        {
            {
                Graphics g = e.Graphics;

                Rectangle r = new Rectangle(50, 50, 150, 150);

                g.FillPie(Brushes.Red, r, 0, 45);
                g.DrawPie(Pens.DarkGreen, r, 0, 45);

                g.FillPie(Brushes.Orange, r, 45, 45);
                g.DrawPie(Pens.DarkGreen, r, 45, 45);

                g.FillPie(Brushes.Yellow, r, 90, 45);
                g.DrawPie(Pens.DarkGreen, r, 90, 45);

                g.FillPie(Brushes.Green, r, 135, 45);
                g.DrawPie(Pens.DarkGreen, r, 135, 45);

                g.FillPie(Brushes.Blue, r, 180, 45);
                g.DrawPie(Pens.DarkGreen, r, 180, 45);

                g.FillPie(Brushes.DarkBlue, r, 225, 45);
                g.DrawPie(Pens.DarkGreen, r, 225, 45);

                g.FillPie(Brushes.Purple, r, 270, 45);
                g.DrawPie(Pens.DarkGreen, r, 270, 45);
            }
        }
    }
}
