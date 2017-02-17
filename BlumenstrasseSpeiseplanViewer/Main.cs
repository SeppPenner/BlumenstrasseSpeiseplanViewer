using System;
using System.Windows.Forms;

namespace BlumenstrasseSpeiseplanViewer
{
    public partial class Main : Form
    {
        public Main()
        {
            InitializeComponent();
            try
            {
                WindowState = FormWindowState.Maximized;
                pdfReader.LoadFile("http://www.energieparkkantine.de/fileadmin/files/speiseplan/speiseplan.pdf");
                pdfReader.src = "http://www.energieparkkantine.de/fileadmin/files/speiseplan/speiseplan.pdf";
                pdfReader.setShowToolbar(false);
                pdfReader.setView("FitH");
                pdfReader.setLayoutMode("SinglePage");
                pdfReader.Show();
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.ToString());
            }
        }
    }
}