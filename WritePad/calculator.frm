VERSION 5.00
Begin VB.Form calculator 
   Caption         =   "Calculator"
   ClientHeight    =   4185
   ClientLeft      =   60
   ClientTop       =   420
   ClientWidth     =   6645
   Icon            =   "calculator.frx":0000
   LinkTopic       =   "Form1"
   ScaleHeight     =   4185
   ScaleWidth      =   6645
   StartUpPosition =   3  'Windows Default
   Begin VB.TextBox txt 
      Alignment       =   1  'Right Justify
      Height          =   525
      Left            =   120
      ScrollBars      =   1  'Horizontal
      TabIndex        =   33
      Text            =   "0"
      Top             =   120
      Width           =   6375
   End
   Begin VB.CommandButton cmd 
      Caption         =   "1"
      Height          =   495
      Index           =   0
      Left            =   3120
      MaskColor       =   &H00C0FFFF&
      TabIndex        =   32
      Top             =   1080
      Width           =   855
   End
   Begin VB.CommandButton cmd 
      Caption         =   "0"
      Height          =   495
      Index           =   1
      Left            =   3960
      TabIndex        =   31
      Top             =   2520
      Width           =   855
   End
   Begin VB.CommandButton cmd 
      Caption         =   "9"
      Height          =   495
      Index           =   2
      Left            =   4800
      TabIndex        =   30
      Top             =   2040
      Width           =   855
   End
   Begin VB.CommandButton cmd 
      Caption         =   "8"
      Height          =   495
      Index           =   3
      Left            =   3960
      TabIndex        =   29
      Top             =   2040
      Width           =   855
   End
   Begin VB.CommandButton cmd 
      Caption         =   "7"
      Height          =   495
      Index           =   4
      Left            =   3120
      TabIndex        =   28
      Top             =   2040
      Width           =   855
   End
   Begin VB.CommandButton cmd 
      Caption         =   "6"
      Height          =   495
      Index           =   5
      Left            =   4800
      TabIndex        =   27
      Top             =   1560
      Width           =   855
   End
   Begin VB.CommandButton cmd 
      Caption         =   "5"
      Height          =   495
      Index           =   6
      Left            =   3960
      TabIndex        =   26
      Top             =   1560
      Width           =   855
   End
   Begin VB.CommandButton cmd 
      Caption         =   "4"
      Height          =   495
      Index           =   7
      Left            =   3120
      TabIndex        =   25
      Top             =   1560
      Width           =   855
   End
   Begin VB.CommandButton cmd 
      Caption         =   "3"
      Height          =   495
      Index           =   8
      Left            =   4800
      TabIndex        =   24
      Top             =   1080
      Width           =   855
   End
   Begin VB.CommandButton cmd 
      Caption         =   "2"
      Height          =   495
      Index           =   9
      Left            =   3960
      TabIndex        =   23
      Top             =   1080
      Width           =   855
   End
   Begin VB.CommandButton cmde 
      Caption         =   "="
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   4800
      TabIndex        =   22
      Top             =   2520
      Width           =   855
   End
   Begin VB.CommandButton Cmdop 
      Caption         =   "+"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   0
      Left            =   5640
      TabIndex        =   21
      Top             =   1560
      Width           =   855
   End
   Begin VB.CommandButton Cmdop 
      Caption         =   "/"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   1
      Left            =   5640
      TabIndex        =   20
      Top             =   1080
      Width           =   855
   End
   Begin VB.CommandButton Cmdop 
      Caption         =   "*"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   2
      Left            =   5640
      TabIndex        =   19
      Top             =   2040
      Width           =   855
   End
   Begin VB.CommandButton Cmdop 
      Caption         =   "-"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   3
      Left            =   5640
      TabIndex        =   18
      Top             =   2520
      Width           =   855
   End
   Begin VB.CommandButton cmdc 
      Caption         =   "Clear"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   3120
      Style           =   1  'Graphical
      TabIndex        =   17
      Top             =   3000
      Width           =   3375
   End
   Begin VB.CommandButton cmd 
      Caption         =   "."
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   10
      Left            =   3120
      TabIndex        =   16
      Top             =   2520
      Width           =   855
   End
   Begin VB.CommandButton Cmdcos 
      Caption         =   "cos"
      Enabled         =   0   'False
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   0
      Left            =   2040
      TabIndex        =   15
      Top             =   1560
      UseMaskColor    =   -1  'True
      Width           =   975
   End
   Begin VB.CommandButton Cmdcos 
      Caption         =   "tan"
      Enabled         =   0   'False
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   1
      Left            =   1080
      TabIndex        =   14
      Top             =   1560
      UseMaskColor    =   -1  'True
      Width           =   975
   End
   Begin VB.CommandButton Cmdcos 
      Caption         =   "sin"
      Enabled         =   0   'False
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   2
      Left            =   120
      TabIndex        =   13
      Top             =   1560
      UseMaskColor    =   -1  'True
      Width           =   975
   End
   Begin VB.CommandButton Cmdop 
      Caption         =   "x^y"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   4
      Left            =   2040
      TabIndex        =   12
      Top             =   2040
      Width           =   975
   End
   Begin VB.CommandButton Cmdcos 
      Caption         =   "x^3"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   7
      Left            =   120
      TabIndex        =   11
      Top             =   2040
      Width           =   975
   End
   Begin VB.CommandButton Cmdcos 
      Caption         =   "x^2"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   8
      Left            =   1080
      TabIndex        =   10
      Top             =   2040
      Width           =   975
   End
   Begin VB.OptionButton Opt1 
      Caption         =   "Degree"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000000&
      Height          =   255
      Left            =   240
      TabIndex        =   9
      Top             =   720
      Width           =   1215
   End
   Begin VB.OptionButton Opt2 
      Caption         =   "Radian"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000000&
      Height          =   255
      Left            =   1800
      TabIndex        =   8
      Top             =   720
      Width           =   1095
   End
   Begin VB.CommandButton Cmdcos 
      Caption         =   "ln"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   4
      Left            =   120
      TabIndex        =   7
      Top             =   3000
      UseMaskColor    =   -1  'True
      Width           =   975
   End
   Begin VB.CommandButton Cmdcos 
      Caption         =   "1/x"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   975
      Index           =   5
      Left            =   2040
      TabIndex        =   6
      Top             =   2520
      UseMaskColor    =   -1  'True
      Width           =   975
   End
   Begin VB.CommandButton Cmdcos 
      Caption         =   "Exp"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   9
      Left            =   120
      TabIndex        =   5
      Top             =   2520
      UseMaskColor    =   -1  'True
      Width           =   975
   End
   Begin VB.CommandButton Cmdcos 
      Caption         =   "n!"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   3
      Left            =   1080
      TabIndex        =   4
      Top             =   3000
      UseMaskColor    =   -1  'True
      Width           =   975
   End
   Begin VB.CommandButton Cmdcos 
      Caption         =   "sqrt"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   10
      Left            =   1080
      TabIndex        =   3
      Top             =   2520
      UseMaskColor    =   -1  'True
      Width           =   975
   End
   Begin VB.CommandButton Cmdcos 
      BackColor       =   &H0080C0FF&
      Caption         =   "MR"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   6
      Left            =   120
      TabIndex        =   2
      Top             =   1080
      UseMaskColor    =   -1  'True
      Width           =   975
   End
   Begin VB.CommandButton Cmdcos 
      BackColor       =   &H0080C0FF&
      Caption         =   "MS"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   11
      Left            =   1080
      TabIndex        =   1
      Top             =   1080
      UseMaskColor    =   -1  'True
      Width           =   1935
   End
   Begin VB.CommandButton Command1 
      Caption         =   "ADD  RESULT  TO  TEXT WRITER"
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
      TabIndex        =   0
      Top             =   3600
      Width           =   6375
   End
