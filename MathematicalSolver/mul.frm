VERSION 5.00
Begin VB.Form sum 
   BackColor       =   &H00C0FFFF&
   Caption         =   "Summation of some special series"
   ClientHeight    =   10545
   ClientLeft      =   60
   ClientTop       =   420
   ClientWidth     =   15240
   Icon            =   "mul.frx":0000
   LinkTopic       =   "Form1"
   ScaleHeight     =   10545
   ScaleWidth      =   15240
   StartUpPosition =   3  'Windows Default
   Begin VB.Frame Frame8 
      BackColor       =   &H00C0FFFF&
      Caption         =   "Formula :"
      ForeColor       =   &H000000FF&
      Height          =   3375
      Left            =   8040
      TabIndex        =   45
      Top             =   6360
      Width           =   7095
      Begin VB.Image Image1 
         Height          =   2445
         Left            =   360
         Picture         =   "mul.frx":038A
         Top             =   480
         Width           =   6540
      End
   End
   Begin VB.Frame Frame2 
      BackColor       =   &H00C0FFFF&
      Caption         =   "Sum of ODD numbers :"
      ForeColor       =   &H000000FF&
      Height          =   3255
      Left            =   5160
      TabIndex        =   36
      Top             =   2880
      Width           =   4935
      Begin VB.TextBox T4 
         Height          =   495
         Left            =   2760
         TabIndex        =   41
         Top             =   240
         Width           =   1935
      End
      Begin VB.TextBox T5 
         Height          =   495
         Left            =   2760
         TabIndex        =   40
         Top             =   960
         Width           =   1935
      End
      Begin VB.TextBox T6 
         Height          =   495
         Left            =   1320
         TabIndex        =   39
         Top             =   1680
         Width           =   3375
      End
      Begin VB.CommandButton Command3 
         Caption         =   "Solve"
         Height          =   375
         Left            =   1320
         TabIndex        =   38
         Top             =   2640
         Width           =   1215
      End
      Begin VB.CommandButton Command4 
         Caption         =   "Clear"
         Height          =   375
         Left            =   2640
         TabIndex        =   37
         Top             =   2640
         Width           =   1215
      End
      Begin VB.Label Label5 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Enter the first number :"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   735
         Left            =   120
         TabIndex        =   44
         Top             =   360
         Width           =   2535
      End
      Begin VB.Label Label6 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Enter the last number :"
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
         Top             =   1080
         Width           =   2415
      End
      Begin VB.Label Label8 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Sum is :"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   495
         Left            =   240
         TabIndex        =   42
         Top             =   1800
         Width           =   975
      End
   End
   Begin VB.Frame Frame5 
      BackColor       =   &H00C0FFFF&
      Caption         =   "Sum of Cubes N - Numbers :"
      ForeColor       =   &H000000FF&
      Height          =   3375
      Left            =   4080
      TabIndex        =   3
      Top             =   6360
      Width           =   3855
      Begin VB.CommandButton Command10 
         Caption         =   "Clear"
         Height          =   375
         Left            =   2040
         TabIndex        =   35
         Top             =   2640
         Width           =   1215
      End
      Begin VB.CommandButton Command9 
         Caption         =   "Solve"
         Height          =   375
         Left            =   720
         TabIndex        =   34
         Top             =   2640
         Width           =   1215
      End
      Begin VB.TextBox T15 
         Height          =   495
         Left            =   1200
         TabIndex        =   27
         Top             =   1680
         Width           =   2535
      End
      Begin VB.TextBox T14 
         Height          =   495
         Left            =   2520
         TabIndex        =   25
         Top             =   960
         Width           =   1215
      End
      Begin VB.TextBox T13 
         Height          =   495
         Left            =   2520
         TabIndex        =   23
         Top             =   240
         Width           =   1215
      End
      Begin VB.Label Label20 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Sum is :"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   495
         Left            =   240
         TabIndex        =   26
         Top             =   1800
         Width           =   975
      End
      Begin VB.Label Label18 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Enter the last number :"
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
         TabIndex        =   24
         Top             =   1080
         Width           =   2415
      End
      Begin VB.Label Label17 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Enter the first number :"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   735
         Left            =   120
         TabIndex        =   22
         Top             =   360
         Width           =   2535
      End
   End
   Begin VB.Frame Frame4 
      BackColor       =   &H00C0FFFF&
      Caption         =   "Sum of Squares of N - Numbers :"
      ForeColor       =   &H000000FF&
      Height          =   3375
      Left            =   120
      TabIndex        =   2
      Top             =   6360
      Width           =   3855
      Begin VB.CommandButton Command8 
         Caption         =   "Clear"
         Height          =   375
         Left            =   1920
         TabIndex        =   33
         Top             =   2640
         Width           =   1215
      End
      Begin VB.CommandButton Command7 
         Caption         =   "Solve"
         Height          =   375
         Left            =   600
         TabIndex        =   32
         Top             =   2640
         Width           =   1215
      End
      Begin VB.TextBox T12 
         Height          =   495
         Left            =   1200
         TabIndex        =   21
         Top             =   1680
         Width           =   2535
      End
      Begin VB.TextBox T11 
         Height          =   495
         Left            =   2520
         TabIndex        =   19
         Top             =   960
         Width           =   1215
      End
      Begin VB.TextBox T10 
         Height          =   495
         Left            =   2520
         TabIndex        =   17
         Top             =   240
         Width           =   1215
      End
      Begin VB.Label Label16 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Sum is :"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   495
         Left            =   240
         TabIndex        =   20
         Top             =   1800
         Width           =   975
      End
      Begin VB.Label Label14 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Enter the last number :"
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
         TabIndex        =   18
         Top             =   1080
         Width           =   2415
      End
      Begin VB.Label Label13 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Enter the first number :"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   735
         Left            =   120
         TabIndex        =   16
         Top             =   360
         Width           =   2535
      End
   End
   Begin VB.Frame Frame3 
      BackColor       =   &H00C0FFFF&
      Caption         =   "Sum of EVEN numbers :"
      ForeColor       =   &H000000FF&
      Height          =   3255
      Left            =   10200
      TabIndex        =   1
      Top             =   2880
      Width           =   4935
      Begin VB.CommandButton Command6 
         Caption         =   "Clear"
         Height          =   375
         Left            =   2760
         TabIndex        =   31
         Top             =   2640
         Width           =   1215
      End
      Begin VB.CommandButton Command5 
         Caption         =   "Solve"
         Height          =   375
         Left            =   1440
         TabIndex        =   30
         Top             =   2640
         Width           =   1215
      End
      Begin VB.TextBox T9 
         Height          =   495
         Left            =   1320
         TabIndex        =   15
         Top             =   1680
         Width           =   3375
      End
      Begin VB.TextBox T8 
         Height          =   495
         Left            =   2760
         TabIndex        =   13
         Top             =   960
         Width           =   1935
      End
      Begin VB.TextBox T7 
         Height          =   495
         Left            =   2760
         TabIndex        =   11
         Top             =   240
         Width           =   1935
      End
      Begin VB.Label Label12 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Sum is :"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   495
         Left            =   240
         TabIndex        =   14
         Top             =   1800
         Width           =   975
      End
      Begin VB.Label Label10 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Enter the last number :"
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
         TabIndex        =   12
         Top             =   1080
         Width           =   2415
      End
      Begin VB.Label Label9 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Enter the first number :"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   735
         Left            =   120
         TabIndex        =   10
         Top             =   360
         Width           =   2535
      End
   End
   Begin VB.Frame Frame1 
      BackColor       =   &H00C0FFFF&
      Caption         =   "Sum of N - numbers :"
      ForeColor       =   &H000000FF&
      Height          =   3255
      Left            =   120
      TabIndex        =   0
      Top             =   2880
      Width           =   4935
      Begin VB.CommandButton Command2 
         Caption         =   "Clear"
         Height          =   375
         Left            =   2880
         TabIndex        =   29
         Top             =   2640
         Width           =   1215
      End
      Begin VB.CommandButton Command1 
         Caption         =   "Solve"
         Height          =   375
         Left            =   1560
         TabIndex        =   28
         Top             =   2640
         Width           =   1215
      End
      Begin VB.TextBox T3 
         Height          =   495
         Left            =   1320
         TabIndex        =   9
         Top             =   1800
         Width           =   3375
      End
      Begin VB.TextBox T2 
         Height          =   495
         Left            =   2760
         TabIndex        =   7
         Top             =   1080
         Width           =   1935
      End
      Begin VB.TextBox T1 
         Height          =   495
         Left            =   2760
         TabIndex        =   5
         Top             =   360
         Width           =   1935
      End
      Begin VB.Label Label4 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Sum is :"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   495
         Left            =   240
         TabIndex        =   8
         Top             =   1920
         Width           =   975
      End
      Begin VB.Label Label2 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Enter the last number :"
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
         TabIndex        =   6
         Top             =   1200
         Width           =   2415
      End
      Begin VB.Label Label1 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Enter the first number :"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   735
         Left            =   120
         TabIndex        =   4
         Top             =   480
         Width           =   2535
      End
   End
   Begin VB.Image Image2 
      Height          =   720
      Left            =   6720
      Picture         =   "mul.frx":344A0
      Top             =   1800
      Width           =   3270
   End
   Begin VB.Image Image5 
      Height          =   1935
      Left            =   0
      Picture         =   "mul.frx":3B935
      Stretch         =   -1  'True
      Top             =   0
      Width           =   15360
   End
