VERSION 5.00
Begin VB.Form frmtexthtml 
   Caption         =   "Text Box"
   ClientHeight    =   2400
   ClientLeft      =   60
   ClientTop       =   420
   ClientWidth     =   4680
   Icon            =   "frmtexthtml.frx":0000
   LinkTopic       =   "Form2"
   ScaleHeight     =   2400
   ScaleWidth      =   4680
   StartUpPosition =   3  'Windows Default
   Begin VB.TextBox Text1 
      Height          =   315
      Left            =   240
      TabIndex        =   5
      Top             =   480
      Width           =   4335
   End
   Begin VB.TextBox Text2 
      Height          =   315
      Left            =   240
      TabIndex        =   4
      Top             =   1320
      Width           =   4335
   End
   Begin VB.CommandButton Command1 
      Caption         =   "OK"
      Height          =   375
      Left            =   840
      TabIndex        =   3
      Top             =   1920
      Width           =   1335
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Cancel"
      Height          =   375
      Left            =   2400
      TabIndex        =   2
      Top             =   1920
      Width           =   1335
   End
   Begin VB.TextBox Text3 
      Height          =   375
      Left            =   120
      TabIndex        =   1
      Text            =   "Button"
      Top             =   2880
      Visible         =   0   'False
      Width           =   615
   End
   Begin VB.TextBox Text4 
      Height          =   375
      Left            =   1080
      TabIndex        =   0
      Text            =   """"
      Top             =   2880
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label Label1 
      Caption         =   "Text Box  Name"
      Height          =   255
      Left            =   120
      TabIndex        =   7
      Top             =   120
      Width           =   3975
   End
   Begin VB.Label Label2 
      Caption         =   "Value"
      Height          =   255
      Left            =   120
      TabIndex        =   6
      Top             =   960
      Width           =   4095
   End
End
Attribute VB_Name = "frmtexthtml"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
frmMain1.RTBox.SelText = "<INPUT" + "  " + "TYPE=" + Chr(147) + "Text" + Chr(148) + "  " + "NAME=" + Chr(147) + Text1.text + Chr(148) + "  " + "VALUE=" + Chr(147) + Text2.text + Chr(148) + ">"
Unload Me
End Sub

Private Sub Command2_Click()
Unload Me
End Sub
