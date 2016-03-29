VERSION 5.00
Begin VB.Form coevarfrm 
   BackColor       =   &H00C0FFFF&
   Caption         =   "Coefficient of Variation"
   ClientHeight    =   9735
   ClientLeft      =   60
   ClientTop       =   420
   ClientWidth     =   14010
   Icon            =   "coevarfrm.frx":0000
   LinkTopic       =   "Form1"
   ScaleHeight     =   9735
   ScaleWidth      =   14010
   StartUpPosition =   3  'Windows Default
   Begin VB.Frame Frame5 
      BackColor       =   &H00C0FFFF&
      Caption         =   "Find Standrad deviation ( Using Mean && Coefficient of Variation ) :"
      ForeColor       =   &H000000FF&
      Height          =   2655
      Left            =   9720
      TabIndex        =   36
      Top             =   7920
      Width           =   5535
      Begin VB.TextBox t7 
         Height          =   495
         Left            =   3480
         TabIndex        =   49
         Top             =   360
         Width           =   1935
      End
      Begin VB.TextBox t8 
         Height          =   495
         Left            =   3480
         TabIndex        =   48
         Top             =   960
         Width           =   1935
      End
      Begin VB.TextBox t9 
         Height          =   495
         Left            =   3480
         TabIndex        =   47
         Top             =   1560
         Width           =   1935
      End
      Begin VB.CommandButton Command8 
         Caption         =   "Solve"
         Height          =   375
         Left            =   1560
         TabIndex        =   46
         Top             =   2160
         Width           =   1215
      End
      Begin VB.CommandButton Command7 
         Caption         =   "Clear"
         Height          =   375
         Left            =   3000
         TabIndex        =   45
         Top             =   2160
         Width           =   1215
      End
      Begin VB.Label Label13 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Enter Coefficient of Variation is :"
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
         Left            =   120
         TabIndex        =   52
         Top             =   480
         Width           =   3375
      End
      Begin VB.Label Label12 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Enter the mean  :"
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
         Left            =   120
         TabIndex        =   51
         Top             =   1080
         Width           =   2535
      End
      Begin VB.Label Label11 
         BackColor       =   &H00C0FFFF&
         Caption         =   "The Standrad deviation is :"
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
         Left            =   120
         TabIndex        =   50
         Top             =   1680
         Width           =   3375
      End
   End
   Begin VB.Frame Frame4 
      BackColor       =   &H00C0FFFF&
      Caption         =   "Find mean ( Using Standrad deviation && Coefficient of Variation ) :"
      ForeColor       =   &H000000FF&
      Height          =   2655
      Left            =   9720
      TabIndex        =   35
      Top             =   5160
      Width           =   5535
      Begin VB.CommandButton Command6 
         Caption         =   "Clear"
         Height          =   375
         Left            =   3000
         TabIndex        =   41
         Top             =   2160
         Width           =   1215
      End
      Begin VB.CommandButton Command5 
         Caption         =   "Solve"
         Height          =   375
         Left            =   1560
         TabIndex        =   40
         Top             =   2160
         Width           =   1215
      End
      Begin VB.TextBox t6 
         Height          =   495
         Left            =   3480
         TabIndex        =   39
         Top             =   1560
         Width           =   1935
      End
      Begin VB.TextBox t5 
         Height          =   495
         Left            =   3480
         TabIndex        =   38
         Top             =   960
         Width           =   1935
      End
      Begin VB.TextBox t4 
         Height          =   495
         Left            =   3480
         TabIndex        =   37
         Top             =   360
         Width           =   1935
      End
      Begin VB.Label Label10 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Enter the Standrad deviation :"
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
         Left            =   120
         TabIndex        =   44
         Top             =   1080
         Width           =   3375
      End
      Begin VB.Label Label9 
         BackColor       =   &H00C0FFFF&
         Caption         =   "The mean is :"
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
         Left            =   120
         TabIndex        =   43
         Top             =   1680
         Width           =   2535
      End
      Begin VB.Label Label4 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Enter Coefficient of Variation is :"
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
         Left            =   120
         TabIndex        =   42
         Top             =   480
         Width           =   3375
      End
   End
   Begin VB.Frame Frame1 
      BackColor       =   &H00C0FFFF&
      Caption         =   "Enter the values :"
      ForeColor       =   &H000000FF&
      Height          =   4095
      Left            =   120
      TabIndex        =   2
      Top             =   2400
      Width           =   9495
      Begin VB.TextBox Text2 
         Height          =   495
         Left            =   3000
         TabIndex        =   26
         Top             =   2760
         Width           =   4095
      End
      Begin VB.TextBox txt_x_val 
         Height          =   315
         Index           =   0
         Left            =   360
         TabIndex        =   21
         Text            =   "16"
         Top             =   1440
         Width           =   555
      End
      Begin VB.TextBox txt_x_val 
         Height          =   315
         Index           =   1
         Left            =   960
         TabIndex        =   20
         Text            =   "13"
         Top             =   1440
         Width           =   555
      End
      Begin VB.TextBox txt_x_val 
         Height          =   315
         Index           =   2
         Left            =   1560
         TabIndex        =   19
         Text            =   "17"
         Top             =   1440
         Width           =   555
      End
      Begin VB.TextBox txt_x_val 
         Height          =   315
         Index           =   3
         Left            =   2160
         TabIndex        =   18
         Text            =   "21"
         Top             =   1440
         Width           =   555
      End
      Begin VB.TextBox txt_x_val 
         Height          =   315
         Index           =   4
         Left            =   2760
         TabIndex        =   17
         Text            =   "18"
         Top             =   1440
         Width           =   555
      End
      Begin VB.TextBox txt_x_val 
         Height          =   315
         Index           =   5
         Left            =   3360
         TabIndex        =   16
         Top             =   1440
         Width           =   555
      End
      Begin VB.TextBox txt_x_val 
         Height          =   315
         Index           =   6
         Left            =   3960
         TabIndex        =   15
         Top             =   1440
         Width           =   555
      End
      Begin VB.TextBox txt_x_val 
         Height          =   315
         Index           =   7
         Left            =   4560
         TabIndex        =   14
         Top             =   1440
         Width           =   555
      End
      Begin VB.TextBox txt_x_val 
         Height          =   315
         Index           =   8
         Left            =   5160
         TabIndex        =   13
         Top             =   1440
         Width           =   555
      End
      Begin VB.TextBox txt_x_val 
         Height          =   315
         Index           =   9
         Left            =   5760
         TabIndex        =   12
         Top             =   1440
         Width           =   555
      End
      Begin VB.ComboBox Combo1 
         Height          =   315
         Left            =   3720
         Style           =   2  'Dropdown List
         TabIndex        =   11
         Top             =   360
         Width           =   1725
      End
      Begin VB.TextBox txt_x_val 
         Height          =   315
         Index           =   10
         Left            =   6360
         TabIndex        =   10
         Top             =   1440
         Width           =   555
      End
      Begin VB.TextBox txt_x_val 
         Height          =   315
         Index           =   11
         Left            =   6960
         TabIndex        =   9
         Top             =   1440
         Width           =   555
      End
      Begin VB.TextBox txt_x_val 
         Height          =   315
         Index           =   12
         Left            =   7560
         TabIndex        =   8
         Top             =   1440
         Width           =   555
      End
      Begin VB.TextBox txt_x_val 
         Height          =   315
         Index           =   13
         Left            =   8160
         TabIndex        =   7
         Top             =   1440
         Width           =   555
      End
      Begin VB.TextBox txt_x_val 
         Height          =   315
         Index           =   14
         Left            =   8760
         TabIndex        =   6
         Top             =   1440
         Width           =   555
      End
      Begin VB.TextBox Text1 
         Height          =   495
         Left            =   3000
         TabIndex        =   5
         Top             =   2160
         Width           =   4095
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
         Left            =   3360
         TabIndex        =   4
         Top             =   3480
         Width           =   1455
      End
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
         Left            =   4920
         TabIndex        =   3
         Top             =   3480
         Width           =   1455
      End
      Begin VB.Label Label2 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Coefficient of Variation :"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   495
         Left            =   240
         TabIndex        =   25
         Top             =   2880
         Width           =   2895
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
         TabIndex        =   24
         Top             =   960
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
         TabIndex        =   23
         Top             =   360
         Width           =   3015
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
         TabIndex        =   22
         Top             =   2280
         Width           =   2775
      End
   End
   Begin VB.Frame Frame2 
      BackColor       =   &H00C0FFFF&
      Caption         =   "Coefficient of Variation :"
      ForeColor       =   &H000000FF&
      Height          =   2655
      Left            =   9720
      TabIndex        =   1
      Top             =   2400
      Width           =   5535
      Begin VB.TextBox T1 
         Height          =   495
         Left            =   3240
         TabIndex        =   31
         Top             =   360
         Width           =   2175
      End
      Begin VB.TextBox T2 
         Height          =   495
         Left            =   3240
         TabIndex        =   30
         Top             =   960
         Width           =   2175
      End
      Begin VB.TextBox T3 
         Height          =   495
         Left            =   3240
         TabIndex        =   29
         Top             =   1560
         Width           =   2175
      End
      Begin VB.CommandButton Command4 
         Caption         =   "Solve"
         Height          =   375
         Left            =   1560
         TabIndex        =   28
         Top             =   2160
         Width           =   1215
      End
      Begin VB.CommandButton Command3 
         Caption         =   "Clear"
         Height          =   375
         Left            =   3000
         TabIndex        =   27
         Top             =   2160
         Width           =   1215
      End
      Begin VB.Label Label8 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Coefficient of Variation is :"
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
         Left            =   120
         TabIndex        =   34
         Top             =   1680
         Width           =   3135
      End
      Begin VB.Label Label7 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Enter the mean :"
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
         Left            =   120
         TabIndex        =   33
         Top             =   480
         Width           =   2535
      End
      Begin VB.Label Label6 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Enter the Standrad deviation :"
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
         Left            =   120
         TabIndex        =   32
         Top             =   1080
         Width           =   3375
      End
   End
   Begin VB.Frame Frame3 
      BackColor       =   &H00C0FFFF&
      Caption         =   "Example :"
      ForeColor       =   &H000000FF&
      Height          =   3975
      Left            =   120
      TabIndex        =   0
      Top             =   6600
      Width           =   9495
      Begin VB.Image Image3 
         Height          =   3420
         Left            =   1080
         Picture         =   "coevarfrm.frx":076A
         Top             =   120
         Width           =   7770
      End
   End
   Begin VB.Image Image2 
      Height          =   600
      Left            =   6600
      Picture         =   "coevarfrm.frx":5717C
      Top             =   1680
      Width           =   2370
   End
   Begin VB.Image Image1 
      Height          =   1710
      Left            =   0
      Picture         =   "coevarfrm.frx":5BC1E
      Stretch         =   -1  'True
      Top             =   0
      Width           =   15360
   End
