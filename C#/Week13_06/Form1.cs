using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Week13_06
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


            /*
            // DrawString() 1
            Font f = new Font("궁서체", 15);
            g.DrawString("Hello World!", f, Brushes.Black, 10, 10);
            f.Dispose();
            */


            /*
            // DrawString() 2
            string s = "This string is long enough to wrap.";
                   s += " With a 250px-width rectangle, ";
                   s += "it requires six lines to display the string in its entirety.";
            Font   f = new Font("Tahoma", 15);
            */
            /*
            Rectangle r = new Rectangle(10, 10, 250, 150);
            g.DrawRectangle(Pens.Red, r);
            g.DrawString(s, f, Brushes.Black, r);
            f.Dispose();
            */
            /*
            StringFormat sf  = new StringFormat();
            sf.Alignment     = StringAlignment.Center;              // 수평 정렬
            sf.LineAlignment = StringAlignment.Center;              // 수직 정렬
            g.DrawString(s, f, Brushes.Black, ClientRectangle, sf);
            f.Dispose();
            */


            /*
            // MeasureString() 1
            string s  = "Hello World!";
            Font   f  = new Font("Tahoma", 15);
            SizeF  sf = g.MeasureString(s, f);
            g.DrawString(s, f, Brushes.Black, 50, 50);
            g.DrawRectangle(Pens.Black, 50, 50, sf.Width, sf.Height);
            f.Dispose();
            */


            // MeasureString() 2
            string s = "This string is long enough to wrap. ";           // 출력할 문자열
                   s += "We'll use a 15pt font, and assume ";
                   s += "the text string must fit into a width of 250 pixels. ";
            Font       f  = new Font("Tahoma", 15);                      // 서체는 타호마, 글자 크기는 15.
            SizeF      sf = g.MeasureString(s, f, 250);                  // 영역의 크기를 측정한다.
            RectangleF rf = new RectangleF(20, 20, sf.Width, sf.Height);
            Rectangle  r  = Rectangle.Ceiling(rf);                       // 올림으로 변환
            g.DrawString(s, f, Brushes.Black, r);                        // 문자열을 출력한다.
            g.DrawRectangle(Pens.Black, r);                              // 외곽선을 그린다.
            f.Dispose();
        }
    }
}
