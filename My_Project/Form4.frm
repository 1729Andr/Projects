VERSION 5.00
Object = "{0D452EE1-E08F-101A-852E-02608C4D0BB4}#2.0#0"; "FM20.DLL"
Begin VB.Form Form4 
   Caption         =   "Form4"
   ClientHeight    =   5400
   ClientLeft      =   225
   ClientTop       =   855
   ClientWidth     =   7050
   LinkTopic       =   "Form4"
   ScaleHeight     =   5400
   ScaleWidth      =   7050
   StartUpPosition =   3  'Windows Default
   Begin VB.TextBox txt2 
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   18
         Charset         =   204
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   3960
      TabIndex        =   5
      Top             =   2640
      Width           =   2295
   End
   Begin VB.TextBox txt1 
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   18
         Charset         =   204
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   360
      TabIndex        =   4
      Top             =   2640
      Width           =   2295
   End
   Begin VB.ComboBox cmb3 
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
      Left            =   3960
      TabIndex        =   3
      Top             =   1680
      Width           =   2655
   End
   Begin VB.ComboBox cmb2 
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
      ItemData        =   "Form4.frx":0000
      Left            =   360
      List            =   "Form4.frx":0002
      TabIndex        =   2
      Top             =   1680
      Width           =   2655
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
      ItemData        =   "Form4.frx":0004
      Left            =   360
      List            =   "Form4.frx":0011
      TabIndex        =   0
      Top             =   1080
      Width           =   2175
   End
   Begin MSForms.CommandButton CommandButton1 
      Height          =   615
      Left            =   3120
      TabIndex        =   7
      Top             =   1560
      Width           =   735
      Size            =   "1296;1085"
      Picture         =   "Form4.frx":002B
      FontHeight      =   165
      FontCharSet     =   204
      FontPitchAndFamily=   2
      ParagraphAlign  =   3
   End
   Begin VB.Label Label2 
      Caption         =   "Введите число"
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   14.25
         Charset         =   204
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   360
      TabIndex        =   6
      Top             =   2160
      Width           =   2415
   End
   Begin VB.Label Label1 
      Caption         =   "Конвертер"
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
      TabIndex        =   1
      Top             =   240
      Width           =   2655
   End
   Begin VB.Menu vmenu 
      Caption         =   "В меню"
   End
   Begin VB.Menu exit 
      Caption         =   "Выход"
   End
End
Attribute VB_Name = "Form4"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim a As Integer, chis As Double, otv As Double

Private Sub cmb1_Click()
If cmb1.ListIndex = 0 Then
a = 0
cmb2.Clear
cmb3.Clear
cmb2.AddItem "Километр"
cmb2.AddItem "Метр"
cmb2.AddItem "Сантиметр"
cmb2.AddItem "Милиметр"

cmb3.AddItem "Километр"
cmb3.AddItem "Метр"
cmb3.AddItem "Сантиметр"
cmb3.AddItem "Милиметр"
Else
If cmb1.ListIndex = 1 Then
a = 1
cmb2.Clear
cmb3.Clear
cmb2.AddItem "Год"
cmb2.AddItem "День"
cmb2.AddItem "Час"
cmb2.AddItem "Минута"
cmb2.AddItem "Секунда"

cmb3.AddItem "Год"
cmb3.AddItem "День"
cmb3.AddItem "Час"
cmb3.AddItem "Минута"
cmb3.AddItem "Секунда"
Else
If cmb1.ListIndex = 2 Then
a = 2
cmb2.Clear
cmb3.Clear
cmb2.AddItem "Тонна"
cmb2.AddItem "Центнер"
cmb2.AddItem "Килограмм"
cmb2.AddItem "Грамм"

cmb3.AddItem "Тонна"
cmb3.AddItem "Центнер"
cmb3.AddItem "Килограмм"
cmb3.AddItem "Грамм"
End If
End If
End If
cmb2.Text = cmb2.List(0)
cmb3.Text = cmb3.List(0)
End Sub

Private Sub CommandButton1_Click()
chis = CSng(txt1.Text)
If a = 0 Then
If cmb2.Text = cmb2.List(0) Then
otv = chis * 1000
Else
If cmb2.Text = cmb2.List(1) Then
otv = chis
Else
If cmb2.Text = cmb2.List(2) Then
otv = chis / 100
Else
If cmb2.Text = cmb2.List(3) Then
otv = chis / 1000
End If
End If
End If
End If
If cmb3.Text = cmb3.List(0) Then
otv = otv / 1000
txt2.Text = CStr(otv)
Else
If cmb3.Text = cmb3.List(1) Then
otv = otv
txt2.Text = CStr(otv)
Else
If cmb3.Text = cmb3.List(2) Then
otv = otv * 100
txt2.Text = CStr(otv)
Else
If cmb3.Text = cmb3.List(3) Then
otv = otv * 1000
txt2.Text = CStr(otv)
End If
End If
End If
End If
Else
If a = 1 Then
If cmb2.Text = cmb2.List(0) Then
otv = chis * 31536000
Else
If cmb2.Text = cmb2.List(1) Then
otv = chis * 86400
Else
If cmb2.Text = cmb2.List(2) Then
otv = chis * 3600
Else
If cmb2.Text = cmb2.List(3) Then
otv = chis * 60
Else
If cmb2.Text = cmb2.List(4) Then
otv = chis
End If
End If
End If
End If
End If
If cmb3.Text = cmb3.List(0) Then
otv = Format(otv / 31536000, "0.00000000")
txt2.Text = CStr(otv)
Else
If cmb3.Text = cmb3.List(1) Then
otv = Format(otv / 86400, "0.00000000")
txt2.Text = CStr(otv)
Else
If cmb3.Text = cmb3.List(2) Then
otv = Format(otv / 3600, "0.00000000")
txt2.Text = CStr(otv)
Else
If cmb3.Text = cmb3.List(3) Then
otv = Format(otv / 60, "0.00000000")
txt2.Text = CStr(otv)
Else
If cmb3.Text = cmb3.List(4) Then
otv = otv
txt2.Text = CStr(otv)
End If
End If
End If
End If
End If
Else
If a = 2 Then
If cmb2.Text = cmb2.List(0) Then
otv = chis * 1000000
Else
If cmb2.Text = cmb2.List(1) Then
otv = chis * 100000
Else
If cmb2.Text = cmb2.List(2) Then
otv = chis * 1000
Else
If cmb2.Text = cmb2.List(3) Then
otv = chis
End If
End If
End If
End If
If cmb3.Text = cmb3.List(0) Then
otv = Format(otv / 1000000, "0.00000000")
txt2.Text = CStr(otv)
Else
If cmb3.Text = cmb3.List(1) Then
otv = Format(otv / 100000, "0.00000000")
txt2.Text = CStr(otv)
Else
If cmb3.Text = cmb3.List(2) Then
otv = Format(otv / 1000, "0.00000000")
txt2.Text = CStr(otv)
Else
If cmb3.Text = cmb3.List(3) Then
otv = otv
txt2.Text = CStr(otv)
End If
End If
End If
End If

End If
End If
End If

End Sub

Private Sub exit_Click()
End
End Sub

Private Sub vmenu_Click()
Me.Visible = False
Form2.Visible = True
End Sub
