VERSION 5.00
Object = "{3B7C8863-D78F-101B-B9B5-04021C009402}#1.2#0"; "RICHTX32.OCX"
Begin VB.Form permufrm 
   BackColor       =   &H00C0FFFF&
   Caption         =   "Permutation & Combination"
   ClientHeight    =   9765
   ClientLeft      =   60
   ClientTop       =   420
   ClientWidth     =   14040
   Icon            =   "permufrm.frx":0000
   LinkTopic       =   "Form1"
   ScaleHeight     =   9765
   ScaleWidth      =   14040
   StartUpPosition =   3  'Windows Default
   Begin VB.Frame Frame6 
      BackColor       =   &H00C0FFFF&
      Caption         =   "Formula :"
      ForeColor       =   &H000000FF&
      Height          =   1335
      Left            =   120
      TabIndex        =   55
      Top             =   9240
      Width           =   11775
      Begin VB.Line Line1 
         BorderColor     =   &H00C0C0C0&
         X1              =   5640
         X2              =   5640
         Y1              =   120
         Y2              =   1320
      End
      Begin VB.Image Image4 
         Height          =   990
         Left            =   8400
         Picture         =   "permufrm.frx":076A
         Top             =   240
         Width           =   2925
      End
      Begin VB.Label Label2 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Combination :"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   6600
         TabIndex        =   57
         Top             =   480
         Width           =   1815
      End
      Begin VB.Image Image3 
         Height          =   900
         Left            =   1920
         Picture         =   "permufrm.frx":9F44
         Top             =   240
         Width           =   2910
      End
      Begin VB.Label Label1 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Permutation :"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   240
         TabIndex        =   56
         Top             =   480
         Width           =   1935
      End
   End
   Begin VB.Frame Frame5 
      BackColor       =   &H00C0FFFF&
      Caption         =   "Find r using n and nCr :"
      ForeColor       =   &H000000FF&
      Height          =   3375
      Left            =   8040
      TabIndex        =   22
      Top             =   5760
      Width           =   3855
      Begin VB.TextBox T10 
         Height          =   495
         Left            =   2400
         TabIndex        =   51
         Top             =   480
         Width           =   1335
      End
      Begin VB.TextBox T11 
         Height          =   495
         Left            =   2400
         TabIndex        =   50
         Top             =   1080
         Width           =   1335
      End
      Begin VB.TextBox T12 
         Height          =   495
         Left            =   1440
         TabIndex        =   49
         Top             =   1920
         Width           =   2295
      End
      Begin VB.CommandButton Command8 
         Caption         =   "Solve"
         Height          =   375
         Left            =   720
         TabIndex        =   48
         Top             =   2760
         Width           =   1215
      End
      Begin VB.CommandButton Command7 
         Caption         =   "Clear"
         Height          =   375
         Left            =   2040
         TabIndex        =   47
         Top             =   2760
         Width           =   1215
      End
      Begin VB.Label Label14 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Enter the Value (n) :"
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
         TabIndex        =   54
         Top             =   600
         Width           =   2175
      End
      Begin VB.Label Label13 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Enter the Value (nCr) :"
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
         TabIndex        =   53
         Top             =   1200
         Width           =   2415
      End
      Begin VB.Label Label12 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Value r is : "
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
         Left            =   120
         TabIndex        =   52
         Top             =   2040
         Width           =   1215
      End
   End
   Begin VB.Frame Frame4 
      BackColor       =   &H00C0FFFF&
      Caption         =   "Find r using n and nPr :"
      ForeColor       =   &H000000FF&
      Height          =   3375
      Left            =   8040
      TabIndex        =   21
      Top             =   2280
      Width           =   3855
      Begin VB.TextBox T4 
         Height          =   495
         Left            =   2400
         TabIndex        =   35
         Top             =   480
         Width           =   1335
      End
      Begin VB.TextBox T5 
         Height          =   495
         Left            =   2400
         TabIndex        =   34
         Top             =   1080
         Width           =   1335
      End
      Begin VB.TextBox T6 
         Height          =   495
         Left            =   1440
         TabIndex        =   33
         Top             =   2040
         Width           =   2295
      End
      Begin VB.CommandButton Command4 
         Caption         =   "Solve"
         Height          =   375
         Left            =   720
         TabIndex        =   32
         Top             =   2760
         Width           =   1215
      End
      Begin VB.CommandButton Command3 
         Caption         =   "Clear"
         Height          =   375
         Left            =   2040
         TabIndex        =   31
         Top             =   2760
         Width           =   1215
      End
      Begin VB.Label Label8 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Enter the Value (n) :"
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
         TabIndex        =   38
         Top             =   600
         Width           =   2175
      End
      Begin VB.Label Label7 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Enter the Value (nPr) :"
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
         TabIndex        =   37
         Top             =   1200
         Width           =   2415
      End
      Begin VB.Label Label6 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Value r is : "
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
         Left            =   120
         TabIndex        =   36
         Top             =   2160
         Width           =   1215
      End
   End
   Begin VB.Frame Frame3 
      BackColor       =   &H00C0FFFF&
      Caption         =   "Find n using r and nCr :"
      ForeColor       =   &H000000FF&
      Height          =   3375
      Left            =   4080
      TabIndex        =   20
      Top             =   5760
      Width           =   3855
      Begin VB.TextBox T7 
         Height          =   495
         Left            =   2400
         TabIndex        =   43
         Top             =   480
         Width           =   1335
      End
      Begin VB.TextBox T8 
         Height          =   495
         Left            =   2400
         TabIndex        =   42
         Top             =   1080
         Width           =   1335
      End
      Begin VB.TextBox T9 
         Height          =   495
         Left            =   1440
         TabIndex        =   41
         Top             =   1920
         Width           =   2295
      End
      Begin VB.CommandButton Command6 
         Caption         =   "Solve"
         Height          =   375
         Left            =   720
         TabIndex        =   40
         Top             =   2760
         Width           =   1215
      End
      Begin VB.CommandButton Command5 
         Caption         =   "Clear"
         Height          =   375
         Left            =   2040
         TabIndex        =   39
         Top             =   2760
         Width           =   1215
      End
      Begin VB.Label Label11 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Enter the Value (r) :"
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
         TabIndex        =   46
         Top             =   600
         Width           =   2175
      End
      Begin VB.Label Label10 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Enter the Value (nCr) :"
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
         TabIndex        =   45
         Top             =   1200
         Width           =   2415
      End
      Begin VB.Label Label9 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Value n is : "
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
         Left            =   120
         TabIndex        =   44
         Top             =   2040
         Width           =   1215
      End
   End
   Begin VB.Frame Frame2 
      BackColor       =   &H00C0FFFF&
      Caption         =   "Find n using r and nPr :"
      ForeColor       =   &H000000FF&
      Height          =   3375
      Left            =   4080
      TabIndex        =   19
      Top             =   2280
      Width           =   3855
      Begin VB.TextBox T1 
         Height          =   495
         Left            =   2400
         TabIndex        =   27
         Top             =   480
         Width           =   1335
      End
      Begin VB.TextBox T2 
         Height          =   495
         Left            =   2400
         TabIndex        =   26
         Top             =   1080
         Width           =   1335
      End
      Begin VB.TextBox T3 
         Height          =   495
         Left            =   1440
         TabIndex        =   25
         Top             =   2040
         Width           =   2295
      End
      Begin VB.CommandButton Command1 
         Caption         =   "Solve"
         Height          =   375
         Left            =   720
         TabIndex        =   24
         Top             =   2760
         Width           =   1215
      End
      Begin VB.CommandButton Command2 
         Caption         =   "Clear"
         Height          =   375
         Left            =   2040
         TabIndex        =   23
         Top             =   2760
         Width           =   1215
      End
      Begin VB.Label Label5 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Enter the Value (r) :"
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
         TabIndex        =   30
         Top             =   600
         Width           =   2175
      End
      Begin VB.Label Label3 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Enter the Value (nPr) :"
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
         TabIndex        =   29
         Top             =   1200
         Width           =   2415
      End
      Begin VB.Label Label4 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Value n is : "
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
         Left            =   120
         TabIndex        =   28
         Top             =   2160
         Width           =   1215
      End
   End
   Begin VB.Frame Frame1 
      BackColor       =   &H00C0FFFF&
      Caption         =   "Steps :"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   8295
      Left            =   12000
      TabIndex        =   18
      Top             =   2280
      Width           =   3255
      Begin RichTextLib.RichTextBox rt 
         Height          =   7695
         Left            =   120
         TabIndex        =   58
         Top             =   360
         Width           =   3015
         _ExtentX        =   5318
         _ExtentY        =   13573
         _Version        =   393217
         BackColor       =   12648447
         Enabled         =   -1  'True
         ScrollBars      =   2
         DisableNoScroll =   -1  'True
         Appearance      =   0
         TextRTF         =   $"permufrm.frx":12866
      End
   End
   Begin VB.Frame Frame9 
      BackColor       =   &H00C0FFFF&
      Caption         =   "Permutation :"
      ForeColor       =   &H000000FF&
      Height          =   3375
      Left            =   120
      TabIndex        =   9
      Top             =   2280
      Width           =   3855
      Begin VB.TextBox Text1 
         Height          =   495
         Left            =   2280
         TabIndex        =   14
         Top             =   360
         Width           =   1455
      End
      Begin VB.TextBox Text2 
         Height          =   495
         Left            =   2280
         TabIndex        =   13
         Top             =   960
         Width           =   1455
      End
      Begin VB.TextBox Text3 
         Height          =   495
         Left            =   960
         TabIndex        =   12
         Top             =   2040
         Width           =   2775
      End
      Begin VB.CommandButton Command15 
         Caption         =   "Solve"
         Height          =   375
         Left            =   720
         TabIndex        =   11
         Top             =   2760
         Width           =   1215
      End
      Begin VB.CommandButton Command16 
         Caption         =   "Clear"
         Height          =   375
         Left            =   2040
         TabIndex        =   10
         Top             =   2760
         Width           =   1215
      End
      Begin VB.Label Label19 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Enter the Value (n) :"
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
         TabIndex        =   17
         Top             =   480
         Width           =   2055
      End
      Begin VB.Label Label21 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Enter the Value (r) :"
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
         TabIndex        =   16
         Top             =   1080
         Width           =   2055
      End
      Begin VB.Label Label22 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Permutation is (nPr) :"
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
         TabIndex        =   15
         Top             =   1680
         Width           =   2295
      End
   End
   Begin VB.Frame Frame10 
      BackColor       =   &H00C0FFFF&
      Caption         =   "Combination :"
      ForeColor       =   &H000000FF&
      Height          =   3375
      Left            =   120
      TabIndex        =   0
      Top             =   5760
      Width           =   3855
      Begin VB.CommandButton Command17 
         Caption         =   "Clear"
         Height          =   375
         Left            =   2040
         TabIndex        =   5
         Top             =   2760
         Width           =   1215
      End
      Begin VB.CommandButton Command18 
         Caption         =   "Solve"
         Height          =   375
         Left            =   720
         TabIndex        =   4
         Top             =   2760
         Width           =   1215
      End
      Begin VB.TextBox Text4 
         Height          =   495
         Left            =   960
         TabIndex        =   3
         Top             =   2040
         Width           =   2775
      End
      Begin VB.TextBox Text5 
         Height          =   495
         Left            =   2160
         TabIndex        =   2
         Top             =   960
         Width           =   1575
      End
      Begin VB.TextBox Text6 
         Height          =   495
         Left            =   2160
         TabIndex        =   1
         Top             =   360
         Width           =   1575
      End
      Begin VB.Label Label23 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Combination is (nCr) :"
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
         TabIndex        =   8
         Top             =   1680
         Width           =   2415
      End
      Begin VB.Label Label24 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Enter the Value (r):"
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
         TabIndex        =   7
         Top             =   1080
         Width           =   2055
      End
      Begin VB.Label Label25 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Enter the Value (n) :"
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
         Top             =   480
         Width           =   2055
      End
   End
   Begin VB.Image Image2 
      Height          =   690
      Left            =   4320
      Picture         =   "permufrm.frx":128E8
      Top             =   1440
      Width           =   6810
   End
   Begin VB.Image Image1 
      Height          =   1710
      Left            =   0
      Picture         =   "permufrm.frx":21E42
      Stretch         =   -1  'True
      Top             =   0
      Width           =   15360
   End
