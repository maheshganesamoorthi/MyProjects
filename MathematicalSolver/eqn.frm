VERSION 5.00
Begin VB.Form eqn 
   BackColor       =   &H00C0FFFF&
   Caption         =   "Solve euation"
   ClientHeight    =   9630
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   13950
   Icon            =   "eqn.frx":0000
   LinkTopic       =   "Form1"
   ScaleHeight     =   9630
   ScaleWidth      =   13950
   StartUpPosition =   3  'Windows Default
   Begin VB.Frame Frame4 
      BackColor       =   &H00C0FFFF&
      Caption         =   "Example :"
      ForeColor       =   &H000000FF&
      Height          =   8535
      Left            =   6360
      TabIndex        =   35
      Top             =   2160
      Width           =   8535
      Begin VB.Image Image3 
         Height          =   8160
         Left            =   840
         Picture         =   "eqn.frx":038A
         Top             =   240
         Width           =   5640
      End
   End
   Begin VB.Frame Frame3 
      BackColor       =   &H00C0FFFF&
      Caption         =   "Solution :"
      ForeColor       =   &H000000FF&
      Height          =   3015
      Left            =   360
      TabIndex        =   25
      Top             =   7560
      Width           =   5775
      Begin VB.TextBox T13 
         Height          =   615
         Left            =   1560
         TabIndex        =   31
         TabStop         =   0   'False
         Top             =   480
         Width           =   1695
      End
      Begin VB.TextBox T14 
         Height          =   615
         Left            =   1560
         TabIndex        =   30
         TabStop         =   0   'False
         Top             =   1200
         Width           =   1695
      End
      Begin VB.TextBox T15 
         Height          =   615
         Left            =   1560
         TabIndex        =   29
         TabStop         =   0   'False
         Top             =   1920
         Width           =   1695
      End
      Begin VB.Label Label7 
         BackColor       =   &H00C0FFFF&
         Caption         =   "                                              X="
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   735
         Left            =   480
         TabIndex        =   34
         Top             =   360
         Width           =   975
      End
      Begin VB.Label Label8 
         BackColor       =   &H00C0FFFF&
         Caption         =   "                             Y="
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
         Left            =   480
         TabIndex        =   33
         Top             =   1320
         Width           =   975
      End
      Begin VB.Label L12 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Z="
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
         Left            =   1200
         TabIndex        =   32
         Top             =   2040
         Width           =   255
      End
   End
   Begin VB.Frame Frame2 
      BackColor       =   &H00C0FFFF&
      Caption         =   "Select number of unknowns :"
      ForeColor       =   &H000000FF&
      Height          =   1575
      Left            =   360
      TabIndex        =   22
      Top             =   2160
      Width           =   5775
      Begin VB.OptionButton Option1 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Two Unknown Equation"
         Height          =   375
         Left            =   960
         TabIndex        =   24
         TabStop         =   0   'False
         Top             =   360
         Width           =   2775
      End
      Begin VB.OptionButton Option2 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Three Unknown Equation"
         Height          =   375
         Left            =   960
         TabIndex        =   23
         TabStop         =   0   'False
         Top             =   1080
         Value           =   -1  'True
         Width           =   3015
      End
   End
   Begin VB.Frame Frame1 
      BackColor       =   &H00C0FFFF&
      Caption         =   "Enter the values :"
      ForeColor       =   &H000000FF&
      Height          =   3615
      Left            =   360
      TabIndex        =   2
      Top             =   3840
      Width           =   5775
      Begin VB.CommandButton solve 
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
         Height          =   495
         Left            =   600
         TabIndex        =   28
         Top             =   2640
         Width           =   1455
      End
      Begin VB.CommandButton clear 
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
         Height          =   495
         Left            =   3720
         TabIndex        =   27
         Top             =   2640
         Width           =   1455
      End
      Begin VB.CommandButton Command1 
         Caption         =   "Default"
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
         Left            =   2160
         TabIndex        =   26
         Top             =   2640
         Width           =   1455
      End
      Begin VB.TextBox T8 
         BackColor       =   &H00FFFFFF&
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   360
         Left            =   3840
         TabIndex        =   14
         Top             =   1200
         Width           =   615
      End
      Begin VB.TextBox T7 
         BackColor       =   &H00FFFFFF&
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   360
         Left            =   3000
         TabIndex        =   13
         Top             =   1200
         Width           =   615
      End
      Begin VB.TextBox T6 
         BackColor       =   &H00FFFFFF&
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   360
         Left            =   2280
         TabIndex        =   12
         Top             =   1200
         Width           =   615
      End
      Begin VB.TextBox T5 
         BackColor       =   &H00FFFFFF&
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   360
         Left            =   1560
         TabIndex        =   11
         Top             =   1200
         Width           =   615
      End
      Begin VB.TextBox T4 
         BackColor       =   &H00FFFFFF&
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   360
         Left            =   3840
         TabIndex        =   10
         Top             =   720
         Width           =   615
      End
      Begin VB.TextBox T3 
         BackColor       =   &H00FFFFFF&
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   360
         Left            =   3000
         TabIndex        =   9
         Top             =   720
         Width           =   615
      End
      Begin VB.TextBox T2 
         BackColor       =   &H00FFFFFF&
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   360
         Left            =   2280
         TabIndex        =   8
         Top             =   720
         Width           =   615
      End
      Begin VB.TextBox T1 
         BackColor       =   &H00FFFFFF&
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   360
         Left            =   1560
         TabIndex        =   7
         Top             =   720
         Width           =   615
      End
      Begin VB.TextBox T9 
         BackColor       =   &H00FFFFFF&
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   360
         Left            =   1560
         TabIndex        =   6
         Top             =   1680
         Width           =   615
      End
      Begin VB.TextBox T10 
         BackColor       =   &H00FFFFFF&
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   360
         Left            =   2280
         TabIndex        =   5
         Top             =   1680
         Width           =   615
      End
      Begin VB.TextBox T11 
         BackColor       =   &H00FFFFFF&
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   360
         Left            =   3000
         TabIndex        =   4
         Top             =   1680
         Width           =   615
      End
      Begin VB.TextBox T12 
         BackColor       =   &H00FFFFFF&
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   360
         Left            =   3840
         TabIndex        =   3
         Top             =   1680
         Width           =   615
      End
      Begin VB.Label Label11 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Eqn3"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   315
         Left            =   840
         TabIndex        =   21
         Top             =   1800
         Width           =   465
      End
      Begin VB.Label Label10 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Eqn2"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   315
         Left            =   840
         TabIndex        =   20
         Top             =   1320
         Width           =   465
      End
      Begin VB.Label Label9 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Eqn1"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   315
         Left            =   840
         TabIndex        =   19
         Top             =   840
         Width           =   465
      End
      Begin VB.Label Label4 
         Alignment       =   2  'Center
         BackColor       =   &H00C0FFFF&
         Caption         =   "="
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   240
         Left            =   3960
         TabIndex        =   18
         Top             =   480
         Width           =   240
      End
      Begin VB.Label Label3 
         Alignment       =   2  'Center
         BackColor       =   &H00C0FFFF&
         Caption         =   "Z"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   240
         Left            =   3210
         TabIndex        =   17
         Top             =   480
         Width           =   240
      End
      Begin VB.Label Label2 
         Alignment       =   2  'Center
         BackColor       =   &H00C0FFFF&
         Caption         =   "Y"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   240
         Left            =   2460
         TabIndex        =   16
         Top             =   480
         Width           =   240
      End
      Begin VB.Label Label1 
         Alignment       =   2  'Center
         BackColor       =   &H00C0FFFF&
         Caption         =   "X"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   240
         Left            =   1635
         TabIndex        =   15
         Top             =   480
         Width           =   240
      End
   End
   Begin VB.Image Image2 
      Height          =   615
      Left            =   5760
      Picture         =   "eqn.frx":960CC
      Top             =   1560
      Width           =   3870
   End
   Begin VB.Image Image1 
      Height          =   1455
      Left            =   0
      Picture         =   "eqn.frx":9DD56
      Stretch         =   -1  'True
      Top             =   0
      Width           =   15360
   End
   Begin VB.Label Label6 
      BackColor       =   &H00C0FFFF&
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   3615
      Left            =   8160
      TabIndex        =   1
      Top             =   5880
      Width           =   5295
   End
   Begin VB.Label Label5 
      BackColor       =   &H00C0FFFF&
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   2775
      Left            =   8160
      TabIndex        =   0
      Top             =   2880
      Width           =   5295
   End
