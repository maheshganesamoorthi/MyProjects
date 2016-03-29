VERSION 5.00
Object = "{3B7C8863-D78F-101B-B9B5-04021C009402}#1.2#0"; "RICHTX32.OCX"
Begin VB.Form Solveeqn 
   BackColor       =   &H00C0FFFF&
   Caption         =   "Solve Quadratic Equation"
   ClientHeight    =   9015
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   10200
   Icon            =   "Solveeqn.frx":0000
   LinkTopic       =   "Form1"
   ScaleHeight     =   9015
   ScaleWidth      =   10200
   StartUpPosition =   3  'Windows Default
   Begin VB.Frame Frame3 
      BackColor       =   &H00C0FFFF&
      Caption         =   "Example :"
      ForeColor       =   &H000000FF&
      Height          =   7815
      Left            =   7440
      TabIndex        =   16
      Top             =   2760
      Width           =   7695
      Begin VB.Image Image7 
         Height          =   3210
         Left            =   240
         Picture         =   "Solveeqn.frx":038A
         Top             =   2640
         Width           =   6675
      End
      Begin VB.Image Image6 
         Height          =   1410
         Left            =   240
         Picture         =   "Solveeqn.frx":4609C
         Top             =   840
         Width           =   7305
      End
      Begin VB.Image Image5 
         Height          =   5925
         Left            =   240
         Picture         =   "Solveeqn.frx":67A6E
         Top             =   720
         Width           =   7320
      End
   End
   Begin VB.Frame Frame2 
      BackColor       =   &H00C0FFFF&
      Caption         =   "Enter the values :"
      ForeColor       =   &H000000FF&
      Height          =   6375
      Left            =   240
      TabIndex        =   3
      Top             =   4200
      Width           =   7095
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
         Left            =   3720
         TabIndex        =   15
         Top             =   5640
         Width           =   1935
      End
      Begin VB.TextBox bte 
         Height          =   615
         Left            =   3960
         TabIndex        =   8
         Top             =   1080
         Width           =   2775
      End
      Begin VB.TextBox cte 
         Height          =   615
         Left            =   3960
         TabIndex        =   7
         Top             =   1800
         Width           =   2775
      End
      Begin VB.TextBox dte 
         Height          =   615
         Left            =   3960
         TabIndex        =   6
         Top             =   2520
         Width           =   2775
      End
      Begin VB.TextBox ete 
         Height          =   615
         Left            =   3960
         TabIndex        =   5
         Top             =   3240
         Width           =   2775
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
         Left            =   1560
         TabIndex        =   4
         Top             =   5640
         Width           =   1935
      End
      Begin RichTextLib.RichTextBox soltext 
         Height          =   735
         Left            =   360
         TabIndex        =   13
         TabStop         =   0   'False
         Top             =   4680
         Width           =   6375
         _ExtentX        =   11245
         _ExtentY        =   1296
         _Version        =   393217
         ScrollBars      =   1
         Appearance      =   0
         TextRTF         =   $"Solveeqn.frx":F4D98
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Arial"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
      End
      Begin VB.Image Image4 
         Height          =   420
         Left            =   960
         Picture         =   "Solveeqn.frx":F4E11
         Top             =   360
         Width           =   4440
      End
      Begin VB.Image Image3 
         Height          =   420
         Left            =   960
         Picture         =   "Solveeqn.frx":FAF73
         Top             =   480
         Width           =   3225
      End
      Begin VB.Label Label1 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Solution of Given Equation is:"
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
         TabIndex        =   14
         Top             =   4080
         Width           =   3375
      End
      Begin VB.Label La2 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Enter the coefficient of x^3 :"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   615
         Left            =   240
         TabIndex        =   12
         Top             =   1080
         Width           =   3495
      End
      Begin VB.Label La3 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Enter the coefficient of x^2 :"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   615
         Left            =   240
         TabIndex        =   11
         Top             =   1800
         Width           =   3495
      End
      Begin VB.Label La4 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Enter the coefficient of x :"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   615
         Left            =   240
         TabIndex        =   10
         Top             =   2520
         Width           =   3615
      End
      Begin VB.Label La5 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Enter the constant term:"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   615
         Left            =   240
         TabIndex        =   9
         Top             =   3240
         Width           =   3615
      End
   End
   Begin VB.Frame Frame1 
      BackColor       =   &H00C0FFFF&
      Caption         =   "Enter the order of equation :"
      ForeColor       =   &H000000FF&
      Height          =   1335
      Left            =   240
      TabIndex        =   0
      Top             =   2760
      Width           =   7095
      Begin VB.OptionButton Option1 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Second order equation"
         Height          =   375
         Left            =   360
         TabIndex        =   2
         Top             =   240
         Width           =   3015
      End
      Begin VB.OptionButton Option2 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Third order euation"
         Height          =   375
         Left            =   360
         TabIndex        =   1
         Top             =   840
         Value           =   -1  'True
         Width           =   3135
      End
   End
   Begin VB.Image Image2 
      Height          =   780
      Left            =   6000
      Picture         =   "Solveeqn.frx":FF695
      Top             =   1800
      Width           =   4080
   End
   Begin VB.Image Image1 
      Height          =   1710
      Left            =   0
      Picture         =   "Solveeqn.frx":1070DB
      Stretch         =   -1  'True
      Top             =   0
      Width           =   15360
   End
