VERSION 5.00
Begin VB.Form interfrm 
   BackColor       =   &H00C0FFFF&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Polynomial Inerpolation:"
   ClientHeight    =   8295
   ClientLeft      =   45
   ClientTop       =   405
   ClientWidth     =   8640
   Icon            =   "interfrm.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   8295
   ScaleWidth      =   8640
   StartUpPosition =   3  'Windows Default
   Begin VB.Frame Frame1 
      BackColor       =   &H00C0FFFF&
      Caption         =   "Interpolation :"
      ForeColor       =   &H000000FF&
      Height          =   5775
      Left            =   120
      TabIndex        =   0
      Top             =   2400
      Width           =   8415
      Begin VB.TextBox txt_x_val 
         Height          =   315
         Index           =   0
         Left            =   1080
         TabIndex        =   26
         Text            =   "30"
         Top             =   2160
         Width           =   555
      End
      Begin VB.TextBox txt_x_val 
         Height          =   315
         Index           =   1
         Left            =   1800
         TabIndex        =   25
         Text            =   "35"
         Top             =   2160
         Width           =   555
      End
      Begin VB.TextBox txt_x_val 
         Height          =   315
         Index           =   2
         Left            =   2520
         TabIndex        =   24
         Text            =   "45"
         Top             =   2160
         Width           =   555
      End
      Begin VB.TextBox txt_x_val 
         Height          =   315
         Index           =   3
         Left            =   3240
         TabIndex        =   23
         Text            =   "55"
         Top             =   2160
         Width           =   555
      End
      Begin VB.TextBox txt_x_val 
         Height          =   315
         Index           =   4
         Left            =   3960
         TabIndex        =   22
         Top             =   2160
         Width           =   555
      End
      Begin VB.TextBox txt_x_val 
         Height          =   315
         Index           =   5
         Left            =   4680
         TabIndex        =   21
         Top             =   2160
         Width           =   555
      End
      Begin VB.TextBox txt_x_val 
         Height          =   315
         Index           =   6
         Left            =   5400
         TabIndex        =   20
         Top             =   2160
         Width           =   555
      End
      Begin VB.TextBox txt_x_val 
         Height          =   315
         Index           =   7
         Left            =   6120
         TabIndex        =   19
         Top             =   2160
         Width           =   555
      End
      Begin VB.TextBox txt_x_val 
         Height          =   315
         Index           =   8
         Left            =   6840
         TabIndex        =   18
         Top             =   2160
         Width           =   555
      End
      Begin VB.TextBox txt_x_val 
         Height          =   315
         Index           =   9
         Left            =   7560
         TabIndex        =   17
         Top             =   2160
         Width           =   555
      End
      Begin VB.TextBox txt_y_val 
         Height          =   315
         Index           =   0
         Left            =   1080
         TabIndex        =   16
         Text            =   "148"
         Top             =   2760
         Width           =   555
      End
      Begin VB.TextBox txt_y_val 
         Height          =   315
         Index           =   1
         Left            =   1800
         TabIndex        =   15
         Text            =   "96"
         Top             =   2760
         Width           =   555
      End
      Begin VB.TextBox txt_y_val 
         Height          =   315
         Index           =   2
         Left            =   2520
         TabIndex        =   14
         Text            =   "68"
         Top             =   2760
         Width           =   555
      End
      Begin VB.TextBox txt_y_val 
         Height          =   315
         Index           =   3
         Left            =   3240
         TabIndex        =   13
         Text            =   "34"
         Top             =   2760
         Width           =   555
      End
      Begin VB.TextBox txt_y_val 
         Height          =   315
         Index           =   4
         Left            =   3960
         TabIndex        =   12
         Top             =   2760
         Width           =   555
      End
      Begin VB.TextBox txt_y_val 
         Height          =   315
         Index           =   5
         Left            =   4680
         TabIndex        =   11
         Top             =   2760
         Width           =   555
      End
      Begin VB.TextBox txt_y_val 
         Height          =   315
         Index           =   6
         Left            =   5400
         TabIndex        =   10
         Top             =   2760
         Width           =   555
      End
      Begin VB.TextBox txt_y_val 
         Height          =   315
         Index           =   7
         Left            =   6120
         TabIndex        =   9
         Top             =   2760
         Width           =   555
      End
      Begin VB.TextBox txt_y_val 
         Height          =   315
         Index           =   8
         Left            =   6840
         TabIndex        =   8
         Top             =   2760
         Width           =   555
      End
      Begin VB.TextBox txt_y_val 
         Height          =   315
         Index           =   9
         Left            =   7560
         TabIndex        =   7
         Top             =   2760
         Width           =   555
      End
      Begin VB.CommandButton Command1 
         Caption         =   "Solve"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   495
         Left            =   2040
         TabIndex        =   6
         Top             =   4920
         Width           =   1935
      End
      Begin VB.TextBox Text1 
         Height          =   375
         Left            =   3360
         TabIndex        =   5
         Top             =   4200
         Width           =   3135
      End
      Begin VB.TextBox Text2 
         Height          =   375
         Left            =   3360
         TabIndex        =   4
         Top             =   3600
         Width           =   3135
      End
      Begin VB.CommandButton Command2 
         Caption         =   "Clear"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   495
         Left            =   4080
         TabIndex        =   3
         Top             =   4920
         Width           =   1815
      End
      Begin VB.ComboBox Combo1 
         Height          =   315
         Left            =   3240
         Style           =   2  'Dropdown List
         TabIndex        =   1
         Top             =   720
         Width           =   1725
      End
      Begin VB.Label Label5 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Enter the Table value :"
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
         TabIndex        =   31
         Top             =   1560
         Width           =   2775
      End
      Begin VB.Label Label1 
         Alignment       =   2  'Center
         BackColor       =   &H00C0FFFF&
         Caption         =   "xi"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   315
         Index           =   0
         Left            =   480
         TabIndex        =   30
         Top             =   2160
         Width           =   555
      End
      Begin VB.Label Label1 
         Alignment       =   2  'Center
         BackColor       =   &H00C0FFFF&
         Caption         =   "yi"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   315
         Index           =   1
         Left            =   480
         TabIndex        =   29
         Top             =   2760
         Width           =   555
      End
      Begin VB.Label Label2 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Enter the interpolated value :"
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
         TabIndex        =   28
         Top             =   3600
         Width           =   3495
      End
      Begin VB.Label Label4 
         BackColor       =   &H00C0FFFF&
         Caption         =   "The ans :"
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
         Left            =   2160
         TabIndex        =   27
         Top             =   4200
         Width           =   975
      End
      Begin VB.Label Label3 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Select Number of Data points:"
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
         TabIndex        =   2
         Top             =   720
         Width           =   2895
      End
   End
   Begin VB.Image Image2 
      Height          =   870
      Left            =   2520
      Picture         =   "interfrm.frx":038A
      Top             =   1440
      Width           =   3255
   End
   Begin VB.Image Image1 
      Height          =   1455
      Left            =   -120
      Picture         =   "interfrm.frx":9784
      Stretch         =   -1  'True
      Top             =   0
      Width           =   8730
   End
