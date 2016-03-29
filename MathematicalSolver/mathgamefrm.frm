VERSION 5.00
Begin VB.Form mathgamefrm 
   BackColor       =   &H00C0FFFF&
   Caption         =   "Math game"
   ClientHeight    =   7545
   ClientLeft      =   60
   ClientTop       =   420
   ClientWidth     =   9885
   Icon            =   "mathgamefrm.frx":0000
   LinkTopic       =   "Form1"
   ScaleHeight     =   7545
   ScaleWidth      =   9885
   StartUpPosition =   3  'Windows Default
   Begin VB.Frame Frame1 
      BackColor       =   &H00C0FFFF&
      Caption         =   "Select Option :"
      ForeColor       =   &H000000FF&
      Height          =   2415
      Left            =   120
      TabIndex        =   23
      Top             =   2400
      Width           =   4335
      Begin VB.CommandButton Command1 
         Caption         =   "Start Game "
         Height          =   495
         Left            =   1080
         TabIndex        =   25
         Top             =   1320
         Width           =   2055
      End
      Begin VB.ComboBox list1 
         Height          =   315
         Left            =   360
         TabIndex        =   24
         Text            =   "Addition"
         Top             =   480
         Width           =   3615
      End
   End
   Begin VB.CommandButton cmdExit 
      Caption         =   "Im Done!"
      Height          =   375
      Left            =   11520
      TabIndex        =   7
      Top             =   8400
      Width           =   1215
   End
   Begin VB.CommandButton cmdQ 
      Caption         =   "0"
      BeginProperty Font 
         Name            =   "Trebuchet MS"
         Size            =   15.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   855
      Index           =   4
      Left            =   11760
      TabIndex        =   6
      Top             =   6960
      Width           =   1215
   End
   Begin VB.CommandButton cmdQ 
      Caption         =   "0"
      BeginProperty Font 
         Name            =   "Trebuchet MS"
         Size            =   15.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   855
      Index           =   3
      Left            =   10440
      TabIndex        =   5
      Top             =   6960
      Width           =   1215
   End
   Begin VB.CommandButton cmdQ 
      Caption         =   "0"
      BeginProperty Font 
         Name            =   "Trebuchet MS"
         Size            =   15.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   855
      Index           =   2
      Left            =   9120
      TabIndex        =   4
      Top             =   6960
      Width           =   1215
   End
   Begin VB.CommandButton cmdQ 
      Caption         =   "0"
      BeginProperty Font 
         Name            =   "Trebuchet MS"
         Size            =   15.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   855
      Index           =   1
      Left            =   7800
      TabIndex        =   3
      Top             =   6960
      Width           =   1215
   End
   Begin VB.CommandButton cmdQ 
      Caption         =   "0"
      BeginProperty Font 
         Name            =   "Trebuchet MS"
         Size            =   15.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   855
      Index           =   0
      Left            =   6480
      TabIndex        =   2
      Top             =   6960
      Width           =   1215
   End
   Begin VB.Timer Timer1 
      Enabled         =   0   'False
      Interval        =   1000
      Left            =   0
      Top             =   3600
   End
   Begin VB.Timer tmrQ 
      Interval        =   1000
      Left            =   0
      Top             =   3120
   End
   Begin VB.Image Image6 
      Height          =   630
      Left            =   6000
      Picture         =   "mathgamefrm.frx":076A
      Top             =   3840
      Width           =   7755
   End
   Begin VB.Image Image5 
      Height          =   1200
      Left            =   7320
      Picture         =   "mathgamefrm.frx":1064C
      Top             =   5160
      Width           =   1095
   End
   Begin VB.Image Image4 
      Height          =   615
      Left            =   6600
      Picture         =   "mathgamefrm.frx":14B4E
      Top             =   3840
      Width           =   7065
   End
   Begin VB.Image Image3 
      Height          =   1185
      Left            =   7320
      Picture         =   "mathgamefrm.frx":22E58
      Top             =   5160
      Width           =   1110
   End
   Begin VB.Label Label1 
      Alignment       =   2  'Center
      BackColor       =   &H00000000&
      Caption         =   "0"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   50.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   1215
      Left            =   11640
      TabIndex        =   22
      Top             =   5160
      Width           =   2535
   End
   Begin VB.Label lblC 
      BackStyle       =   0  'Transparent
      Caption         =   "5"
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Left            =   11040
      TabIndex        =   21
      Top             =   8040
      Width           =   255
   End
   Begin VB.Label lblY 
      AutoSize        =   -1  'True
      BackColor       =   &H00400000&
      Caption         =   "Time Left:"
      BeginProperty Font 
         Name            =   "Trebuchet MS"
         Size            =   9
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   270
      Index           =   6
      Left            =   10080
      TabIndex        =   20
      Top             =   8040
      Width           =   885
   End
   Begin VB.Label lblY 
      AutoSize        =   -1  'True
      BackColor       =   &H00400000&
      Caption         =   "Wins:"
      BeginProperty Font 
         Name            =   "Trebuchet MS"
         Size            =   9
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   270
      Index           =   5
      Left            =   8040
      TabIndex        =   19
      Top             =   8040
      Width           =   465
   End
   Begin VB.Label lblY 
      AutoSize        =   -1  'True
      BackColor       =   &H00400000&
      Caption         =   "Losses:"
      BeginProperty Font 
         Name            =   "Trebuchet MS"
         Size            =   9
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   270
      Index           =   4
      Left            =   8040
      TabIndex        =   18
      Top             =   8280
      Width           =   600
   End
   Begin VB.Label lblY 
      AutoSize        =   -1  'True
      BackColor       =   &H00400000&
      Caption         =   "Skill:"
      BeginProperty Font 
         Name            =   "Trebuchet MS"
         Size            =   9
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   270
      Index           =   3
      Left            =   8040
      TabIndex        =   17
      Top             =   8520
      Width           =   435
   End
   Begin VB.Label lblWins 
      BackStyle       =   0  'Transparent
      Caption         =   "0"
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Left            =   8760
      TabIndex        =   16
      Top             =   8040
      Width           =   1215
   End
   Begin VB.Label lblLosses 
      BackStyle       =   0  'Transparent
      Caption         =   "0"
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Left            =   8760
      TabIndex        =   15
      Top             =   8280
      Width           =   1215
   End
   Begin VB.Label lblSkill 
      BackStyle       =   0  'Transparent
      Caption         =   "0%"
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Left            =   8760
      TabIndex        =   14
      Top             =   8520
      Width           =   1215
   End
   Begin VB.Label lblLevel 
      BackStyle       =   0  'Transparent
      Caption         =   "1"
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Left            =   6840
      TabIndex        =   13
      Top             =   8520
      Width           =   1215
   End
   Begin VB.Label lblScore 
      BackStyle       =   0  'Transparent
      Caption         =   "0"
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Left            =   6840
      TabIndex        =   12
      Top             =   8280
      Width           =   1215
   End
   Begin VB.Label lblName 
      BackStyle       =   0  'Transparent
      Caption         =   "Test"
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Left            =   6840
      TabIndex        =   11
      Top             =   8040
      Width           =   1215
   End
   Begin VB.Label lblY 
      AutoSize        =   -1  'True
      BackColor       =   &H00400000&
      Caption         =   "Level:"
      BeginProperty Font 
         Name            =   "Trebuchet MS"
         Size            =   9
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   270
      Index           =   2
      Left            =   6240
      TabIndex        =   10
      Top             =   8520
      Width           =   525
   End
   Begin VB.Label lblY 
      AutoSize        =   -1  'True
      BackColor       =   &H00400000&
      Caption         =   "Score:"
      BeginProperty Font 
         Name            =   "Trebuchet MS"
         Size            =   9
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   270
      Index           =   1
      Left            =   6240
      TabIndex        =   9
      Top             =   8280
      Width           =   525
   End
   Begin VB.Label lblY 
      AutoSize        =   -1  'True
      BackColor       =   &H00400000&
      Caption         =   "Name:"
      BeginProperty Font 
         Name            =   "Trebuchet MS"
         Size            =   9
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Index           =   0
      Left            =   6240
      TabIndex        =   8
      Top             =   8040
      Width           =   525
   End
   Begin VB.Label Lal 
      Alignment       =   2  'Center
      BackColor       =   &H00000000&
      Caption         =   "0"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   50.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   1095
      Left            =   8640
      TabIndex        =   1
      Top             =   5040
      Width           =   1455
   End
   Begin VB.Label lblX 
      Alignment       =   2  'Center
      BackColor       =   &H00000000&
      Caption         =   " 0 "
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   50.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   1215
      Left            =   5760
      TabIndex        =   0
      Top             =   5160
      Width           =   1215
   End
   Begin VB.Image Image2 
      Height          =   6810
      Left            =   4920
      Picture         =   "mathgamefrm.frx":273BA
      Top             =   2520
      Width           =   9900
   End
   Begin VB.Image Image1 
      Height          =   1710
      Left            =   -120
      Picture         =   "mathgamefrm.frx":102B64
      Stretch         =   -1  'True
      Top             =   0
      Width           =   15465
   End