End
Attribute VB_Name = "eqn"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim EQS As String
Dim A As Single, B As Single, C As Single, D As Single, e As Single, F As Single
Dim G As Single, H As Single, i As Single, j As Single, k As Single, l As Single
Dim m As Single, n As Single, o As Single, p As Single, q As Single, r As Single
Dim e1 As Single, e2 As Single, e3 As Single
Dim s As Single, t As Single
Private Sub Clear_Click()
T1 = "": T2 = "": T3 = "": t4 = "": t5 = "": t6 = ""
t7 = "": t8 = "": t9 = "": T10 = "": T11 = "": T12 = "": T13 = "": T14 = "": T15 = ""
End Sub


Private Sub Command1_Click()
If Option2.value = True Then
T1.Visible = True
T2.Visible = True
T3.Visible = True
t5.Visible = True
t6.Visible = True
t7.Visible = True
Label1.Visible = True
Label2.Visible = True
Label3.Visible = True
Label3.Caption = "Z"
Label9.Visible = True
Label10.Visible = True
t4.Visible = True
t9.Visible = True
t8.Visible = True
T10.Visible = True
T11.Visible = True
T13.Visible = True
T14.Visible = True
T15.Visible = True
Label11.Visible = True
T12.Visible = True
L12.Visible = True
L12.Caption = "                  Z="
Label4.Visible = True
Label7.Visible = True
Label8.Visible = True
Label9.Visible = True

