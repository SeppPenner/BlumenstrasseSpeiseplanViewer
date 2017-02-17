namespace BlumenstrasseSpeiseplanViewer
{
    partial class Main
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(Main));
            this.pdfReader = new AxAcroPDFLib.AxAcroPDF();
            ((System.ComponentModel.ISupportInitialize)(this.pdfReader)).BeginInit();
            this.SuspendLayout();
            // 
            // pdfReader
            // 
            this.pdfReader.Dock = System.Windows.Forms.DockStyle.Fill;
            this.pdfReader.Enabled = true;
            this.pdfReader.Location = new System.Drawing.Point(0, 0);
            this.pdfReader.Name = "pdfReader";
            this.pdfReader.OcxState = ((System.Windows.Forms.AxHost.State)(resources.GetObject("pdfReader.OcxState")));
            this.pdfReader.Size = new System.Drawing.Size(460, 402);
            this.pdfReader.TabIndex = 0;
            // 
            // Main
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(460, 402);
            this.Controls.Add(this.pdfReader);
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.Name = "Main";
            this.Text = "Speiseplan";
            ((System.ComponentModel.ISupportInitialize)(this.pdfReader)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private AxAcroPDFLib.AxAcroPDF pdfReader;
    }
}

