using System;
using System.Windows.Forms;

namespace Week03_01
{
    internal class Program
    {
        [STAThread]
        static void Main(string[] args)
        {
            Application.EnableVisualStyles();
            Application.SetCompatibleTextRenderingDefault(false);
            Console.WriteLine("Window Form 시작");
            Application.Run(new Form1());
            Console.WriteLine("Window Form 종료");
        }
    }
}
