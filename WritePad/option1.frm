VERSION 5.00
Begin VB.Form option1 
   Caption         =   "Option"
   ClientHeight    =   2370
   ClientLeft      =   60
   ClientTop       =   420
   ClientWidth     =   4680
   Icon            =   "option1.frx":0000
   LinkTopic       =   "Form2"
   ScaleHeight     =   2370
   ScaleWidth      =   4680
   StartUpPosition =   3  'Windows Default
   Begin VB.TextBox Text2 
      Height          =   375
      Left            =   2040
      TabIndex        =   6
      Text            =   """"
      Top             =   3360
      Visible         =   0   'False
      Width           =   375
   End
   Begin VB.ComboBox Combo1 
      Height          =   315
      Left            =   240
      TabIndex        =   5
      Text            =   "No"
      Top             =   1440
      Width           =   4215
   End
   Begin VB.TextBox Text1 
      Height          =   315
      Left            =   240
      TabIndex        =   2
      Top             =   480
      Width           =   4215
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Cancel"
      Height          =   375
      Left            =   2400
      TabIndex        =   1
      Top             =   1920
      Width           =   1215
   End
   Begin VB.CommandButton Command2 
      Caption         =   "OK"
      Height          =   375
      Left            =   840
      TabIndex        =   0
      Top             =   1920
      Width           =   1215
   End
   Begin VB.Label Label1 
      Caption         =   "Option Value"
      Height          =   255
      Left            =   120
      TabIndex        =   4
      Top             =   120
      Width           =   4215
   End
   Begin VB.Label Label2 
      Caption         =   "Selected"
      Height          =   255
      Left            =   120
      TabIndex        =   3
      Top             =   1080
      Width           =   4455
   End
End
Attribute VB_Name = "option1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
Unload Me
End Sub

Private Sub Command2_Click()
If Combo1.Text = "Yes" Then
frmMain1.RTBox.SelText = "<OPTION" + " " + "VALUE=" + Text2.Text + Text1.Text + Text2.Text + "  " + "SELECTED></OPTION>"
Else
frmMain1.RTBox.SelText = "<OPTION" + " " + "VALUE=" + Text2.Text + Text1.Text + Text2.Text + "></OPTION>"
End If
Unload Me
End Sub

Private Sub Form_Load()
Combo1.AddItem "Yes"
Combo1.AddItem "No"
End Sub
