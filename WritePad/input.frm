VERSION 5.00
Begin VB.Form input1 
   Caption         =   "INPUT"
   ClientHeight    =   3600
   ClientLeft      =   60
   ClientTop       =   420
   ClientWidth     =   4560
   Icon            =   "input.frx":0000
   LinkTopic       =   "Form2"
   ScaleHeight     =   3600
   ScaleWidth      =   4560
   StartUpPosition =   3  'Windows Default
   Begin VB.TextBox Text3 
      Height          =   375
      Left            =   600
      TabIndex        =   8
      Text            =   """"
      Top             =   4200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Cancel"
      Height          =   375
      Left            =   2400
      TabIndex        =   7
      Top             =   3120
      Width           =   1095
   End
   Begin VB.CommandButton Command1 
      Caption         =   "OK"
      Height          =   375
      Left            =   960
      TabIndex        =   6
      Top             =   3120
      Width           =   1095
   End
   Begin VB.ComboBox Combo1 
      Height          =   315
      Left            =   240
      TabIndex        =   5
      Text            =   "Text"
      Top             =   600
      Width           =   4095
   End
   Begin VB.TextBox Text2 
      Height          =   315
      Left            =   240
      TabIndex        =   4
      Top             =   2520
      Width           =   4095
   End
   Begin VB.TextBox Text1 
      Height          =   315
      Left            =   240
      TabIndex        =   1
      Top             =   1560
      Width           =   4095
   End
   Begin VB.Label Label3 
      Caption         =   "Enter Value"
      Height          =   375
      Left            =   120
      TabIndex        =   3
      Top             =   2040
      Width           =   4335
   End
   Begin VB.Label Label2 
      Caption         =   "Enter Input Name"
      Height          =   375
      Left            =   120
      TabIndex        =   2
      Top             =   1080
      Width           =   4335
   End
   Begin VB.Label Label1 
      Caption         =   "Enter Input Type"
      Height          =   255
      Left            =   120
      TabIndex        =   0
      Top             =   240
      Width           =   3855
   End
End
Attribute VB_Name = "input1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
frmMain1.RTBox.SelText = "<INPUT" + "  " + "TYPE=" + Text3.Text + Combo1.Text + Text3.Text + "  " + "NAME=" + Text3.Text + Text1.Text + Text3.Text + "  " + "VALUE=" + Text3.Text + Text2.Text + Text3.Text + ">"
Unload Me
End Sub

Private Sub Command2_Click()
Unload Me
End Sub

Private Sub Form_Load()
Combo1.AddItem "Button"
Combo1.AddItem "CheckBox"
Combo1.AddItem "File"
Combo1.AddItem "Hidden"
Combo1.AddItem "Image"
Combo1.AddItem "Password"
Combo1.AddItem "Ratio"
Combo1.AddItem "Reset"
Combo1.AddItem "Submit"
Combo1.AddItem "Text"
End Sub