End
Attribute VB_Name = "mathgamefrm"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim r1 As Integer, r2 As Integer
Dim rand As Integer, xcount As Integer
Dim skill As Single
Dim score As Long, level As Long, wins As Long, losses As Long

Private Sub cmdExit_Click()
Dim r
r = MsgBox("Are you sure you want to go?", vbYesNo, "Quit?")
If r = vbYes Then
MsgBox "Your Score: " & score & vbCrLf & "Your Level: " & level & vbCrLf & "Well Done!"
End
End If
End Sub

Private Sub cmdQ_Click(Index As Integer)
tmrQ.Enabled = False
If Index = rand Then
    score = score + 100 + r1 + r2
    xcount = 5
    level = level + 1
    wins = wins + 1
    skill = Int((wins / 100) / ((wins + losses) / 100) * 100)
    lblC.Caption = xcount
    lblSkill.Caption = skill & "%"
    lblWins.Caption = wins
    lblLevel.Caption = level
    lblScore.Caption = score
    lblX.ForeColor = vbGreen
    Lal.ForeColor = vbGreen
    For i = 0 To 4
        cmdQ(i).Enabled = False
    Next i
    Timer1.Enabled = True
    If list1.Text = "Addition" Then
    Label1.Caption = Val(lblX.Caption) + Val(Lal.Caption)
    ElseIf list1.Text = "Subtraction" Then
    Label1.Caption = Val(lblX.Caption) - Val(Lal.Caption)
    ElseIf list1.Text = "Multiplication" Then
    Label1.Caption = Val(lblX.Caption) * Val(Lal.Caption)
    End If
    
