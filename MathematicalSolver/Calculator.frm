VERSION 5.00
Begin VB.Form Calculator 
   BackColor       =   &H00C0FFFF&
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Calculator"
   ClientHeight    =   4800
   ClientLeft      =   45
   ClientTop       =   405
   ClientWidth     =   6600
   Icon            =   "Calculator.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   4800
   ScaleWidth      =   6600
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command1 
      Caption         =   "Back Space"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   4800
      TabIndex        =   41
      Top             =   1800
      Width           =   1695
   End
   Begin VB.CommandButton Cmdcos 
      Caption         =   "log10"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   18
      Left            =   2040
      TabIndex        =   40
      Top             =   2760
      Width           =   975
   End
   Begin VB.CommandButton Cmdcos 
      Caption         =   "Anti log"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   17
      Left            =   1080
      TabIndex        =   39
      Top             =   2760
      Width           =   975
   End
   Begin VB.CommandButton cp 
      Caption         =   "+/-"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   5640
      TabIndex        =   38
      Top             =   4200
      Width           =   855
   End
   Begin VB.CommandButton Cmdcos 
      Caption         =   "Tan^-1"
      Enabled         =   0   'False
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   15
      Left            =   2040
      TabIndex        =   37
      Top             =   2280
      Width           =   975
   End
   Begin VB.CommandButton Cmdcos 
      Caption         =   "Cos^-1"
      Enabled         =   0   'False
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   14
      Left            =   1080
      TabIndex        =   36
      Top             =   2280
      Width           =   975
   End
   Begin VB.CommandButton Cmdcos 
      Caption         =   "Sin^-1"
      Enabled         =   0   'False
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   13
      Left            =   120
      TabIndex        =   35
      Top             =   2280
      Width           =   975
   End
   Begin VB.TextBox txt 
      Alignment       =   1  'Right Justify
      Height          =   525
      Left            =   120
      ScrollBars      =   1  'Horizontal
      TabIndex        =   34
      Text            =   "0"
      Top             =   840
      Width           =   6375
   End
   Begin VB.CommandButton cmd 
      BackColor       =   &H00C0E0FF&
      Caption         =   "1"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   0
      Left            =   3120
      MaskColor       =   &H00C0FFFF&
      TabIndex        =   33
      Top             =   2280
      Width           =   855
   End
   Begin VB.CommandButton cmd 
      BackColor       =   &H00C0E0FF&
      Caption         =   "0"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   1
      Left            =   3960
      TabIndex        =   32
      Top             =   3720
      Width           =   855
   End
   Begin VB.CommandButton cmd 
      BackColor       =   &H00C0E0FF&
      Caption         =   "9"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   2
      Left            =   4800
      TabIndex        =   31
      Top             =   3240
      Width           =   855
   End
   Begin VB.CommandButton cmd 
      BackColor       =   &H00C0E0FF&
      Caption         =   "8"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   3
      Left            =   3960
      TabIndex        =   30
      Top             =   3240
      Width           =   855
   End
   Begin VB.CommandButton cmd 
      BackColor       =   &H00C0E0FF&
      Caption         =   "7"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   4
      Left            =   3120
      TabIndex        =   29
      Top             =   3240
      Width           =   855
   End
   Begin VB.CommandButton cmd 
      BackColor       =   &H00C0E0FF&
      Caption         =   "6"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   5
      Left            =   4800
      TabIndex        =   28
      Top             =   2760
      Width           =   855
   End
   Begin VB.CommandButton cmd 
      BackColor       =   &H00C0E0FF&
      Caption         =   "5"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   6
      Left            =   3960
      TabIndex        =   27
      Top             =   2760
      Width           =   855
   End
   Begin VB.CommandButton cmd 
      BackColor       =   &H00C0E0FF&
      Caption         =   "4"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   7
      Left            =   3120
      TabIndex        =   26
      Top             =   2760
      Width           =   855
   End
   Begin VB.CommandButton cmd 
      BackColor       =   &H00C0E0FF&
      Caption         =   "3"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   8
      Left            =   4800
      TabIndex        =   25
      Top             =   2280
      Width           =   855
   End
   Begin VB.CommandButton cmd 
      BackColor       =   &H00C0E0FF&
      Caption         =   "2"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   9
      Left            =   3960
      TabIndex        =   24
      Top             =   2280
      Width           =   855
   End
   Begin VB.CommandButton cmde 
      BackColor       =   &H00C0FFC0&
      Caption         =   "="
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   4800
      TabIndex        =   23
      Top             =   3720
      Width           =   855
   End
   Begin VB.CommandButton Cmdop 
      BackColor       =   &H00C0FFC0&
      Caption         =   "+"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   0
      Left            =   5640
      TabIndex        =   22
      Top             =   2760
      Width           =   855
   End
   Begin VB.CommandButton Cmdop 
      BackColor       =   &H00C0FFC0&
      Caption         =   "/"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   1
      Left            =   5640
      TabIndex        =   21
      Top             =   2280
      Width           =   855
   End
   Begin VB.CommandButton Cmdop 
      BackColor       =   &H00C0FFC0&
      Caption         =   "*"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   2
      Left            =   5640
      TabIndex        =   20
      Top             =   3240
      Width           =   855
   End
   Begin VB.CommandButton Cmdop 
      BackColor       =   &H00C0FFC0&
      Caption         =   "-"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   3
      Left            =   5640
      TabIndex        =   19
      Top             =   3720
      Width           =   855
   End
   Begin VB.CommandButton cmdc 
      BackColor       =   &H00C0FFC0&
      Caption         =   "Clear"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   3120
      TabIndex        =   18
      Top             =   4200
      Width           =   2535
   End
   Begin VB.CommandButton cmd 
      BackColor       =   &H00C0E0FF&
      Caption         =   "."
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   10
      Left            =   3120
      TabIndex        =   17
      Top             =   3720
      Width           =   855
   End
   Begin VB.CommandButton Cmdcos 
      BackColor       =   &H00C0FFC0&
      Caption         =   "cos"
      Enabled         =   0   'False
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   0
      Left            =   2040
      TabIndex        =   16
      Top             =   1800
      UseMaskColor    =   -1  'True
      Width           =   975
   End
   Begin VB.CommandButton Cmdcos 
      BackColor       =   &H00C0FFC0&
      Caption         =   "tan"
      Enabled         =   0   'False
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   1
      Left            =   1080
      TabIndex        =   15
      Top             =   1800
      UseMaskColor    =   -1  'True
      Width           =   975
   End
   Begin VB.CommandButton Cmdcos 
      BackColor       =   &H00C0FFC0&
      Caption         =   "sin"
      Enabled         =   0   'False
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   2
      Left            =   120
      TabIndex        =   14
      Top             =   1800
      UseMaskColor    =   -1  'True
      Width           =   975
   End
   Begin VB.CommandButton Cmdop 
      BackColor       =   &H00C0FFC0&
      Caption         =   "x^y"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   4
      Left            =   2040
      TabIndex        =   13
      Top             =   3720
      Width           =   975
   End
   Begin VB.CommandButton Cmdcos 
      BackColor       =   &H00C0FFC0&
      Caption         =   "x^3"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   7
      Left            =   120
      TabIndex        =   12
      Top             =   3720
      Width           =   975
   End
   Begin VB.CommandButton Cmdcos 
      BackColor       =   &H00C0FFC0&
      Caption         =   "x^2"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   8
      Left            =   1080
      TabIndex        =   11
      Top             =   3720
      Width           =   975
   End
   Begin VB.OptionButton Opt1 
      BackColor       =   &H00C0FFFF&
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
      ForeColor       =   &H000000FF&
      Height          =   255
      Left            =   240
      TabIndex        =   10
      Top             =   1440
      Width           =   1215
   End
   Begin VB.OptionButton Opt2 
      BackColor       =   &H00C0FFFF&
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
      ForeColor       =   &H000000FF&
      Height          =   255
      Left            =   1800
      TabIndex        =   9
      Top             =   1440
      Width           =   1095
   End
   Begin VB.CommandButton Cmdcos 
      BackColor       =   &H00C0FFC0&
      Caption         =   "ln"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   4
      Left            =   120
      TabIndex        =   8
      Top             =   2760
      UseMaskColor    =   -1  'True
      Width           =   975
   End
   Begin VB.CommandButton Cmdcos 
      BackColor       =   &H00C0FFC0&
      Caption         =   "1/x"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   5
      Left            =   2040
      TabIndex        =   7
      Top             =   3240
      UseMaskColor    =   -1  'True
      Width           =   975
   End
   Begin VB.CommandButton Cmdcos 
      BackColor       =   &H00C0FFC0&
      Caption         =   "Exp"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   9
      Left            =   120
      TabIndex        =   6
      Top             =   3240
      UseMaskColor    =   -1  'True
      Width           =   975
   End
   Begin VB.CommandButton Cmdcos 
      BackColor       =   &H00C0FFC0&
      Caption         =   "n!"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   3
      Left            =   120
      TabIndex        =   5
      Top             =   4200
      UseMaskColor    =   -1  'True
      Width           =   2895
   End
   Begin VB.CommandButton Cmdcos 
      BackColor       =   &H00C0FFC0&
      Caption         =   "sqrt"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   10
      Left            =   1080
      TabIndex        =   4
      Top             =   3240
      UseMaskColor    =   -1  'True
      Width           =   975
   End
   Begin VB.CommandButton Cmdcos 
      BackColor       =   &H00C0FFC0&
      Caption         =   "MR"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   6
      Left            =   3120
      TabIndex        =   3
      Top             =   1800
      UseMaskColor    =   -1  'True
      Width           =   855
   End
   Begin VB.CommandButton Cmdcos 
      BackColor       =   &H00C0FFC0&
      Caption         =   "MS"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   11
      Left            =   3960
      TabIndex        =   2
      Top             =   1800
      UseMaskColor    =   -1  'True
      Width           =   855
   End
   Begin VB.CommandButton onb 
      BackColor       =   &H00C0FFFF&
      Caption         =   "Off"
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
      Left            =   2400
      TabIndex        =   1
      Top             =   6240
      Visible         =   0   'False
      Width           =   855
   End
   Begin VB.CommandButton onb 
      BackColor       =   &H00C0FFFF&
      Caption         =   "On"
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
      Left            =   3240
      TabIndex        =   0
      Top             =   6240
      Visible         =   0   'False
      Width           =   1095
   End
   Begin VB.Image Image1 
      Height          =   855
      Left            =   -120
      Picture         =   "Calculator.frx":038A
      Stretch         =   -1  'True
      Top             =   0
      Width           =   6765
   End
