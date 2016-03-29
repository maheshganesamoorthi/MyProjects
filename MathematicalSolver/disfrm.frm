VERSION 5.00
Object = "{3B7C8863-D78F-101B-B9B5-04021C009402}#1.2#0"; "RichTx32.ocx"
Begin VB.Form disfrm 
   BackColor       =   &H00C0FFFF&
   Caption         =   "Dispersion"
   ClientHeight    =   9750
   ClientLeft      =   60
   ClientTop       =   420
   ClientWidth     =   14070
   Icon            =   "disfrm.frx":0000
   LinkTopic       =   "Form1"
   ScaleHeight     =   9750
   ScaleWidth      =   14070
   StartUpPosition =   3  'Windows Default
   Begin VB.Frame Frame3 
      BackColor       =   &H00C0FFFF&
      Caption         =   "Steps :"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   8055
      Left            =   9720
      TabIndex        =   26
      Top             =   2520
      Width           =   5535
      Begin RichTextLib.RichTextBox rt 
         Height          =   7215
         Left            =   360
         TabIndex        =   27
         Top             =   480
         Width           =   4935
         _ExtentX        =   8705
         _ExtentY        =   12726
         _Version        =   393217
         BackColor       =   12648447
         Appearance      =   0
         TextRTF         =   $"disfrm.frx":076A
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Trebuchet MS"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
      End
   End
   Begin VB.Frame Frame2 
      BackColor       =   &H00C0FFFF&
      Caption         =   "Example :"
      ForeColor       =   &H000000FF&
      Height          =   3495
      Left            =   120
      TabIndex        =   25
      Top             =   7080
      Width           =   9495
      Begin VB.Image Image2 
         Height          =   2595
         Left            =   240
         Picture         =   "disfrm.frx":07EB
         Top             =   480
         Width           =   9060
      End
   End
   Begin VB.Frame Frame1 
      BackColor       =   &H00C0FFFF&
      Caption         =   "Find Range && Coefficient of range:"
      ForeColor       =   &H000000FF&
      Height          =   4455
      Left            =   120
      TabIndex        =   0
      Top             =   2520
      Width           =   9495
      Begin VB.TextBox Text2 
         Height          =   495
         Left            =   2280
         TabIndex        =   24
         Top             =   3000
         Width           =   4095
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
         Left            =   4320
         TabIndex        =   19
         Top             =   3720
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
         Left            =   2760
         TabIndex        =   18
         Top             =   3720
         Width           =   1455
      End
      Begin VB.TextBox Text1 
         Height          =   495
         Left            =   2280
         TabIndex        =   17
         Top             =   2280
         Width           =   4095
      End
      Begin VB.TextBox txt_x_val 
         Height          =   315
         Index           =   14
         Left            =   8760
         TabIndex        =   16
         Top             =   1440
         Width           =   555
      End
      Begin VB.TextBox txt_x_val 
         Height          =   315
         Index           =   13
         Left            =   8160
         TabIndex        =   15
         Top             =   1440
         Width           =   555
      End
      Begin VB.TextBox txt_x_val 
         Height          =   315
         Index           =   12
         Left            =   7560
         TabIndex        =   14
         Top             =   1440
         Width           =   555
      End
      Begin VB.TextBox txt_x_val 
         Height          =   315
         Index           =   11
         Left            =   6960
         TabIndex        =   13
         Top             =   1440
         Width           =   555
      End
      Begin VB.TextBox txt_x_val 
         Height          =   315
         Index           =   10
         Left            =   6360
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
         Index           =   9
         Left            =   5760
         TabIndex        =   10
         Top             =   1440
         Width           =   555
      End
      Begin VB.TextBox txt_x_val 
         Height          =   315
         Index           =   8
         Left            =   5160
         TabIndex        =   9
         Top             =   1440
         Width           =   555
      End
      Begin VB.TextBox txt_x_val 
         Height          =   315
         Index           =   7
         Left            =   4560
         TabIndex        =   8
         Top             =   1440
         Width           =   555
      End
      Begin VB.TextBox txt_x_val 
         Height          =   315
         Index           =   6
         Left            =   3960
         TabIndex        =   7
         Top             =   1440
         Width           =   555
      End
      Begin VB.TextBox txt_x_val 
         Height          =   315
         Index           =   5
         Left            =   3360
         TabIndex        =   6
         Text            =   "59"
         Top             =   1440
         Width           =   555
      End
      Begin VB.TextBox txt_x_val 
         Height          =   315
         Index           =   4
         Left            =   2760
         TabIndex        =   5
         Text            =   "39"
         Top             =   1440
         Width           =   555
      End
      Begin VB.TextBox txt_x_val 
         Height          =   315
         Index           =   3
         Left            =   2160
         TabIndex        =   4
         Text            =   "36"
         Top             =   1440
         Width           =   555
      End
      Begin VB.TextBox txt_x_val 
         Height          =   315
         Index           =   2
         Left            =   1560
         TabIndex        =   3
         Text            =   "34"
         Top             =   1440
         Width           =   555
      End
      Begin VB.TextBox txt_x_val 
         Height          =   315
         Index           =   1
         Left            =   960
         TabIndex        =   2
         Text            =   "28"
         Top             =   1440
         Width           =   555
      End
      Begin VB.TextBox txt_x_val 
         Height          =   315
         Index           =   0
         Left            =   360
         TabIndex        =   1
         Text            =   "27"
         Top             =   1440
         Width           =   555
      End
      Begin VB.Label Label2 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Coefficient of range :"
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
         TabIndex        =   23
         Top             =   3120
         Width           =   2535
      End
      Begin VB.Label Label1 
         BackColor       =   &H00C0FFFF&
         Caption         =   "TheRange is :"
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
         Top             =   2400
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
         TabIndex        =   21
         Top             =   360
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
         TabIndex        =   20
         Top             =   960
         Width           =   2775
      End
   End
   Begin VB.Image Image3 
      Height          =   600
      Left            =   6840
      Picture         =   "disfrm.frx":4D0B1
      Top             =   1800
      Width           =   2370
   End
   Begin VB.Image Image1 
      Height          =   1710
      Left            =   -120
      Picture         =   "disfrm.frx":51B53
      Stretch         =   -1  'True
      Top             =   0
      Width           =   15465
   End
