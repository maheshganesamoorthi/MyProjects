VERSION 5.00
Begin VB.Form Bookmark 
   Caption         =   "Book Mark"
   ClientHeight    =   1545
   ClientLeft      =   60
   ClientTop       =   420
   ClientWidth     =   5070
   Icon            =   "Bookmark.frx":0000
   LinkTopic       =   "Form2"
   ScaleHeight     =   1545
   ScaleWidth      =   5070
   StartUpPosition =   3  'Windows Default
   Begin VB.TextBox Text2 
      Height          =   285
      Left            =   1080
      TabIndex        =   4
      Text            =   """"
      Top             =   1800
      Visible         =   0   'False
      Width           =   375
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Cancel"
      Height          =   375
      Left            =   2520
      TabIndex        =   3
      Top             =   1080
      Width           =   1455
   End
   Begin VB.CommandButton Command1 
      Caption         =   "OK"
      Height          =   375
      Left            =   960
      TabIndex        =   2
      Top             =   1080
      Width           =   1335
   End
   Begin VB.TextBox Text1 
      Height          =   315
      Left            =   240
      TabIndex        =   1
      Top             =   600
      Width           =   4575
   End
   Begin VB.Label Label1 
      Caption         =   "Enter The Book Mark"
      Height          =   255
      Left            =   120
      TabIndex        =   0
      Top             =   240
      Width           =   4095
   End
End
Attribute VB_Name = "Bookmark"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
frmMain1.RTBox.SelText = "<A" + " " + "NAME=" + Text2.Text + Text1.Text + Text2.Text + ">" + "</A>"
Unload Me
End Sub

Private Sub Command2_Click()
Unload Me
End Sub
