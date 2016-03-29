VERSION 5.00
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "COMDLG32.OCX"
Begin VB.Form Htmlimage 
   Caption         =   "Image"
   ClientHeight    =   6030
   ClientLeft      =   60
   ClientTop       =   420
   ClientWidth     =   4845
   Icon            =   "Htmlimage.frx":0000
   LinkTopic       =   "Form2"
   ScaleHeight     =   6030
   ScaleWidth      =   4845
   StartUpPosition =   3  'Windows Default
   Begin VB.TextBox Text7 
      Height          =   285
      Left            =   960
      TabIndex        =   17
      Text            =   """"
      Top             =   7080
      Visible         =   0   'False
      Width           =   375
   End
   Begin VB.TextBox Text6 
      Height          =   375
      Left            =   120
      TabIndex        =   16
      Text            =   "Text6"
      Top             =   7080
      Visible         =   0   'False
      Width           =   375
   End
   Begin VB.TextBox Text5 
      Height          =   285
      Left            =   120
      TabIndex        =   15
      Text            =   "Text5"
      Top             =   6600
      Visible         =   0   'False
      Width           =   375
   End
   Begin MSComDlg.CommonDialog dlgCommonDialog 
      Left            =   4320
      Top             =   5520
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
   End
   Begin VB.TextBox Text4 
      Height          =   315
      Left            =   120
      TabIndex        =   14
      Top             =   480
      Width           =   4215
   End
   Begin VB.TextBox Text3 
      Height          =   315
      Left            =   120
      TabIndex        =   13
      Top             =   3960
      Width           =   4575
   End
   Begin VB.TextBox Text2 
      Height          =   315
      Left            =   120
      TabIndex        =   12
      Top             =   3120
      Width           =   4575
   End
   Begin VB.CommandButton Command1 
      Caption         =   "OK"
      Height          =   375
      Left            =   720
      TabIndex        =   5
      Top             =   5520
      Width           =   1335
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Cancel"
      Height          =   375
      Left            =   2520
      TabIndex        =   4
      Top             =   5520
      Width           =   1335
   End
   Begin VB.ComboBox Combo2 
      Height          =   315
      Left            =   120
      TabIndex        =   3
      Top             =   1320
      Width           =   4575
   End
   Begin VB.ComboBox Combo3 
      Height          =   315
      Left            =   120
      TabIndex        =   2
      Top             =   2280
      Width           =   4575
   End
   Begin VB.CommandButton Command3 
      Caption         =   "..."
      Height          =   315
      Left            =   4440
      TabIndex        =   1
      Top             =   480
      Width           =   255
   End
   Begin VB.TextBox Text1 
      Height          =   315
      Left            =   120
      TabIndex        =   0
      Top             =   4920
      Width           =   4575
   End
   Begin VB.Image Image1 
      Height          =   375
      Left            =   120
      Top             =   6120
      Visible         =   0   'False
      Width           =   495
   End
   Begin VB.Label Label1 
      Caption         =   "Picture File name"
      Height          =   255
      Left            =   120
      TabIndex        =   11
      Top             =   120
      Width           =   2895
   End
   Begin VB.Label Label2 
      Caption         =   "Border "
      Height          =   255
      Left            =   120
      TabIndex        =   10
      Top             =   960
      Width           =   2895
   End
   Begin VB.Label Label3 
      Caption         =   "Align"
      Height          =   375
      Left            =   120
      TabIndex        =   9
      Top             =   1800
      Width           =   2895
   End
   Begin VB.Label Label4 
      Caption         =   "Horizontal space"
      Height          =   255
      Left            =   120
      TabIndex        =   8
      Top             =   2760
      Width           =   2895
   End
   Begin VB.Label Label5 
      Caption         =   "Vertical space"
      Height          =   255
      Left            =   120
      TabIndex        =   7
      Top             =   3600
      Width           =   2895
   End
   Begin VB.Label Label6 
      Caption         =   "Picture Description"
      Height          =   375
      Left            =   120
      TabIndex        =   6
      Top             =   4440
      Width           =   2895
   End
End
Attribute VB_Name = "Htmlimage"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private Sub Command1_Click()
Text5.Text = Val(Image1.Width)
Text6.Text = Val(Image1.Height)
frmMain1.RTBox.SelText = "<IMG" + "  " + "SRC=" + Text7.Text + Text4.Text + Text7.Text + "WIDTH=" + Text7.Text + Text5.Text + Text7.Text + "  " + " HEIGHT=" + Text7.Text + Text6.Text + Text7.Text + "  " + "BORDER=" + Combo2.Text + "  " + "ALIGN=" + Text7.Text + Combo3.Text + Text7.Text + "  " + " HSPACE=" + Text7.Text + Text2.Text + "  " + " VSPACE=" + Text7.Text + Text3.Text + Text7.Text + "  " + " ALT=" + Text7.Text + Text1.Text + Text7.Text + ">"
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
Text4.Text = strfilename
Image1.Picture = LoadPicture(strfilename)
Close #1
Exit Sub

ErrorHandler:
End Sub

Private Sub Form_Load()
Combo2.AddItem "0"
Combo2.AddItem "1"
Combo2.AddItem "2"
Combo2.AddItem "3"
Combo2.AddItem "4"
Combo2.AddItem "5"

Combo3.AddItem "Bottom"
Combo3.AddItem "Left"
Combo3.AddItem "Middle"
Combo3.AddItem "Right"
Combo3.AddItem "Top"
End Sub