End
Attribute VB_Name = "calculator"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim i As Double
Dim no1 As Double, ans As Double, no2 As Double, NO3 As Double, cnt As Integer, cv As Integer, cnt1 As Integer
Dim op As String, op1 As String, flag As Double, a As Double, X As Double, nos As Double


Private Declare Function ShellExecute Lib _
   "shell32.dll" Alias "ShellExecuteA" _
   (ByVal hwnd As Long, _
   ByVal lpOperation As String, _
   ByVal lpFile As String, _
   ByVal lpParameters As String, _
   ByVal lpDirectory As String, _
   ByVal nShowCmd As Long) As Long
   Private SW_SHOWNORMAL




Private Sub cmd_Click(Index As Integer)

    If txt.Text = "0" Then
    txt.Text = ""
    End If
    If X = 0 Then
    txt.Text = ""
    X = X + 1
    End If
    Cmdcos(6).Enabled = True
    Cmdcos(11).Enabled = True
    txt.Text = txt.Text + cmd(Index).Caption
End Sub

Private Sub cmdc_Click()
    txt.Text = "0"
    cnt = 0
    cnt1 = 0
    j = 0
    X = 0
    Cmdcos(6).Enabled = False
Cmdcos(11).Enabled = False
End Sub

Private Sub Cmdcos_Click(Index As Integer)
On Error GoTo errhan
   op1 = Cmdcos(Index).Caption
   nos = txt.Text
    Select Case op1
        Case "cos"
                If flag = 1 Then
                ans = Cos((3.14 / 180) * nos)
                Else
                ans = Cos(nos)
                End If
        Case "sin"
                If flag = 1 Then
                ans = Sin((3.14 / 180) * nos)
                Else
                ans = Sin(nos)
                End If
        Case "tan"
                If flag = 1 Then
                ans = Tan((3.14 / 180) * nos)
                Else
                ans = Tan(nos)
                End If
                If no1 Mod 90 = 0 Then
                    NO3 = no1 / 2
                    If NO3 Mod 2 = 1 Then
                        i = MsgBox("Wrong input", vbExclamation + vbOKOnly, "ERROR")
                        ans = 0
                    Else
                    ans = 0
                    End If
                End If
        Case "x^2"
                ans = nos ^ 2
        Case "x^3"
                ans = nos ^ 3
        Case "1/x"
                If nos = 0 Then
                i = MsgBox("Divide by zero error", vbExclamation + vbOKOnly, "ERROR")
                Else
                ans = 1 / nos
                End If
         Case "ln"
                If nos = 0 Then
                i = MsgBox("Math error", vbExclamation + vbOKOnly, "ERROR")
                Else
                ans = Log(nos)
                End If
         Case "Exp"
                ans = Exp(nos)
         Case "n!"
                ans = 1
                no2 = nos
                For i = 1 To no2
                ans = ans * i
                Next
         Case "sqrt"
                ans = Sqr(nos)
         Case "MS"
                ans = nos
                a = nos
          Case "MR"
                ans = a
                no1 = a
       End Select
    txt.Text = ans