End
Attribute VB_Name = "Calculator"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim i As Integer
Dim no1 As Double, ans As Double, no2 As Double, NO3 As Double, cnt As Integer, cv As Integer, cnt1 As Integer
Dim op As String, op1 As String, flag As Integer, A As Double, x As Integer, nos As Double





Private Sub cmd_Click(Index As Integer)

    If txt.Text = "0" Then
    txt.Text = ""
    End If
    If x = 0 Then
    txt.Text = ""
    x = x + 1
    End If
    txt.Text = txt.Text + cmd(Index).Caption
End Sub

Private Sub cmdc_Click()
    txt.Text = "0"
    cnt = 0
    cnt1 = 0
    j = 0
    x = 0
End Sub

Private Sub cmdCos_Click(Index As Integer)
On Error GoTo errhan:
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
                        i = MsgBox("Math error", vbInformation, "ERROR")
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
                i = MsgBox("Divide by zero error", vbInformation, "ERROR")
                Else
                ans = 1 / nos
                End If
         Case "ln"
                If nos = 0 Then
                i = MsgBox("Math error", vbInformation, "ERROR")
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
                A = nos
          Case "MR"
                ans = A
                no1 = A
          Case "Tan^-1"
                If flag = 1 Then
                ans = Atn(nos) * (180 / 3.14)
                Else
                ans = Atn(nos)
                End If
          Case "Sin^-1"
                If Val(nos) <= 1 And Val(nos) >= -1 Then
                If flag = 1 Then
                ans = Atn(nos / Sqr(-nos * nos + 1)) * (180 / 3.14)
                Else
                ans = Atn(nos / Sqr(-nos * nos + 1))
                End If
                Else
                MsgBox "Math error", vbInformation, "ERROR"
                End If
          Case "Cos^-1"
                If Val(nos) <= 1 And Val(nos) >= -1 Then
                If flag = 1 Then
                ans = (Atn(-nos / Sqr(-nos * nos + 1)) + 2 * Atn(1)) * (180 / 3.14)
                Else
                ans = Atn(-nos / Sqr(-nos * nos + 1)) + 2 * Atn(1)
                End If
                Else
                MsgBox "Math error", vbInformation, "ERROR"
                End If
           Case "log10"
                If nos = 0 Or nos < 0 Then
                i = MsgBox("Math error", vbInformation, "ERROR")
                Else
                ans = Log(nos) / Log(10)
                End If
          Case "Anti log"
                ans = 10 ^ nos
                End Select
    txt.Text = ans
  Exit Sub
