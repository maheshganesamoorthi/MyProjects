VERSION 5.00
Object = "{3B7C8863-D78F-101B-B9B5-04021C009402}#1.2#0"; "RichTx32.ocx"
Begin VB.Form polyformation 
   BackColor       =   &H00C0FFFF&
   Caption         =   "Polynomial Formation "
   ClientHeight    =   9765
   ClientLeft      =   60
   ClientTop       =   420
   ClientWidth     =   14070
   Icon            =   "polyformation.frx":0000
   LinkTopic       =   "Form1"
   ScaleHeight     =   9765
   ScaleWidth      =   14070
   StartUpPosition =   3  'Windows Default
   Begin VB.Frame Frame2 
      BackColor       =   &H00C0FFFF&
      Caption         =   "Example :"
      ForeColor       =   &H000000FF&
      Height          =   7695
      Left            =   7800
      TabIndex        =   16
      Top             =   3000
      Width           =   7455
      Begin VB.Image Image3 
         Height          =   6375
         Left            =   120
         Picture         =   "polyformation.frx":076A
         Top             =   480
         Width           =   7305
      End
   End
   Begin VB.Frame Frame1 
      BackColor       =   &H00C0FFFF&
      Caption         =   "Calculation :"
      ForeColor       =   &H000000FF&
      Height          =   7695
      Left            =   120
      TabIndex        =   0
      Top             =   3000
      Width           =   7575
      Begin VB.ComboBox Combo1 
         Height          =   315
         Left            =   3720
         TabIndex        =   15
         Text            =   "3"
         Top             =   600
         Width           =   2535
      End
      Begin RichTextLib.RichTextBox rtbox 
         Height          =   2055
         Left            =   360
         TabIndex        =   12
         Top             =   5160
         Width           =   6855
         _ExtentX        =   12091
         _ExtentY        =   3625
         _Version        =   393217
         Enabled         =   -1  'True
         ScrollBars      =   1
         DisableNoScroll =   -1  'True
         TextRTF         =   $"polyformation.frx":98624
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
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
         TabIndex        =   11
         Top             =   3000
         Width           =   1815
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
         Left            =   4920
         TabIndex        =   10
         Top             =   2400
         Width           =   1815
      End
      Begin VB.TextBox T4 
         Height          =   375
         Left            =   1200
         TabIndex        =   9
         Top             =   3720
         Width           =   2775
      End
      Begin VB.TextBox T3 
         Height          =   375
         Left            =   1200
         TabIndex        =   8
         Top             =   3120
         Width           =   2775
      End
      Begin VB.TextBox T2 
         Height          =   375
         Left            =   1200
         TabIndex        =   7
         Top             =   2520
         Width           =   2775
      End
      Begin VB.TextBox T1 
         Height          =   375
         Left            =   1200
         TabIndex        =   6
         Top             =   1920
         Width           =   2775
      End
      Begin VB.Label Label7 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Enter the number of  ' X ' value :"
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
         Left            =   240
         TabIndex        =   14
         Top             =   600
         Width           =   3255
      End
      Begin VB.Label Label6 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Polynomial Equation is :"
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
         Left            =   240
         TabIndex        =   13
         Top             =   4560
         Width           =   3255
      End
      Begin VB.Label Label5 
         BackColor       =   &H00C0FFFF&
         Caption         =   "X ="
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   600
         TabIndex        =   5
         Top             =   3840
         Width           =   495
      End
      Begin VB.Label Label4 
         BackColor       =   &H00C0FFFF&
         Caption         =   "X ="
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   600
         TabIndex        =   4
         Top             =   3240
         Width           =   375
      End
      Begin VB.Label Label3 
         BackColor       =   &H00C0FFFF&
         Caption         =   "X ="
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   600
         TabIndex        =   3
         Top             =   2640
         Width           =   495
      End
      Begin VB.Label Label2 
         BackColor       =   &H00C0FFFF&
         Caption         =   "X ="
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   600
         TabIndex        =   2
         Top             =   2040
         Width           =   615
      End
      Begin VB.Label Label1 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Enter the values :"
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
         Left            =   240
         TabIndex        =   1
         Top             =   1440
         Width           =   2775
      End
   End
   Begin VB.Image Image2 
      Height          =   1230
      Left            =   7440
      Picture         =   "polyformation.frx":986A8
      Top             =   1560
      Width           =   2370
   End
   Begin VB.Image Image1 
      Height          =   1710
      Left            =   -120
      Picture         =   "polyformation.frx":A1F62
      Stretch         =   -1  'True
      Top             =   0
      Width           =   15465
   End
