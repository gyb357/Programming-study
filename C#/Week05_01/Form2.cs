﻿using System;
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
    public partial class Form2 : Form
    {
        public Form2()
        {
            InitializeComponent();

            maskedTextBox1.Mask = "(999)0000-0000";
        }

        private void maskedTextBox1_MaskInputRejected(object sender, MaskInputRejectedEventArgs e)
        {
            if (maskedTextBox1.MaskCompleted)
            {
                label1.Text = "휴대전화 입력 완료";
            }
            else
            {
                label1.Text = "번호 형식이 맞지 않습니다.";
            }
        }
    }
}
