namespace JapanCrossWord_Yakovlev_k0210
{
    partial class Form1
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
            this.components = new System.ComponentModel.Container();
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(Form1));
            this.lblGame = new System.Windows.Forms.Label();
            this.lblTimer = new System.Windows.Forms.Label();
            this.timer1 = new System.Windows.Forms.Timer(this.components);
            this.menuStrip1 = new System.Windows.Forms.MenuStrip();
            this.chooseGame = new System.Windows.Forms.ToolStripMenuItem();
            this.game1 = new System.Windows.Forms.ToolStripMenuItem();
            this.game2 = new System.Windows.Forms.ToolStripMenuItem();
            this.game3 = new System.Windows.Forms.ToolStripMenuItem();
            this.game4 = new System.Windows.Forms.ToolStripMenuItem();
            this.help = new System.Windows.Forms.ToolStripMenuItem();
            this.control = new System.Windows.Forms.ToolStripMenuItem();
            this.exit = new System.Windows.Forms.ToolStripMenuItem();
            this.panel1 = new System.Windows.Forms.Panel();
            this.panel2 = new System.Windows.Forms.Panel();
            this.panel3 = new System.Windows.Forms.Panel();
            this.picnach = new System.Windows.Forms.PictureBox();
            this.btnotv = new System.Windows.Forms.Button();
            this.menuStrip1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.picnach)).BeginInit();
            this.SuspendLayout();
            // 
            // lblGame
            // 
            this.lblGame.AutoSize = true;
            this.lblGame.Font = new System.Drawing.Font("Times New Roman", 27.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.lblGame.Location = new System.Drawing.Point(12, 26);
            this.lblGame.Name = "lblGame";
            this.lblGame.Size = new System.Drawing.Size(269, 42);
            this.lblGame.TabIndex = 0;
            this.lblGame.Text = "Выберите игру";
            // 
            // lblTimer
            // 
            this.lblTimer.AutoSize = true;
            this.lblTimer.Font = new System.Drawing.Font("Times New Roman", 26.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.lblTimer.Location = new System.Drawing.Point(12, 84);
            this.lblTimer.Name = "lblTimer";
            this.lblTimer.Size = new System.Drawing.Size(101, 40);
            this.lblTimer.TabIndex = 1;
            this.lblTimer.Text = "00:00";
            this.lblTimer.Visible = false;
            // 
            // timer1
            // 
            this.timer1.Interval = 1000;
            this.timer1.Tick += new System.EventHandler(this.timer1_Tick);
            // 
            // menuStrip1
            // 
            this.menuStrip1.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(224)))), ((int)(((byte)(224)))), ((int)(((byte)(224)))));
            this.menuStrip1.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.chooseGame,
            this.help,
            this.control,
            this.exit});
            this.menuStrip1.Location = new System.Drawing.Point(0, 0);
            this.menuStrip1.Name = "menuStrip1";
            this.menuStrip1.Size = new System.Drawing.Size(552, 25);
            this.menuStrip1.TabIndex = 2;
            this.menuStrip1.Text = "menuStrip1";
            // 
            // chooseGame
            // 
            this.chooseGame.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.game1,
            this.game2,
            this.game3,
            this.game4});
            this.chooseGame.Font = new System.Drawing.Font("Segoe UI", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.chooseGame.ForeColor = System.Drawing.Color.Black;
            this.chooseGame.Name = "chooseGame";
            this.chooseGame.Size = new System.Drawing.Size(99, 21);
            this.chooseGame.Text = "Выбор игры";
            // 
            // game1
            // 
            this.game1.Name = "game1";
            this.game1.Size = new System.Drawing.Size(117, 22);
            this.game1.Text = "Игра 1";
            this.game1.Click += new System.EventHandler(this.game1_Click);
            // 
            // game2
            // 
            this.game2.Name = "game2";
            this.game2.Size = new System.Drawing.Size(117, 22);
            this.game2.Text = "Игра 2";
            this.game2.Click += new System.EventHandler(this.game2_Click);
            // 
            // game3
            // 
            this.game3.Name = "game3";
            this.game3.Size = new System.Drawing.Size(117, 22);
            this.game3.Text = "Игра 3";
            this.game3.Click += new System.EventHandler(this.game3_Click);
            // 
            // game4
            // 
            this.game4.Name = "game4";
            this.game4.Size = new System.Drawing.Size(117, 22);
            this.game4.Text = "Игра 4";
            this.game4.Click += new System.EventHandler(this.game4_Click);
            // 
            // help
            // 
            this.help.Font = new System.Drawing.Font("Segoe UI", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.help.Name = "help";
            this.help.Size = new System.Drawing.Size(112, 21);
            this.help.Text = "Правила игры";
            this.help.Click += new System.EventHandler(this.help_Click);
            // 
            // control
            // 
            this.control.Font = new System.Drawing.Font("Segoe UI", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.control.Name = "control";
            this.control.Size = new System.Drawing.Size(97, 21);
            this.control.Text = "Управление";
            this.control.Click += new System.EventHandler(this.control_Click);
            // 
            // exit
            // 
            this.exit.Font = new System.Drawing.Font("Segoe UI", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.exit.Name = "exit";
            this.exit.Size = new System.Drawing.Size(62, 21);
            this.exit.Text = "Выход";
            this.exit.Click += new System.EventHandler(this.exit_Click);
            // 
            // panel1
            // 
            this.panel1.Location = new System.Drawing.Point(177, 158);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(200, 100);
            this.panel1.TabIndex = 3;
            // 
            // panel2
            // 
            this.panel2.Location = new System.Drawing.Point(177, 32);
            this.panel2.Name = "panel2";
            this.panel2.Size = new System.Drawing.Size(200, 120);
            this.panel2.TabIndex = 5;
            this.panel2.Visible = false;
            // 
            // panel3
            // 
            this.panel3.Location = new System.Drawing.Point(11, 158);
            this.panel3.Name = "panel3";
            this.panel3.Size = new System.Drawing.Size(159, 100);
            this.panel3.TabIndex = 6;
            // 
            // picnach
            // 
            this.picnach.Image = global::JapanCrossWord_Yakovlev_k0210.Properties.Resources.pic;
            this.picnach.Location = new System.Drawing.Point(19, 71);
            this.picnach.Name = "picnach";
            this.picnach.Size = new System.Drawing.Size(500, 405);
            this.picnach.SizeMode = System.Windows.Forms.PictureBoxSizeMode.AutoSize;
            this.picnach.TabIndex = 7;
            this.picnach.TabStop = false;
            // 
            // btnotv
            // 
            this.btnotv.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Left)));
            this.btnotv.Font = new System.Drawing.Font("Times New Roman", 14.25F, ((System.Drawing.FontStyle)((System.Drawing.FontStyle.Bold | System.Drawing.FontStyle.Italic))), System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.btnotv.Location = new System.Drawing.Point(12, 444);
            this.btnotv.Name = "btnotv";
            this.btnotv.Size = new System.Drawing.Size(118, 36);
            this.btnotv.TabIndex = 8;
            this.btnotv.Text = "Подсказка";
            this.btnotv.UseVisualStyleBackColor = true;
            this.btnotv.Visible = false;
            this.btnotv.Click += new System.EventHandler(this.btnotv_Click);
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(552, 492);
            this.Controls.Add(this.btnotv);
            this.Controls.Add(this.picnach);
            this.Controls.Add(this.panel3);
            this.Controls.Add(this.panel2);
            this.Controls.Add(this.panel1);
            this.Controls.Add(this.lblTimer);
            this.Controls.Add(this.lblGame);
            this.Controls.Add(this.menuStrip1);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedSingle;
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.MaximizeBox = false;
            this.MinimizeBox = false;
            this.Name = "Form1";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "  Японский кроссворд";
            this.Load += new System.EventHandler(this.Form1_Load);
            this.menuStrip1.ResumeLayout(false);
            this.menuStrip1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.picnach)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label lblGame;
        private System.Windows.Forms.Label lblTimer;
        private System.Windows.Forms.Timer timer1;
        private System.Windows.Forms.MenuStrip menuStrip1;
        private System.Windows.Forms.ToolStripMenuItem chooseGame;
        private System.Windows.Forms.ToolStripMenuItem game1;
        private System.Windows.Forms.ToolStripMenuItem game2;
        private System.Windows.Forms.ToolStripMenuItem game3;
        private System.Windows.Forms.ToolStripMenuItem help;
        private System.Windows.Forms.ToolStripMenuItem exit;
        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.Panel panel2;
        private System.Windows.Forms.Panel panel3;
        private System.Windows.Forms.ToolStripMenuItem game4;
        private System.Windows.Forms.PictureBox picnach;
        public System.Windows.Forms.Button btnotv;
        private System.Windows.Forms.ToolStripMenuItem control;
    }
}

