VERSION 5.00
Begin VB.Form htmlfrfrm 
   Caption         =   "Form"
   ClientHeight    =   3120
   ClientLeft      =   60
   ClientTop       =   420
   ClientWidth     =   4905
   Icon            =   "htmlfrfrm.frx":0000
   LinkTopic       =   "Form2"
   ScaleHeight     =   3120
   ScaleWidth      =   4905
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command2 
      Caption         =   "Cancel"
      Height          =   375
      Left            =   2640
      TabIndex        =   4
      Top             =   2640
      Width           =   1335
   End
   Begin VB.CommandButton Command1 
      Caption         =   "OK"
      Height          =   375
      Left            =   840
      TabIndex        =   3
      Top             =   2640
      Width           =   1335
   End
   Begin VB.TextBox Text3 
      Height          =   315
      Left            =   120
      TabIndex        =   2
      Top             =   480
      Width           =   4695
   End
   Begin VB.ComboBox Combo1 
      Height          =   315
      Left            =   120
      TabIndex        =   1
      Top             =   1320
      Width           =   4695
   End
   Begin VB.ComboBox Combo2 
      Height          =   315
      Left            =   120
      TabIndex        =   0
      Top             =   2160
      Width           =   4695
   End
   Begin VB.Label Label5 
      Caption         =   "Action URL :"
      Height          =   255
      Left            =   120
      TabIndex        =   7
      Top             =   120
      Width           =   2775
   End
   Begin VB.Label Label4 
      Caption         =   "Target :"
      Height          =   255
      Left            =   120
      TabIndex        =   6
      Top             =   1800
      Width           =   2775
   End
   Begin VB.Label Label3 
      Caption         =   " Method :"
      Height          =   255
      Left            =   120
      TabIndex        =   5
      Top             =   960
      Width           =   2775
   End
End
Attribute VB_Name = "htmlfrfrm"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
frmMain1.RTBox.SelText = "<FORM ACTION=" + Chr(147) + Text3.text + Chr(148) + "  " + "METHOD=" + Chr(147) + Combo1.text + Chr(148) + "  " + "TARGET=" + Chr(147) + "_" + Combo2.text + Chr(148) + ">" + Chr(10) + Chr(13) + "</FORM>"
Unload Me
End Sub

Private Sub Command2_Click()
Unload Me
End Sub

Private Sub Form_Load()
Combo1.AddItem "get"
Combo1.AddItem "post"
Combo2.AddItem "blank"
Combo2.AddItem "parent"
Combo2.AddItem "self"
Combo2.AddItem "top"
End Sub
