VERSION 5.00
Begin VB.Form mailto 
   Caption         =   "Mail To"
   ClientHeight    =   2400
   ClientLeft      =   60
   ClientTop       =   420
   ClientWidth     =   4695
   Icon            =   "mailto.frx":0000
   LinkTopic       =   "Form2"
   ScaleHeight     =   2400
   ScaleWidth      =   4695
   StartUpPosition =   3  'Windows Default
   Begin VB.TextBox Text3 
      Height          =   375
      Left            =   1440
      TabIndex        =   6
      Text            =   """"
      Top             =   3720
      Visible         =   0   'False
      Width           =   495
   End
   Begin VB.CommandButton Command2 
      Caption         =   "OK"
      Height          =   375
      Left            =   840
      TabIndex        =   3
      Top             =   1920
      Width           =   1215
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Cancel"
      Height          =   375
      Left            =   2400
      TabIndex        =   2
      Top             =   1920
      Width           =   1215
   End
   Begin VB.TextBox Text2 
      Height          =   315
      Left            =   240
      TabIndex        =   1
      Top             =   1440
      Width           =   4215
   End
   Begin VB.TextBox Text1 
      Height          =   315
      Left            =   240
      TabIndex        =   0
      Top             =   480
      Width           =   4215
   End
   Begin VB.Label Label2 
      Caption         =   "Link Description"
      Height          =   255
      Left            =   120
      TabIndex        =   5
      Top             =   1080
      Width           =   4455
   End
   Begin VB.Label Label1 
      Caption         =   "Email Address"
      Height          =   255
      Left            =   120
      TabIndex        =   4
      Top             =   120
      Width           =   4215
   End
End
Attribute VB_Name = "mailto"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
Unload Me
End Sub

Private Sub Command2_Click()
frmMain1.RTBox.SelText = "<A" + "  " + "HREF=" + Text3.Text + "mailto:" + Text1.Text + Text3.Text + ">" + Text2.Text + "</A>"
Unload Me
End Sub