End
Attribute VB_Name = "Solveeqn"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim x1 As Double
Dim x2 As Double

Private Sub Command1_Click()
On Error GoTo errhan:
If Option1.value = True Then
'a = InputBox(" Enter the coefficient of x^2:a")

'b = InputBox("Enter the coefficient of x:b")
'c = InputBox("Enter the contant of the equation:c")
bte.Visible = False
cte.Visible = True
dte.Visible = True
ete.Visible = True
La2.Visible = False
La3.Visible = True
La4.Visible = True
La5.Visible = True

A = Val(cte.Text)
B = Val(dte.Text)
C = Val(ete.Text)
If A = "" And B = "" And C = "" Then
MsgBox "Invalid input"
Else
D = ((B * B) - (4 * A * C))
e = 2 * A

If Val(D) < 0 Then
MsgBox "the equation has no real or equal roots"
End If

If Val(D) >= 0 Then
F = Val(D ^ 0.5)
x1 = (-B + F) / e
x2 = (-B - F) / e
soltext.Text = " the roots of the equation are:" & Str(x1) & "," & Str(x2)
End If
End If
ElseIf Option2.value = True Then
'T1 = InputBox(" Enter the coefficient of x^3:t1")
'T2 = InputBox("Enter the coefficient of x^2:t1")
'T3 = InputBox("Enter the coefficient of x:t3")
'T4 = InputBox("Enter the contant of the equation:t4")
bte.Visible = True
cte.Visible = True
dte.Visible = True
ete.Visible = True
La2.Visible = True
La3.Visible = True
La4.Visible = True
La5.Visible = True

T1 = Val(bte.Text)
T2 = Val(cte.Text)
T3 = Val(dte.Text)
T4 = Val(ete.Text)
If T1 = "" And T2 = "" And T3 = "" And T4 = "" Then
MsgBox "Invalid input"
Else
For i = -100 To 500
A = T1 * i
B = T2 + A
C = T3 + (B * i)
D = T4 + (C * i)

If D = 0 Then
ans1 = i
End If
Next i

For j = -100 To ans1
A = T1 * j
B = T2 + A
C = T3 + (B * j)
D = T4 + (C * j)
Next j

e = T1
H = ((B * B) - (4 * e * C))
k = 2 * e

If Val(H) < 0 Then
soltext.Text = "The roots are :" & "    " & Str(ans1) & "  " & "," & "  " & Str(e) & "x^2" & "+" & Str(B) & "x" & "+" & Str(C)
ElseIf Val(H) >= 0 Then
l = Val(H ^ 0.5)
x1 = (-B + l) / k
x2 = (-B - l) / k
soltext.Text = " The roots of the equation are:" & "   " & Str(ans1) & "  " & "," & "  " & Str(x1) & "  " & "," & "  " & Str(x2)
End If
End If
End If
Exit Sub
errhan:
 MsgBox err.Description, vbInformation
End Sub

Private Sub Command2_Click()
bte.Text = ""
cte.Text = ""
dte.Text = ""
ete.Text = ""
soltext.Text = ""
End Sub

Private Sub Form_Load()
Me.WindowState = vbMaximized
Image3.Visible = False
Image4.Visible = True
Image7.Visible = False
Image6.Visible = False
Image5.Visible = True
End Sub


Private Sub Option1_Click()
Image7.Visible = True
Image6.Visible = True
Image5.Visible = False
Image3.Visible = True
Image4.Visible = False
bte.Visible = False
cte.Visible = True
dte.Visible = True
ete.Visible = True
La2.Visible = False
La3.Visible = True
La4.Visible = True
La5.Visible = True
End Sub

Private Sub Option2_Click()
Image7.Visible = False
Image6.Visible = False
Image5.Visible = True
Image3.Visible = False
Image4.Visible = True
bte.Visible = True
cte.Visible = True
dte.Visible = True
ete.Visible = True
La2.Visible = True
La3.Visible = True
La4.Visible = True
La5.Visible = True

T1 = Val(bte.Text)
T2 = Val(cte.Text)
T3 = Val(dte.Text)
T4 = Val(ete.Text)
End Sub