T1 = "3"
T2 = "-2"
T3 = "1"
t4 = "0"
t5 = "4"
t6 = "6"
t7 = "-3"
t8 = "13"
t9 = "1"
T10 = "-2"
T11 = "2"
T12 = "-4"
T13 = "1"
T14 = "0.5"
T15 = "-2"
ElseIf Option1.value = True Then
T1.Visible = True
T2.Visible = True
T3.Visible = True
t5.Visible = True
t6.Visible = True
t7.Visible = True
Label1.Visible = True
Label2.Visible = True
Label3.Visible = True
Label3.Caption = "="
Label9.Visible = True
Label10.Visible = True
t4.Visible = False
t9.Visible = False
t8.Visible = False
T10.Visible = False
T11.Visible = False
T12.Visible = False
T15.Visible = False
Label11.Visible = False
Label4.Visible = False
Label7.Visible = True
Label8.Visible = True
L12.Visible = False
T1 = "2"
T2 = "1"
T3 = "5"
t5 = "3"
t6 = "4"
t7 = "10"
T13 = "2"
T14 = "1"
End If
End Sub




Private Sub Form_Load()
Me.WindowState = vbMaximized
'If MsgBox("Do you Start solve three unknowns euation then click Yes" + vbCrLf + "otherwise click No", vbYesNo, "Start") = vbYes Then
'Option2.value = True
'order_Click
'Else
'Option1.value = True
'order_Click
'End If
T1 = "": T2 = "": T3 = "": t4 = "": t5 = "": t6 = ""
t7 = "": t8 = "": t9 = "": T10 = "": T11 = "": T12 = "": T13 = "": T14 = "": T15 = ""

Label5 = "For example, if an equation has three unknown variable , " + vbCrLf + "x - 2y + z = 0" + vbCrLf + "9x - 8y + 3z = 0" + vbCrLf + "2x + 3y + 5z = 36" + vbCrLf + _
"then enter the values in this fashion" + vbCrLf + "1      -2       1       0" + vbCrLf + "9      -8       3       0" + vbCrLf + "2       3       5       36"
Label6 = "For example, if an equation has two unknown variable , " + vbCrLf + "x - 2y  = 0" + vbCrLf + "9x - 8y  = 0" + vbCrLf + _
"then enter the values in this fashion" + vbCrLf + "1      -2        0" + vbCrLf + "9      -8        0"
End Sub







