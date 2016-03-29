VERSION 5.00
Object = "{5E9E78A0-531B-11CF-91F6-C2863C385E30}#1.0#0"; "MSFLXGRD.OCX"
Object = "{65E121D4-0C60-11D2-A9FC-0000F8754DA1}#2.0#0"; "mschrt20.ocx"
Begin VB.Form chartfrm 
   BackColor       =   &H00C0FFFF&
   Caption         =   "Statistics - Chart"
   ClientHeight    =   8850
   ClientLeft      =   60
   ClientTop       =   420
   ClientWidth     =   10320
   Icon            =   "chartfrm.frx":0000
   LinkTopic       =   "Form1"
   ScaleHeight     =   8850
   ScaleWidth      =   10320
   StartUpPosition =   3  'Windows Default
   Begin VB.Frame Frame3 
      BackColor       =   &H00C0FFFF&
      Caption         =   "Chart :"
      ForeColor       =   &H000000FF&
      Height          =   8535
      Left            =   5400
      TabIndex        =   2
      Top             =   2160
      Width           =   9855
      Begin MSChart20Lib.MSChart MSChart1 
         Height          =   7815
         Left            =   120
         OleObjectBlob   =   "chartfrm.frx":038A
         TabIndex        =   4
         Top             =   240
         Width           =   9615
      End
   End
   Begin VB.Frame Frame2 
      BackColor       =   &H00C0FFFF&
      Caption         =   "Enter the type of chart :"
      ForeColor       =   &H000000FF&
      Height          =   1215
      Left            =   120
      TabIndex        =   1
      Top             =   9480
      Width           =   5175
      Begin VB.ComboBox Combo1 
         Height          =   315
         Left            =   360
         TabIndex        =   11
         Text            =   "2D BAR"
         Top             =   480
         Width           =   4335
      End
   End
   Begin VB.Frame Frame1 
      BackColor       =   &H00C0FFFF&
      Caption         =   "Enter the values :"
      ForeColor       =   &H000000FF&
      Height          =   7215
      Left            =   120
      TabIndex        =   0
      Top             =   2160
      Width           =   5175
      Begin VB.TextBox Text5 
         Height          =   375
         Left            =   3000
         TabIndex        =   17
         Text            =   "Graph Title"
         Top             =   2280
         Width           =   2055
      End
      Begin VB.TextBox Text4 
         Height          =   375
         Left            =   3000
         TabIndex        =   15
         Text            =   "Y- Axis"
         Top             =   1800
         Width           =   2055
      End
      Begin VB.TextBox Text3 
         Height          =   375
         Left            =   3000
         TabIndex        =   14
         Text            =   "X - Axis"
         Top             =   1320
         Width           =   2055
      End
      Begin VB.CommandButton Command2 
         Caption         =   "Chart"
         Height          =   375
         Left            =   1800
         TabIndex        =   10
         Top             =   6720
         Width           =   1455
      End
      Begin VB.CommandButton Command1 
         Caption         =   "Go"
         Height          =   375
         Left            =   1920
         TabIndex        =   9
         Top             =   2880
         Width           =   1455
      End
      Begin VB.TextBox Text2 
         Height          =   375
         Left            =   3000
         TabIndex        =   8
         Top             =   840
         Width           =   2055
      End
      Begin VB.TextBox Text1 
         Height          =   375
         Left            =   3000
         TabIndex        =   7
         Top             =   360
         Width           =   2055
      End
      Begin MSFlexGridLib.MSFlexGrid msFlexg 
         Height          =   3255
         Left            =   120
         TabIndex        =   3
         Top             =   3360
         Width           =   4935
         _ExtentX        =   8705
         _ExtentY        =   5741
         _Version        =   393216
         Rows            =   15
         Cols            =   15
      End
      Begin VB.Label Label5 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Enter the Title of the Chart :"
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
         Left            =   240
         TabIndex        =   16
         Top             =   2400
         Width           =   3135
      End
      Begin VB.Label Label4 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Enter the name of the X-axis :"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   495
         Left            =   240
         TabIndex        =   13
         Top             =   1440
         Width           =   2895
      End
      Begin VB.Label Label3 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Enter the name of the Y- axis :"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   495
         Left            =   240
         TabIndex        =   12
         Top             =   1920
         Width           =   2655
      End
      Begin VB.Label Label2 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Enter the number of Columns :"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   495
         Left            =   240
         TabIndex        =   6
         Top             =   960
         Width           =   2655
      End
      Begin VB.Label Label1 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Enter the number of Rows :"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   495
         Left            =   240
         TabIndex        =   5
         Top             =   480
         Width           =   2895
      End
   End
   Begin VB.Image Image2 
      Height          =   600
      Left            =   6120
      Picture         =   "chartfrm.frx":4937
      Top             =   1440
      Width           =   2370
   End
   Begin VB.Image Image1 
      Height          =   1710
      Left            =   0
      Picture         =   "chartfrm.frx":93D9
      Stretch         =   -1  'True
      Top             =   0
      Width           =   15360
   End
