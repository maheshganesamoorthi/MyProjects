VERSION 5.00
Begin VB.Form parablock 
   Caption         =   "Paragraph Block"
   ClientHeight    =   1515
   ClientLeft      =   60
   ClientTop       =   420
   ClientWidth     =   4680
   Icon            =   "parablock.frx":0000
   LinkTopic       =   "Form2"
   ScaleHeight     =   1515
   ScaleWidth      =   4680
   StartUpPosition =   3  'Windows Default
   Begin VB.TextBox Text1 
      Height          =   375
      Left            =   1440
      TabIndex        =   4
      Text            =   """"
      Top             =   2640
      Visible         =   0   'False
      Width           =   495
   End
   Begin VB.ComboBox Combo1 
      Height          =   315
      Left            =   240
      TabIndex        =   2
      Top             =   600
      Width           =   4215
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Cancel"
      Height          =   375
      Left            =   2520
      TabIndex        =   1
      Top             =   1080
      Width           =   1095
   End
   Begin VB.CommandButton Command2 
      Caption         =   "OK"
      Height          =   375
      Left            =   1080
      TabIndex        =   0
      Top             =   1080
      Width           =   1095
   End
   Begin VB.Label Label1 
      Caption         =   "Align(transitional)"
      Height          =   255
      Left            =   120
      TabIndex        =   3
      Top             =   240
      Width           =   4215
   End
End
Attribute VB_Name = "parablock"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command2_Click()
If Combo1.Text = "" Then
frmMain1.RTBox.SelText = "<P" + "  " + "ALIGN=" + Combo1.Text + ">" + "</P>"
Else
frmMain1.RTBox.SelText = "<P" + "  " + "ALIGN=" + Text1.Text + Combo1.Text + Text1.Text + ">" + "</P>"
End If
Unload Me
End Sub

Private Sub Command1_Click()
Unload Me
End Sub

Private Sub Form_Load()
Combo1.AddItem "center"
Combo1.AddItem "justify"
Combo1.AddItem "left"
Combo1.AddItem "right"
End Sub
