VERSION 5.00
Object = "{0D452EE1-E08F-101A-852E-02608C4D0BB4}#2.0#0"; "FM20.DLL"
Begin VB.Form Form1 
   BorderStyle     =   1  'Fixed Single
   Caption         =   " "
   ClientHeight    =   6180
   ClientLeft      =   150
   ClientTop       =   795
   ClientWidth     =   8460
   LinkTopic       =   "Form1"
   LockControls    =   -1  'True
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   6180
   ScaleWidth      =   8460
   StartUpPosition =   3  'Windows Default
   Begin VB.TextBox txt5 
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   9.75
         Charset         =   204
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1695
      Left            =   4200
      MultiLine       =   -1  'True
      ScrollBars      =   2  'Vertical
      TabIndex        =   12
      Top             =   3600
      Width           =   3615
   End
   Begin VB.TextBox txt4 
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   9.75
         Charset         =   204
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1695
      Left            =   4320
      MultiLine       =   -1  'True
      ScrollBars      =   2  'Vertical
      TabIndex        =   10
      Top             =   840
      Width           =   3615
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Очистить"
      Height          =   495
      Left            =   2160
      TabIndex        =   9
      Top             =   5280
      Width           =   1575
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Построить"
      Height          =   495
      Left            =   360
      TabIndex        =   7
      Top             =   5280
      Width           =   1575
   End
   Begin VB.TextBox txt3 
      Alignment       =   2  'Center
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   20.25
         Charset         =   204
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   585
      Left            =   3480
      TabIndex        =   6
      Top             =   840
      Width           =   615
   End
   Begin VB.TextBox txt2 
      Alignment       =   2  'Center
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   20.25
         Charset         =   204
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   585
      Left            =   2160
      TabIndex        =   4
      Top             =   840
      Width           =   615
   End
   Begin VB.TextBox txt1 
      Alignment       =   2  'Center
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   20.25
         Charset         =   204
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   585
      Left            =   840
      TabIndex        =   2
      Top             =   840
      Width           =   615
   End
   Begin VB.PictureBox pic1 
      Appearance      =   0  'Flat
      AutoRedraw      =   -1  'True
      BackColor       =   &H80000005&
      ForeColor       =   &H80000008&
      Height          =   3500
      Left            =   360
      ScaleHeight     =   3465
      ScaleWidth      =   3465
      TabIndex        =   0
      Top             =   1560
      Width           =   3500
   End
   Begin MSForms.SpinButton SpinButton3 
      Height          =   495
      Left            =   3120
      TabIndex        =   15
      Top             =   840
      Width           =   255
      Size            =   "450;873"
   End
   Begin MSForms.SpinButton SpinButton2 
      Height          =   495
      Left            =   1800
      TabIndex        =   14
      Top             =   840
      Width           =   255
      Size            =   "450;873"
   End
   Begin MSForms.SpinButton SpinButton1 
      Height          =   495
      Left            =   480
      TabIndex        =   13
      Top             =   840
      Width           =   255
      Size            =   "450;873"
   End
   Begin VB.Label Label5 
      Caption         =   "Уравнение ax^2+bx+c=0"
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   15.75
         Charset         =   204
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   4200
      TabIndex        =   11
      Top             =   2760
      Width           =   3855
   End
   Begin VB.Label Label4 
      Alignment       =   2  'Center
      Caption         =   "Построение графика y=ax^2+bx+c"
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
      Left            =   240
      TabIndex        =   8
      Top             =   120
      Width           =   7335
   End
   Begin VB.Label Label3 
      Alignment       =   2  'Center
      Caption         =   "c"
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   20.25
         Charset         =   204
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   2760
      TabIndex        =   5
      Top             =   840
      Width           =   375
   End
   Begin VB.Label Label2 
      Alignment       =   2  'Center
      Caption         =   "b"
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   20.25
         Charset         =   204
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   1440
      TabIndex        =   3
      Top             =   840
      Width           =   375
   End
   Begin VB.Label Label1 
      Alignment       =   2  'Center
      Caption         =   "a"
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   20.25
         Charset         =   204
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   120
      TabIndex        =   1
      Top             =   840
      Width           =   375
   End
   Begin VB.Menu vmenu 
      Caption         =   "В меню"
   End
   Begin VB.Menu graf 
      Caption         =   "График"
      Begin VB.Menu colar 
         Caption         =   "Цвет"
         Begin VB.Menu blak 
            Caption         =   "Чёрный"
         End
         Begin VB.Menu blue 
            Caption         =   "Синий"
         End
         Begin VB.Menu green 
            Caption         =   "Зелёный"
         End
         Begin VB.Menu yellow 
            Caption         =   "Жёлтый"
         End
         Begin VB.Menu red 
            Caption         =   "Красный"
         End
         Begin VB.Menu slych 
            Caption         =   "Случайный"
         End
      End
      Begin VB.Menu linii 
         Caption         =   "Линии"
         Begin VB.Menu tolsh1 
            Caption         =   "Толщина + "
         End
         Begin VB.Menu tolsh2 
            Caption         =   "Толщина -"
         End
      End
   End
   Begin VB.Menu exit 
      Caption         =   "Выход"
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim i As Integer, ras1 As Integer, ras2 As Integer
Dim a As Single, b As Single, c As Single
Dim x0 As Single, y0 As Single, x1 As Single, x2 As Single, y1 As Single, y2 As Single, D As Single
Dim tol As Integer

