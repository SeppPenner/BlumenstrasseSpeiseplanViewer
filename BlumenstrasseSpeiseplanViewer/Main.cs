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
                pdfReader.LoadFile("http://schmack-immobilien.de/fileadmin/user_upload/speiseplan/speiseplan_kantine_energiepark.pdf");
                pdfReader.src = "http://schmack-immobilien.de/fileadmin/user_upload/speiseplan/speiseplan_kantine_energiepark.pdf";
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