End
Attribute VB_Name = "interfrm"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim x(15) As Double
Dim y(15) As Double
Dim ans As Double
Dim A(25) As Double
Dim B As Double

Private Sub Combo1_Click()
Call Hide_Show_Textboxes
End Sub

Private Sub Command1_Click()
On Error GoTo errhan:
If Val(Text2.Text) < Val(txt_x_val(0)) And Val(Text2.Text) < Val(txt_x_val(Val(Combo1.Text) - 1)) Or Val(Text2.Text) > Val(txt_x_val(0)) And Val(Text2.Text) > Val(txt_x_val(Val(Combo1.Text) - 1)) Then
MsgBox "The Interpolate value of x is between in the table value", vbInformation
Else
k = Val(Combo1.Text) - 1
For i = 0 To k
  x(i) = Val(txt_x_val(i))
  y(i) = Val(txt_y_val(i))
Next
  ans = Val(Text2.Text)
   For i = 0 To k
     A(i) = 1
   For j = 0 To k
     If i <> j Then
       A(i) = A(i) * ((ans - x(j)) / (x(i) - x(j)))
     End If
   Next j
   Next i
    B = 0
     For j = 0 To k
      B = B + A(j) * y(j)
     Next j
Text1.Text = B
End If
Exit Sub
errhan:
 MsgBox err.Description, vbInformation
End Sub
Private Sub Command2_Click()
Text1.Text = ""
Text2.Text = ""
For i = 0 To 9
 txt_x_val(i).Text = ""
 txt_y_val(i).Text = ""
Next i
End Sub

Private Sub Form_Load()
'Me.WindowState = vbMaximized
For i = 2 To 10
 Combo1.AddItem i
Next i
Combo1.Text = 4
Call Hide_Show_Textboxes
End Sub
Sub Hide_Show_Textboxes()

'Hide all textboxes
For n = 0 To 9
    txt_x_val(n).Visible = False
    txt_y_val(n).Visible = False
Next n

'Show the appropriate textboxes
For n = 0 To Val(Combo1.Text) - 1
    txt_x_val(n).Visible = True
    txt_y_val(n).Visible = True
Next n

End Sub

Private Sub txt_x_val_Validate(Index As Integer, Cancel As Boolean)
If IsNumeric(txt_x_val(Index).Text) = False And txt_x_val(Index).Text <> "" Then
    If (txt_x_val(Index).Text <> "-") Then
       
        i = MsgBox(txt_x_val(Index).Text & " " & "is not a numeric value.Enter only numeric values", vbOKOnly + vbExclamation, "Non numeric input")
                      txt_x_val(Index).Text = ""
                   txt_x_val(Index).SetFocus
        
    End If
    End If
End Sub

Private Sub txt_y_val_Validate(Index As Integer, Cancel As Boolean)
If IsNumeric(txt_y_val(Index).Text) = False And txt_y_val(Index).Text <> "" Then
    If (txt_y_val(Index).Text <> "-") Then
       
        i = MsgBox(txt_y_val(Index).Text & " " & "is not a numeric value.Enter only numeric values", vbOKOnly + vbExclamation, "Non numeric input")
                      txt_y_val(Index).Text = ""
                   txt_y_val(Index).SetFocus
        
    End If
    End If
End Sub