Private Sub blak_Click()
pic1.ForeColor = vbBlack
Call Command1_Click
End Sub

Private Sub blue_Click()
pic1.ForeColor = vbBlue
Call Command1_Click
End Sub

Private Sub Command1_Click()
pic1.Cls
ras1 = -10
ras2 = 10
pic1.Scale (-10, 10)-(10, -10)
pic1.Line (0, 10)-(0, -10)
pic1.Line (10, 0)-(-10, 0)
    For i = 1 To 20
    pic1.Line (ras1, 0.2)-(ras1, -0.3)
    ras1 = ras1 + 1
    Next i

    For i = 1 To 20
    pic1.Line (-0.2, ras2)-(0.3, ras2)
    ras2 = ras2 - 1
    Next i
If IsNumeric(txt1.Text) Then
If IsNumeric(txt2.Text) Then
If IsNumeric(txt3.Text) Then
a = CSng(txt1.Text)
b = CSng(txt2.Text)
c = CSng(txt3.Text)

If CSng(a) = 0 Then
x1 = -10
x2 = 10
y1 = CSng(b) * x1 + CSng(c)
y2 = CSng(b) * x2 + CSng(c)
pic1.Line (x1, y1)-(x2, y2)
Else
x0 = (-1 * CSng(b)) / (2 * CSng(a))
    For i = 1 To 40
    y0 = CSng(a) * x0 ^ 2 + CSng(b) * x0 + CSng(c)
    x0 = x0 + 0.2
    pic1.Line (x0 - 0.2, y0)-(x0, CSng(a) * (x0 + 0.2) ^ 2 + CSng(b) * (x0 + 0.2) + CSng(c))
    Next i
x0 = (-1 * CSng(b)) / (2 * CSng(a))
    For i = 1 To 40
    y0 = CSng(a) * x0 ^ 2 + CSng(b) * x0 + CSng(c)
    x0 = x0 - 0.2
    pic1.Line (x0 + 0.2, y0)-(x0, CSng(a) * (x0 - 0.2) ^ 2 + CSng(b) * (x0 - 0.2) + CSng(c))
    Next i
End If

