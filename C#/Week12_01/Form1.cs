using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Week12_01
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


            // 이미지 객체 생성
            Image img = new Bitmap("C:\\Users\\USER\\Desktop\\2학년\\2학년 2학기 자료\\윈도우프로그래밍실습\\원광대로고.png");
            TextureBrush b = new TextureBrush(img);   // 이미지로 된 브러시 객체 생성
            

            // Dispose()로 객체를 해제해야 메모리 사용이 줄어듬
            g.FillRectangle(b, ClientRectangle);      // 사용자 영역을 이미지로 채움
            img.Dispose();                            // 이미지 객체를 해제
            b.Dispose();
        }
    }
}
