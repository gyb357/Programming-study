using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Drawing.Printing;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Week06_01
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private String m_strInfo = "";

        public String strInfo
        {
            get { return m_strInfo; }
            set { m_strInfo = value; }
        }

        private void bt_Modal_Click(object sender, EventArgs e)
        {
            Form2 _Form2 = new Form2(this);
            _Form2.strText = "모달";        // _Form2로 값 전달
            _Form2.ShowDialog();            // _Form2를 모달 방식으로 띄운다.

            label1.Text = m_strInfo + "종료";
        }

        private void bt_Modeless_Click(object sender, EventArgs e)
        {
            Form2 _Form2 = new Form2(this);
            _Form2.strText = "모달리스";    // _Form2로 값 전달
            _Form2.Show();                  // _Form2로 모달리스 방식으로 띄운다.

            if (m_strInfo != "")
            {
                label1.Text = m_strInfo + "종료";
            }
        }

        private void bt_FileOpen_Click(object sender, EventArgs e)
        {
            openFileDialog1.InitialDirectory = @"C:\";
            openFileDialog1.Filter = "텍스트 파일(*.txt)|*.txt|모든 파일(*.*)|*.*";
            openFileDialog1.FilterIndex = 1;
            openFileDialog1.RestoreDirectory = true;
            if (openFileDialog1.ShowDialog() == DialogResult.OK)
            {
                try
                {
                    textBox1.Text = File.ReadAllText(openFileDialog1.FileName);
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.ToString());
                }
                finally { }
            }
        }

        private void bt_FileSave_Click(object sender, EventArgs e)
        {
            saveFileDialog1.InitialDirectory = @"C:\";
            saveFileDialog1.Filter = "텍스트 파일(*.txt)|*.txt|모든 파일(*.*)|*.*";
            saveFileDialog1.FilterIndex = 1;
            saveFileDialog1.RestoreDirectory = true;
            if (saveFileDialog1.ShowDialog() == DialogResult.OK)
            {
                try
                {
                    File.WriteAllText(saveFileDialog1.FileName, textBox1.Text);
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.ToString());
                }
                finally { }
            }
        }

        private void bt_Font_Click(object sender, EventArgs e)
        {
            fontDialog1.ShowDialog();
            textBox1.Font = fontDialog1.Font;
            textBox1.ForeColor = fontDialog1.Color;
        }

        private void bt_Color_Click(object sender, EventArgs e)
        {
            if (colorDialog1.ShowDialog() == DialogResult.OK)
            {
                try
                {
                    textBox1.BackColor = colorDialog1.Color; // 텍스트박스의 배경 색
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.ToString());
                }
                finally { }
            }
        }

        private void pd_printPage(object sender, PrintPageEventArgs e)
        {
            string text = textBox1.Text;
            Font printFont = textBox1.Font;
            e.Graphics.DrawString(text, printFont, Brushes.Black, 10, 10);
        }

        private void bt_Print_Click(object sender, EventArgs e)
        {
            PrinterSettings printer = new PrinterSettings();
            PrintDocument pd = new PrintDocument();
            printDialog1.PrinterSettings = printer;
            printDialog1.Document = pd;
            // PrintPage 이벤트는 Print() 메소드가 호출되기 직전 발생
            pd.PrintPage += new PrintPageEventHandler(this.pd_printPage);
            DialogResult result = printDialog1.ShowDialog();
            if (result == DialogResult.OK)
            {
                pd.Print();
            }
        }
    }
}