D = CSng(b) ^ 2 - 4 * CSng(a) * CSng(c)
If CSng(a) = 0 Then
txt4.Text = "График прямая" + vbCrLf
If CSng(b) <> 0 Then
If CSng(c) > 0 Then
txt5.Text = CStr(CSng(b)) + "x + " + CStr(CSng(c)) + " = 0" + vbCrLf
txt5.Text = txt5.Text + CStr(CSng(b)) + "x = " + CStr(CSng(c) * (-1)) + vbCrLf
txt5.Text = txt5.Text + "x = " + CStr((CSng(c) * (-1)) / CSng(b)) + vbCrLf
Else
If CSng(c) < 0 Then
txt5.Text = CStr(CSng(b)) + "x " + CStr(CSng(c)) + " = 0" + vbCrLf
txt5.Text = txt5.Text + CStr(CSng(b)) + "x = " + CStr(CSng(c) * (-1)) + vbCrLf
txt5.Text = txt5.Text + "x = " + CStr((CSng(c) * (-1)) / CSng(b)) + vbCrLf
Else
txt5.Text = CStr(CSng(b)) + "x =0 " + vbCrLf
txt5.Text = txt5.Text + "x =0 "
End If
End If
Else
txt5.Text = CStr(CSng(c))
End If
Else
If CSng(a) > 0 Then
txt4.Text = "График параболы; ветви вверх" + vbCrLf
Else
If CSng(a) < 0 Then
txt4.Text = "График параболы; ветви вниз" + vbCrLf
End If
End If
End If
If CSng(a) <> 0 Then
txt4.Text = txt4.Text + "1)Вершина параболы" + vbCrLf
txt4.Text = txt4.Text + "x0 = -b/2a = " + CStr(-1 * CSng(b)) + " / " + CStr(2 * CSng(a)) + " = " + CStr(-1 * CSng(b) / 2 * CSng(a)) + vbCrLf
txt4.Text = txt4.Text + "D = b^2-4ac = " + CStr(CSng(b) ^ 2) + " - " + " 4 * " + CStr(CSng(a) * CSng(c)) + " = " + CStr(CSng(b) ^ 2) + " - " + CStr(4 * CSng(a) * CSng(c)) + " = " + CStr(D) + vbCrLf
txt4.Text = txt4.Text + "y0 = -D/4a = " + CStr(-1 * CSng(D)) + " / " + CStr(4 * CSng(a)) + " = " + CStr(-1 * CSng(D) / 4 * CSng(a)) + vbCrLf
txt4.Text = txt4.Text + "2)Нули" + vbCrLf
If CSng(D) > 0 Then
txt4.Text = txt4.Text + "x1 = -b-v¬D/2a = " + CStr(-1 * CSng(b)) + " - " + CStr(Sqr(CSng(D))) + " / " + CStr(2 * CSng(a)) + " = " + CStr((-1 * CSng(b) - Sqr(CSng(D))) / (2 * CSng(a))) + vbCrLf
txt4.Text = txt4.Text + "x2 = -b+v¬D/2a = " + CStr(-1 * CSng(b)) + " + " + CStr(Sqr(CSng(D))) + " / " + CStr(2 * CSng(a)) + " = " + CStr((-1 * CSng(b) + Sqr(CSng(D))) / (2 * CSng(a))) + vbCrLf
Else
If CSng(D) < 0 Then
txt4.Text = txt4.Text + "нулей нет" + vbCrLf
Else
txt4.Text = txt4.Text + "x1 = -b/2a = " + CStr(-1 * CSng(b)) + " / " + CStr(2 * CSng(a)) + " = " + CStr((-1 * CSng(b)) / (2 * CSng(a))) + vbCrLf
End If
End If
txt4.Text = txt4.Text + "3)(0;c)  (0;" + CStr(CSng(c)) + ")" + vbCrLf
txt4.Text = txt4.Text + "(-b/a;c)  (" + CStr(-1 * CSng(b) / CSng(a)) + ";" + CStr(CSng(c)) + ")" + vbCrLf


