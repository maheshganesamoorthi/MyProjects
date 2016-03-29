VERSION 5.00
Object = "{0E59F1D2-1FBE-11D0-8FF2-00A0D10038BC}#1.0#0"; "msscript.ocx"
Object = "{5E9E78A0-531B-11CF-91F6-C2863C385E30}#1.0#0"; "msflxgrd.ocx"
Begin VB.Form excfrm 
   BackColor       =   &H00C0FFFF&
   Caption         =   "Spread Sheet"
   ClientHeight    =   11040
   ClientLeft      =   60
   ClientTop       =   420
   ClientWidth     =   15240
   Icon            =   "excfrm.frx":0000
   LinkTopic       =   "Form1"
   ScaleHeight     =   11040
   ScaleWidth      =   15240
   StartUpPosition =   3  'Windows Default
   Begin VB.VScrollBar VScroll1 
      Height          =   615
      Left            =   6360
      TabIndex        =   32
      Top             =   10440
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Frame Frame1 
      BackColor       =   &H00C0FFFF&
      Caption         =   "Enter the Coustomized Name :"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   2775
      Left            =   120
      TabIndex        =   13
      Top             =   7920
      Width           =   9975
      Begin VB.TextBox Text17 
         Height          =   375
         Left            =   120
         TabIndex        =   31
         Top             =   2280
         Width           =   2295
      End
      Begin VB.TextBox Text16 
         Height          =   375
         Left            =   7320
         TabIndex        =   30
         Top             =   1800
         Width           =   2295
      End
      Begin VB.CommandButton Command1 
         Caption         =   "Change"
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
         Left            =   4320
         TabIndex        =   29
         Top             =   2280
         Width           =   1455
      End
      Begin VB.TextBox Text15 
         Height          =   375
         Left            =   4920
         TabIndex        =   28
         Top             =   1800
         Width           =   2295
      End
      Begin VB.TextBox Text14 
         Height          =   375
         Left            =   2520
         TabIndex        =   27
         Top             =   1800
         Width           =   2295
      End
      Begin VB.TextBox Text13 
         Height          =   375
         Left            =   120
         TabIndex        =   26
         Top             =   1800
         Width           =   2295
      End
      Begin VB.TextBox Text12 
         Height          =   375
         Left            =   7320
         TabIndex        =   25
         Top             =   1320
         Width           =   2295
      End
      Begin VB.TextBox Text11 
         Height          =   375
         Left            =   4920
         TabIndex        =   24
         Top             =   1320
         Width           =   2295
      End
      Begin VB.TextBox Text10 
         Height          =   375
         Left            =   2520
         TabIndex        =   23
         Top             =   1320
         Width           =   2295
      End
      Begin VB.TextBox Text9 
         Height          =   375
         Left            =   120
         TabIndex        =   22
         Top             =   1320
         Width           =   2295
      End
      Begin VB.TextBox Text8 
         Height          =   375
         Left            =   7320
         TabIndex        =   21
         Top             =   840
         Width           =   2295
      End
      Begin VB.TextBox Text7 
         Height          =   375
         Left            =   4920
         TabIndex        =   20
         Top             =   840
         Width           =   2295
      End
      Begin VB.TextBox Text6 
         Height          =   375
         Left            =   2520
         TabIndex        =   19
         Top             =   840
         Width           =   2295
      End
      Begin VB.TextBox Text5 
         Height          =   375
         Left            =   120
         TabIndex        =   18
         Top             =   840
         Width           =   2295
      End
      Begin VB.TextBox Text4 
         Height          =   375
         Left            =   7320
         TabIndex        =   17
         Top             =   360
         Width           =   2295
      End
      Begin VB.TextBox Text3 
         Height          =   375
         Left            =   4920
         TabIndex        =   16
         Top             =   360
         Width           =   2295
      End
      Begin VB.TextBox Text2 
         Height          =   375
         Left            =   2520
         TabIndex        =   15
         Top             =   360
         Width           =   2295
      End
      Begin VB.TextBox Text1 
         Height          =   375
         Left            =   120
         TabIndex        =   14
         Top             =   360
         Width           =   2295
      End
   End
   Begin VB.PictureBox Picture1 
      Appearance      =   0  'Flat
      ForeColor       =   &H80000008&
      Height          =   4095
      Left            =   0
      ScaleHeight     =   4065
      ScaleWidth      =   15225
      TabIndex        =   11
      Top             =   1800
      Width           =   15255
      Begin MSFlexGridLib.MSFlexGrid mfGrid 
         Height          =   3945
         Left            =   0
         TabIndex        =   12
         Top             =   0
         Width           =   15195
         _ExtentX        =   26802
         _ExtentY        =   6959
         _Version        =   393216
         Rows            =   252
         Cols            =   18
         FixedRows       =   2
         BackColorBkg    =   -2147483633
         GridColor       =   -2147483631
         AllowBigSelection=   -1  'True
         FocusRect       =   0
         FillStyle       =   1
         BorderStyle     =   0
      End
   End
   Begin VB.Frame fraCalc 
      BackColor       =   &H00C0FFFF&
      Caption         =   "Calculation"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   204
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   4695
      Left            =   10200
      TabIndex        =   7
      Top             =   6000
      Width           =   4965
      Begin VB.CommandButton Command3 
         Caption         =   "Clear"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   585
         Left            =   1680
         TabIndex        =   33
         Top             =   2880
         Width           =   1935
      End
      Begin VB.CommandButton cmdCurrent 
         Caption         =   "Current Row"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9.75
            Charset         =   204
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   585
         Left            =   1680
         TabIndex        =   9
         Top             =   960
         Width           =   1935
      End
      Begin VB.CommandButton cmdAllCalc 
         Caption         =   "All Row"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9.75
            Charset         =   204
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   585
         Left            =   1680
         TabIndex        =   8
         Top             =   1920
         Width           =   1935
      End
   End
   Begin VB.Frame fraValue 
      BackColor       =   &H00C0FFFF&
      Caption         =   "Values and Formula :"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   204
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   1875
      Left            =   120
      TabIndex        =   0
      Top             =   6000
      Width           =   10005
      Begin VB.CommandButton Command2 
         Caption         =   "OK"
         Height          =   375
         Left            =   3840
         TabIndex        =   10
         Top             =   240
         Width           =   495
      End
      Begin VB.TextBox txtCurrent 
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9.75
            Charset         =   204
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   420
         Left            =   1200
         TabIndex        =   3
         Top             =   270
         Width           =   2535
      End
      Begin VB.TextBox txtD 
         Enabled         =   0   'False
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9.75
            Charset         =   204
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   420
         Left            =   1200
         TabIndex        =   2
         Top             =   750
         Width           =   2505
      End
      Begin VB.TextBox txtFormula 
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9.75
            Charset         =   204
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   1440
         TabIndex        =   1
         Top             =   1260
         Width           =   8355
      End
      Begin VB.Label lblCurrent 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Current Cell :"
         Height          =   255
         Left            =   120
         TabIndex        =   6
         Top             =   360
         Width           =   1065
      End
      Begin VB.Label lblD 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Answer :"
         Height          =   315
         Left            =   120
         TabIndex        =   5
         Top             =   840
         Width           =   1125
      End
      Begin VB.Label lblFormula 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Formula for  cell :"
         Height          =   285
         Left            =   120
         TabIndex        =   4
         Top             =   1320
         Width           =   1245
      End
   End
   Begin MSScriptControlCtl.ScriptControl scGrid 
      Left            =   7200
      Top             =   9720
      _ExtentX        =   1005
      _ExtentY        =   1005
   End
   Begin VB.Image Image1 
      Height          =   1695
      Left            =   0
      Picture         =   "excfrm.frx":038A
      Stretch         =   -1  'True
      Top             =   0
      Width           =   15240
   End
