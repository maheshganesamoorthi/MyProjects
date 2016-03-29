VERSION 5.00
Object = "{3B7C8863-D78F-101B-B9B5-04021C009402}#1.2#0"; "RichTx32.ocx"
Begin VB.Form polyexpan 
   BackColor       =   &H00C0FFFF&
   Caption         =   "Polynomial Expansion"
   ClientHeight    =   9030
   ClientLeft      =   60
   ClientTop       =   420
   ClientWidth     =   10320
   LinkTopic       =   "Form1"
   ScaleHeight     =   9030
   ScaleWidth      =   10320
   StartUpPosition =   3  'Windows Default
   Begin VB.Frame Frame2 
      BackColor       =   &H00C0FFFF&
      Caption         =   "Example :"
      ForeColor       =   &H000000FF&
      Height          =   8055
      Left            =   8040
      TabIndex        =   3
      Top             =   2520
      Width           =   7215
   End
   Begin VB.Frame Frame1 
      BackColor       =   &H00C0FFFF&
      Caption         =   "Calculation :"
      ForeColor       =   &H000000FF&
      Height          =   8055
      Left            =   120
      TabIndex        =   0
      Top             =   2520
      Width           =   7815
      Begin VB.CommandButton Command2 
         Caption         =   "Clear"
         Height          =   375
         Left            =   3840
         TabIndex        =   5
         Top             =   2040
         Width           =   1575
      End
      Begin VB.CommandButton Command1 
         Caption         =   "Solve"
         Height          =   375
         Left            =   2040
         TabIndex        =   4
         Top             =   2040
         Width           =   1575
      End
      Begin RichTextLib.RichTextBox rt 
         Height          =   5175
         Left            =   240
         TabIndex        =   2
         Top             =   2640
         Width           =   7335
         _ExtentX        =   12938
         _ExtentY        =   9128
         _Version        =   393217
         Enabled         =   -1  'True
         ScrollBars      =   2
         DisableNoScroll =   -1  'True
         TextRTF         =   $"polyexpan.frx":0000
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
      Begin VB.TextBox txt 
         Height          =   495
         Left            =   2640
         TabIndex        =   1
         Top             =   1320
         Width           =   3255
      End
      Begin VB.Image Image1 
         Height          =   1485
         Left            =   120
         Picture         =   "polyexpan.frx":0084
         Top             =   480
         Width           =   4530
      End
   End
   Begin VB.Image Image3 
      Height          =   690
      Left            =   6000
      Picture         =   "polyexpan.frx":15FEA
      Top             =   1680
      Width           =   5250
   End
   Begin VB.Image Image2 
      Height          =   1710
      Left            =   0
      Picture         =   "polyexpan.frx":21D34
      Stretch         =   -1  'True
      Top             =   0
      Width           =   15360
   End
End
Attribute VB_Name = "polyexpan"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
On Error GoTo errhan:
rt.Text = ""
If Val(txt.Text) > 150 Or Val(txt.Text) < 0 Or txt.Text = "" Then
  MsgBox "The Range between 0 to 150", vbInformation
Else
 W = Val(txt.Text)
For i = 0 To Val(txt.Text)
   u = Combination(Val(txt.Text), Val(i))
   If i = 0 Then
   te = rt.Text
   rt.Text = ""
   rt.Text = te & "Coef. of term : " & i + 1 & "  - " & "   " & "   " & "( a^" & W & "  " & "," & "  " & "b^" & i & " )  =" & "  " & 1 & vbNewLine & vbNewLine
   W = W - 1
   Else
   te = rt.Text
   rt.Text = ""
   rt.Text = te & "Coef. of term : " & i + 1 & "  - " & "   " & "   " & "( a^" & W & "  " & "," & "  " & "b^" & i & " )  =" & "  " & u & vbNewLine & vbNewLine
   W = W - 1
   End If
Next i
End If
Exit Sub
errhan:
  MsgBox err.Description, vbInformation
End Sub

Private Sub Command2_Click()
txt.Text = ""
rt.Text = ""
End Sub

Private Sub Form_Load()
Me.WindowState = vbMaximized
End Sub
Private Function Combination(n As Integer, r As Integer) As Double
Rem Combinator Version 1.1 by Erdogan Tan (24/7/2001)
Rem ***
Rem Calculates and returns all of possible combinations
Rem with r different elements of total n elements...
Rem ***
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
End Function

