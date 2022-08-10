VERSION 5.00
Begin VB.Form Form3 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Form3"
   ClientHeight    =   6165
   ClientLeft      =   150
   ClientTop       =   795
   ClientWidth     =   6705
   LinkTopic       =   "Form3"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   6165
   ScaleWidth      =   6705
   StartUpPosition =   3  'Windows Default
   Begin VB.Frame Frame1 
      Height          =   735
      Left            =   3000
      TabIndex        =   11
      Top             =   840
      Visible         =   0   'False
      Width           =   2895
      Begin VB.OptionButton opt2 
         Caption         =   "диаметр"
         Height          =   435
         Left            =   1560
         TabIndex        =   13
         Top             =   240
         Visible         =   0   'False
         Width           =   975
      End
      Begin VB.OptionButton opt1 
         Caption         =   "радиус"
         Height          =   435
         Left            =   240
         TabIndex        =   12
         Top             =   240
         Visible         =   0   'False
         Width           =   855
      End
   End
   Begin VB.TextBox txt3 
      Alignment       =   2  'Center
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   12
         Charset         =   204
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   405
      Left            =   840
      TabIndex        =   10
      Top             =   4560
      Width           =   615
   End
   Begin VB.TextBox txt4 
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   11.25
         Charset         =   204
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1455
      Left            =   3000
      MultiLine       =   -1  'True
      ScrollBars      =   2  'Vertical
      TabIndex        =   9
      Top             =   1680
      Width           =   3375
   End
   Begin VB.CommandButton cmd1 
      Caption         =   "Расчитать"
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   14.25
         Charset         =   204
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Left            =   240
      TabIndex        =   7
      Top             =   5160
      Width           =   1695
   End
   Begin VB.TextBox txt2 
      Alignment       =   2  'Center
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   12
         Charset         =   204
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   405
      Left            =   840
      TabIndex        =   6
      Top             =   3960
      Width           =   615
   End
   Begin VB.TextBox txt1 
      Alignment       =   2  'Center
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   12
         Charset         =   204
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   405
      Left            =   840
      TabIndex        =   5
      Top             =   3360
      Width           =   615
   End
   Begin VB.ComboBox cmb1 
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   204
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   360
      ItemData        =   "Form3.frx":0000
      Left            =   360
      List            =   "Form3.frx":0013
      TabIndex        =   1
      Top             =   1080
      Width           =   2415
   End
   Begin VB.PictureBox pic1 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      Height          =   1455
      Left            =   360
      ScaleHeight     =   1395
      ScaleWidth      =   2355
      TabIndex        =   2
      Top             =   1680
      Width           =   2415
   End
   Begin VB.Label Label4 
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   18
         Charset         =   204
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   360
      TabIndex        =   8
      Top             =   4560
      Width           =   375
   End
   Begin VB.Label Label3 
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   18
         Charset         =   204
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   360
      TabIndex        =   4
      Top             =   3960
      Width           =   375
   End
   Begin VB.Label Label2 
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   18
         Charset         =   204
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   360
      TabIndex        =   3
      Top             =   3360
      Width           =   375
   End
   Begin VB.Label Label1 
      Caption         =   "Расчёт площадей"
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   15.75
         Charset         =   204
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   360
      TabIndex        =   0
      Top             =   240
      Width           =   2775
   End
   Begin VB.Menu vmenu 
      Caption         =   "В меню"
   End
   Begin VB.Menu exit 
      Caption         =   "Выход"
   End
End
Attribute VB_Name = "Form3"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim a As Single, b As Single, c As Single, s As Single
Private Sub cmb1_Click()
txt1.Text = 0
txt2.Text = 0
txt3.Text = 0
txt4.Text = ""
opt1.Visible = False
opt2.Visible = False
Frame1.Visible = False
txt1.Visible = True
txt2.Visible = True
txt3.Visible = False
Label2.Visible = True
Label3.Visible = True
Label4.Visible = False


If cmb1.ListIndex = 0 Then
    pic1.Picture = LoadPicture(App.Path + "\img\rect.gif")
    Label2.Caption = "a="
    Label3.Caption = "b="
    cmd1.Visible = True
