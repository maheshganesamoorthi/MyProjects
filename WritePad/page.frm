VERSION 5.00
Begin VB.Form page 
   Caption         =   "Page Setup"
   ClientHeight    =   2745
   ClientLeft      =   60
   ClientTop       =   420
   ClientWidth     =   4470
   Icon            =   "page.frx":0000
   LinkTopic       =   "Form2"
   ScaleHeight     =   2745
   ScaleWidth      =   4470
   StartUpPosition =   3  'Windows Default
   Begin VB.Frame Frame1 
      Caption         =   "Margins"
      Height          =   1935
      Left            =   120
      TabIndex        =   8
      Top             =   120
      Width           =   2055
      Begin VB.TextBox txtLeft 
         Height          =   285
         Left            =   720
         TabIndex        =   10
         Top             =   420
         Width           =   1215
      End
      Begin VB.TextBox txtRight 
         Height          =   285
         Left            =   720
         TabIndex        =   9
         Top             =   1080
         Width           =   1215
      End
      Begin VB.Label Label1 
         Caption         =   "Left:"
         Height          =   255
         Left            =   120
         TabIndex        =   12
         Top             =   480
         Width           =   375
      End
      Begin VB.Label Label2 
         Caption         =   "Right:"
         Height          =   315
         Left            =   120
         TabIndex        =   11
         Top             =   1140
         Width           =   495
      End
   End
   Begin VB.CommandButton cmdOK 
      Caption         =   "OK"
      Default         =   -1  'True
      Height          =   375
      Left            =   720
      TabIndex        =   7
      Top             =   2280
      Width           =   1215
   End
   Begin VB.CommandButton cmdCancel 
      Cancel          =   -1  'True
      Caption         =   "Cancel"
      Height          =   375
      Left            =   2160
      TabIndex        =   6
      Top             =   2280
      Width           =   1335
   End
   Begin VB.Frame Frame2 
      Caption         =   "Alignment"
      Height          =   1935
      Left            =   2280
      TabIndex        =   2
      Top             =   120
      Width           =   2055
      Begin VB.OptionButton Option2 
         Caption         =   "Left"
         Height          =   255
         Left            =   240
         TabIndex        =   5
         Top             =   360
         Value           =   -1  'True
         Width           =   1455
      End
      Begin VB.OptionButton Option3 
         Caption         =   "Center"
         Height          =   255
         Left            =   240
         TabIndex        =   4
         Top             =   840
         Width           =   1215
      End
      Begin VB.OptionButton Option4 
         Caption         =   "Right"
         Height          =   375
         Left            =   240
         TabIndex        =   3
         Top             =   1320
         Width           =   975
      End
   End
   Begin VB.TextBox txtTop 
      Height          =   285
      Left            =   2760
      TabIndex        =   1
      Top             =   2880
      Visible         =   0   'False
      Width           =   1215
   End
   Begin VB.TextBox txtBottom 
      Height          =   285
      Left            =   2760
      TabIndex        =   0
      Top             =   3360
      Visible         =   0   'False
      Width           =   1215
   End
   Begin VB.Label Label3 
      Caption         =   "Top:"
      Height          =   255
      Left            =   2160
      TabIndex        =   14
      Top             =   2880
      Visible         =   0   'False
      Width           =   495
   End
   Begin VB.Label Label4 
      Caption         =   "Bottom:"
      Height          =   255
      Left            =   2160
      TabIndex        =   13
      Top             =   3360
      Visible         =   0   'False
      Width           =   615
   End
End
Attribute VB_Name = "page"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub cmdCancel_Click()
Unload Me
End Sub

Private Sub cmdOK_Click()
    ' validate margin values in text boxes
    If Val(txtLeft.Text) < 0 Or Val(txtLeft.Text) > 6 Then
        Beep 'beep..beep..beep
        ' show error
        MsgBox "Left margin is Out of Range.", 16, "Margin Out Of Range"
        'select box with error
        txtLeft.SelStart = 0
        txtLeft.SelLength = Len(txtLeft.Text)
        'set focus to box
        txtLeft.SetFocus
    ElseIf Val(txtRight.Text) < 0 Or Val(txtRight.Text) > 6 Then
        Beep
        ' show error message
        MsgBox "Right margin is Out of Range.", 16, "Margin Out Of Range"
        'select text with  error
        txtRight.SelStart = 0
        txtRight.SelLength = Len(txtRight.Text)
        'set focus to text
        txtRight.SetFocus
    Else
        'passed checks
        ' variables to store old selection
        Dim lngOldStart As Long
        Dim lngOldLength As Long
        With frmMain1.RTBox
            ' save old text selection
            lngOldStart = .SelStart
            lngOldLength = .SelLength
            ' select entire document
            .SelStart = 0
            .SelLength = Len(.Text)
            ' set new margins
            ' the value needs to be converted to twips
            ' for acuracy.  There are 1440 Twips/Inch.
            .SelIndent = CInt(Val(txtLeft.Text) * 1440)
            .SelRightIndent = CInt(Val(txtRight.Text) * 1440)
            ' restore old selection
            .SelStart = lngOldStart
            .SelLength = lngOldLength
        End With
        'unload form
        If Option2.Value = True Then
           frmMain1.RTBox.SelAlignment = 0
        ElseIf Option2.Value = True Then
           frmMain1.RTBox.SelAlignment = 2
        ElseIf Option2.Value = True Then
           frmMain1.RTBox.SelAlignment = 1
        End If
        Unload Me
    End If
End Sub


