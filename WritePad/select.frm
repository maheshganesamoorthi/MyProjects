VERSION 5.00
Begin VB.Form select1 
   Caption         =   "Select"
   ClientHeight    =   2490
   ClientLeft      =   60
   ClientTop       =   420
   ClientWidth     =   4485
   Icon            =   "select.frx":0000
   LinkTopic       =   "Form2"
   ScaleHeight     =   2490
   ScaleWidth      =   4485
   StartUpPosition =   3  'Windows Default
   Begin VB.TextBox Text2 
      Height          =   375
      Left            =   960
      TabIndex        =   6
      Text            =   """"
      Top             =   3240
      Visible         =   0   'False
      Width           =   495
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Cancel"
      Height          =   375
      Left            =   2160
      TabIndex        =   5
      Top             =   2040
      Width           =   1215
   End
   Begin VB.CommandButton Command1 
      Caption         =   "OK"
      Height          =   375
      Left            =   720
      TabIndex        =   4
      Top             =   2040
      Width           =   1215
   End
   Begin VB.ComboBox Combo1 
      Height          =   315
      Left            =   240
      TabIndex        =   3
      Text            =   "4"
      Top             =   600
      Width           =   4095
   End
   Begin VB.TextBox Text1 
      Height          =   315
      Left            =   240
      TabIndex        =   1
      Top             =   1560
      Width           =   4095
   End
   Begin VB.Label Label2 
      Caption         =   "Enter Field Name"
      Height          =   375
      Left            =   120
      TabIndex        =   2
      Top             =   1080
      Width           =   4095
   End
   Begin VB.Label Label1 
      Caption         =   "Number of Times"
      Height          =   375
      Left            =   120
      TabIndex        =   0
      Top             =   120
      Width           =   3975
   End
End
Attribute VB_Name = "select1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
frmMain1.RTBox.SelText = "<SELECT" + "  " + "NAME=" + Text2.Text + Text1.Text + Text2.Text + ">" + Chr(10)
For i = 1 To Combo1.Text
frmMain1.RTBox.SelText = "<OPTION>" + "</OPTION>" + Chr(10)
Next
frmMain1.RTBox.SelText = "</SELECT>"
Unload Me
End Sub

Private Sub Command2_Click()
Unload Me
End Sub

Private Sub Form_Load()
For i = 1 To 9
Combo1.AddItem i
Next
End Sub