End
Attribute VB_Name = "excfrm"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Dim PubRes As New PubResults

Private Sub Command1_Click()
mfGrid.TextMatrix(1, 1) = Text1.Text
mfGrid.TextMatrix(1, 2) = Text2.Text
mfGrid.TextMatrix(1, 3) = Text3.Text
mfGrid.TextMatrix(1, 4) = Text4.Text
mfGrid.TextMatrix(1, 5) = Text5.Text
mfGrid.TextMatrix(1, 6) = Text6.Text
mfGrid.TextMatrix(1, 7) = Text7.Text
mfGrid.TextMatrix(1, 8) = Text8.Text
mfGrid.TextMatrix(1, 9) = Text9.Text
mfGrid.TextMatrix(1, 10) = Text10.Text
mfGrid.TextMatrix(1, 11) = Text11.Text
mfGrid.TextMatrix(1, 12) = Text12.Text
mfGrid.TextMatrix(1, 13) = Text13.Text
mfGrid.TextMatrix(1, 14) = Text14.Text
mfGrid.TextMatrix(1, 15) = Text15.Text
mfGrid.TextMatrix(1, 16) = Text16.Text
mfGrid.TextMatrix(1, 17) = Text17.Text
End Sub

Private Sub Command3_Click()
Dim i, j
Text1.Text = ""
Text2.Text = ""
Text3.Text = ""
Text4.Text = ""
Text5.Text = ""
Text6.Text = ""
Text7.Text = ""
Text8.Text = ""
Text9.Text = ""
Text10.Text = ""
Text11.Text = ""
Text12.Text = ""
Text13.Text = ""
Text14.Text = ""
Text15.Text = ""
Text16.Text = ""
Text17.Text = ""
For i = 1 To mfGrid.Cols - 3
    For j = 2 To mfGrid.Rows - 1
      mfGrid.col = i
      mfGrid.row = j
      mfGrid.CellFontBold = False
      mfGrid.CellFontSize = 10
      mfGrid.TextMatrix(j, i) = ""
    Next j
