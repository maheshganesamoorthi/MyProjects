VERSION 5.00
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "COMDLG32.OCX"
Begin VB.Form imagelink 
   Caption         =   "Image Link"
   ClientHeight    =   2370
   ClientLeft      =   60
   ClientTop       =   420
   ClientWidth     =   4980
   Icon            =   "imagelink.frx":0000
   LinkTopic       =   "Form2"
   ScaleHeight     =   2370
   ScaleWidth      =   4980
   StartUpPosition =   3  'Windows Default
   Begin VB.TextBox Text1 
      Height          =   375
      Left            =   2280
      TabIndex        =   9
      Text            =   """"
      Top             =   3240
      Visible         =   0   'False
      Width           =   375
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Cancel"
      Height          =   375
      Left            =   2400
      TabIndex        =   6
      Top             =   1920
      Width           =   1215
   End
   Begin VB.CommandButton Command1 
      Caption         =   "OK"
      Height          =   375
      Left            =   960
      TabIndex        =   5
      Top             =   1920
      Width           =   1215
   End
   Begin VB.TextBox Text2 
      Height          =   315
      Left            =   240
      TabIndex        =   4
      Top             =   1320
      Width           =   4455
   End
   Begin VB.TextBox Text3 
      Height          =   315
      Left            =   240
      TabIndex        =   3
      Top             =   480
      Width           =   4095
   End
   Begin VB.CommandButton Command3 
      Caption         =   "..."
      Height          =   315
      Left            =   4440
      TabIndex        =   2
      Top             =   480
      Width           =   255
   End
   Begin VB.TextBox Text4 
      Height          =   285
      Left            =   120
      TabIndex        =   1
      Text            =   "Text4"
      Top             =   2760
      Visible         =   0   'False
      Width           =   615
   End
   Begin VB.TextBox Text5 
      Height          =   285
      Left            =   120
      TabIndex        =   0
      Text            =   "Text5"
      Top             =   3120
      Visible         =   0   'False
      Width           =   615
   End
   Begin MSComDlg.CommonDialog dlgCommonDialog 
      Left            =   1080
      Top             =   2880
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
   End
   Begin VB.Label Label3 
      Caption         =   "Description"
      Height          =   255
      Left            =   120
      TabIndex        =   8
      Top             =   960
      Width           =   3255
   End
   Begin VB.Label Label2 
      Caption         =   "Picture  Name"
      Height          =   255
      Left            =   120
      TabIndex        =   7
      Top             =   120
      Width           =   3015
   End
   Begin VB.Image Image1 
      Height          =   375
      Left            =   240
      Top             =   3480
      Visible         =   0   'False
      Width           =   615
   End
End
Attribute VB_Name = "imagelink"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
Text4.Text = Val(Image1.Width)
Text5.Text = Val(Image1.Height)
If Text2.Text = "" And Text3.Text = "" Then
frmMain1.RTBox.SelText = "<IMG" + "  " + "BORDER=" + Text1.Text + "0" + Text1.Text + "  " + "ALT=" + Text1.Text + Text1.Text + ">"
Else
frmMain1.RTBox.SelText = "<IMG SRC=" + Text1.Text + Text3.Text + Text1.Text + "  " + "WIDTH=" + Text1.Text + Text4.Text + Text1.Text + "  " + "HEIGHT=" + Text1.Text + Text5.Text + Text1.Text + "  " + "BORDER=" + Text1.Text + "0" + Text1.Text + "  " + "ALT=" + Text1.Text + Text2.Text + Text1.Text + ">"
End If
Unload Me
End Sub

Private Sub Command2_Click()
Unload Me
End Sub

Private Sub Command3_Click()
dlgCommonDialog.Filter = "JPG (*.jpg)|*.jpg|JPEG (*.jpeg)|*.jpeg"
dlgCommonDialog.ShowOpen
On Error GoTo ErrorHandler:
strfilename = dlgCommonDialog.FileName
Open strfilename For Input As #1
Text3.Text = strfilename
Image1.Picture = LoadPicture(strfilename)
Close #1
Exit Sub

ErrorHandler:
End Sub

