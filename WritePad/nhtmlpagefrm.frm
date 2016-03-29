VERSION 5.00
Begin VB.Form nhtmlpagefrm 
   Caption         =   "HTML "
   ClientHeight    =   4875
   ClientLeft      =   60
   ClientTop       =   420
   ClientWidth     =   4950
   Icon            =   "nhtmlpagefrm.frx":0000
   LinkTopic       =   "Form2"
   ScaleHeight     =   4875
   ScaleWidth      =   4950
   StartUpPosition =   3  'Windows Default
   Begin VB.TextBox Text1 
      Height          =   315
      Left            =   120
      TabIndex        =   7
      Top             =   480
      Width           =   4695
   End
   Begin VB.TextBox Text2 
      Height          =   315
      Left            =   120
      TabIndex        =   6
      Top             =   1320
      Width           =   4695
   End
   Begin VB.TextBox Text3 
      Height          =   315
      Left            =   120
      TabIndex        =   5
      Top             =   2160
      Width           =   4695
   End
   Begin VB.TextBox Text4 
      Height          =   315
      Left            =   120
      TabIndex        =   4
      Top             =   3000
      Width           =   4695
   End
   Begin VB.TextBox Text5 
      Height          =   315
      Left            =   120
      TabIndex        =   3
      Top             =   3840
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
      Caption         =   "Web Page Title"
      Height          =   255
      Left            =   120
      TabIndex        =   12
      Top             =   120
      Width           =   2775
   End
   Begin VB.Label Label2 
      Caption         =   "Web Page Description"
      Height          =   255
      Left            =   120
      TabIndex        =   11
      Top             =   960
      Width           =   2775
   End
   Begin VB.Label Label3 
      Caption         =   "  Your name"
      Height          =   255
      Left            =   120
      TabIndex        =   10
      Top             =   2640
      Width           =   2775
   End
   Begin VB.Label Label4 
      Caption         =   "Your Email Address"
      Height          =   255
      Left            =   120
      TabIndex        =   9
      Top             =   3480
      Width           =   2775
   End
   Begin VB.Label Label5 
      Caption         =   "Web Page Keyword"
      Height          =   255
      Left            =   120
      TabIndex        =   8
      Top             =   1800
      Width           =   2775
   End
End
Attribute VB_Name = "nhtmlpagefrm"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
frmMain1.RTBox.SelText = "<HTML>" + Chr(13) + Chr(10) + "<HEAD>" + Chr(13) + Chr(10) + "<TITLE>" + Text1.text + "</TITLE>" + Chr(13) + Chr(10) + "<LINK REV=" + Text6.text + "made" + Text6.text + "  " + "HREF=" + Text6.text + "mailto:" + Text5.text + Text6.text + ">" + Chr(13) + Chr(10) + "<META NAME=" + Text6.text + "generator" + Text6.text + "  " + "CONTENT=" + Text6.text + "writepad 1.0" + Text6.text + ">" + Chr(13) + Chr(10) + "<META" + " NAME=" + Text6.text + "author" + Text6.text + "  " + "CONTENT=" + Text6.text + Text4.text + Text6.text + ">" + Chr(13) + Chr(10) + "<META" + " NAME=" + Text6.text + "description" + Text6.text + "  " + "CONTENT=" + Text6.text + Text2.text + Text6.text + ">" + Chr(13) + Chr(10) + "<META" + " NAME=" + Text6.text + "keywords" + Text6.text + "  " + " CONTENT=" + Text6.text + Text3.text + Text6.text + ">" + Chr(13) + Chr(10) + "</HEAD>"
Body.Show
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