Next i
For i = 2 To 149
   mfGrid.TextMatrix(i, 16) = ""
Next

End Sub


Private Sub mfGrid_KeyPress(KeyAscii As Integer)
Dim lennum As Integer
'To edit the MfGridrid control I use the KeyPress event
'Allow only numbers
If IsNumeric(Chr(KeyAscii)) Then
    mfGrid.Text = mfGrid.Text & Chr(KeyAscii)
'or Back Key
ElseIf KeyAscii = vbKeyBack Then
    lennum = Len(mfGrid.Text)
    If lennum >= 1 Then
        mfGrid.Text = Left(mfGrid.Text, lennum - 1)
    End If
'this is used to allow decimal numbers
ElseIf KeyAscii = 46 Then
    If (mfGrid.Text) <> "" Then
        If IsNumeric(mfGrid.Text & "." & "0") Then mfGrid.Text = mfGrid.Text & "."
    Else
        mfGrid.Text = "."
    End If
'and this to allow negative numbers
ElseIf KeyAscii = 45 Then
    If Left(mfGrid.Text, 1) = "-" Then
        lennum = Len(mfGrid.Text)
        mfGrid.Text = Right(mfGrid.Text, lennum - 1)
    Else
        mfGrid.Text = "-" & mfGrid.Text
    End If
'If you press Return it moves one cell to the left or to the next row or to the first
'row, depend on where you are
ElseIf KeyAscii = 13 Then
    If Not mfGrid.col = (mfGrid.Cols - 1) Then
        mfGrid.col = mfGrid.col + 1
    ElseIf Not mfGrid.row = (mfGrid.Rows - 1) Then
        mfGrid.col = 1
        mfGrid.row = mfGrid.row + 1
    Else
        mfGrid.col = 1
        mfGrid.row = 1
    End If
End If
End Sub