End
Attribute VB_Name = "sum"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
On Error GoTo errhan:
If Val(T1.Text) = 1 Then
 ans = (Val(T2.Text) * (Val(T2.Text) + 1)) / 2
 T3.Text = ans
Else
  A = (Val(T2.Text) * (Val(T2.Text) + 1)) / 2
 B = Val(T1.Text) - 1
 C = (B * (B + 1)) / 2
 ans = A - C
 T3.Text = ans
End If
'Label3.Caption = Val(T1.Text) & "+" & Val(T1.Text) + 1 & "+" & Val(T1.Text) + 2 & " . . . " & Val(T2.Text)
Exit Sub
errhan:
 MsgBox err.Description, vbInformation

End Sub

Private Sub Command10_Click()
T13.Text = ""
T14.Text = ""
T15.Text = ""
End Sub
Private Sub Command2_Click()
T1.Text = ""
T2.Text = ""
T3.Text = ""
End Sub

Private Sub Command3_Click()
On Error GoTo errhan:
A = Val(t4.Text) Mod 2
B = Val(t5.Text) Mod 2
If A = 0 Then
 C = Val(t4.Text) + 1
Else
 C = Val(t4.Text)
End If
If B = 0 Then
 D = Val(t5.Text) - 1
Else
 D = Val(t5.Text)
