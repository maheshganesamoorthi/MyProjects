VERSION 5.00
Begin VB.Form stddivfrm 
   BackColor       =   &H00C0FFFF&
   Caption         =   "Standrad Deviation "
   ClientHeight    =   8835
   ClientLeft      =   60
   ClientTop       =   420
   ClientWidth     =   10170
   Icon            =   "stddivfrm.frx":0000
   LinkTopic       =   "Form1"
   ScaleHeight     =   11040
   ScaleWidth      =   15240
   StartUpPosition =   3  'Windows Default
   Begin VB.Frame Frame3 
      BackColor       =   &H00C0FFFF&
      Caption         =   "Example :"
      ForeColor       =   &H000000FF&
      Height          =   3975
      Left            =   120
      TabIndex        =   24
      Top             =   6480
      Width           =   9495
      Begin VB.Image Image3 
         Height          =   3750
         Left            =   1080
         Picture         =   "stddivfrm.frx":076A
         Top             =   120
         Width           =   7725
      End
   End
   Begin VB.Frame Frame2 
      BackColor       =   &H00C0FFFF&
      Caption         =   "Types :"
      ForeColor       =   &H000000FF&
      Height          =   7815
      Left            =   9720
      TabIndex        =   19
      Top             =   2640
      Width           =   5535
      Begin VB.Image Image2 
         Height          =   6525
         Left            =   480
         Picture         =   "stddivfrm.frx":5EF64
         Top             =   600
         Width           =   4740
      End
   End
   Begin VB.Frame Frame1 
      BackColor       =   &H00C0FFFF&
      Caption         =   "Enter the values :"
      ForeColor       =   &H000000FF&
      Height          =   3735
      Left            =   120
      TabIndex        =   0
      Top             =   2640
      Width           =   9495
      Begin VB.CommandButton Command2 
         Caption         =   "Clear"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   4800
         TabIndex        =   23
         Top             =   3120
         Width           =   1455
      End
      Begin VB.CommandButton Command1 
         Caption         =   "Solve"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   3120
         TabIndex        =   22
         Top             =   3120
         Width           =   1455
      End
      Begin VB.TextBox Text1 
         Height          =   495
         Left            =   3000
         TabIndex        =   21
         Top             =   2400
         Width           =   4095
      End
      Begin VB.TextBox txt_x_val 
         Height          =   315
         Index           =   14
         Left            =   8760
         TabIndex        =   18
         Top             =   1680
         Width           =   555
      End
      Begin VB.TextBox txt_x_val 
         Height          =   315
         Index           =   13
         Left            =   8160
         TabIndex        =   17
         Top             =   1680
         Width           =   555
      End
      Begin VB.TextBox txt_x_val 
         Height          =   315
         Index           =   12
         Left            =   7560
         TabIndex        =   16
         Top             =   1680
         Width           =   555
      End
      Begin VB.TextBox txt_x_val 
         Height          =   315
         Index           =   11
         Left            =   6960
         TabIndex        =   15
         Top             =   1680
         Width           =   555
      End
      Begin VB.TextBox txt_x_val 
         Height          =   315
         Index           =   10
         Left            =   6360
         TabIndex        =   14
         Top             =   1680
         Width           =   555
      End
      Begin VB.ComboBox Combo1 
         Height          =   315
         Left            =   3720
         Style           =   2  'Dropdown List
         TabIndex        =   11
         Top             =   600
         Width           =   1725
      End
      Begin VB.TextBox txt_x_val 
         Height          =   315
         Index           =   9
         Left            =   5760
         TabIndex        =   10
         Top             =   1680
         Width           =   555
      End
      Begin VB.TextBox txt_x_val 
         Height          =   315
         Index           =   8
         Left            =   5160
         TabIndex        =   9
         Top             =   1680
         Width           =   555
      End
      Begin VB.TextBox txt_x_val 
         Height          =   315
         Index           =   7
         Left            =   4560
         TabIndex        =   8
         Text            =   "11"
         Top             =   1680
         Width           =   555
      End
      Begin VB.TextBox txt_x_val 
         Height          =   315
         Index           =   6
         Left            =   3960
         TabIndex        =   7
         Text            =   "12"
         Top             =   1680
         Width           =   555
      End
      Begin VB.TextBox txt_x_val 
         Height          =   315
         Index           =   5
         Left            =   3360
         TabIndex        =   6
         Text            =   "17"
         Top             =   1680
         Width           =   555
      End
      Begin VB.TextBox txt_x_val 
         Height          =   315
         Index           =   4
         Left            =   2760
         TabIndex        =   5
         Text            =   "20"
         Top             =   1680
         Width           =   555
      End
      Begin VB.TextBox txt_x_val 
         Height          =   315
         Index           =   3
         Left            =   2160
         TabIndex        =   4
         Text            =   "15"
         Top             =   1680
         Width           =   555
      End
      Begin VB.TextBox txt_x_val 
         Height          =   315
         Index           =   2
         Left            =   1560
         TabIndex        =   3
         Text            =   "9"
         Top             =   1680
         Width           =   555
      End
      Begin VB.TextBox txt_x_val 
         Height          =   315
         Index           =   1
         Left            =   960
         TabIndex        =   2
         Text            =   "22"
         Top             =   1680
         Width           =   555
      End
      Begin VB.TextBox txt_x_val 
         Height          =   315
         Index           =   0
         Left            =   360
         TabIndex        =   1
         Text            =   "14"
         Top             =   1680
         Width           =   555
      End
      Begin VB.Label Label1 
         BackColor       =   &H00C0FFFF&
         Caption         =   "The Standrad Deviation is :"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   240
         TabIndex        =   20
         Top             =   2520
         Width           =   2775
      End
      Begin VB.Label Label3 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Select Number of Data Points :"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   435
         Left            =   240
         TabIndex        =   13
         Top             =   600
         Width           =   3015
      End
      Begin VB.Label Label5 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Enter the Data :"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   240
         TabIndex        =   12
         Top             =   1200
         Width           =   2775
      End
   End
   Begin VB.Image Image4 
      Height          =   600
      Left            =   6240
      Picture         =   "stddivfrm.frx":C3A82
      Top             =   1920
      Width           =   2370
   End
   Begin VB.Image Image1 
      Height          =   1710
      Left            =   0
      Picture         =   "stddivfrm.frx":C8524
      Stretch         =   -1  'True
      Top             =   0
      Width           =   15360
   End
