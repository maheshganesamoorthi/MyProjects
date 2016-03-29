VERSION 5.00
Begin VB.Form tablefrm 
   Caption         =   "Insert Table"
   ClientHeight    =   1695
   ClientLeft      =   60
   ClientTop       =   420
   ClientWidth     =   4680
   Icon            =   "tablefrm.frx":0000
   LinkTopic       =   "Form2"
   ScaleHeight     =   1695
   ScaleWidth      =   4680
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command2 
      Caption         =   "Cancel"
      Height          =   375
      Left            =   2280
      TabIndex        =   5
      Top             =   1200
      Width           =   1215
   End
   Begin VB.TextBox Text1 
      Height          =   375
      Left            =   2760
      TabIndex        =   2
      Text            =   "4"
      Top             =   120
      Width           =   1695
   End
   Begin VB.TextBox Text2 
      Height          =   375
      Left            =   2760
      TabIndex        =   1
      Text            =   "4"
      Top             =   600
      Width           =   1695
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Insert"
      Height          =   375
      Left            =   960
      TabIndex        =   0
      Top             =   1200
      Width           =   1215
   End
   Begin VB.Label Label2 
      Caption         =   "Enter the number of columns :"
      Height          =   375
      Left            =   120
      TabIndex        =   4
      Top             =   600
      Width           =   2535
   End
   Begin VB.Label Label1 
      Caption         =   "Enter the number of rows :"
      Height          =   375
      Left            =   120
      TabIndex        =   3
      Top             =   120
      Width           =   2535
   End
End
Attribute VB_Name = "tablefrm"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
Call InsertTable(frmMain1.RTBox, Val(Text1.Text), Val(Text2.Text))
Unload Me
End Sub

Private Sub Command2_Click()
Unload Me
End Sub
Public Sub InsertTable(Rtb As RichTextBox, vRows As Integer, vCols As Integer)
Dim A As String, i As Integer, j As Integer
A = "{\rtf1\ansi\ansicpg1252\deff0" & _
"{\fonttbl{\f0\froman\fprq2\fcharset0 Times New Roman;}}" & _
"\viewkind4\uc1\trowd\trqc\trgaph108\trleft-8" & _
"\trbrdrt\brdrs\brdrw10" & _
"\trbrdrl\brdrs\brdrw10" & _
"\trbrdrb\brdrs\brdrw10" & _
"\trbrdrr\brdrs\brdrw10"
For i = 1 To vCols
A = A & "\clbrdrt\brdrw15\brdrs" & _
"\clbrdrl\brdrw15\brdrs" & _
"\clbrdrb\brdrw15\brdrs" & _
"\clbrdrr\brdrw15\brdrs" & _
"\cellx" & _
CStr((ScaleX(Rtb.Width, Rtb.Parent.ScaleMode, vbTwips) \ vCols * 2) * i) & _
"\clbrdrt"
Next
A = A & "\pard\intbl\lang3082\f0\fs24"
For i = 1 To vRows
A = A & "\intbl\clmrg"
For j = 1 To vCols
A = A & "\cell"
Next
A = A & "\row"
Next
A = A & "}"
frmMain1.RTBox.SelText = A
End Sub


