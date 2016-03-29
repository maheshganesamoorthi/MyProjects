VERSION 5.00
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "COMDLG32.OCX"
Begin VB.Form linkimage 
   Caption         =   "Link With Image"
   ClientHeight    =   3225
   ClientLeft      =   60
   ClientTop       =   420
   ClientWidth     =   4845
   Icon            =   "linkimage.frx":0000
   LinkTopic       =   "Form2"
   ScaleHeight     =   3225
   ScaleWidth      =   4845
   StartUpPosition =   3  'Windows Default
   Begin VB.TextBox Text6 
      Height          =   375
      Left            =   2520
      TabIndex        =   11
      Text            =   """"
      Top             =   4320
      Visible         =   0   'False
      Width           =   375
   End
   Begin MSComDlg.CommonDialog dlgCommonDialog 
      Left            =   1080
      Top             =   3720
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
   End
   Begin VB.TextBox Text5 
      Height          =   285
      Left            =   120
      TabIndex        =   10
      Text            =   "Text5"
      Top             =   3960
      Visible         =   0   'False
      Width           =   615
   End
   Begin VB.TextBox Text4 
      Height          =   285
      Left            =   120
      TabIndex        =   9
      Text            =   "Text4"
      Top             =   3600
      Visible         =   0   'False
      Width           =   615
   End
   Begin VB.CommandButton Command3 
      Caption         =   "..."
      Height          =   315
      Left            =   4440
      TabIndex        =   8
      Top             =   1320
      Width           =   255
   End
   Begin VB.TextBox Text3 
      Height          =   315
      Left            =   240
      TabIndex        =   7
      Top             =   1320
      Width           =   4095
   End
   Begin VB.TextBox Text1 
      Height          =   315
      Left            =   240
      TabIndex        =   3
      Top             =   480
      Width           =   4455
   End
   Begin VB.TextBox Text2 
      Height          =   315
      Left            =   240
      TabIndex        =   2
      Top             =   2160
      Width           =   4455
   End
   Begin VB.CommandButton Command1 
      Caption         =   "OK"
      Height          =   375
      Left            =   960
      TabIndex        =   1
      Top             =   2760
      Width           =   1215
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Cancel"
      Height          =   375
      Left            =   2400
      TabIndex        =   0
      Top             =   2760
      Width           =   1215
   End
   Begin VB.Image Image1 
      Height          =   375
      Left            =   240
      Top             =   4320
      Visible         =   0   'False
      Width           =   615
   End
   Begin VB.Label Label1 
      Caption         =   "Link URL"
      Height          =   255
      Left            =   120
      TabIndex        =   6
      Top             =   120
      Width           =   2415
   End
   Begin VB.Label Label2 
      Caption         =   "Picture  Name"
      Height          =   255
      Left            =   120
      TabIndex        =   5
      Top             =   960
      Width           =   3015
   End
   Begin VB.Label Label3 
      Caption         =   "Description"
      Height          =   255
      Left            =   120
      TabIndex        =   4
      Top             =   1800
      Width           =   3255
   End
End
Attribute VB_Name = "linkimage"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
Text4.Text = Val(Image1.Width)
Text5.Text = Val(Image1.Height)
If Text1.Text = "" And Text2.Text = "" And Text3.Text = "" Then
frmMain1.RTBox.SelText = "<A><IMG  BORDER=" + "0" + "></A>"
Else
frmMain1.RTBox.SelText = "<A" + "  " + "HREF=" + Text6.Text + Text1.Text + Text6.Text + "><IMG SRC=" + Text6.Text + Text3.Text + Text6.Text + "  " + "WIDTH=" + Text6.Text + Text4.Text + Text6.Text + "  " + "HEIGHT=" + Text6.Text + Text5.Text + Text6.Text + "  " + "BORDER=" + Text6.Text + "0" + Text6.Text + "  " + "ALT=" + Text6.Text + Text2.Text + Text6.Text + "></A>"
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
