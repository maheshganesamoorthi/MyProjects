VERSION 5.00
Begin VB.Form ipratiobox 
   Caption         =   "Input Ratio Button"
   ClientHeight    =   3375
   ClientLeft      =   60
   ClientTop       =   420
   ClientWidth     =   4665
   Icon            =   "ipratiobox.frx":0000
   LinkTopic       =   "Form2"
   ScaleHeight     =   3375
   ScaleWidth      =   4665
   StartUpPosition =   3  'Windows Default
   Begin VB.TextBox Text3 
      Height          =   285
      Left            =   1560
      TabIndex        =   8
      Text            =   """"
      Top             =   3960
      Visible         =   0   'False
      Width           =   375
   End
   Begin VB.TextBox Text1 
      Height          =   315
      Left            =   240
      TabIndex        =   4
      Top             =   480
      Width           =   4215
   End
   Begin VB.TextBox Text2 
      Height          =   315
      Left            =   240
      TabIndex        =   3
      Top             =   1440
      Width           =   4215
   End
   Begin VB.ComboBox Combo1 
      Height          =   315
      Left            =   240
      TabIndex        =   2
      Text            =   "False"
      Top             =   2400
      Width           =   4215
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Cancel"
      Height          =   375
      Left            =   2520
      TabIndex        =   1
      Top             =   2880
      Width           =   1215
   End
   Begin VB.CommandButton Command2 
      Caption         =   "OK"
      Height          =   375
      Left            =   960
      TabIndex        =   0
      Top             =   2880
      Width           =   1215
   End
   Begin VB.Label Label1 
      Caption         =   "Ratio button Name"
      Height          =   255
      Left            =   120
      TabIndex        =   7
      Top             =   120
      Width           =   4215
   End
   Begin VB.Label Label2 
      Caption         =   "Value"
      Height          =   255
      Left            =   120
      TabIndex        =   6
      Top             =   1080
      Width           =   4455
   End
   Begin VB.Label Label3 
      Caption         =   "Checked"
      Height          =   255
      Left            =   120
      TabIndex        =   5
      Top             =   2040
      Width           =   4335
   End
End
Attribute VB_Name = "ipratiobox"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command2_Click()
If Combo1.Text = True Then
frmMain1.RTBox.SelText = "<INPUT" + " " + "TYPE=" + Text3.Text + "Radio" + Text3.Text + "  " + "NAME=" + Text3.Text + Text1.Text + Text3.Text + "  " + "VALUE=" + Text3.Text + Text2.Text + Text3.Text + "  " + "CHECKED>"
Else
frmMain1.RTBox.SelText = "<INPUT" + " " + "TYPE=" + Text3.Text + "Radio" + Text3.Text + "  " + "NAME=" + Text3.Text + Text1.Text + Text3.Text + "  " + "VALUE=" + Text3.Text + Text2.Text + Text3.Text + ">"
End If
Unload Me
End Sub

Private Sub Command1_Click()
Unload Me
End Sub

Private Sub Form_Load()
Combo1.AddItem "True"
Combo1.AddItem "False"
End Sub
