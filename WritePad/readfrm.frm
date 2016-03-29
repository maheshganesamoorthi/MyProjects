VERSION 5.00
Object = "{2398E321-5C6E-11D1-8C65-0060081841DE}#1.0#0"; "Vtext.dll"
Begin VB.Form readfrm 
   Caption         =   "Read the Text"
   ClientHeight    =   2265
   ClientLeft      =   60
   ClientTop       =   420
   ClientWidth     =   3945
   Icon            =   "readfrm.frx":0000
   LinkTopic       =   "Form2"
   ScaleHeight     =   2265
   ScaleWidth      =   3945
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command1 
      Caption         =   "Command1"
      Height          =   375
      Left            =   3960
      TabIndex        =   9
      Top             =   720
      Visible         =   0   'False
      Width           =   975
   End
   Begin VB.Frame Frame3 
      Caption         =   "Voice ID"
      Height          =   735
      Left            =   2400
      TabIndex        =   6
      Top             =   120
      Width           =   1455
      Begin HTTSLibCtl.TextToSpeech sp 
         Height          =   375
         Left            =   960
         OleObjectBlob   =   "readfrm.frx":038A
         TabIndex        =   7
         Top             =   240
         Width           =   495
      End
      Begin VB.Label Label1 
         Caption         =   "Voice ID"
         Height          =   255
         Left            =   120
         TabIndex        =   8
         Top             =   315
         Width           =   1215
      End
   End
   Begin VB.Frame Frame4 
      Caption         =   "Controls"
      Height          =   735
      Left            =   2400
      TabIndex        =   3
      Top             =   960
      Width           =   1455
      Begin VB.PictureBox Picture1 
         Appearance      =   0  'Flat
         AutoSize        =   -1  'True
         BorderStyle     =   0  'None
         ForeColor       =   &H80000008&
         Height          =   240
         Left            =   360
         Picture         =   "readfrm.frx":03AE
         ScaleHeight     =   240
         ScaleWidth      =   240
         TabIndex        =   5
         ToolTipText     =   "Play"
         Top             =   330
         WhatsThisHelpID =   1390
         Width           =   240
      End
      Begin VB.PictureBox Picture2 
         Appearance      =   0  'Flat
         AutoSize        =   -1  'True
         BorderStyle     =   0  'None
         ForeColor       =   &H80000008&
         Height          =   240
         Left            =   840
         Picture         =   "readfrm.frx":0938
         ScaleHeight     =   240
         ScaleWidth      =   240
         TabIndex        =   4
         ToolTipText     =   "Stop"
         Top             =   330
         WhatsThisHelpID =   1390
         Width           =   240
      End
   End
   Begin VB.CommandButton Command2 
      Caption         =   "&Close"
      Height          =   375
      Left            =   2400
      TabIndex        =   2
      Top             =   1800
      Width           =   1455
   End
   Begin VB.Frame Frame5 
      Caption         =   "Voice"
      Height          =   2055
      Left            =   120
      TabIndex        =   0
      Top             =   120
      Width           =   2175
      Begin VB.ListBox List1 
         Height          =   1620
         Left            =   120
         TabIndex        =   1
         Top             =   240
         Width           =   1935
      End
   End
End
Attribute VB_Name = "readfrm"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private Sub Command2_Click()
Unload Me
End Sub

Private Sub Form_Load()
Dim Voices As Integer
Dim CountV As Integer

On Error GoTo ErrorHandler

Voices = sp.CountEngines

For CountV = 1 To Voices
    List1.AddItem sp.ModeName(CountV), CountV - 1
    List1.ListIndex = 0
Next

sp.Select (List1.ListIndex + 1)

Label1.Caption = sp.MfgName(List1.ListIndex + 1)

Exit Sub

ErrorHandler:
MsgBox "An unexpected error has occured.", vbExclamation, "Error"
Unload Me
End
End Sub

Private Sub List1_Click()
    sp.Select (List1.ListIndex + 1)
    Label1.Caption = sp.MfgName(List1.ListIndex + 1)
End Sub
Private Sub Picture1_Click()
    sp.Speak (frmMain1.RTBox.Text)
    Sspeak = True
End Sub
Private Sub Picture2_Click()
    On Error Resume Next
    sp.StopSpeaking
End Sub
