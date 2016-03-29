VERSION 5.00
Begin VB.Form inputbutton 
   Caption         =   "Input Button"
   ClientHeight    =   2505
   ClientLeft      =   60
   ClientTop       =   420
   ClientWidth     =   4680
   Icon            =   "inputbutton.frx":0000
   LinkTopic       =   "Form2"
   ScaleHeight     =   2505
   ScaleWidth      =   4680
   StartUpPosition =   3  'Windows Default
   Begin VB.TextBox Text4 
      Height          =   375
      Left            =   1080
      TabIndex        =   7
      Text            =   """"
      Top             =   3000
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.TextBox Text3 
      Height          =   375
      Left            =   120
      TabIndex        =   6
      Text            =   "Button"
      Top             =   3000
      Visible         =   0   'False
      Width           =   615
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Cancel"
      Height          =   375
      Left            =   2400
      TabIndex        =   5
      Top             =   2040
      Width           =   1335
   End
   Begin VB.CommandButton Command1 
      Caption         =   "OK"
      Height          =   375
      Left            =   840
      TabIndex        =   4
      Top             =   2040
      Width           =   1335
   End
   Begin VB.TextBox Text2 
      Height          =   315
      Left            =   240
      TabIndex        =   3
      Top             =   1440
      Width           =   4335
   End
   Begin VB.TextBox Text1 
      Height          =   315
      Left            =   240
      TabIndex        =   1
      Top             =   600
      Width           =   4335
   End
   Begin VB.Label Label2 
      Caption         =   "Value"
      Height          =   255
      Left            =   120
      TabIndex        =   2
      Top             =   1080
      Width           =   4095
   End
   Begin VB.Label Label1 
      Caption         =   "Button Name"
      Height          =   255
      Left            =   120
      TabIndex        =   0
      Top             =   240
      Width           =   3975
   End
End
Attribute VB_Name = "inputbutton"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
frmMain1.RTBox.SelText = "<INPUT" + "  " + "TYPE=" + Text4.Text + Text3.Text + Text4.Text + "  " + "NAME=" + Text4.Text + Text1.Text + Text4.Text + "  " + " VALUE=" + Text4.Text + Text2.Text + Text4.Text + ">"
Unload Me
End Sub

Private Sub Command2_Click()
Unload Me
End Sub
