VERSION 5.00
Begin VB.Form Gotofrm 
   Caption         =   "Go To..."
   ClientHeight    =   1380
   ClientLeft      =   60
   ClientTop       =   420
   ClientWidth     =   4320
   Icon            =   "Goto.frx":0000
   LinkTopic       =   "Form2"
   ScaleHeight     =   1380
   ScaleWidth      =   4320
   StartUpPosition =   3  'Windows Default
   Begin VB.OptionButton GotoLine 
      Caption         =   "Line"
      Height          =   255
      Left            =   360
      TabIndex        =   7
      Top             =   360
      Value           =   -1  'True
      Width           =   1095
   End
   Begin VB.OptionButton GotoStart 
      Caption         =   "Start"
      Height          =   315
      Left            =   360
      TabIndex        =   6
      Top             =   600
      Width           =   1095
   End
   Begin VB.OptionButton GotoEnd 
      Caption         =   "End"
      Height          =   195
      Left            =   360
      TabIndex        =   5
      Top             =   960
      Width           =   855
   End
   Begin VB.Frame Frame1 
      Caption         =   "Go to :"
      Height          =   1095
      Left            =   3000
      TabIndex        =   3
      Top             =   2400
      Visible         =   0   'False
      Width           =   1455
   End
   Begin VB.TextBox txtGo 
      Height          =   285
      Left            =   1560
      TabIndex        =   2
      Top             =   480
      Width           =   2535
   End
   Begin VB.CommandButton cmdGo 
      Caption         =   "Go"
      Default         =   -1  'True
      Height          =   375
      Left            =   1560
      TabIndex        =   1
      Top             =   870
      Width           =   1215
   End
   Begin VB.CommandButton cmdClose 
      Caption         =   "Close"
      Height          =   375
      Left            =   2880
      TabIndex        =   0
      Top             =   840
      Width           =   1215
   End
   Begin VB.Label Label2 
      Caption         =   "Go To ..."
      Height          =   255
      Left            =   120
      TabIndex        =   8
      Top             =   120
      Width           =   735
   End
   Begin VB.Label Label1 
      Alignment       =   2  'Center
      Caption         =   "Enter line number you want to go to"
      Height          =   255
      Left            =   1560
      TabIndex        =   4
      Top             =   240
      Width           =   2535
   End
End
Attribute VB_Name = "Gotofrm"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub cmdGo_Click()
On Error GoTo GoToError
    Dim lngStart As Long

    With frmMain1.RTBox
        If GotoLine Then 'If Go To line is checked
            'Get pos of start of the line
            lngStart = SendMessage(.hwnd, EM_LINEINDEX, txtGo.Text - 1, 0&)
            If lngStart = -1 Then 'Invalid line number
                MsgBox "Invalid Number", vbInformation, Invalid
                Exit Sub
            End If
            .SelStart = lngStart 'Go To line
        ElseIf GotoStart Then 'Go To start of the document
            .SelStart = 0
        ElseIf GotoEnd Then 'Go To end of the document
            .SelStart = Len(.Text)
        End If
        .SetFocus 'Set focus
        Unload Me
    End With
GoToError:
    If err.Number = 13 Then
        MsgBox "You can only type numbers!!!", vbInformation, "Enter Numbers"
        Exit Sub
    End If
End Sub
Private Sub txtGo_Change()
    On Error Resume Next
    If Not txtGo.Text = "" Or txtGo.Enabled = False Then
         cmdGo.Enabled = True 'Enable cmdGo button
    ElseIf txtGo.Text = "" Then
         cmdGo.Enabled = False 'Disable cmdGo button
    End If
End Sub

Private Sub GotoLine_Click()
    txtGo.Enabled = True 'Enable txtGo
    txtGo_Change
End Sub

Private Sub GotoStart_Click()
    txtGo.Enabled = False 'Disable txtGo
    txtGo_Change
End Sub

Private Sub GoToEnd_Click()
    txtGo.Enabled = False 'Disable txtGo
    txtGo_Change
End Sub

Private Sub Form_Load()
    GotoLine_Click
End Sub

Private Sub cmdClose_Click()
    Unload Me
End Sub