End
Attribute VB_Name = "permufrm"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
On Error GoTo errhan:
k = 0
For i = 1 To 170
 u = Permutation(Val(i), Val(T1.Text))
 k = k + 1
If Val(u) = Val(T2.Text) Then
 j = k
 flag = 1
 m = 1
Else
 flag = 0
End If
Next
If flag = 1 And m = 1 Then
T3.Text = j
Else
MsgBox "Over Flow", vbInformation
End If
Exit Sub
errhan:
 MsgBox err.Description, vbInformation
End Sub

Private Sub Command2_Click()
T1.Text = ""
T2.Text = ""
T3.Text = ""
End Sub

Private Sub Command3_Click()
T4.Text = ""
T5.Text = ""
T6.Text = ""
End Sub

Private Sub Command4_Click()
On Error GoTo errhan:
D = Val(T4.Text)
e = Val(T5.Text)
j = 0
For i = Val(T4.Text) To 1 Step -1
 e = e / i
 j = j + 1
 If e = 1 Then
   k = j
 End If
Next
 T6.Text = k
Exit Sub
errhan:
 MsgBox err.Description, vbInformation
End Sub

Private Sub Command5_Click()
T7.Text = ""
T8.Text = ""
T9.Text = ""
End Sub

Private Sub Command6_Click()
On Error GoTo errhan:
k = 0
For i = 1 To 170
 u = Combination(Val(i), Val(T7.Text))
 k = k + 1