End
Attribute VB_Name = "stddivfrm"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim A(20) As Double
Dim B(20) As Double
Private Sub Combo1_Click()
Call allvisible
For i = 0 To Val(Combo1.Text) - 1
txt_x_val(i).Visible = True
Next
End Sub

Private Sub Command1_Click()
On Error GoTo errhan:
For i = 0 To Val(Combo1.Text) - 1
If txt_x_val(i).Text = "" Then
flagset = 1
End If
Next
If flagset = 1 Then
 MsgBox "Enter the value", vbInformation
Else
For i = 0 To Val(Combo1.Text) - 1
A(i) = Val(txt_x_val(i).Text)
Next
For i = 0 To Val(Combo1.Text) - 1
B(i) = Val(txt_x_val(i).Text) * Val(txt_x_val(i).Text)
Next
C = 0
D = 0
For i = 0 To Val(Combo1.Text) - 1
C = C + A(i)
D = D + B(i)
Next
sol1 = D / Val(Combo1.Text)
sol2 = (C / Val(Combo1.Text)) ^ 2
sol3 = sol1 - sol2
sol4 = Sqr(sol3)
Text1.Text = sol4
End If
Exit Sub
errhan:
 MsgBox err.Description, vbInformation
End Sub

Private Sub Command2_Click()
Text1.Text = ""
For i = 0 To 14
txt_x_val(i).Text = ""
Next
End Sub

Private Sub Form_Load()
Me.WindowState = vbMaximized
For i = 2 To 15
Combo1.AddItem i
Next
Combo1.Text = "8"
Call allvisible
For i = 0 To 7
txt_x_val(i).Visible = True
Next
End Sub
Private Function allvisible()
For i = 0 To 14
txt_x_val(i).Visible = False
Next
End Function