Else
    losses = losses + 1
    xcount = 5
    skill = Int((wins / 100) / ((wins + losses) / 100) * 100)
    lblC.Caption = xcount
    lblSkill.Caption = skill & "%"
    lblLosses.Caption = losses
    lblX.ForeColor = vbRed
    Lal.ForeColor = vbRed
    For i = 0 To 4
        cmdQ(i).Enabled = False
    Next i
    Timer1.Enabled = True
     If list1.Text = "Addition" Then
    Label1.Caption = Val(lblX.Caption) + Val(Lal.Caption)
    ElseIf list1.Text = "Subtraction" Then
    Label1.Caption = Val(lblX.Caption) - Val(Lal.Caption)
    ElseIf list1.Text = "Multiplication" Then
    Label1.Caption = Val(lblX.Caption) * Val(Lal.Caption)
    End If
End If
End Sub



Private Sub Form_Load()
Me.WindowState = vbMaximized
tmrQ.Enabled = True
score = 0
skill = 0
level = 1
wins = 0
losses = 0
xcount = 5
nQ
list1.AddItem "Addition"
list1.AddItem "Subtraction"
list1.AddItem "Multiplication"
Image3.Visible = False
Image4.Visible = False
Image5.Visible = False
Image6.Visible = False
End Sub

Function nQ() 'next question
Randomize:
r1 = Int(10 * Rnd) + (level / 2)
r2 = Int(10 * Rnd) + 5 + (level / 2)
rand = Int(4 * Rnd)
lblX.Caption = r2
Lal.Caption = r1
Label1.Caption = ""
j = 0
    For i = 0 To 4
ABC:
    If list1.Text = "Addition" Then
        curR = Int((r1 + r2) * Rnd) + 5
        If curR = 0 Then GoTo ABC:
        If curR = r1 + r2 Then GoTo ABC:
        cmdQ(i).Caption = curR
    ElseIf list1.Text = "Subtraction" Then
        curR = Int((r2 - r1) * Rnd + j)
        j = j + 1
        If curR = 0 Then GoTo ABC:
        If curR = r2 - r1 Then GoTo ABC:
        cmdQ(i).Caption = curR
    ElseIf list1.Text = "Multiplication" Then
        curR = Int((r1 * r2) * Rnd) + 5
        If curR = 0 Then GoTo ABC:
        If curR = r1 + r2 Then GoTo ABC:
        cmdQ(i).Caption = curR
    End If
    Next i
If list1.Text = "Addition" Then
cmdQ(rand).Caption = r1 + r2
ElseIf list1.Text = "Subtraction" Then
cmdQ(rand).Caption = r2 - r1
ElseIf list1.Text = "Multiplication" Then
cmdQ(rand).Caption = r1 * r2
End If
End Function


Private Sub list1_Click()
If list1.Text = "Addition" Then
Image3.Visible = False
Image4.Visible = False
Image5.Visible = False
Image6.Visible = False
ElseIf list1.Text = "Subtraction" Then
Image3.Visible = True
Image4.Visible = True
Image5.Visible = False
Image6.Visible = False
ElseIf list1.Text = "Multiplication" Then
Image3.Visible = False
Image4.Visible = False
Image5.Visible = True
Image6.Visible = True
End If
End Sub

Private Sub Timer1_Timer()
lblX.ForeColor = vbWhite
Lal.ForeColor = vbWhite
Timer1.Enabled = False
nQ
For i = 0 To 4
        cmdQ(i).Enabled = True
Next i
tmrQ.Enabled = True
End Sub

Private Sub tmrQ_Timer()
xcount = xcount - 1
lblC.Caption = xcount
If xcount = 0 Then
    xcount = 5
    losses = losses + 1
    skill = Int((wins / 100) / ((wins + losses) / 100) * 100)
    lblSkill.Caption = skill & "%"
    lblLosses.Caption = losses
    lblX.ForeColor = vbRed
    Lal.ForeColor = vbRed
    For i = 0 To 4
        cmdQ(i).Enabled = False
    Next i
    Timer1.Enabled = True
    tmrQ.Enabled = False
End If
End Sub