errhan:
 MsgBox err.Description, vbInformation
End Sub

Private Sub cmde_Click()
On Error GoTo errhan:
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
 Exit Sub
errhan:
 MsgBox err.Description, vbInformation, "ERROR"
End Sub
Private Sub cmdop_Click(Index As Integer)
On Error GoTo errhan:
    x = 0
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
                    ans = no1 / txt.Text
                    txt.Text = ans
                    no1 = txt.Text
                    op = Cmdop(Index).Caption
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
    'txt.Text = 0
    cnt1 = cnt1 + 1
    End If
 Exit Sub
errhan:
 MsgBox err.Description, vbInformation, "ERROR"
End Sub




Private Sub Command1_Click()
s = txt.Text
C = Len(s)
If C = 0 Then
txt.Text = ""
Else
C = C - 1
txt.Text = Left(s, C)
End If
End Sub

Private Sub cp_Click()
ans = -1 * txt.Text
txt.Text = ans
'no1 = txt.Text
'op = Cmdop(Index).Caption
End Sub

Private Sub Form_Load()
flag = 0
cnt = 0
j = 0
i = 1
End Sub
Private Sub onb_Click(Index As Integer)
If onb(Index).Caption = "On" Then
For i = 0 To 10
 cmd(i).Enabled = True
 Next
 For i = 0 To 4
 Cmdop(i).Enabled = True
 Next
 For i = 3 To 11
 Cmdcos(i).Enabled = True
 Next
 cmde.Enabled = True
 Opt1.Enabled = True
 Opt2.Enabled = True
 'col.BackColor = vbGreen
 Else
For i = 0 To 10
 cmd(i).Enabled = False
 Next
For i = 0 To 4
 Cmdop(i).Enabled = False
 Next
 flag = 0
 For i = 0 To 11
 Cmdcos(i).Enabled = False
 Next
 cmde.Enabled = False
 Opt1.Enabled = False
 Opt2.Enabled = False
 Opt1.value = False
 Opt2.value = False
'  col.BackColor = vbRed
 End If
End Sub

Private Sub Opt1_Click()
    flag = 1
    For i = 0 To 2
    Cmdcos(i).Enabled = True
    Next
     For i = 13 To 15
    Cmdcos(i).Enabled = True
    Next
End Sub

Private Sub Opt2_Click()
    flag = 2
    For i = 0 To 2
    Cmdcos(i).Enabled = True
    Next
    For i = 13 To 15
    Cmdcos(i).Enabled = True
    Next
End Sub



Private Sub txt_Validate(Cancel As Boolean)
If IsNumeric(txt.Text) = False And txt.Text <> "" Then
 If (txt.Text <> "-") Then
  i = MsgBox(txt.Text & " " & "is not a numeric value.Enter only numeric values", vbInformation)
  T20.SetFocus
 End If
End If

End Sub
