VERSION 5.00
Begin VB.Form link 
   Caption         =   "Link"
   ClientHeight    =   3225
   ClientLeft      =   60
   ClientTop       =   420
   ClientWidth     =   4785
   Icon            =   "Form2.frx":0000
   LinkTopic       =   "Form2"
   ScaleHeight     =   3225
   ScaleWidth      =   4785
   StartUpPosition =   3  'Windows Default
   Begin VB.TextBox Text3 
      Height          =   375
      Left            =   1440
      TabIndex        =   8
      Text            =   """"
      Top             =   3840
      Visible         =   0   'False
      Width           =   375
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Cancel"
      Height          =   375
      Left            =   2400
      TabIndex        =   7
      Top             =   2760
      Width           =   1215
   End
   Begin VB.CommandButton Command1 
      Caption         =   "OK"
      Height          =   375
      Left            =   960
      TabIndex        =   6
      Top             =   2760
      Width           =   1215
   End
   Begin VB.ComboBox Combo1 
      Height          =   315
      Left            =   240
      TabIndex        =   5
      Top             =   1320
      Width           =   4335
   End
   Begin VB.TextBox Text2 
      Height          =   315
      Left            =   240
      TabIndex        =   3
      Top             =   2160
      Width           =   4335
   End
   Begin VB.TextBox Text1 
      Height          =   315
      Left            =   240
      TabIndex        =   1
      Top             =   480
      Width           =   4335
   End
   Begin VB.Label Label3 
      Caption         =   "Description"
      Height          =   255
      Left            =   120
      TabIndex        =   4
      Top             =   1800
      Width           =   3255
   End
   Begin VB.Label Label2 
      Caption         =   "Target"
      Height          =   255
      Left            =   120
      TabIndex        =   2
      Top             =   960
      Width           =   3015
   End
   Begin VB.Label Label1 
      Caption         =   "Link URL"
      Height          =   255
      Left            =   120
      TabIndex        =   0
      Top             =   120
      Width           =   2415
   End
End
Attribute VB_Name = "link"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
If Text1.Text = "" And Text2.Text = "" And Combo1.Text = "" Then
frmMain1.RTBox.SelText = "<A></A>"
Else
frmMain1.RTBox.SelText = "<A" + "  " + "HREF=" + Text3.Text + Text1.Text + Text3.Text + "  " + "TARGET=" + "_" + Text3.Text + Combo1.Text + Text3.Text + ">" + Text2.Text + "</A>"
End If
Unload Me
End Sub

Private Sub Command2_Click()
Unload Me
End Sub

Private Sub Form_Load()
Combo1.AddItem "blank"
Combo1.AddItem "Parent"
Combo1.AddItem "self"
Combo1.AddItem "Top"
End Sub