errhan:
End Sub

Private Sub cmde_Click()
On Error GoTo err
cnt1 = 0
    Select Case op
        Case "+"
                ans = txt.Text + no1
                If cnt = 0 Then
                  no1 = txt.Text
                    cnt = cnt + 1
                End If
                txt.Text = ans
        Case "-"
                If cnt > 0 Then
                  txt.Text = no1
                  no1 = ans
                End If
                 ans = no1 - txt.Text
                 no1 = txt.Text
                 txt.Text = ans
                cnt = cnt + 1
        Case "*"
                ans = no1 * txt.Text
                If cnt = 0 Then
                  no1 = txt.Text
                    cnt = cnt + 1
                End If
        txt.Text = ans
        Case "/"
                If cnt > 0 Then
                  txt.Text = no1
                  no1 = ans
                End If
                If txt.Text = "0" Then
                i = MsgBox("Divide by zero error", vbExclamation + vbOKOnly, "ERROR")
                Else
                ans = no1 / txt.Text
                 no1 = txt.Text
                txt.Text = ans
                cnt = cnt + 1
                End If
        Case "x^y"
                ans = no1 ^ txt.Text
                txt.Text = ans
    End Select
err:
   
End Sub
Private Sub Cmdop_Click(Index As Integer)
On Error GoTo errhan
    X = 0
    If cnt1 > 0 Then
        Select Case op
            Case "+"
                    ans = no1 + txt.Text
                    txt.Text = ans
                    no1 = txt.Text
                    op = Cmdop(Index).Caption
            Case "-"
                    ans = no1 - txt.Text
                    txt.Text = ans
                    no1 = txt.Text
                    op = Cmdop(Index).Caption
            Case "/"
                    If txt.Text = 0 Then
                    MsgBox "Divide by zero error", vbExclamation + vbOKOnly, "ERROR"
                    Else
                    ans = no1 / txt.Text
                    txt.Text = ans
                    no1 = txt.Text
                    op = Cmdop(Index).Caption
                    End If
            Case "*"
                    ans = no1 * txt.Text
                    txt.Text = ans
                    no1 = txt.Text
                    op = Cmdop(Index).Caption
            Case "x^y"
                    ans = no1 ^ txt.Text
                    txt.Text = ans
                    no1 = txt.Text
                    op = Cmdop(Index).Caption
        End Select
    Else
    no1 = Val(txt.Text)
    op = Cmdop(Index).Caption
    txt.Text = 0
    cnt1 = cnt1 + 1
    End If
errhan:
 
End Sub


Private Sub Form_Load()
flag = 0
cnt = 0
j = 0
i = 1
Cmdcos(6).Enabled = False
Cmdcos(11).Enabled = False
End Sub

Private Sub Opt1_Click()
    flag = 1
    For i = 0 To 2
    Cmdcos(i).Enabled = True
    Next
End Sub

Private Sub Opt2_Click()
    flag = 2
    For i = 0 To 2
    Cmdcos(i).Enabled = True
    Next
End Sub


Private Sub Command1_Click()
frmMain1.RTBox.SelText = txt.Text
End Sub