End
Attribute VB_Name = "chartfrm"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim A(1 To 15, 1 To 10)

Private Sub Combo1_Click()
 Select Case Combo1.Text
Case "2D BAR"
 MSChart1.chartType = 1
Case "3D BAR"
  MSChart1.chartType = 0
Case "2D LINE"
  MSChart1.chartType = 3
Case "3D LINE"
  MSChart1.chartType = 2
Case "2D AREA"
  MSChart1.chartType = 5
Case "3D AREA"
  MSChart1.chartType = 4
Case "2D STEP"
  MSChart1.chartType = 7
Case "3D STEP"
  MSChart1.chartType = 6
Case "2D COMBINATION"
  MSChart1.chartType = 9
Case "3D COMBINATION"
  MSChart1.chartType = 8
Case "2D PIE"
  MSChart1.chartType = 14
Case "2D X-Y"
  MSChart1.chartType = 16
End Select
End Sub

Private Sub Command1_Click()
On Error GoTo errhan:
Dim unknown As Integer
Dim st As String
unknown = CInt(Text2.Text)
unknown1 = CInt(Text1.Text)
If Val(Text2.Text) >= 1 And Val(Text2.Text) <= 10 And Val(Text1.Text) >= 1 And Val(Text1.Text) <= 15 Then
   msFlexg.Cols = unknown + 1
   msFlexg.Rows = unknown1 + 1
   MSChart1.RowCount = Val(Text1.Text)
   MSChart1.ColumnCount = Val(Text2.Text)
   For i = 1 To unknown
   msFlexg.TextMatrix(0, i) = "COL" & (i)
   Next
   For i = 1 To unknown1
   msFlexg.TextMatrix(i, 0) = "ROW" & (i)
   Next
Else
    MsgBox "Row Range must be between 1 and 15" & vbNewLine & "Column Range must be between 1 and 10", vbInformation, "Invalid range"
    Exit Sub
End If
 For i = 1 To Val(Text1.Text)
 For j = 1 To Val(Text2.Text)
 msFlexg.TextMatrix(i, j) = MSChart1.Data
  Next j
 Next i
 Exit Sub
errhan:
 MsgBox err.Description, vbInformation
End Sub

Private Sub Command2_Click()
  For i = 1 To 15
  For j = 1 To 10
   A(i, j) = 0
  Next j
  Next i
 For i = 1 To Val(Text1.Text)
 For j = 1 To Val(Text2.Text)
 A(i, j) = Val(msFlexg.TextMatrix(i, j))
 MSChart1.ChartData = A
 Next j
 Next i
 MSChart1.RowCount = Val(Text1.Text)
 MSChart1.ColumnCount = Val(Text2.Text)
MSChart1.Title.Text = Text5.Text
MSChart1.Plot.Axis(VtChAxisIdX).AxisTitle.Text = Text3.Text
MSChart1.Plot.Axis(VtChAxisIdY).AxisTitle.Text = Text4.Text
MSChart1.Plot.Axis(VtChAxisIdY2).AxisScale.Hide = True
For i = 1 To Val(Text2.Text)
    MSChart1.Plot.SeriesCollection(i).LegendText = msFlexg.TextMatrix(0, i)
Next
    MSChart1.ShowLegend = True
End Sub



Private Sub Form_Load()
Me.WindowState = vbMaximized
Combo1.AddItem "2D BAR"
Combo1.AddItem "3D BAR"
Combo1.AddItem "2D LINE"
Combo1.AddItem "3D LINE"
Combo1.AddItem "2D AREA"
Combo1.AddItem "3D AREA"
Combo1.AddItem "2D STEP"
Combo1.AddItem "3D STEP"
Combo1.AddItem "2D COMBINATION"
Combo1.AddItem "3D COMBINATION"
Combo1.AddItem "2D PIE"
Combo1.AddItem "2D X-Y"
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

