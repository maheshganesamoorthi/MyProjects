VERSION 5.00
Object = "{5E9E78A0-531B-11CF-91F6-C2863C385E30}#1.0#0"; "MSFLXGRD.OCX"
Begin VB.Form polyfrm 
   BackColor       =   &H00C0FFFF&
   Caption         =   "Polynomial Operations "
   ClientHeight    =   6240
   ClientLeft      =   60
   ClientTop       =   420
   ClientWidth     =   9480
   Icon            =   "polyfrm.frx":0000
   LinkTopic       =   "Form1"
   ScaleHeight     =   6240
   ScaleWidth      =   9480
   StartUpPosition =   3  'Windows Default
   Begin VB.Frame Frame1 
      BackColor       =   &H00C0FFFF&
      Caption         =   "Polynomial values:"
      ForeColor       =   &H000000FF&
      Height          =   2415
      Left            =   3840
      TabIndex        =   8
      Top             =   2880
      Width           =   5535
      Begin VB.TextBox numpol 
         Height          =   405
         Left            =   3600
         TabIndex        =   11
         Top             =   1080
         Width           =   1815
      End
      Begin VB.CommandButton cmdGo 
         Caption         =   "Go"
         Default         =   -1  'True
         Height          =   375
         Left            =   3840
         TabIndex        =   10
         Top             =   1680
         Width           =   975
      End
      Begin VB.TextBox txtVar 
         Height          =   405
         Left            =   3600
         MaxLength       =   3
         TabIndex        =   9
         Top             =   480
         Width           =   1815
      End
      Begin VB.Label Label1 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Enter the No.of  Polynomial :"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   120
         TabIndex        =   13
         Top             =   1080
         Width           =   3255
      End
      Begin VB.Label lblVar 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Enter the Order of Polynomial :"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   120
         TabIndex        =   12
         Top             =   540
         Width           =   3255
      End
   End
   Begin VB.Frame Frame2 
      BackColor       =   &H00C0FFFF&
      Caption         =   "Operation :"
      ForeColor       =   &H000000FF&
      Height          =   2415
      Left            =   120
      TabIndex        =   3
      Top             =   2880
      Width           =   3615
      Begin VB.OptionButton addop 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Addition"
         Height          =   375
         Left            =   480
         TabIndex        =   7
         Top             =   360
         Width           =   975
      End
      Begin VB.OptionButton subop 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Subtraction"
         Height          =   495
         Left            =   480
         TabIndex        =   6
         Top             =   720
         Width           =   1215
      End
      Begin VB.OptionButton mulop 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Mutiplication"
         Height          =   495
         Left            =   480
         TabIndex        =   5
         Top             =   1200
         Width           =   1935
      End
      Begin VB.OptionButton divop 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Divsion"
         Height          =   495
         Left            =   480
         TabIndex        =   4
         Top             =   1680
         Width           =   2295
      End
   End
   Begin VB.Frame Frame3 
      BackColor       =   &H00C0FFFF&
      Caption         =   "Result :"
      ForeColor       =   &H000000FF&
      Height          =   3495
      Left            =   120
      TabIndex        =   0
      Top             =   5400
      Width           =   9255
      Begin MSFlexGridLib.MSFlexGrid msFlexg 
         Height          =   1935
         Left            =   360
         TabIndex        =   14
         Top             =   720
         Width           =   8535
         _ExtentX        =   15055
         _ExtentY        =   3413
         _Version        =   393216
      End
      Begin VB.CommandButton cmdSolv 
         Caption         =   "Solve"
         Height          =   375
         Left            =   3840
         TabIndex        =   1
         Top             =   2880
         Width           =   1215
      End
      Begin VB.Label Label2 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Enter the value of  Polynomial :"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   240
         TabIndex        =   2
         Top             =   360
         Width           =   3255
      End
   End
   Begin VB.Image Image2 
      Height          =   690
      Left            =   6000
      Picture         =   "polyfrm.frx":038A
      Top             =   1920
      Width           =   4335
   End
   Begin VB.Image Image1 
      Height          =   1710
      Left            =   0
      Picture         =   "polyfrm.frx":9FC4
      Stretch         =   -1  'True
      Top             =   0
      Width           =   15360
   End