Private Sub cmdCurrent_Click()
Dim A As String
Call CalcCurrent
End Sub
Private Sub CalcCurrent()
On Error GoTo ErrCalc:
scGrid.Reset
scGrid.AddObject "r", PubRes
scGrid.ExecuteStatement "r.Res=" + txtFormula.Text
mfGrid.TextMatrix(mfGrid.row, mfGrid.Cols - 2) = Str(PubRes.Res)
txtD.Text = mfGrid.TextMatrix(mfGrid.row, mfGrid.Cols - 2)
Exit Sub
ErrCalc:
mfGrid.TextMatrix(mfGrid.row, mfGrid.Cols - 2) = ""
txtD.Text = mfGrid.TextMatrix(mfGrid.row, mfGrid.Cols - 2)
MsgBox "ERRORS !!!" + vbCrLf + "in Row=" + Str(mfGrid.row)
End Sub

Private Sub cmdAllCalc_Click()
Dim mOldRow As Integer, i As Integer
mOldRow = mfGrid.row
For i = 2 To mfGrid.Rows - 1
  mfGrid.row = i
  Call CalcCurrent
Next i
mfGrid.row = mOldRow
If Text16.Text <> "" Then
mfGrid.TextMatrix(1, 16) = Text16.Text
Else
mfGrid.TextMatrix(1, 16) = "Col-16"
End If
If Text17.Text <> "" Then
mfGrid.TextMatrix(1, 17) = Text17.Text
Else
mfGrid.TextMatrix(1, 17) = "Col-17"
End If
End Sub
Private Sub Form_Load()
Me.WindowState = vbMaximized

Text1.Text = "Col-1"
Text2.Text = "Col-2"
Text3.Text = "Col-3"
Text4.Text = "Col-4"
Text5.Text = "Col-5"
Text6.Text = "Col-6"
Text7.Text = "Col-7"
Text8.Text = "Col-8"
Text9.Text = "Col-9"
Text10.Text = "Col-10"
Text11.Text = "Col-11"
Text12.Text = "Col-12"
Text13.Text = "Col-13"
Text14.Text = "Col-14"
Text15.Text = "Col-15"
Text16.Text = "Col-16"
Text17.Text = "Col-17"



Dim i As Integer, j As Integer, mW As Integer
mW = 650

'
For i = 0 To mfGrid.Cols - 2
  ' Define font for fixed line and column
  mfGrid.col = i
  mfGrid.row = 0
  mfGrid.CellFontBold = True
  mfGrid.CellFontSize = 10
  mfGrid.ColAlignment(i) = flexAlignCenterCenter
  mfGrid.Font.Bold = True
  mfGrid.Font.Size = 12
  If i > 0 Then
    mfGrid.TextMatrix(0, i) = Chr(64 + i)
  Else ' Names (numbers) for 0 column
    For j = 2 To mfGrid.Rows - 1
      mfGrid.row = j
      mfGrid.CellFontBold = True
      mfGrid.CellFontSize = 10
      mfGrid.TextMatrix(j, i) = Str(j - 1)
    Next j
  End If
  mfGrid.ColWidth(i) = mW
Next i
mfGrid.row = 0
mfGrid.col = (mfGrid.Cols - 1)
mfGrid.CellFontBold = True
mfGrid.CellFontSize = 10
mfGrid.ColWidth(mfGrid.Cols - 1) = mfGrid.Width - (mfGrid.Cols - 1) * mW - 100
mfGrid.TextMatrix(0, mfGrid.Cols - 1) = "Formula for D column"

' Font for cell's contens
mfGrid.Font.Bold = False
mfGrid.Font.Size = 10
' Fill all cells
Randomize
For i = 1 To mfGrid.Cols - 3
    For j = 1 To mfGrid.Rows - 1
      mfGrid.col = i
      mfGrid.row = j
      mfGrid.CellFontBold = False
      mfGrid.CellFontSize = 10
      'mfGrid.TextMatrix(j, i) = Str(Int(Rnd(i) * i * j * 10))
    Next j
