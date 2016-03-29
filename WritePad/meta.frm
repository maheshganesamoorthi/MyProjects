VERSION 5.00
Begin VB.Form meta 
   Caption         =   "Meta"
   ClientHeight    =   3090
   ClientLeft      =   60
   ClientTop       =   420
   ClientWidth     =   4710
   Icon            =   "meta.frx":0000
   LinkTopic       =   "Form2"
   ScaleHeight     =   3090
   ScaleWidth      =   4710
   StartUpPosition =   3  'Windows Default
   Begin VB.TextBox Text2 
      Height          =   495
      Left            =   2160
      TabIndex        =   8
      Text            =   """"
      Top             =   4080
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.ComboBox Combo2 
      Height          =   315
      Left            =   240
      TabIndex        =   7
      Top             =   1320
      Width           =   4215
   End
   Begin VB.TextBox Text1 
      Height          =   315
      Left            =   240
      TabIndex        =   3
      Top             =   2160
      Width           =   4215
   End
   Begin VB.ComboBox Combo1 
      Height          =   315
      Left            =   240
      TabIndex        =   2
      Top             =   480
      Width           =   4215
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Cancel"
      Height          =   375
      Left            =   2520
      TabIndex        =   1
      Top             =   2640
      Width           =   1215
   End
   Begin VB.CommandButton Command2 
      Caption         =   "OK"
      Height          =   375
      Left            =   960
      TabIndex        =   0
      Top             =   2640
      Width           =   1215
   End
   Begin VB.Label Label1 
      Caption         =   "HTTP  Header String"
      Height          =   255
      Left            =   120
      TabIndex        =   6
      Top             =   120
      Width           =   4215
   End
   Begin VB.Label Label2 
      Caption         =   "Meta Information"
      Height          =   255
      Left            =   120
      TabIndex        =   5
      Top             =   960
      Width           =   4455
   End
   Begin VB.Label Label3 
      Caption         =   "Content"
      Height          =   255
      Left            =   120
      TabIndex        =   4
      Top             =   1800
      Width           =   4335
   End
End
Attribute VB_Name = "meta"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command2_Click()
frmMain1.RTBox.SelText = "<META" + " " + "HTTP-EQUIV=" + Text2.Text + Combo1.Text + Text2.Text + "  " + "NAME=" + Text2.Text + Combo2.Text + Text2.Text + "  " + "CONTENT=" + Text2.Text + Text1.Text + Text2.Text + ">"
Unload Me
End Sub

Private Sub Command1_Click()
Unload Me
End Sub

Private Sub Form_Load()
Combo1.AddItem "content-type"
Combo1.AddItem "expires"
Combo1.AddItem "page-enter"
Combo1.AddItem "pics-label"
Combo1.AddItem "pragma"
Combo1.AddItem "refresh"

Combo2.AddItem "author"
Combo2.AddItem "copyright"
Combo2.AddItem "date"
Combo2.AddItem "description"
Combo2.AddItem "generator"
Combo2.AddItem "identifier"
Combo2.AddItem "keywords"
Combo2.AddItem "revisit-after"
Combo2.AddItem "robots"
End Sub
