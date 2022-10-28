using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Week07_01
{
    public partial class Form1 : Form
    {
        private Boolean m_blLoginCheck = false;

        public Form1()
        {
            InitializeComponent();
        }

        public Boolean LoginCheck
        {
            get { return m_blLoginCheck; }
            set { m_blLoginCheck = value; }
        }

        private void Form1_Load(object sender, EventArgs e)
        {
            Form2 _Form = new Form2(this);
            _Form.ShowDialog();

            if (!m_blLoginCheck) this.Close();
        }

        private void Form1_MouseUp(object sender, MouseEventArgs e)
        {
            MessageBox.Show("X : " + e.X + ", Y : " + e.Y);
        }

        private void 새파일NToolStripMenuItem_Click(object sender, EventArgs e)
        {
            MessageBox.Show(새파일NToolStripMenuItem.Text);
        }

        private void 열기OToolStripMenuItem_Click(object sender, EventArgs e)
        {
            MessageBox.Show(열기OToolStripMenuItem.Text);
        }

        private void 닫기CToolStripMenuItem_Click(object sender, EventArgs e)
        {
            MessageBox.Show(닫기CToolStripMenuItem.Text);
        }

        private void 저장SToolStripMenuItem_Click(object sender, EventArgs e)
        {
            MessageBox.Show(저장SToolStripMenuItem.Text);
        }

        private void 인쇄PToolStripMenuItem_Click(object sender, EventArgs e)
        {
            MessageBox.Show(인쇄PToolStripMenuItem.Text);
        }

        private void 미리보기VToolStripMenuItem_Click(object sender, EventArgs e)
        {
            MessageBox.Show(미리보기VToolStripMenuItem.Text);
        }

        private void 종료XToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Application.Exit();
        }

        private void 잘라내기VToolStripMenuItem_Click(object sender, EventArgs e)
        {
            MessageBox.Show(잘라내기VToolStripMenuItem.Text);
        }

        private void 복사VToolStripMenuItem_Click(object sender, EventArgs e)
        {
            MessageBox.Show(복사VToolStripMenuItem.Text);
        }

        private void 붙혀놓기PToolStripMenuItem_Click(object sender, EventArgs e)
        {
            MessageBox.Show(붙혀놓기PToolStripMenuItem.Text);
        }

        private void 프로그램정보AToolStripMenuItem_Click(object sender, EventArgs e)
        {
            MessageBox.Show(프로그램정보AToolStripMenuItem.Text);
        }
    }
}