If Val(u) = Val(T8.Text) Then
 j = k
 'flag = 1
 m = 1
 l = 1
'Else
 'flag = 0
End If
Next
If l = 1 And m = 1 Then
T9.Text = j
Else
MsgBox "Invalid Data", vbInformation
End If
Exit Sub
errhan:
 MsgBox err.Description, vbInformation
End Sub

Private Sub Command7_Click()
T10.Text = ""
T11.Text = ""
T12.Text = ""
End Sub

Private Sub Command8_Click()
On Error GoTo errhan:
If Val(T10.Text) > 170 Then
MsgBox "Invalid Data", vbInformation
Else
k = 0
For i = 1 To 169
 u = Combination(Val(T10.Text), Val(i))
 k = k + 1
If Val(u) = Val(T11.Text) Then
 j = k
 flag = 1
 n = 1
 m = 1
Else
 flag = 0
End If
Next i
If n = 1 And m = 1 Then
T12.Text = j
Else
MsgBox "Invalid Data", vbInformation
Exit Sub
End If
End If
Exit Sub
errhan:
 MsgBox err.Description, vbInformation
End Sub

Private Sub Form_Load()
Me.WindowState = vbMaximized
End Sub
Private Sub Command15_Click()
On errr GoTo errhan:
n = Val(Text1.Text)
r = Val(Text2.Text)
If n > 170 Then
     MsgBox ("Maksimum acceptable value is 170 !" + Chr$(13) + Chr$(13) + "[ Overflow Problem ]"), 48, " ! ERROR !"
   Text1.SetFocus
