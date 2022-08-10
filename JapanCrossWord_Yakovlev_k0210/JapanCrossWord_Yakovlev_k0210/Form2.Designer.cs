namespace JapanCrossWord_Yakovlev_k0210
{
    partial class Form2
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(Form2));
            this.picotv = new System.Windows.Forms.PictureBox();
            this.btnback = new System.Windows.Forms.Button();
            ((System.ComponentModel.ISupportInitialize)(this.picotv)).BeginInit();
            this.SuspendLayout();
            // 
            // picotv
            // 
            this.picotv.Location = new System.Drawing.Point(12, -4);
            this.picotv.Name = "picotv";
            this.picotv.Size = new System.Drawing.Size(393, 414);
            this.picotv.SizeMode = System.Windows.Forms.PictureBoxSizeMode.Zoom;
            this.picotv.TabIndex = 0;
            this.picotv.TabStop = false;
            // 
            // btnback
            // 
            this.btnback.DialogResult = System.Windows.Forms.DialogResult.Cancel;
            this.btnback.Font = new System.Drawing.Font("Times New Roman", 18F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.btnback.Location = new System.Drawing.Point(159, 416);
            this.btnback.Name = "btnback";
            this.btnback.Size = new System.Drawing.Size(102, 36);
            this.btnback.TabIndex = 1;
            this.btnback.Text = "Назад";
            this.btnback.UseVisualStyleBackColor = true;
            // 
            // Form2
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(432, 468);
            this.Controls.Add(this.btnback);
            this.Controls.Add(this.picotv);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedDialog;
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.MaximizeBox = false;
            this.MinimizeBox = false;
            this.Name = "Form2";
            this.Text = "Ответ";
            this.Load += new System.EventHandler(this.Form2_Load);
            ((System.ComponentModel.ISupportInitialize)(this.picotv)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        public System.Windows.Forms.PictureBox picotv;
        public System.Windows.Forms.Button btnback;
    }
}