End
Attribute VB_Name = "polyfrm"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim arr(25, 25) As Long
Dim arr1(25, 25) As Long
Dim Multiplicand(100) As Long
Dim Multiplier(100) As Long
Dim Product(100) As Long
Dim Dividend(100) As Long
Dim divider(100) As Long

Private Sub addop_Click()
numpol.Enabled = True
End Sub

Private Sub cmdGo_Click()
On Error GoTo errhan:
Dim unknown As Integer
Dim st As String
'I declared the number of unkowns as byte so the limit is 255
'If you want a to solve a bigger Linear System you have to change
'some variables and functions, "Var" is one of them.
unknown = CInt(txtVar.Text)
unknown1 = CInt(numpol.Text)
If unknown >= 1 And unknown < 26 Then
   msFlexg.Cols = unknown + 2
   msFlexg.Rows = unknown1 + 2
   For i = 0 To unknown
   msFlexg.TextMatrix(0, Var + 1 + i) = "x^" & (i)
   Next
   For i = 1 To unknown1
   msFlexg.TextMatrix(i, 0) = "P" & (i)
   Next
      msFlexg.TextMatrix(unknown1 + 1, 0) = "Res"
Else
    MsgBox "Range must be between 2 and 25", vbInformation, "Invalid range"
    txtVar.SetFocus
    'SendKeys "{Home}+{End}"
End If
Exit Sub
errhan:
 MsgBox err.Description, vbInformation
End Sub

Private Sub cmdSolv_Click()
On Error GoTo errhan:
Dim t(50) As Long
Dim unknown1 As Integer
unknown = Val(txtVar.Text)
unknown1 = Val(numpol.Text)

'************ addition ******************
If addop.value = True Then

k = 0
m = 0
For i = 1 To unknown1
 For j = 1 To unknown + 1
   arr(i - 1, j - 1) = Val(msFlexg.TextMatrix(i, j))
Next
Next

For i = 0 To 50
 t(i) = 0
Next

For j = 0 To unknown + 1
For i = 0 To unknown1 - 1
 t(j) = t(j) + arr(i, j)
Next
Next

k = 0
For i = 1 To unknown + 1
 msFlexg.TextMatrix(unknown1 + 1, i) = t(k)
 k = k + 1
Next

'************ subtraction ******************
ElseIf subop.value = True Then
k = 0
m = 0

For i = 1 To unknown1
 For j = 1 To unknown + 1
   arr(i - 1, j - 1) = Val(msFlexg.TextMatrix(i, j))
Next
Next

For i = 1 To unknown + 1
 t(i - 1) = Val(msFlexg.TextMatrix(1, i))
Next

For j = 0 To unknown + 1
For i = 1 To unknown1 - 1
 t(j) = t(j) - arr(i, j)
Next
Next

k = 0
For i = 1 To unknown + 1
 msFlexg.TextMatrix(unknown1 + 1, i) = t(k)
 k = k + 1
Next
'*************** multiplicaton ****************
ElseIf mulop.value = True Then
Dim no As Long
 unknown = Val(txtVar.Text)
 unknown1 = Val(numpol.Text)
  msFlexg.Cols = Val(txtVar.Text) + 1 + Val(txtVar.Text) + 2
  no = Val(txtVar.Text) + 1 + Val(txtVar.Text) + 2
   For i = 0 To no - 2
   msFlexg.TextMatrix(0, i + 1) = "x^" & (i)
   Next
  
  
   For Index = 1 To unknown + 1
   Multiplicand(Index - 1) = Val(msFlexg.TextMatrix(1, Index))
   Next

 For Index = 1 To unknown + 1
   Multiplier(Index - 1) = Val(msFlexg.TextMatrix(2, Index))
 Next

 For i = 0 To 99
 Product(i) = 0
 Next

 For p = 0 To unknown + 1
   For r = 0 To unknown + 1
     Product(p + r) = Product(p + r) + Multiplicand(r) * Multiplier(p)
   Next
 Next