Else
   u = Permutation(Val(Text1.Text), Val(Text2.Text))
    Text3.Text = u
End If
Exit Sub
errhan:
 MsgBox err.Description, vbInformation

End Sub
Private Function Permutation(n As Integer, r As Integer) As Double
On Error GoTo errhan:
If n < 1 Or r < 1 Then
   Permutation = 0
   Rem invalid input values
Else
   If r > n Then
      Permutation = 0
   Else
      u = 1
      For t = 1 To n
          u = u * t
      Next t
      Rem n! is calculated as above
      v = 1
      If n > r Then
         For t = 1 To n - r
             v = v * t
         Next t
         Rem (n-r)! is calculated as above
         Permutation = u / v
         Rem Permutation = n! / (n-r)!
      Else
         Permutation = u
      End If
   End If
End If
Exit Function
errhan:
 MsgBox err.Description, vbInformation
End Function
Private Sub Command18_Click()
On Error GoTo errhan:
n = Val(Text6.Text)
r = Val(Text5.Text)
If n > 170 Then
      MsgBox ("Maksimum acceptable value is 170 !" + Chr$(13) + Chr$(13) + "[ Overflow Problem ]"), 48, " ! ERROR !"
   Text1.SetFocus
Else
   u = Combination(Val(Text6.Text), Val(Text5.Text))
      Text4.Text = u
End If
Exit Sub
errhan:
 MsgBox err.Description, vbInformation

End Sub
Private Function Combination(n As Integer, r As Integer) As Double
On Error GoTo errhan:
If n < 1 Or r < 1 Then
   Combination = 0
   Rem invalid input values
Else
   If r > n Then
      Combination = 0
   Else
      If r = n Then
         Combination = 1
      Else
         u = 1
         For t = 1 To n
             u = u * t
         Next t
         Rem n! is calculated as above
         v = 1
         For t = 1 To n - r
             v = v * t
         Next t
         Rem (n-r)! is calculated as above
         W = 1
         For t = 1 To r
             W = W * t
         Next t
         Rem r! is calculated as above
         Combination = u / (v * W)
         Rem Combination = n! / ((n-r)! * r!)
               End If
   End If
End If
Exit Function
errhan:
 MsgBox err.Description, vbInformation

End Function
Private Sub Command16_Click()
Text1.Text = ""
Text2.Text = ""
Text3.Text = ""
End Sub

Private Sub Command17_Click()
Text4.Text = ""
Text5.Text = ""
Text6.Text = ""
End Sub