txt5.Text = "D = b^2-4ac = " + CStr(CSng(b) ^ 2) + " - " + " 4 * " + CStr(CSng(a) * CSng(c)) + " = " + CStr(CSng(b) ^ 2) + " - " + CStr(4 * CSng(a) * CSng(c)) + " = " + CStr(D) + vbCrLf
If CSng(D) > 0 Then
txt5.Text = txt5.Text + "x1 = -b-v¬D/2a = " + CStr(-1 * CSng(b)) + " - " + CStr(Sqr(CSng(D))) + " / " + CStr(2 * CSng(a)) + " = " + CStr((-1 * CSng(b) - Sqr(CSng(D))) / (2 * CSng(a))) + vbCrLf
txt5.Text = txt5.Text + "x2 = -b+v¬D/2a = " + CStr(-1 * CSng(b)) + " + " + CStr(Sqr(CSng(D))) + " / " + CStr(2 * CSng(a)) + " = " + CStr((-1 * CSng(b) + Sqr(CSng(D))) / (2 * CSng(a))) + vbCrLf
txt5.Text = txt5.Text + "Ответ:" + CStr((-1 * CSng(b) - Sqr(CSng(D))) / (2 * CSng(a))) + " ; " + CStr((-1 * CSng(b) + Sqr(CSng(D))) / (2 * CSng(a)))
Else
If CSng(D) < 0 Then
txt5.Text = txt5.Text + "корней нет" + vbCrLf
txt5.Text = txt5.Text + "Ответ: корней нет"
Else
txt5.Text = txt5.Text + "x1 = -b/2a = " + CStr(-1 * CSng(b)) + " / " + CStr(2 * CSng(a)) + " = " + CStr((-1 * CSng(b)) / (2 * CSng(a))) + vbCrLf
txt5.Text = txt5.Text + "Ответ:" + CStr((-1 * CSng(b) - Sqr(CSng(D))) / (2 * CSng(a)))
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


Private Sub Command2_Click()
pic1.Cls
txt1.Text = ""
txt2.Text = ""
txt3.Text = ""
txt4.Text = ""
txt5.Text = ""
End Sub

Private Sub exit_Click()
End
End Sub

Private Sub Form_Load()
Me.Visible = False
Form2.Visible = True
txt1.Text = "0"
txt2.Text = "0"
txt3.Text = "0"
tol = 1
End Sub


Private Sub green_Click()
pic1.ForeColor = vbGreen
Call Command1_Click
End Sub

Private Sub red_Click()
pic1.ForeColor = vbRed
Call Command1_Click
End Sub

Private Sub slych_Click()
pic1.ForeColor = QBColor(Rnd * 14)
Call Command1_Click
End Sub

Private Sub SpinButton1_SpinDown()
If IsNumeric(txt1.Text) Then
If IsNumeric(txt2.Text) Then
If IsNumeric(txt3.Text) Then
txt1.Text = CSng(txt1.Text) - 1
Call Command1_Click
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

Private Sub SpinButton1_SpinUp()
If IsNumeric(txt1.Text) Then
If IsNumeric(txt2.Text) Then
If IsNumeric(txt3.Text) Then
txt1.Text = CSng(txt1.Text) + 1
Call Command1_Click
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

Private Sub SpinButton2_SpinDown()
If IsNumeric(txt1.Text) Then
If IsNumeric(txt2.Text) Then
If IsNumeric(txt3.Text) Then
txt2.Text = CSng(txt2.Text) - 1
Call Command1_Click
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

Private Sub SpinButton2_SpinUp()
If IsNumeric(txt1.Text) Then
If IsNumeric(txt2.Text) Then
If IsNumeric(txt3.Text) Then
txt2.Text = CSng(txt2.Text) + 1
Call Command1_Click
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

Private Sub SpinButton3_SpinDown()
If IsNumeric(txt1.Text) Then
If IsNumeric(txt2.Text) Then
If IsNumeric(txt3.Text) Then
txt3.Text = CSng(txt3.Text) - 1
Call Command1_Click
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

Private Sub SpinButton3_SpinUp()
If IsNumeric(txt1.Text) Then
If IsNumeric(txt2.Text) Then
If IsNumeric(txt3.Text) Then
txt3.Text = CSng(txt3.Text) + 1
Call Command1_Click
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

Private Sub tolsh1_Click()
tol = tol + 1
pic1.DrawWidth = tol
Call Command1_Click
End Sub

Private Sub tolsh2_Click()
tol = tol - 1
If tol = 0 Then
MsgBox "Минимальная толщина", vbCritical + vbOKOnly, "Ошибка"
tol = 1
End If
pic1.DrawWidth = tol
Call Command1_Click
End Sub

Private Sub vmenu_Click()
Me.Visible = False
Form2.Visible = True
End Sub

Private Sub yellow_Click()
pic1.ForeColor = vbYellow
Call Command1_Click
End Sub
