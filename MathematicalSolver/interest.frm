VERSION 5.00
Begin VB.Form interest 
   BackColor       =   &H00C0FFFF&
   Caption         =   "Interset"
   ClientHeight    =   8880
   ClientLeft      =   60
   ClientTop       =   420
   ClientWidth     =   10500
   Icon            =   "interest.frx":0000
   LinkTopic       =   "Form1"
   ScaleHeight     =   8880
   ScaleWidth      =   10500
   StartUpPosition =   3  'Windows Default
   Begin VB.Frame Frame1 
      BackColor       =   &H00C0FFFF&
      Caption         =   "Simple Interset :"
      ForeColor       =   &H000000FF&
      Height          =   3015
      Left            =   120
      TabIndex        =   0
      Top             =   1320
      Width           =   3615
      Begin VB.CommandButton Command2 
         Caption         =   "Clear"
         Height          =   375
         Left            =   1920
         TabIndex        =   10
         Top             =   2400
         Width           =   1215
      End
      Begin VB.CommandButton Command1 
         Caption         =   "Solve"
         Height          =   375
         Left            =   480
         TabIndex        =   9
         Top             =   2400
         Width           =   1215
      End
      Begin VB.TextBox Text4 
         Height          =   375
         Left            =   1440
         TabIndex        =   8
         Top             =   1800
         Width           =   1935
      End
      Begin VB.TextBox Text3 
         Height          =   375
         Left            =   1440
         TabIndex        =   6
         Top             =   1320
         Width           =   1935
      End
      Begin VB.TextBox Text2 
         Height          =   375
         Left            =   1440
         TabIndex        =   5
         Top             =   840
         Width           =   1935
      End
      Begin VB.TextBox Text1 
         Height          =   375
         Left            =   1440
         TabIndex        =   4
         Top             =   360
         Width           =   1935
      End
      Begin VB.Label Label4 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Simple Interest :"
         Height          =   375
         Left            =   120
         TabIndex        =   7
         Top             =   1800
         Width           =   1215
      End
      Begin VB.Label Label3 
         BackColor       =   &H00C0FFFF&
         Caption         =   "R"
         ForeColor       =   &H00000000&
         Height          =   375
         Left            =   120
         TabIndex        =   3
         Top             =   1320
         Width           =   1215
      End
      Begin VB.Label Label2 
         BackColor       =   &H00C0FFFF&
         Caption         =   "N"
         ForeColor       =   &H00000000&
         Height          =   375
         Left            =   120
         TabIndex        =   2
         Top             =   840
         Width           =   1215
      End
      Begin VB.Label Label1 
         BackColor       =   &H00C0FFFF&
         Caption         =   "P"
         ForeColor       =   &H00000000&
         Height          =   375
         Left            =   120
         TabIndex        =   1
         Top             =   360
         Width           =   1215
      End
   End
End
Attribute VB_Name = "interest"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim A, B, C, D As Long

Private Sub Command1_Click()
On Error GoTo errhan:
A = Val(Text1.Text)
B = Val(Text2.Text)
C = Val(Text3.Text)
Text4.Text = (A * B * C) / 100
Exit Sub
errhan:
 MsgBox err.Description, vbInformation

End Sub

Private Sub Command2_Click()
Text1.Text = ""
Text2.Text = ""
Text3.Text = ""
Text4.Text = ""
End Sub

Private Sub Form_Load()
Me.WindowState = vbMaximized
End Sub

Private Sub Text2_Validate(Cancel As Boolean)
If IsNumeric(Text2.Text) = False And Text2.Text <> "" Then
 If (Text2.Text <> "-") Then
  i = MsgBox(Text2.Text & " " & "is not a numeric value.Enter only numeric values", vbInformation)
  Text2.Text = ""
  Text2.SetFocus
 End If
End If
End Sub

Private Sub Text1_Validate(Cancel As Boolean)
If IsNumeric(Text1.Text) = False And Text1.Text <> "" Then
 If (Text1.Text <> "-") Then
  i = MsgBox(Text1.Text & " " & "is not a numeric value.Enter only numeric values", vbInformation)
  Text1.Text = ""
  Text1.SetFocus
 End If
End If
End Sub
Private Sub Text3_Validate(Cancel As Boolean)
If IsNumeric(Text3.Text) = False And Text3.Text <> "" Then
 If (Text3.Text <> "-") Then
  i = MsgBox(Text3.Text & " " & "is not a numeric value.Enter only numeric values", vbInformation)
  Text3.Text = ""
  Text3.SetFocus
 End If
End If
End Sub
Private Sub Text4_Validate(Cancel As Boolean)
If IsNumeric(Text4.Text) = False And Text4.Text <> "" Then
 If (Text4.Text <> "-") Then
  i = MsgBox(Text4.Text & " " & "is not a numeric value.Enter only numeric values", vbInformation)
  Text4.Text = ""
  Text4.SetFocus
 End If
End If
End Sub

