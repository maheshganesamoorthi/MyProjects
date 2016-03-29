VERSION 5.00
Object = "{3B7C8863-D78F-101B-B9B5-04021C009402}#1.2#0"; "RichTx32.ocx"
Begin VB.Form Root 
   BackColor       =   &H00C0FFFF&
   Caption         =   "Find Root"
   ClientHeight    =   8955
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   6735
   Icon            =   "Root.frx":0000
   LinkTopic       =   "Form1"
   ScaleHeight     =   8955
   ScaleWidth      =   6735
   StartUpPosition =   3  'Windows Default
   Begin VB.Frame Frame3 
      BackColor       =   &H00C0FFFF&
      Caption         =   "Example :"
      ForeColor       =   &H000000FF&
      Height          =   8055
      Left            =   7200
      TabIndex        =   19
      Top             =   2520
      Width           =   7935
      Begin VB.Image Image5 
         Height          =   5295
         Left            =   120
         Picture         =   "Root.frx":038A
         Top             =   480
         Width           =   7710
      End
   End
   Begin VB.Frame Frame2 
      BackColor       =   &H00C0FFFF&
      Caption         =   "Select the order of Equation :"
      ForeColor       =   &H000000FF&
      Height          =   1455
      Left            =   120
      TabIndex        =   12
      Top             =   2520
      Width           =   6975
      Begin VB.OptionButton Option1 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Fouth Order Equation"
         Height          =   495
         Left            =   360
         TabIndex        =   14
         Top             =   360
         Value           =   -1  'True
         Width           =   1935
      End
      Begin VB.OptionButton Option3 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Second Order Equation"
         Height          =   495
         Left            =   360
         TabIndex        =   13
         Top             =   840
         Width           =   2055
      End
   End
   Begin VB.Frame Frame1 
      BackColor       =   &H00C0FFFF&
      Caption         =   "Enter the values :"
      ForeColor       =   &H000000FF&
      Height          =   6615
      Left            =   120
      TabIndex        =   1
      Top             =   3960
      Width           =   6975
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
         Height          =   495
         Left            =   1680
         TabIndex        =   17
         Top             =   5880
         Width           =   1575
      End
      Begin VB.CommandButton Command3 
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
         Left            =   3360
         TabIndex        =   16
         Top             =   5880
         Width           =   1575
      End
      Begin VB.TextBox a 
         Height          =   615
         Left            =   3960
         TabIndex        =   6
         Top             =   960
         Width           =   2775
      End
      Begin VB.TextBox b 
         Height          =   615
         Left            =   3960
         TabIndex        =   5
         Top             =   1680
         Width           =   2775
      End
      Begin VB.TextBox c 
         Height          =   615
         Left            =   3960
         TabIndex        =   4
         Top             =   2400
         Width           =   2775
      End
      Begin VB.TextBox d 
         Height          =   615
         Left            =   3960
         TabIndex        =   3
         Top             =   3120
         Width           =   2775
      End
      Begin VB.TextBox e 
         Height          =   615
         Left            =   3960
         TabIndex        =   2
         Top             =   3840
         Width           =   2775
      End
      Begin RichTextLib.RichTextBox x1 
         Height          =   735
         Left            =   360
         TabIndex        =   15
         TabStop         =   0   'False
         Top             =   5040
         Width           =   6375
         _ExtentX        =   11245
         _ExtentY        =   1296
         _Version        =   393217
         ScrollBars      =   1
         Appearance      =   0
         TextRTF         =   $"Root.frx":854D4
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
      End
      Begin VB.Image Image3 
         Height          =   420
         Left            =   600
         Picture         =   "Root.frx":85558
         Top             =   360
         Width           =   3225
      End
      Begin VB.Image Image4 
         Height          =   450
         Left            =   600
         Picture         =   "Root.frx":89C7A
         Top             =   360
         Width           =   5700
      End
      Begin VB.Label Label1 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Squre Root GivenEquation is:"
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
         TabIndex        =   18
         Top             =   4680
         Width           =   3375
      End
      Begin VB.Label La1 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Enter the coefficient of x^4 :"
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
         Top             =   960
         Width           =   3495
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
         TabIndex        =   10
         Top             =   1680
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
         TabIndex        =   9
         Top             =   2400
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
         TabIndex        =   8
         Top             =   3120
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
         TabIndex        =   7
         Top             =   3840
         Width           =   3615
      End
   End
   Begin VB.CommandButton Command5 
      Caption         =   "Back To Main   <---------------"
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
      Left            =   120
      TabIndex        =   0
      Top             =   11040
      Width           =   1575
   End
   Begin VB.Image Image2 
      Height          =   630
      Left            =   6360
      Picture         =   "Root.frx":92254
      Top             =   1800
      Width           =   4335
   End
   Begin VB.Image Image1 
      Height          =   1710
      Left            =   0
      Picture         =   "Root.frx":9B0FE
      Stretch         =   -1  'True
      Top             =   0
      Width           =   15360
   End
End
Attribute VB_Name = "Root"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private Sub Command1_Click()
On Error GoTo errhan:
If Option1.value = True Then
If A.Text = "" Or B.Text = "" Or C.Text = "" Or D.Text = "" Or e.Text = "" Then
MsgBox "Enter the Text", vbInformation, "Enter value"
Else
If A < 0 Then
MsgBox "NOT SQUARE  ROOT FOR GIVEN EQUATION", vbInformation
ElseIf A > 0 Then
r1 = Sqr(A)
l1 = r1 * 2
r2 = B / l1
F = B - (l1 * r2)
G = C - (r2 * r2)
L2 = r1 * 2
L3 = r2 * 2
r3 = G / L2
a1 = G - (L2 * r3)
a2 = D - (L3 * r3)
a3 = e - (r3 * r3)
End If

