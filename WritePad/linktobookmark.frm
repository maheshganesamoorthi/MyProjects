VERSION 5.00
Begin VB.Form linktobookmark 
   Caption         =   "Link To Book Mark"
   ClientHeight    =   1455
   ClientLeft      =   60
   ClientTop       =   420
   ClientWidth     =   4680
   Icon            =   "linktobookmark.frx":0000
   LinkTopic       =   "Form2"
   ScaleHeight     =   1455
   ScaleWidth      =   4680
   StartUpPosition =   3  'Windows Default
   Begin VB.TextBox Text2 
      Height          =   375
      Left            =   1800
      TabIndex        =   4
      Text            =   """"
      Top             =   2400
      Visible         =   0   'False
      Width           =   495
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Cancel"
      Height          =   375
      Left            =   2400
      TabIndex        =   3
      Top             =   960
      Width           =   1215
   End
   Begin VB.CommandButton Command1 
      Caption         =   "OK"
      Height          =   375
      Left            =   960
      TabIndex        =   2
      Top             =   960
      Width           =   1215
   End
   Begin VB.TextBox Text1 
      Height          =   315
      Left            =   240
      TabIndex        =   1
      Top             =   480
      Width           =   4215
   End
   Begin VB.Label Label1 
      Caption         =   "Link To Book Mark"
      Height          =   255
      Left            =   120
      TabIndex        =   0
      Top             =   120
      Width           =   3975
   End
End
Attribute VB_Name = "linktobookmark"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
frmMain1.RTBox.SelText = "<A" + " " + "HREF=" + Text2.Text + "#" + Text1.Text + Text2.Text + "></A>"
Unload Me
End Sub

Private Sub Command2_Click()
Unload Me
End Sub
