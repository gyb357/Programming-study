﻿using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Week09_02
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void Form1_Load(object sender, EventArgs e)
        {
            // 트리뷰의 모든 노드를 펼침.
            treeView1.ExpandAll();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            if (textBox1.Text != "" && treeView1.SelectedNode != null)
            {
                // 선택된 노드가 있으면, 그 노드의 자식 노드를 추가한다.
                treeView1.SelectedNode.Nodes.Add(new TreeNode(textBox1.Text, 1, 1));
                textBox1.Text = "";
                textBox1.Focus();
            }
        }

        private void button2_Click(object sender, EventArgs e)
        {
            treeView1.Nodes.Remove(treeView1.SelectedNode);
        }
    }
}
