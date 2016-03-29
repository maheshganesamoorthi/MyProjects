VERSION 5.00
Begin VB.Form frmhtmlbegin 
   Caption         =   "HTML Start"
   ClientHeight    =   4770
   ClientLeft      =   60
   ClientTop       =   420
   ClientWidth     =   4935
   Icon            =   "frmfont.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   4770
   ScaleWidth      =   4935
   StartUpPosition =   3  'Windows Default
   Begin VB.TextBox Text6 
      Height          =   375
      Left            =   1680
      TabIndex        =   12
      Text            =   """"
      Top             =   5640
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Cancel"
      Height          =   375
      Left            =   2640
      TabIndex        =   11
      Top             =   4320
      Width           =   1335
   End
   Begin VB.CommandButton Command1 
      Caption         =   "OK"
      Height          =   375
      Left            =   840
      TabIndex        =   10
      Top             =   4320
      Width           =   1335
   End
   Begin VB.TextBox Text5 
      Height          =   315
      Left            =   120
      TabIndex        =   9
      Top             =   3840
      Width           =   4695
   End
   Begin VB.TextBox Text4 
      Height          =   315
      Left            =   120
      TabIndex        =   8
      Top             =   3000
      Width           =   4695
   End
   Begin VB.TextBox Text3 
      Height          =   315
      Left            =   120
      TabIndex        =   7
      Top             =   2160
      Width           =   4695
   End
   Begin VB.TextBox Text2 
      Height          =   315
      Left            =   120
      TabIndex        =   6
      Top             =   1320
      Width           =   4695
   End
   Begin VB.TextBox Text1 
      Height          =   315
      Left            =   120
      TabIndex        =   5
      Top             =   480
      Width           =   4695
   End
   Begin VB.Label Label5 
      Caption         =   "Web Page Keyword"
      Height          =   255
      Left            =   120
      TabIndex        =   4
      Top             =   1800
      Width           =   2775
   End
   Begin VB.Label Label4 
      Caption         =   "Your Email Address"
      Height          =   255
      Left            =   120
      TabIndex        =   3
      Top             =   3480
      Width           =   2775
   End
   Begin VB.Label Label3 
      Caption         =   "  Your name"
      Height          =   255
      Left            =   120
      TabIndex        =   2
      Top             =   2640
      Width           =   2775
   End
   Begin VB.Label Label2 
      Caption         =   "Web Page Description"
      Height          =   255
      Left            =   120
      TabIndex        =   1
      Top             =   960
      Width           =   2775
   End
   Begin VB.Label Label1 
      Caption         =   "Web Page Title"
      Height          =   255
      Left            =   120
      TabIndex        =   0
      Top             =   120
      Width           =   2775
   End
End
Attribute VB_Name = "frmhtmlbegin"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
frmMain1.RTBox.SelText = "<HTML>" + Chr(13) + Chr(10) + "<HEAD>" + Chr(13) + Chr(10) + "<TITLE>" + Text1.Text + "</TITLE>" + Chr(13) + Chr(10) + "<LINK REV=" + Text6.Text + "made" + Text6.Text + "  " + "HREF=" + Text6.Text + "mailto:" + Text5.Text + Text6.Text + ">" + Chr(13) + Chr(10) + "<META NAME=" + Text6.Text + "generator" + Text6.Text + "  " + "CONTENT=" + Text6.Text + "writepad 1.0" + Text6.Text + ">" + Chr(13) + Chr(10) + "<META" + " NAME=" + Text6.Text + "author" + Text6.Text + "  " + "CONTENT=" + Text6.Text + Text4.Text + Text6.Text + ">" + Chr(13) + Chr(10) + "<META" + " NAME=" + Text6.Text + "description" + Text6.Text + "  " + "CONTENT=" + Text6.Text + Text2.Text + Text6.Text + ">" + Chr(13) + Chr(10) + "<META" + " NAME=" + Text6.Text + "keywords" + Text6.Text + "  " + " CONTENT=" + Text6.Text + Text3.Text + Text6.Text + ">" + Chr(13) + Chr(10) + "</HEAD>"
Unload Me
End Sub


Private Sub Command2_Click()
Unload Me
End Sub

Private Sub Form_Load()
frmhtmlbegin.WindowState = vbNormal
Text1.Width = 4695
Text2.Width = 4695
Text3.Width = 4695
Text4.Width = 4695
frmhtmlbegin.Width = 5205
frmhtmlbegin.Height = 5355

End Sub

