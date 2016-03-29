VERSION 5.00
Begin VB.Form div 
   Caption         =   "Div"
   ClientHeight    =   1515
   ClientLeft      =   60
   ClientTop       =   420
   ClientWidth     =   4680
   Icon            =   "div.frx":0000
   LinkTopic       =   "Form2"
   ScaleHeight     =   1515
   ScaleWidth      =   4680
   StartUpPosition =   3  'Windows Default
   Begin VB.TextBox Text1 
      Height          =   285
      Left            =   2040
      TabIndex        =   4
      Text            =   """"
      Top             =   2040
      Visible         =   0   'False
      Width           =   375
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Cancel"
      Height          =   375
      Left            =   2400
      TabIndex        =   3
      Top             =   1080
      Width           =   1095
   End
   Begin VB.CommandButton Command1 
      Caption         =   "OK"
      Height          =   375
      Left            =   960
      TabIndex        =   2
      Top             =   1080
      Width           =   1095
   End
   Begin VB.ComboBox Combo1 
      Height          =   315
      Left            =   240
      TabIndex        =   1
      Top             =   600
      Width           =   4215
   End
   Begin VB.Label Label1 
      Caption         =   "Align(transitional)"
      Height          =   255
      Left            =   120
      TabIndex        =   0
      Top             =   240
      Width           =   4215
   End
End
Attribute VB_Name = "div"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
frmMain1.RTBox.SelText = "<DIV" + "  " + "ALIGN=" + Text1.Text + Combo1.Text + Text1.Text + ">" + "</DIV>"
Unload Me
End Sub

Private Sub Command2_Click()
Unload Me
End Sub

Private Sub Form_Load()
Combo1.AddItem "center"
Combo1.AddItem "justify"
Combo1.AddItem "left"
Combo1.AddItem "right"
End Sub