If a1 = a2 = a3 = 0 Then
flag = 0
Else
flag = 1
End If


If flag = 0 Then
 If r2 < 0 And r3 < 0 Then
x1.Text = Val(r1) & " " & "x^2" & " " & Val(r2) & " " & "x" & " " & Val(r3)
 ElseIf r2 > 0 And r3 < 0 Then
x1.Text = Val(r1) & " " & "x^2  +" & Val(r2) & " " & "x" & " " & Val(r3)
 ElseIf r2 < 0 And r3 > 0 Then
 x1.Text = Val(r1) & " " & "x^2 " & " " & Val(r2) & " " & "x  +" & Val(r3)
 ElseIf r2 > 0 And r3 > 0 Then
  x1.Text = Val(r1) & " " & "x^2 +" & Val(r2) & " " & "x +" & Val(r3)
     End If
  ElseIf flag = 1 Then
   MsgBox "NOT SQUARE  ROOT FOR GIVEN EQUATION", vbInformation
End If
End If
ElseIf Option3.value = True Then
If C.Text = "" Or D.Text = "" Or e.Text = "" Then
MsgBox "Enter the Text", vbOKOnly, "Enter value"
Else
 r1 = Sqr(Val(C.Text))
 l1 = r1 * 2
 r2 = Val(D.Text) / l1
 F = Val(D.Text) - (r2 * l1)
 G = Val(e.Text) - (r2 * r2)
 If F = 0 And G = 0 Then
  flag = 1
 Else
 flag = 0
 End If
 
 If flag = 1 Then
  If r2 < 0 Then
   x1.Text = Val(r1) + "x" + " " + Val(r2)
  ElseIf r2 > 0 Then
   x1.Text = Val(r1) & "x" & "+" & Val(r2)
  End If
 End If
If flag = 0 Then
r1 = Val(D.Text) * Val(D.Text)
r2 = 4 * Val(C.Text) * Val(e.Text)
r3 = r1 - r2
r4 = 2 * Val(C.Text)
r5 = -1 * Val(D.Text)
If r3 >= 0 Then
 MsgBox "NOT SQUARE  ROOT FOR GIVEN EQUATION", vbInformation
End If
If r3 < 0 Then
  r3 = r3 * -1
  r6 = Sqr(r3)
 r7 = (r5) / r4
 r8 = (r6) / r4
 x1.Text = "x = " & r7 & "+" & r8 & "i" & vbNewLine & "x = " & r7 & "-" & r8 & "i"
 End If
End If
End If
End If
Exit Sub
errhan:
 MsgBox err.Description, vbInformation
End Sub



Private Sub Command3_Click()
A = "": B = "": C = "": D = "": e = "": x1 = ""
End Sub



Private Sub Form_Load()
Me.WindowState = vbMaximized
Image3.Visible = False
Image4.Visible = True
End Sub

Private Sub A_Validate(Cancel As Boolean)
If IsNumeric(A.Text) = False And A.Text <> "" Then
 If (A.Text <> "-") Then
  i = MsgBox(A.Text & " " & "is not a numeric value.Enter only numeric values", vbInformation)
  A.Text = ""
  A.SetFocus
 End If
End If
End Sub
Private Sub B_Validate(Cancel As Boolean)
If IsNumeric(B.Text) = False And B.Text <> "" Then
 If (B.Text <> "-") Then
  i = MsgBox(B.Text & " " & "is not a numeric value.Enter only numeric values", vbInformation)
  B.Text = ""
  B.SetFocus
 End If
End If
End Sub
Private Sub C_Validate(Cancel As Boolean)
If IsNumeric(C.Text) = False And C.Text <> "" Then
 If (C.Text <> "-") Then
  i = MsgBox(C.Text & " " & "is not a numeric value.Enter only numeric values", vbInformation)
  C.Text = ""
  C.SetFocus
 End If
End If
End Sub
Private Sub D_Validate(Cancel As Boolean)
If IsNumeric(D.Text) = False And D.Text <> "" Then
 If (D.Text <> "-") Then
  i = MsgBox(D.Text & " " & "is not a numeric value.Enter only numeric values", vbInformation)
  D.Text = ""
  D.SetFocus
 End If
End If
End Sub
Private Sub E_Validate(Cancel As Boolean)
If IsNumeric(e.Text) = False And e.Text <> "" Then
 If (e.Text <> "-") Then
  i = MsgBox(e.Text & " " & "is not a numeric value.Enter only numeric values", vbInformation)
  e.Text = ""
  e.SetFocus
 End If
End If
End Sub


Private Sub Option1_Click()
Image4.Visible = True
Image3.Visible = False
La1.Visible = True
La2.Visible = True
La3.Visible = True
La4.Visible = True
La5.Visible = True
A.Visible = True
B.Visible = True
C.Visible = True
D.Visible = True
e.Visible = True
End Sub

Private Sub Option3_Click()
Image4.Visible = False
Image3.Visible = True
 La1.Visible = False
 La2.Visible = False
 A.Visible = False
 B.Visible = False
End Sub