End
Attribute VB_Name = "polyformation"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Combo1_Click()
If Combo1.Text = "3" Then
T1.Visible = True
T2.Visible = True
T3.Visible = True
T4.Visible = False
Label5.Visible = False
Label4.Visible = True
Label3.Visible = True
ElseIf Combo1.Text = "2" Then
T1.Visible = True
T2.Visible = True
T3.Visible = False
T4.Visible = False
Label5.Visible = False
Label4.Visible = False
Label3.Visible = True
ElseIf Combo1.Text = "1" Then
T1.Visible = True
T2.Visible = False
T3.Visible = False
T4.Visible = False
Label5.Visible = False
Label4.Visible = False
Label3.Visible = False
ElseIf Combo1.Text = "4" Then
T1.Visible = True
T2.Visible = True
T3.Visible = True
T4.Visible = True
Label5.Visible = True
Label4.Visible = True
Label3.Visible = True
End If
End Sub

Private Sub Command1_Click()
On Error GoTo errhan:
If Combo1.Text = "1" Then
 If Val(T1.Text) < 0 Then
 rtbox.Text = "X +" & (-1 * Val(T1.Text)) & " = 0"
 ElseIf Val(T1.Text) > 0 Then
 rtbox.Text = "X -" & (-1 * Val(T1.Text)) & " = 0"
 End If
ElseIf Combo1.Text = "2" Then
 A = -1 * Val(T1.Text)
 B = -1 * Val(T2.Text)
 D = A + B
 e = A * B
 rtbox.Text = "X^2"
 If D < 0 Then
  te = rtbox.Text
  rtbox.Text = ""
  rtbox.Text = te & " - " & -1 * Val(D) & "X"
 ElseIf D > 0 Then
  te = rtbox.Text
  rtbox.Text = ""
  rtbox.Text = te & " + " & Val(D) & "X"
 ElseIf D = 0 Then
  te = rtbox.Text
  rtbox.Text = ""
  rtbox.Text = te & " + " & Val(D) & "X"
 End If
 If e < 0 Then
  te = rtbox.Text
  rtbox.Text = ""
  rtbox.Text = te & " - " & -1 * Val(e) & " = 0"
 ElseIf e > 0 Then
  te = rtbox.Text
  rtbox.Text = ""
  rtbox.Text = te & " + " & Val(e) & " = 0"
 ElseIf e = 0 Then
  te = rtbox.Text
  rtbox.Text = ""
  rtbox.Text = te & " + " & Val(e) & " = 0"
 End If
