VERSION 5.00
Begin VB.Form Form2 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Form2"
   ClientHeight    =   3780
   ClientLeft      =   150
   ClientTop       =   780
   ClientWidth     =   3465
   LinkTopic       =   "Form2"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   3780
   ScaleWidth      =   3465
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command3 
      Caption         =   "Конвертер"
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   14.25
         Charset         =   204
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   840
      TabIndex        =   2
      Top             =   2280
      Width           =   1575
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Геометрия"
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   14.25
         Charset         =   204
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   840
      TabIndex        =   1
      Top             =   1500
      Width           =   1575
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Алгебра"
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   14.25
         Charset         =   204
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   840
      TabIndex        =   0
      Top             =   720
      Width           =   1575
   End
   Begin VB.Menu exit 
      Caption         =   "Выход"
   End
End
Attribute VB_Name = "Form2"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
Me.Visible = False
Form1.Visible = True
End Sub

Private Sub Command2_Click()
Me.Visible = False
Form3.Visible = True
End Sub

Private Sub Command3_Click()
Me.Visible = False
Form4.Visible = True
End Sub

Private Sub exit_Click()
End
End Sub

Private Sub Form_Load()
Form1.Visible = False
Me.Visible = True
Form3.Visible = False
End Sub