Private Sub Option1_Click()
T1 = "": T2 = "": T3 = "": t4 = "": t5 = "": t6 = ""
t7 = "": t8 = "": t9 = "": T10 = "": T11 = "": T12 = "": T13 = "": T14 = "": T15 = ""
T1.Visible = True
T2.Visible = True
T3.Visible = True
t5.Visible = True
t6.Visible = True
t7.Visible = True
Label1.Visible = True
Label2.Visible = True
Label3.Visible = True
Label3.Caption = "="
Label9.Visible = True
Label10.Visible = True
t4.Visible = False
t9.Visible = False
t8.Visible = False
T10.Visible = False
T11.Visible = False
T12.Visible = False
T15.Visible = False
Label11.Visible = False
Label4.Visible = False
Label7.Visible = True
Label8.Visible = True
L12.Visible = False
End Sub

Private Sub Option2_Click()
T1 = "": T2 = "": T3 = "": t4 = "": t5 = "": t6 = ""
t7 = "": t8 = "": t9 = "": T10 = "": T11 = "": T12 = "": T13 = "": T14 = "": T15 = ""
T1.Visible = True
T2.Visible = True
T3.Visible = True
t5.Visible = True
t6.Visible = True
t7.Visible = True
Label1.Visible = True
Label2.Visible = True
Label3.Visible = True
Label3.Caption = "Z"
Label9.Visible = True
Label10.Visible = True
t4.Visible = True
t9.Visible = True
t8.Visible = True
T10.Visible = True
T11.Visible = True
T13.Visible = True
T14.Visible = True
T15.Visible = True
Label11.Visible = True
T12.Visible = True
L12.Visible = True
L12.Caption = "Z="
Label4.Visible = True
Label7.Visible = True
Label8.Visible = True
Label9.Visible = True
End Sub



Private Sub solve_Click()
On Error GoTo errhan:
If Option1.value = True Then
A = Val(T1)
B = Val(T2)
C = Val(T3)
D = Val(t5)
e = Val(t6)
F = Val(t7)
G = Val(A * e)
H = Val(A * F)
i = Val(D * B)
j = Val(D * C)

i = i / -1
j = j / -1
If Val(i + G) = 0 Then
MsgBox "      No solve exist       ", vbInformation, "Invalid"
Else
k = (j + H) / (i + G)
l = (C - (B * k)) / A
T14 = Val(k)
T13 = Val(l)
End If
ElseIf Option2.value = True Then
A = Val(T1)
B = Val(T2)
C = Val(T3)
D = Val(t4)
e = Val(t5)
F = Val(t6)
G = Val(t7)
H = Val(t8)
i = Val(t9)
j = Val(T10)
k = Val(T11)
l = Val(T12)
m = (e * B) - (A * F)
n = (e * C) - (G * A)
o = (D * e) - (H * A)
p = (A * j) - (i * B)
q = (A * k) - (i * C)
r = (A * l) - (i * D)
If Val((m * q) - (p * n)) = 0 Then
MsgBox "      No solve exist       ", vbInformation, "Invalid"
Else
s = ((m * r) - (p * o)) / ((m * q) - (p * n))
T15 = Val(s)
t = ((q * o) - (r * n)) / ((m * q) - (p * n))
T14 = Val(t)
u = (D - ((B * t) + (C * s))) / A
T13 = Val(u)
End If
End If
Exit Sub
errhan:
 MsgBox err.Description, vbInformation
End Sub

Private Sub T1_Validate(Cancel As Boolean)
If IsNumeric(T1.Text) = False And T1.Text <> "" Then
 If (T1.Text <> "-") Then
  i = MsgBox(T1.Text & " " & "is not a numeric value.Enter only numeric values", vbInformation)
  T1.Text = ""
  T1.SetFocus
 End If