End
Attribute VB_Name = "coevarfrm"
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
sol5 = C / Val(Combo1.Text)
sol6 = (sol4 / sol5) * 100
Text2.Text = sol6
End If
Exit Sub
errhan:
 MsgBox err.Description, vbInformation
End Sub

Private Sub Command2_Click()
Text1.Text = ""
Text2.Text = ""
For i = 0 To 14
txt_x_val(i).Text = ""
Next
End Sub

Private Sub Command3_Click()
T1.Text = ""
T2.Text = ""
T3.Text = ""
End Sub

Private Sub Command4_Click()
If T1.Text = "" Or T2.Text = "" Then
 MsgBox "Enter the value", vbInformation
Else
If Val(T1.Text) = 0 Then
 MsgBox "Invalid input", vbInformation
Else
T3.Text = (Val(T2.Text) / Val(T1.Text)) * 100
End If
End If
End Sub

Private Sub Command5_Click()
If T4.Text = "" Or t5.Text = "" Then
 MsgBox "Enter the value", vbInformation
Else
If Val(T4.Text) = 0 Then
 MsgBox "Invalid input", vbInformation
Else
t6.Text = (Val(t5.Text) / Val(T4.Text)) * 100
End If
End If
End Sub

Private Sub Command6_Click()
T4.Text = ""
t5.Text = ""
t6.Text = ""
End Sub

Private Sub Command7_Click()
t7.Text = ""
t8.Text = ""
t9.Text = ""
End Sub

Private Sub Command8_Click()
If t7.Text = "" Or t8.Text = "" Then
 MsgBox "Enter the value", vbInformation
Else
If Val(T4.Text) = 0 Then
 MsgBox "Invalid input", vbInformation
Else
t9.Text = (Val(t7.Text) * Val(t8.Text)) / 100
End If
End If
End Sub

Private Sub Form_Load()
Me.WindowState = vbMaximized
For i = 2 To 15
Combo1.AddItem i
Next
Combo1.Text = "5"
Call allvisible
For i = 0 To 4
txt_x_val(i).Visible = True
Next
End Sub
Private Function allvisible()
For i = 0 To 14
txt_x_val(i).Visible = False
Next
End Function