Next i
'- Make formulas
'- cell in D column = (Sum of elements in current Row)
For j = 1 To mfGrid.Rows - 1
 mfGrid.TextMatrix(j, mfGrid.Cols - 1) = _
 "r.RC(" + Str(j) + "," + """A""" + ") + " + _
 "r.RC(" + Str(j) + "," + """B""" + ") + " + _
 "r.RC(" + Str(j) + "," + """C""" + ") + " + _
 "r.RC(" + Str(j) + "," + """D""" + ") + " + _
 "r.RC(" + Str(j) + "," + """E""" + ") + " + _
 "r.RC(" + Str(j) + "," + """F""" + ") + " + _
 "r.RC(" + Str(j) + "," + """G""" + ") + " + _
 "r.RC(" + Str(j) + "," + """H""" + ") + " + _
 "r.RC(" + Str(j) + "," + """I""" + ") + " + _
 "r.RC(" + Str(j) + "," + """J""" + ") + " + _
 "r.RC(" + Str(j) + "," + """K""" + ") + " + _
 "r.RC(" + Str(j) + "," + """L""" + ") + " + _
 "r.RC(" + Str(j) + "," + """M""" + ") + " + _
 "r.RC(" + Str(j) + "," + """N""" + ") + " + _
 "r.RC(" + Str(j) + "," + """O""" + ")"
Next j



'-----------------------
mfGrid.col = 1
mfGrid.row = 1
mfGrid.ColSel = 1
'mfGrid.Height = mfGrid.Rows * mfGrid.RowHeight(0) + 100
' Set coordinates for frames
'fraValue.Top = mfGrid.Top + mfGrid.Height
'fraCalc.Top = fraValue.Top + fraValue.Height
' Set Height for Form
'frmSheet.Height = mfGrid.Height + fraCalc.Height + fraValue.Height + 800
' Current cell
txtCurrent.Text = mfGrid.TextMatrix(mfGrid.row, mfGrid.col)
' Cell in D column in current line
txtD.Text = mfGrid.TextMatrix(mfGrid.row, mfGrid.Cols - 2)
' Formula for current line
txtFormula.Text = mfGrid.TextMatrix(mfGrid.row, mfGrid.Cols - 1)

mfGrid.TextMatrix(1, 1) = Text1.Text
mfGrid.TextMatrix(1, 2) = Text2.Text
mfGrid.TextMatrix(1, 3) = Text3.Text
mfGrid.TextMatrix(1, 4) = Text4.Text
mfGrid.TextMatrix(1, 5) = Text5.Text
mfGrid.TextMatrix(1, 6) = Text6.Text
mfGrid.TextMatrix(1, 7) = Text7.Text
mfGrid.TextMatrix(1, 8) = Text8.Text
mfGrid.TextMatrix(1, 9) = Text9.Text
mfGrid.TextMatrix(1, 10) = Text10.Text
mfGrid.TextMatrix(1, 11) = Text11.Text
mfGrid.TextMatrix(1, 12) = Text12.Text
mfGrid.TextMatrix(1, 13) = Text13.Text
mfGrid.TextMatrix(1, 14) = Text14.Text
mfGrid.TextMatrix(1, 15) = Text15.Text
mfGrid.TextMatrix(1, 16) = Text16.Text
mfGrid.TextMatrix(1, 17) = Text17.Text

End Sub

Private Sub mfGrid_RowColChange()
If mfGrid.col > mfGrid.Cols - 4 Then
    mfGrid.col = mfGrid.Cols - 3
End If
mfGrid.ColSel = mfGrid.col
txtCurrent.Text = mfGrid.TextMatrix(mfGrid.row, mfGrid.col)
' Value of D cell
txtD.Text = mfGrid.TextMatrix(mfGrid.row, mfGrid.Cols - 2)
' Formula's text
txtFormula.Text = mfGrid.TextMatrix(mfGrid.row, mfGrid.Cols - 1)
End Sub

Private Sub txtCurrent_LostFocus()
mfGrid.TextMatrix(mfGrid.row, mfGrid.col) = txtCurrent.Text
End Sub



Private Sub txtFormula_LostFocus()
mfGrid.TextMatrix(mfGrid.row, mfGrid.Cols - 1) = txtFormula.Text
End Sub


Private Sub VScroll1_Change()
mfGrid.Top = -VScroll1.value
End Sub