End If
End Sub
Private Sub T2_Validate(Cancel As Boolean)
If IsNumeric(T2.Text) = False And T2.Text <> "" Then
 If (T2.Text <> "-") Then
  i = MsgBox(T2.Text & " " & "is not a numeric value.Enter only numeric values", vbInformation)
  T2.Text = ""
  T2.SetFocus
 End If
End If
End Sub



Private Sub T3_Validate(Cancel As Boolean)
If IsNumeric(T3.Text) = False And T3.Text <> "" Then
 If (T3.Text <> "-") Then
  i = MsgBox(T3.Text & " " & "is not a numeric value.Enter only numeric values", vbInformation)
  T3.Text = ""
  T3.SetFocus
 End If
End If
End Sub


Private Sub T4_Validate(Cancel As Boolean)
If IsNumeric(t4.Text) = False And t4.Text <> "" Then
 If (t4.Text <> "-") Then
  i = MsgBox(t4.Text & " " & "is not a numeric value.Enter only numeric values", vbInformation)
  t4.Text = ""
  t4.SetFocus
 End If
End If
End Sub
Private Sub T5_Validate(Cancel As Boolean)
If IsNumeric(t5.Text) = False And t5.Text <> "" Then
 If (t5.Text <> "-") Then
  i = MsgBox(t5.Text & " " & "is not a numeric value.Enter only numeric values", vbInformation)
  t5.Text = ""
  t5.SetFocus
 End If
End If
End Sub
Private Sub T6_Validate(Cancel As Boolean)
If IsNumeric(t6.Text) = False And t6.Text <> "" Then
 If (t6.Text <> "-") Then
  i = MsgBox(t6.Text & " " & "is not a numeric value.Enter only numeric values", vbInformation)
  t6.Text = ""
  t6.SetFocus
 End If
End If
End Sub



Private Sub T7_Validate(Cancel As Boolean)
If IsNumeric(t7.Text) = False And t7.Text <> "" Then
 If (t7.Text <> "-") Then
  i = MsgBox(t7.Text & " " & "is not a numeric value.Enter only numeric values", vbInformation)
  t7.Text = ""
  t7.SetFocus
 End If
End If
End Sub


Private Sub T8_Validate(Cancel As Boolean)
If IsNumeric(t8.Text) = False And t8.Text <> "" Then
 If (t8.Text <> "-") Then
  i = MsgBox(t8.Text & " " & "is not a numeric value.Enter only numeric values", vbInformation)
  t8.Text = ""
  t8.SetFocus
 End If
End If
End Sub
Private Sub T9_Validate(Cancel As Boolean)
If IsNumeric(t9.Text) = False And t9.Text <> "" Then
 If (t9.Text <> "-") Then
  i = MsgBox(t9.Text & " " & "is not a numeric value.Enter only numeric values", vbInformation)
  t9.Text = ""
  t9.SetFocus
 End If
End If
End Sub
Private Sub T10_Validate(Cancel As Boolean)
If IsNumeric(T10.Text) = False And T10.Text <> "" Then
 If (T10.Text <> "-") Then
  i = MsgBox(T10.Text & " " & "is not a numeric value.Enter only numeric values", vbInformation)
  T10.Text = ""
  T10.SetFocus
 End If
End If
End Sub



Private Sub T11_Validate(Cancel As Boolean)
If IsNumeric(T11.Text) = False And T11.Text <> "" Then
 If (T11.Text <> "-") Then
  i = MsgBox(T11.Text & " " & "is not a numeric value.Enter only numeric values", vbInformation)
  T11.Text = ""
  T11.SetFocus
 End If
End If
End Sub


Private Sub T12_Validate(Cancel As Boolean)
If IsNumeric(T12.Text) = False And T12.Text <> "" Then
 If (T12.Text <> "-") Then
  i = MsgBox(T12.Text & " " & "is not a numeric value.Enter only numeric values", vbInformation)
  T12.Text = ""
  T12.SetFocus
 End If
End If
End Sub

