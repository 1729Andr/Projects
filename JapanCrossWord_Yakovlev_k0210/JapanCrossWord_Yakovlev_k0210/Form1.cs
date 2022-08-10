using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace JapanCrossWord_Yakovlev_k0210
{
    public partial class Form1 : Form
    {
        //Объявление переменных
        public int game;
        object nov;
        int n, s, m, nn;
        string s1, m1, otv1, zadan1, strok1, stolb1, strok2, stolb2, otv2, zadan2, strok3, stolb3, otv3, zadan3, strok4, stolb4, otv4, zadan4,pravila,control2;
        public Form1()
        {
            InitializeComponent();
        }

        List<Color> mycolor = new List<Color>();
        List<Color> mycolor2 = new List<Color>();


        private void Form1_Load(object sender, EventArgs e)
        {
            //Присваивание значений переменным
            otv1 = Properties.Resources.otv1;
            strok1 = Properties.Resources.strok1;
            stolb1 = Properties.Resources.stolb1;
            strok2 = Properties.Resources.strok2;
            stolb2 = Properties.Resources.stolb2;
            otv2 = Properties.Resources.otv2;
            strok3 = Properties.Resources.strok3;
            stolb3 = Properties.Resources.stolb3;
            otv3 = Properties.Resources.otv3;
            strok4 = Properties.Resources.strok4;
            stolb4 = Properties.Resources.stolb4;
            otv4 = Properties.Resources.otv4;
            pravila = Properties.Resources.Pravila;
            control2 = Properties.Resources.control;
            game = 0;
            mycolor.Add(Color.FromArgb(255, 192, 128));
            mycolor.Add(Color.FromArgb(255, 222, 138));

            mycolor.Add(Color.FromArgb(255, 255, 255));
            mycolor.Add(Color.FromArgb(223, 223, 223));

            mycolor.Add(Color.FromArgb(192, 192, 255));
            mycolor.Add(Color.FromArgb(172, 172, 225));

            mycolor.Add(Color.FromArgb(255, 255, 255));
            mycolor.Add(Color.FromArgb(223, 223, 223));


            mycolor2.Add(Color.FromArgb(255, 102, 0));
            mycolor2.Add(Color.FromArgb(255, 192, 128));

            mycolor2.Add(Color.FromArgb(0, 0, 0));
            mycolor2.Add(Color.FromArgb(255, 255, 255));

            mycolor2.Add(Color.FromArgb(0, 0, 255));
            mycolor2.Add(Color.FromArgb(192, 192, 255));

            mycolor2.Add(Color.FromArgb(0, 0, 0));
            mycolor2.Add(Color.FromArgb(255, 255, 255));
        }


        private void exit_Click(object sender, EventArgs e)
        {
            //Выход
            DialogResult rez = MessageBox.Show("Вы действительно хотите выйти?","Выход", MessageBoxButtons.YesNo);
            if (rez == DialogResult.Yes)
            {
                Application.Exit();
            }

        }


        private void help_Click(object sender, EventArgs e)
        {
            MessageBox.Show(pravila, "Правила игры", MessageBoxButtons.OK, MessageBoxIcon.Question);
        }


        private void control_Click(object sender, EventArgs e)
        {
            MessageBox.Show(control2, "Управление",MessageBoxButtons.OK,MessageBoxIcon.Question);
        }

        private string  zapol(string otv)
        {
            string zadan = "";
            for (int i = 1; i <= otv.Length; i++)
            {
                zadan += "0";
            }
            return zadan;
        }

            private void igra(string strok, string stolb, int width1, int height1, int widthStr, int heightStr, int widthSto, int heightSto, int r1, int g1, int b1, int r2, int g2, int b2)
        {
            Font myfont = new Font("Times New Roman", 15, FontStyle.Bold);
            
            //Присваивание значений переменным
            n = 0;
            zadan1= zapol(otv1);
            zadan2 = zapol(otv2);
            zadan3 = zapol(otv3);
            zadan4 = zapol(otv4);
            int x, y;
            // x = 177;
            //y = 158;
            x = 0;
            y = 0;
            //Высота и ширина панели
            panel1.Height = height1 * 40;
            panel1.Width = width1 * 40;
            //Создание игрового поля
            for (int i = 1; i <= height1; i++)           //10  
            {
                for (int k = 1; k <= width1; k++)      //10
                {
                    //Создание PictureBox
                    PictureBox pic = new PictureBox();
                    pic.Name = "pic" + n.ToString();
                    pic.Tag = (int)n;
                    n++;
                    pic.BackColor = Color.FromArgb(r1, g1, b1);
                    pic.Width = 40;
                    pic.Height = 40;
                    pic.BorderStyle = BorderStyle.FixedSingle;
                    pic.Top = y;
                    pic.Left = x;
                    x += 40;
                    pic.MouseDown += this.pic_MouseDown;
                    pic.DoubleClick += this.pic_DoubleClick;
                    pic.MouseMove += this.pic_MouseMove;
                    pic.MouseLeave += this.pic_MouseLeave;

                    panel1.Controls.Add(pic);
                }
                x = 0;   //177
                y += 40;
            }


            //Высота и ширина панели
            panel2.Height = heightStr * 40;
            panel2.Width = widthStr * 40;
            x = 0;   //177
            y = 0;    //32
            n = 0;
            nn = 0;
            for (int i = 1; i <= heightStr; i++)            //3 
            {
                for (int k = 1; k <= widthStr; k++)       //10
                {
                    //Создание Label
                    Label lbl = new Label();
                    lbl.Name = "lbl" + n.ToString();
                    lbl.Tag = (int)n;
                    lbl.Width = 40;
                    lbl.Height = 40;
                    lbl.TextAlign=System.Drawing.ContentAlignment.MiddleCenter;
                    lbl.BorderStyle = BorderStyle.FixedSingle;
                    lbl.Top = y;
                    lbl.Left = x;
                    lbl.ForeColor = Color.White;
                    lbl.Font = myfont;
                    if (Convert.ToString(strok.Substring(nn, 2)) == "00")        //strok1
                    {
                        lbl.Text = "";
                        lbl.BackColor = Color.FromArgb(r1, g1, b1);
                    }
                    else
                    {
                        lbl.Text = Convert.ToString(strok.Substring(nn, 2));         //strok1
                        if (Convert.ToString(lbl.Text[0]) == "0")
                        {
                            lbl.Text = lbl.Text.Remove(0, 1);
                        }
                        lbl.BackColor = Color.FromArgb(r2, g2, b2);
                    }

                    n++;
                    nn += 2;
                    x += 40;
                    lbl.MouseDown += this.lbl_MouseDown;
                    panel2.Controls.Add(lbl);
                }
                x = 0;
                y += 40;
            }


            //Высота и ширина панели
            panel3.Height = heightSto * 40;
            panel3.Width = widthSto * 40;
            x = 0;         //11
            y = 0;        //158
            n = 0;
            nn = 0;
            for (int i = 1; i <= heightSto; i++)       //10
            {
                for (int k = 1; k <= widthSto; k++)        //4
                {
                    //Создание Label
                    Label lbl = new Label();
                    lbl.Name = "lbl" + n.ToString();
                    lbl.Tag = (int)n;
                    lbl.Width = 40;
                    lbl.Height = 40;
                    lbl.BorderStyle = BorderStyle.FixedSingle;
                    lbl.Top = y;
                    lbl.Left = x;
                    lbl.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
                    lbl.ForeColor = Color.White;
                    lbl.Font = myfont;
                    if (Convert.ToString(stolb.Substring(nn, 2)) == "00")          //stolb1
                    {
                        lbl.Text = "";
                        lbl.BackColor = Color.FromArgb(r1, g1, b1);
                    }
                    else
                    {
                        lbl.Text = Convert.ToString(stolb.Substring(nn, 2));            //stolb1
                        if (Convert.ToString(lbl.Text[0]) == "0")
                        {
                            lbl.Text = lbl.Text.Remove(0, 1);
                        }
                        lbl.BackColor = Color.FromArgb(r2, g2, b2);
                    }

                    n++;
                    nn += 2;
                    x += 40;
                    lbl.MouseDown += this.lbl_MouseDown;
                    panel3.Controls.Add(lbl);
                }
                x = 0;     //11
                y += 40;
            }
        }


        private void game1_Click(object sender, EventArgs e)
        {
            //Игра1
            picnach.Visible = false;
            btnotv.Visible = false;
            lblTimer.Visible=true;
            panel1.Controls.Clear();
            panel2.Controls.Clear();
            panel3.Controls.Clear();
            panel2.Visible = true;
            zadan1 = "";
            s = 0;
            m = 0;
            lblGame.Text = game1.Text;
            igra(strok1, stolb1, 10, 10, 10, 3, 4, 10, 255, 192, 128, 255, 102, 0);
            timer1.Start();
            game = 1;
            this.Width = 634;
            this.Height = 651;
        }

        private void game2_Click(object sender, EventArgs e)
        {
            //Игра2
            picnach.Visible = false;
            btnotv.Visible = false;
            lblTimer.Visible = true;
            panel1.Controls.Clear();
            panel2.Controls.Clear();
            panel3.Controls.Clear();
            panel2.Visible = true;
            zadan2 = "";
            s = 0;
            m = 0;
            lblGame.Text = game2.Text;
            igra(strok2, stolb2, 13, 12, 13, 3, 4, 12, 255, 255, 255, 0, 0, 0);
            timer1.Start();
            game = 2;
            this.Width = 734;
            this.Height = 731;
        }

        private void game3_Click(object sender, EventArgs e)
        {
            //Игра3
            picnach.Visible = false;
            btnotv.Visible = false;
            lblTimer.Visible = true;
            panel1.Controls.Clear();
            panel2.Controls.Clear();
            panel3.Controls.Clear();
            panel2.Visible = true;
            zadan3 = "";
            s = 0;
            m = 0;
            lblGame.Text = game3.Text;
            igra(strok3, stolb3, 11, 11, 11, 3, 4, 11, 192, 192, 255, 0, 0, 255); //255, 192, 255, 255, 0, 255 //192, 192, 255, 0, 0, 255
            timer1.Start();
            game = 3;
            this.Width = 664;
            this.Height = 691;
        }

        private void game4_Click(object sender, EventArgs e)
        {
            //Игра4
            picnach.Visible = false;
            btnotv.Visible = false;
            lblTimer.Visible = true;
            panel1.Controls.Clear();
            panel2.Controls.Clear();
            panel3.Controls.Clear();
            panel2.Visible = true;
            zadan4 = "";
            s = 0;
            m = 0;
            lblGame.Text = game4.Text;
            igra(strok4, stolb4, 10, 10, 10, 3, 4, 10, 255, 255, 255, 0, 0, 0);
            timer1.Start();
            game = 4;
            this.Width = 634;
            this.Height = 651;
        }


        private void pic_MouseMove(object sender, MouseEventArgs e)
        {
            //Наведение на PictureBox
            PictureBox pt = (PictureBox)sender;
            foreach (PictureBox pt2 in panel1.Controls)
            {
                if (pt2.Top == pt.Top || pt2.Left == pt.Left)
                {
                    if (pt2.BackColor == mycolor [2*game-2])
                    {
                        pt2.BackColor = mycolor[2*game -1];
                    }   
                    
                }

            }


        }

        private void pic_MouseLeave(object sender, EventArgs e)
        {
            //Отведение от PictureBox
            PictureBox pt = (PictureBox)sender;
            foreach (PictureBox pt2 in panel1.Controls)
            {
                if (pt2.Top == pt.Top || pt2.Left == pt.Left)
                {

                    if (pt2.BackColor != mycolor2[2 * game - 2])
                    {
                        pt2.BackColor = mycolor2[2 * game - 1];
                    }
                }
            }
        }

        private void pic_MouseDown(object sender, MouseEventArgs e)
        {
            //Щелчок по PictureBox
            PictureBox pt = (PictureBox)sender;
            nov = sender;
            if (e.Button == MouseButtons.Left)      //Левая кнопка
            {
                pt.Image = null;
                if (game == 1)
                {
                    pt.BackColor = Color.FromArgb(255, 102, 0);
                    zadan1 = zadan1.Substring(0, int.Parse(pt.Tag.ToString())) + "1" + zadan1.Substring(int.Parse(pt.Tag.ToString()) + 1);
                    if (zadan1 == otv1)
                    {
                        timer1.Stop();
                        MessageBox.Show("Поздравляем! \r\nВы гений!","Победа!");
                    }

                }
                else
                {
                    if (game == 2)
                    {
                        pt.BackColor = Color.FromArgb(0, 0, 0);
                        zadan2 = zadan2.Substring(0, int.Parse(pt.Tag.ToString())) + "1" + zadan2.Substring(int.Parse(pt.Tag.ToString()) + 1);
                        if (zadan2 == otv2)
                        {
                            timer1.Stop();
                            MessageBox.Show("Поздравляем! \r\nВы гений!", "Победа!");
                        }

                    }
                    else
                    {
                        if (game == 3)
                        {
                            pt.BackColor = Color.FromArgb(0, 0, 255); //255, 0, 255  //0, 0, 255
                            zadan3 = zadan3.Substring(0, int.Parse(pt.Tag.ToString())) + "1" + zadan3.Substring(int.Parse(pt.Tag.ToString()) + 1);
                            if (zadan3 == otv3)
                            {
                                timer1.Stop();
                                MessageBox.Show("Поздравляем! \r\nВы гений!", "Победа!");
                            }
                        }
                        else
                        {
                            win( 0, 0, 0, 4, zadan4, otv4);
                            
                           /* if (game == 4)
                            {
                                pt.BackColor = Color.FromArgb(0, 0, 0);
                                zadan4 = zadan4.Substring(0, int.Parse(pt.Tag.ToString())) + "1" + zadan4.Substring(int.Parse(pt.Tag.ToString()) + 1);
                                if (zadan4 == otv4)
                                {
                                    timer1.Stop();
                                    MessageBox.Show("Поздравляем! \r\nВы гений!", "Победа!");
                                }
                            }*/
                        }
                    }
                }
            }
            else        //Правая кнопка
            {
                pt.Image = Properties.Resources.zero;
                if (game == 1) { zadan1 = zadan1.Substring(0, int.Parse(pt.Tag.ToString())) + "0" + zadan1.Substring(int.Parse(pt.Tag.ToString()) + 1); }
                else
                {
                    if (game == 2) { zadan2 = zadan2.Substring(0, int.Parse(pt.Tag.ToString())) + "0" + zadan2.Substring(int.Parse(pt.Tag.ToString()) + 1); }
                    else
                    {
                        if (game == 3) { zadan3 = zadan3.Substring(0, int.Parse(pt.Tag.ToString())) + "0" + zadan3.Substring(int.Parse(pt.Tag.ToString()) + 1); }
                        else
                        {
                            if (game == 4) { zadan4 = zadan4.Substring(0, int.Parse(pt.Tag.ToString())) + "0" + zadan4.Substring(int.Parse(pt.Tag.ToString()) + 1); }
                        }
                    }
                }

            }
        }

        private void win(int r, int g, int b,int gam,string zadan, string otv)
        {
            PictureBox pt = (PictureBox)nov;
            pt.BackColor = Color.FromArgb(r, g, b);
            zadan = zadan.Substring(0, int.Parse(pt.Tag.ToString())) + "1" + zadan.Substring(int.Parse(pt.Tag.ToString()) + 1);
            if (zadan == otv)
            {
                timer1.Stop();
                MessageBox.Show("Поздравляем! \r\nВы гений!", "Победа!");
            }
            
        }


        private void pic_DoubleClick(object sender, EventArgs e)
        {
            PictureBox pt = (PictureBox)sender;
            pt.Image = null;
            if (game == 1)
            {
                zadan1 = zadan1.Substring(0, int.Parse(pt.Tag.ToString())) + "0" + zadan1.Substring(int.Parse(pt.Tag.ToString()) + 1);
                pt.BackColor = Color.FromArgb(255, 192, 128);
            }
            else
            {
                if (game == 2)
                {
                    zadan2 = zadan2.Substring(0, int.Parse(pt.Tag.ToString())) + "0" + zadan2.Substring(int.Parse(pt.Tag.ToString()) + 1);
                    pt.BackColor = Color.FromArgb(255, 255, 255);
                }
                else
                {
                    if (game == 3)
                    {
                        zadan3 = zadan3.Substring(0, int.Parse(pt.Tag.ToString())) + "0" + zadan3.Substring(int.Parse(pt.Tag.ToString()) + 1);
                        pt.BackColor = Color.FromArgb(192, 192, 255); //255, 192, 255   //192, 192, 255
                    }
                    else
                    {
                        if (game == 4)
                        {
                            zadan4 = zadan4.Substring(0, int.Parse(pt.Tag.ToString())) + "0" + zadan4.Substring(int.Parse(pt.Tag.ToString()) + 1);
                            pt.BackColor = Color.FromArgb(255, 255, 255);
                        }
                    }
                }
            }

        }


        private void lbl_MouseDown(object sender, MouseEventArgs e)
        {
            Font myfont2 = new Font("Times New Roman", 15, FontStyle.Strikeout | FontStyle.Bold | FontStyle.Underline);
            Font myfont = new Font("Times New Roman", 15, FontStyle.Bold);
            Label lb = (Label)sender;
            if (Convert.ToInt32(lb.Tag) == 2)
            {
                lb.Font = myfont;
                lb.Tag = 1;
            }
            else
            {
                lb.Font = myfont2;
                lb.Tag = 2;
            }
            

        }



        private void btnotv_Click(object sender, EventArgs e)
        {
            Form2 aaa = new Form2();
            string a = "game" + game.ToString();
            Object b = Properties.Resources.ResourceManager.GetObject(a);
            aaa.picotv.Image = (Bitmap)b;
            aaa.ShowDialog();
            aaa.Dispose();

        }


        private void timer1_Tick(object sender, EventArgs e)
        {
            s++;
            if (s < 10) { s1 = "0" + s; } else { s1 = s.ToString(); }
            if (m < 10) { m1 = "0" + m; } else { m1 = m.ToString(); }
            lblTimer.Text = m1 + ":" + s1;
            if (s >= 60) { m++; s = -1; }
            if (s1 == "30") { btnotv.Visible = true; }
        }
    }
}