Else
If cmb1.ListIndex = 1 Then
    pic1.Picture = LoadPicture(App.Path + "\img\trian.gif")
    Label2.Caption = "a="
    Label3.Caption = "h="
    cmd1.Visible = True
Else
If cmb1.ListIndex = 2 Then
    pic1.Picture = LoadPicture(App.Path + "\img\paral.gif")
    Label2.Caption = "a="
    Label3.Caption = "h="
    cmd1.Visible = True
Else
If cmb1.ListIndex = 3 Then
    pic1.Picture = LoadPicture("")
    opt1.Visible = True
    opt2.Visible = True
    Frame1.Visible = True
    cmd1.Visible = True
    txt1.Visible = False
    Label2.Visible = False
    txt2.Visible = False
    Label3.Visible = False
Else
If cmb1.ListIndex = 4 Then
    pic1.Picture = LoadPicture(App.Path + "\img\trap.gif")
    Label2.Caption = "a="
    Label3.Caption = "b="
    Label4.Caption = "h="
    txt3.Visible = True
    Label4.Visible = True
    cmd1.Visible = True
End If
End If
End If
End If
End If
End Sub

Private Sub cmd1_Click()
If IsNumeric(txt1.Text) Then
If IsNumeric(txt2.Text) Then
If IsNumeric(txt3.Text) Then
a = CSng(txt1.Text)
b = CSng(txt2.Text)
c = CSng(txt3.Text)
If cmb1.ListIndex = 0 Then
    s = a * b
    txt4.Text = "S = a*b = " + CStr(a) + "*" + CStr(b) + " = " + CStr(s)
Else
If cmb1.ListIndex = 1 Then
    s = a * b / 2
    txt4.Text = "S = a*h/2 = " + CStr(a) + "*" + CStr(b) + "/2" + " = " + CStr(s)
Else
If cmb1.ListIndex = 2 Then
    s = a * b
    txt4.Text = "S = a*h = " + CStr(a) + "*" + CStr(b) + " = " + CStr(s)
Else
If cmb1.ListIndex = 3 Then
    If (opt1.Value = True) Then
        s = 3.14 * a ^ 2
        txt4.Text = "S =п*r^2 = 3.14*" + CStr(a) + "^2 = " + CStr(s)
    End If
    If (opt2.Value = True) Then
        s = 3.14 * (a / 2) ^ 2
        txt4.Text = "S =п*(d/2)^2 = 3.14*(" + CStr(a) + "/2)^2 = " + CStr(s)
    End If
Else
If cmb1.ListIndex = 4 Then
    s = ((a + b) / 2) * c
    txt4.Text = "S = (a + b) / 2 * h = (" + CStr(a) + "+" + CStr(b) + ") / 2 * " + CStr(c) + " = " + CStr(s)
End If
End If
End If
End If
End If
Else
MsgBox "Вы не ввели число", vbCritical + vbOKOnly, "Ошибка"
End If
Else
MsgBox "Вы не ввели число", vbCritical + vbOKOnly, "Ошибка"
End If
Else
MsgBox "Вы не ввели число", vbCritical + vbOKOnly, "Ошибка"
End If
End Sub

Private Sub exit_Click()
End
End Sub

Private Sub Form_Load()
pic1.Cls
txt1.Visible = False
txt2.Visible = False
txt3.Visible = False
Label2.Visible = False
Label3.Visible = False
Label4.Visible = False
cmd1.Visible = False
txt1.Text = 0
txt2.Text = 0
txt3.Text = 0
End Sub

Private Sub opt1_Click()
pic1.Picture = LoadPicture(App.Path + "\img\cir1.gif")
txt1.Visible = True
Label2.Visible = True
Label2.Caption = "r="
txt1.Text = 0
txt4.Text = ""
End Sub

Private Sub opt2_Click()
pic1.Picture = LoadPicture(App.Path + "\img\cir2.gif")
txt1.Visible = True
Label2.Visible = True
Label2.Caption = "d="
txt1.Text = 0
txt4.Text = ""
End Sub

Private Sub vmenu_Click()
Me.Visible = False
Form2.Visible = True
End Sub
