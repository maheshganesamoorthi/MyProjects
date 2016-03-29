VERSION 5.00
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "COMDLG32.OCX"
Object = "{3B7C8863-D78F-101B-B9B5-04021C009402}#1.2#0"; "RICHTX32.OCX"
Begin VB.Form convert 
   Caption         =   "Form2"
   ClientHeight    =   2340
   ClientLeft      =   60
   ClientTop       =   420
   ClientWidth     =   7980
   Icon            =   "convert.frx":0000
   LinkTopic       =   "Form2"
   MaxButton       =   0   'False
   ScaleHeight     =   2340
   ScaleWidth      =   7980
   StartUpPosition =   3  'Windows Default
   Begin MSComDlg.CommonDialog dlgCommonDialog1 
      Left            =   240
      Top             =   1920
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Browse text file"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   2280
      TabIndex        =   2
      Top             =   1800
      Width           =   1695
   End
   Begin VB.TextBox Text2 
      Height          =   375
      Left            =   1680
      TabIndex        =   1
      Top             =   1080
      Width           =   5895
   End
   Begin VB.CommandButton Command1 
      BackColor       =   &H8000000A&
      Caption         =   "Create HTML file"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   4080
      TabIndex        =   0
      Top             =   1800
      Width           =   1695
   End
   Begin MSComDlg.CommonDialog dlgCommonDialog 
      Left            =   6960
      Top             =   2100
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
   End
   Begin RichTextLib.RichTextBox RTBox1 
      Height          =   7110
      Left            =   0
      TabIndex        =   3
      Top             =   4320
      Visible         =   0   'False
      Width           =   14895
      _ExtentX        =   26273
      _ExtentY        =   12541
      _Version        =   393217
      Enabled         =   -1  'True
      ScrollBars      =   3
      TextRTF         =   $"convert.frx":0CCA
   End
   Begin RichTextLib.RichTextBox RTBox 
      Height          =   7095
      Left            =   0
      TabIndex        =   4
      Top             =   3420
      Visible         =   0   'False
      Width           =   14895
      _ExtentX        =   26273
      _ExtentY        =   12515
      _Version        =   393217
      Enabled         =   -1  'True
      ScrollBars      =   3
      TextRTF         =   $"convert.frx":0D4C
   End
   Begin VB.Label Label6 
      Caption         =   "C O N V E R T I N G   T E X T   F I L E   I N T O   H T M L  F I L E "
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000000&
      Height          =   375
      Left            =   600
      TabIndex        =   6
      Top             =   360
      Width           =   6975
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      Caption         =   "Input Text File: "
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000000&
      Height          =   195
      Left            =   240
      TabIndex        =   5
      Top             =   1200
      Width           =   1365
   End
End
Attribute VB_Name = "convert"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private Sub Command1_Click()
    convert_click
    dlgCommonDialog.CancelError = True
    On Error GoTo errhandler:
    'dlgCommonDialog.Filter = "HTML Files (*.html)|*.html|HTM Files (*.htm )|*.htm "
    'dlgCommonDialog.ShowSave
    'thefile = dlgCommonDialog.FileName

    'If dlgCommonDialog.FileName <> "" Then
    'Open dlgCommonDialog.FileName For Output As #1
    'Print #1, RTBox1.Text
    'Close #1
    'End If
    
    
    dlgCommonDialog1.Filter = "HTML Files (*.html)|*.html"
    dlgCommonDialog1.ShowSave
    thefile = dlgCommonDialog.FileName
    'If dlgCommonDialog1.FileName <> "" Then
    Open dlgCommonDialog1.FileName For Output As #1
    Print #1, RTBox1.text
    Close #1
    'End If
    MsgBox "Done", vbApplicationModal, "Done"
errhandler:
RTBox1.text = ""
 End Sub


Private Sub Command2_Click()

dlgCommonDialog.Filter = "All Files (*.*)|*.*|Text Files (*.txt)|*.txt"
dlgCommonDialog.FilterIndex = 2
dlgCommonDialog.ShowOpen
  Dim LoadFileToTB As Boolean
 Dim TxtBox As Object
 Dim FilePath As String
  Dim Append As Boolean
Dim iFile As Integer
Dim s As String
If Dir(FilePath) = "" Then Exit Sub
On Error GoTo ErrorHandler:
s = RTBox.text
iFile = FreeFile
Open dlgCommonDialog.FileName For Input As #iFile
s = Input(LOF(iFile), #iFile)
If Append Then
    RTBox.text = RTBox.text & s
Else
    RTBox.text = s
End If
LoadFileToTB = True
 thefile = dlgCommonDialog.FileName
 Text2.text = thefile
ErrorHandler:
If iFile > 0 Then Close #iFile
End Sub
Private Sub convert_click()
RTBox1.text = "<HTML>" + Chr(10) + Chr(13) + "<HEAD>" + Chr(10) + Chr(13) + "<TITLE>" + Example + "</TITLE>" + Chr(13) + Chr(10) + "</HEAD>" + Chr(13) + Chr(10) + "<BODY>" + Chr(13) + Chr(10) + RTBox.text + Chr(13) + Chr(10) + "</BODY>" + Chr(13) + Chr(10) + "</HTML>"
End Sub