'k = 0
For i = 1 To no - 1
 msFlexg.TextMatrix(unknown1 + 1, i) = Product(i - 1)
' k = k + 1
Next
'*************** division ********************
ElseIf divop.value = True Then

 For Index = 1 To unknown + 1
   Dividend(Index - 1) = Val(msFlexg.TextMatrix(1, Index))
 Next

 For Index = 1 To unknown + 1
   divider(Index - 1) = Val(msFlexg.TextMatrix(2, Index))
 Next
 
End If
Exit Sub
errhan:
 MsgBox err.Description, vbInformation

End Sub

Private Sub divop_Click()
numpol.Text = "2"
numpol.Enabled = False
End Sub

Private Sub Form_Load()
Me.WindowState = vbMaximized
End Sub

Private Sub msFlexg_KeyDown(KeyCode As Integer, Shift As Integer)
'If press Del key
If KeyCode = 46 Then
    msFlexg.Text = ""
End If
End Sub

Private Sub msFlexg_KeyPress(KeyAscii As Integer)
Dim lennum As Integer
'To edit the MSFlexgrid control I use the KeyPress event
'Allow only numbers
If IsNumeric(Chr(KeyAscii)) Then
    msFlexg.Text = msFlexg.Text & Chr(KeyAscii)
'or Back Key
ElseIf KeyAscii = vbKeyBack Then
    lennum = Len(msFlexg.Text)
    If lennum >= 1 Then
        msFlexg.Text = Left(msFlexg.Text, lennum - 1)
    End If
'this is used to allow decimal numbers
ElseIf KeyAscii = 46 Then
    If (msFlexg.Text) <> "" Then
        If IsNumeric(msFlexg.Text & "." & "0") Then msFlexg.Text = msFlexg.Text & "."
    Else
        msFlexg.Text = "."
    End If
'and this to allow negative numbers
ElseIf KeyAscii = 45 Then
    If Left(msFlexg.Text, 1) = "-" Then
        lennum = Len(msFlexg.Text)
        msFlexg.Text = Right(msFlexg.Text, lennum - 1)
    Else
        msFlexg.Text = "-" & msFlexg.Text
    End If
'If you press Return it moves one cell to the left or to the next row or to the first
'row, depend on where you are
ElseIf KeyAscii = 13 Then
    If Not msFlexg.col = (msFlexg.Cols - 1) Then
        msFlexg.col = msFlexg.col + 1
    ElseIf Not msFlexg.row = (msFlexg.Rows - 1) Then
        msFlexg.col = 1
        msFlexg.row = msFlexg.row + 1
    Else
        msFlexg.col = 1
        msFlexg.row = 1
    End If
End If
End Sub

Private Sub msFlexg_LeaveCell()
'This keep the entries in numeric values any other entry, the cell is left empty
If msFlexg.Text = "." Or msFlexg.Text = "-" Or msFlexg.Text = "-." Then msFlexg.Text = "": Exit Sub
If msFlexg.Text = "" Then msFlexg.Text = 0
If Not msFlexg.Text = "" Then msFlexg.Text = CDec(msFlexg.Text)
End Sub




Private Sub mulop_Click()
numpol.Text = "2"
numpol.Enabled = False
End Sub

Private Sub subop_Click()
numpol.Enabled = True
End Sub
Private Sub txtVar_Validate(Cancel As Boolean)
If IsNumeric(txtVar.Text) = False And txtVar.Text <> "" Then
 If (txtVar.Text <> "-") Then
  i = MsgBox(txtVar.Text & " " & "is not a numeric value.Enter only numeric values", vbInformation)
  txtVar.Text = ""
  txtVar.SetFocus
 End If
End If
End Sub
Private Sub numpol_Validate(Cancel As Boolean)
If IsNumeric(numpol.Text) = False And numpol.Text <> "" Then
 If (numpol.Text <> "-") Then
  i = MsgBox(numpol.Text & " " & "is not a numeric value.Enter only numeric values", vbInformation)
  numpol.Text = ""
  numpol.SetFocus
 End If
End If
End Sub