End
Attribute VB_Name = "disfrm"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim A(25) As Double
Private Sub Combo1_Click()
For i = 0 To 14
txt_x_val(i).Visible = False
Next
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
 For j = 0 To Val(Combo1.Text) - 1
  If A(i) > A(j) Then
   temp = A(i)
   A(i) = A(j)
   A(j) = temp
  End If
 Next j
Next i
sol1 = A(0) - A(Val(Combo1.Text) - 1)
sol2 = A(0) + A(Val(Combo1.Text) - 1)
If sol2 = 0 Then
MsgBox "Invalid Input", vbInformation
ElseIf sol2 = 0 And sol1 = 0 Then
MsgBox "Invalid Input", vbInformation
Else
sol3 = sol1 / sol2
Text1.Text = sol1
Text2.Text = sol3
End If
End If
'End If
rt.Text = " Find Range :" & vbNewLine & " ------------------- " & vbNewLine & " The Smallest value is (L) = " & A(Val(Combo1.Text) - 1) & vbNewLine & " The Largest value is (S)= " & A(0) & vbNewLine & " The Range is : L-S" & vbNewLine & "                   =" & A(0) & "-" & A(Val(Combo1.Text) - 1) & vbNewLine & "                   =" & A(0) - A(Val(Combo1.Text) - 1)
rt.Text = rt.Text & vbNewLine & vbNewLine & " Find Coefficient of range :" & vbNewLine & " ------------------------------------ " & vbNewLine & " The Coefficient of range :( L-S ) / ( L+S )" & vbNewLine & "                   =" & A(0) & "-" & A(Val(Combo1.Text) - 1) & " / " & A(0) & "+" & A(Val(Combo1.Text) - 1) & vbNewLine & "                   =" & Text2.Text
Exit Sub
errhan:
 MsgBox err.Description, vbInformation
End Sub

Private Sub Command2_Click()
For i = 0 To 14
txt_x_val(i).Text = ""
Next
Text1.Text = ""
Text2.Text = ""
End Sub

Private Sub Form_Load()
Me.WindowState = vbMaximized
For i = 2 To 15
Combo1.AddItem i
Next
Combo1.Text = "6"
For i = 0 To 14
txt_x_val(i).Visible = False
Next
For i = 0 To 5
txt_x_val(i).Visible = True
Next
End Sub
