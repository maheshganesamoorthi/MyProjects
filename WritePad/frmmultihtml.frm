VERSION 5.00
Begin VB.Form frmmultihtml 
   Caption         =   "Multi-Line Input"
   ClientHeight    =   4875
   ClientLeft      =   60
   ClientTop       =   420
   ClientWidth     =   4920
   Icon            =   "frmmultihtml.frx":0000
   LinkTopic       =   "Form2"
   ScaleHeight     =   4875
   ScaleWidth      =   4920
   StartUpPosition =   3  'Windows Default
   Begin VB.ComboBox Combo2 
      Height          =   315
      Left            =   120
      TabIndex        =   12
      Text            =   "No"
      Top             =   3840
      Width           =   4695
   End
   Begin VB.ComboBox Combo1 
      Height          =   315
      Left            =   120
      TabIndex        =   11
      Text            =   "off"
      Top             =   3000
      Width           =   4695
   End
   Begin VB.TextBox Text1 
      Height          =   315
      Left            =   120
      TabIndex        =   5
      Top             =   480
      Width           =   4695
   End
   Begin VB.TextBox Text2 
      Height          =   315
      Left            =   120
      TabIndex        =   4
      Top             =   1320
      Width           =   4695
   End
   Begin VB.TextBox Text3 
      Height          =   315
      Left            =   120
      TabIndex        =   3
      Top             =   2160
      Width           =   4695
   End
   Begin VB.CommandButton Command1 
      Caption         =   "OK"
      Height          =   375
      Left            =   840
      TabIndex        =   2
      Top             =   4320
      Width           =   1335
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Cancel"
      Height          =   375
      Left            =   2640
      TabIndex        =   1
      Top             =   4320
      Width           =   1335
   End
   Begin VB.TextBox Text6 
      Height          =   375
      Left            =   1680
      TabIndex        =   0
      Text            =   """"
      Top             =   5640
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label Label1 
      Caption         =   "Input Name :"
      Height          =   255
      Left            =   120
      TabIndex        =   10
      Top             =   120
      Width           =   2775
   End
   Begin VB.Label Label2 
      Caption         =   "Rows :"
      Height          =   255
      Left            =   120
      TabIndex        =   9
      Top             =   960
      Width           =   2775
   End
   Begin VB.Label Label3 
      Caption         =   " Word  wrap :"
      Height          =   255
      Left            =   120
      TabIndex        =   8
      Top             =   2640
      Width           =   2775
   End
   Begin VB.Label Label4 
      Caption         =   "Read Only :"
      Height          =   255
      Left            =   120
      TabIndex        =   7
      Top             =   3480
      Width           =   2775
   End
   Begin VB.Label Label5 
      Caption         =   "Columns :"
      Height          =   255
      Left            =   120
      TabIndex        =   6
      Top             =   1800
      Width           =   2775
   End
End
Attribute VB_Name = "frmmultihtml"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
If Combo2.text = "Yes" Then
frmMain1.RTBox.SelText = "<TEXTAREA NAME=" + Chr(147) + Text1.text + Chr(148) + "  " + "ROWS=" + Chr(147) + Text2.text + Chr(148) + "  " + "COLS=" + Chr(147) + Text3.text + Chr(148) + "  " + "WRAP=" + Chr(147) + Combo1.text + Chr(148) + "  " + "READONLY>" + Chr(10) + Chr(13) + "</TEXTAREA>"
Else
frmMain1.RTBox.SelText = "<TEXTAREA NAME=" + Chr(147) + Text1.text + Chr(148) + "  " + "ROWS=" + Chr(147) + Text2.text + Chr(148) + "  " + "COLS=" + Chr(147) + Text3.text + Chr(148) + "  " + "WRAP=" + Chr(147) + Combo1.text + Chr(148) + "  " + ">" + Chr(10) + Chr(13) + "</TEXTAREA>"
End If
Unload Me
End Sub

Private Sub Command2_Click()
Unload Me
End Sub

Private Sub Form_Load()
Combo1.AddItem "off"
Combo1.AddItem "virtual"
Combo1.AddItem "physical"
Combo2.AddItem "Yes"
Combo2.AddItem "No"
End Sub