End If
C = C - 2
e = ((C + 1) / 2) ^ 2
F = ((D + 1) / 2) ^ 2
ans = F - e
t6.Text = ans

'Label7.Caption = c + 2 & "+" & " . . . " & "+" & d
Exit Sub
errhan:
 MsgBox err.Description, vbInformation

End Sub

Private Sub Command4_Click()
t4.Text = ""
t5.Text = ""
t6.Text = ""
End Sub

Private Sub Command5_Click()
On Error GoTo errhan:
i1 = Val(t7.Text) Mod 2
j1 = Val(t8.Text) Mod 2
If i1 = 1 Then
fir = Val(t7.Text) + 1
Else
fir = Val(t7.Text)
End If
If j1 = 1 Then
las = Val(t8.Text) - 1
Else
las = Val(t8.Text)
End If
k = 0
For i = fir To las Step 2
 k = k + i
Next i
t9.Text = k

Exit Sub
errhan:
 MsgBox err.Description, vbInformation

End Sub
 
Private Sub Command6_Click()
t7.Text = ""
t8.Text = ""
t9.Text = ""
End Sub

Private Sub Command7_Click()
On Error GoTo errhan:
If Val(T10.Text) = 1 Then
a1 = Val(T11.Text) + 1
a2 = (2 * Val(T11.Text)) + 1
A = (Val(T11.Text) * a1 * a2) / 6
ans = A
T12.Text = ans
Else
B = Val(T10.Text) - 1
a1 = Val(T11.Text) + 1
a2 = (2 * Val(T11.Text)) + 1
A = (Val(T11.Text) * a1 * a2) / 6
b1 = B + 1
b2 = (2 * B) + 1
b3 = (B * b1 * b2) / 6
ans = A - b3
T12.Text = ans
End If
Exit Sub
errhan:
 MsgBox err.Description, vbInformation

End Sub

Private Sub Command8_Click()
T10.Text = ""
T11.Text = ""
T12.Text = ""
End Sub

Private Sub Command9_Click()
On Error GoTo errhan:
If Val(T13.Text) = 1 Then
a1 = Val(T14.Text) + 1
A = (Val(T14.Text) * a1) / 2
ans = (A) ^ 2
T15.Text = ans
Else
B = Val(T13.Text) - 1
a1 = Val(T14.Text) + 1
A = (Val(T14.Text) * a1) / 2
a2 = (A) ^ 2
b1 = B + 1
b2 = (B * b1) / 2
b3 = (b2) ^ 2
ans = a2 - b3
T15.Text = ans
End If
Exit Sub
errhan:
 MsgBox err.Description, vbInformation

End Sub

Private Sub Form_Load()
Me.WindowState = vbMaximized
End Sub