ElseIf Combo1.Text = "3" Then
 A = -1 * Val(T1.Text)
 B = -1 * Val(T2.Text)
 C = -1 * Val(T3.Text)
 D = A + B + C
 e = ((A + B) * C) + (A * B)
 F = A * B * C
 rtbox.Text = "X^3"
 If D < 0 Then
  te = rtbox.Text
  rtbox.Text = ""
  rtbox.Text = te & " - " & -1 * Val(D) & "X^2"
 ElseIf D > 0 Then
  te = rtbox.Text
  rtbox.Text = ""
  rtbox.Text = te & " + " & Val(D) & "X^2"
 ElseIf D = 0 Then
  te = rtbox.Text
  rtbox.Text = ""
  rtbox.Text = te & " + " & Val(D) & "X^2"
 End If
 If e < 0 Then
  te = rtbox.Text
  rtbox.Text = ""
  rtbox.Text = te & " - " & -1 * Val(e) & "X"
 ElseIf e > 0 Then
  te = rtbox.Text
  rtbox.Text = ""
  rtbox.Text = te & " + " & Val(e) & "X"
 ElseIf e = 0 Then
  te = rtbox.Text
  rtbox.Text = ""
  rtbox.Text = te & " + " & Val(e) & "X"
 End If
  If F < 0 Then
  te = rtbox.Text
  rtbox.Text = ""
  rtbox.Text = te & " - " & -1 * Val(F) & " = 0"
 ElseIf F > 0 Then
  te = rtbox.Text
  rtbox.Text = ""
  rtbox.Text = te & " + " & Val(F) & " = 0"
 ElseIf F = 0 Then
  te = rtbox.Text
  rtbox.Text = ""
  rtbox.Text = te & " + " & Val(F) & " = 0"
 End If
ElseIf Combo1.Text = "4" Then
 A = -1 * Val(T1.Text)
 B = -1 * Val(T2.Text)
 C = -1 * Val(T3.Text)
 F = -1 * Val(T4.Text)
 D = A + B + C + F
 e = ((A + B) * C) + (A * B) + ((A + B + C) * F)
 G = (A * B * C) + (A * B) + ((A + B) * C)
 H = A * B * C * F
 rtbox.Text = "X^4"
 If D < 0 Then
  te = rtbox.Text
  rtbox.Text = ""
  rtbox.Text = te & " - " & -1 * Val(D) & "X^3"
 ElseIf D > 0 Then
  te = rtbox.Text
  rtbox.Text = ""
  rtbox.Text = te & " + " & Val(D) & "X^3"
 ElseIf D = 0 Then
  te = rtbox.Text
  rtbox.Text = ""
  rtbox.Text = te & " + " & Val(D) & "X^3"
 End If
 If e < 0 Then
  te = rtbox.Text
  rtbox.Text = ""
  rtbox.Text = te & " - " & -1 * Val(e) & "X^2"
 ElseIf e > 0 Then
  te = rtbox.Text
  rtbox.Text = ""
  rtbox.Text = te & " + " & Val(e) & "X^2"
 ElseIf e = 0 Then
  te = rtbox.Text
  rtbox.Text = ""
  rtbox.Text = te & " + " & Val(e) & "X^2"
 End If
  If G < 0 Then
  te = rtbox.Text
  rtbox.Text = ""
  rtbox.Text = te & " - " & -1 * Val(G) & "X^2"
 ElseIf G > 0 Then
  te = rtbox.Text
  rtbox.Text = ""
  rtbox.Text = te & " + " & Val(G) & "X^2"
 ElseIf G = 0 Then
  te = rtbox.Text
  rtbox.Text = ""
  rtbox.Text = te & " + " & Val(G) & "X^2"
 End If
 If H < 0 Then
  te = rtbox.Text
  rtbox.Text = ""
  rtbox.Text = te & " - " & -1 * Val(H) & " = 0"
 ElseIf H > 0 Then
  te = rtbox.Text
  rtbox.Text = ""
  rtbox.Text = te & " + " & Val(H) & "X^2" & " = 0"
 ElseIf H = 0 Then
  te = rtbox.Text
  rtbox.Text = ""
  rtbox.Text = te & " + " & Val(H) & "X^2" & " = 0"
 End If
End If
Exit Sub
errhan:
 MsgBox err.Description, vbInformation
End Sub

Private Sub Command2_Click()
T1.Text = ""
T2.Text = ""
T3.Text = ""
T4.Text = ""
rtbox.Text = ""
End Sub

Private Sub Form_Load()
Me.WindowState = vbMaximized
For i = 1 To 4
 Combo1.AddItem i
Next
T1.Visible = True
T2.Visible = True
T3.Visible = True
T4.Visible = False
Label5.Visible = False
End Sub
