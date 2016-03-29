VERSION 5.00
Object = "{0E59F1D2-1FBE-11D0-8FF2-00A0D10038BC}#1.0#0"; "msscript.ocx"
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "COMDLG32.OCX"
Begin VB.Form graph 
   BackColor       =   &H00FFFFFF&
   Caption         =   "Graph"
   ClientHeight    =   11010
   ClientLeft      =   165
   ClientTop       =   555
   ClientWidth     =   15240
   Icon            =   "graph.frx":0000
   LinkTopic       =   "Form1"
   ScaleHeight     =   11010
   ScaleWidth      =   15240
   StartUpPosition =   3  'Windows Default
   Begin MSComDlg.CommonDialog dlgCommonDialog 
      Left            =   5400
      Top             =   4560
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
   End
   Begin VB.Frame Frame2 
      BackColor       =   &H00C0FFFF&
      BorderStyle     =   0  'None
      Caption         =   "Table :"
      ForeColor       =   &H000000FF&
      Height          =   1335
      Left            =   0
      TabIndex        =   3
      Top             =   9600
      Width           =   15375
      Begin VB.CommandButton Command1 
         Caption         =   "Draw Graph"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   435
         Left            =   13320
         TabIndex        =   41
         Top             =   120
         Width           =   1620
      End
      Begin VB.TextBox txtScale 
         Appearance      =   0  'Flat
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   300
         Left            =   12360
         TabIndex        =   39
         Text            =   "10"
         Top             =   120
         Width           =   735
      End
      Begin VB.TextBox Text1 
         Appearance      =   0  'Flat
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   300
         Left            =   4440
         TabIndex        =   34
         Text            =   "Cos(3*x)*Sin(5*x)"
         Top             =   120
         Width           =   3360
      End
      Begin VB.CommandButton Command2 
         Caption         =   "FIND"
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
         Left            =   13680
         TabIndex        =   31
         Top             =   600
         Width           =   975
      End
      Begin VB.TextBox Text24 
         Height          =   375
         Left            =   12240
         TabIndex        =   30
         Top             =   600
         Width           =   1335
      End
      Begin VB.TextBox Text23 
         Height          =   375
         Left            =   10560
         TabIndex        =   25
         Top             =   600
         Width           =   1215
      End
      Begin VB.TextBox Text22 
         Height          =   285
         Left            =   7440
         TabIndex        =   23
         Top             =   840
         Width           =   615
      End
      Begin VB.TextBox Text21 
         Height          =   285
         Left            =   7440
         TabIndex        =   22
         Text            =   "5"
         Top             =   600
         Width           =   615
      End
      Begin VB.TextBox Text20 
         Height          =   285
         Left            =   6840
         TabIndex        =   21
         Top             =   840
         Width           =   615
      End
      Begin VB.TextBox Text19 
         Height          =   285
         Left            =   6840
         TabIndex        =   20
         Text            =   "4"
         Top             =   600
         Width           =   615
      End
      Begin VB.TextBox Text18 
         Height          =   285
         Left            =   6240
         TabIndex        =   19
         Top             =   840
         Width           =   615
      End
      Begin VB.TextBox Text17 
         Height          =   285
         Left            =   6240
         TabIndex        =   18
         Text            =   "3"
         Top             =   600
         Width           =   615
      End
      Begin VB.TextBox Text16 
         Height          =   285
         Left            =   5640
         TabIndex        =   17
         Top             =   840
         Width           =   615
      End
      Begin VB.TextBox Text15 
         Height          =   285
         Left            =   5640
         TabIndex        =   16
         Text            =   "2"
         Top             =   600
         Width           =   615
      End
      Begin VB.TextBox Text14 
         Height          =   285
         Left            =   5040
         TabIndex        =   15
         Top             =   840
         Width           =   615
      End
      Begin VB.TextBox Text13 
         Height          =   285
         Left            =   5040
         TabIndex        =   14
         Text            =   "1"
         Top             =   600
         Width           =   615
      End
      Begin VB.TextBox Text12 
         Height          =   285
         Left            =   4440
         TabIndex        =   13
         Top             =   840
         Width           =   615
      End
      Begin VB.TextBox Text11 
         Height          =   285
         Left            =   4440
         TabIndex        =   12
         Text            =   "0"
         Top             =   600
         Width           =   615
      End
      Begin VB.TextBox Text10 
         Height          =   285
         Left            =   3840
         TabIndex        =   11
         Top             =   840
         Width           =   615
      End
      Begin VB.TextBox Text9 
         Height          =   285
         Left            =   3840
         TabIndex        =   10
         Text            =   "-1"
         Top             =   600
         Width           =   615
      End
      Begin VB.TextBox Text8 
         Height          =   285
         Left            =   3240
         TabIndex        =   9
         Top             =   840
         Width           =   615
      End
      Begin VB.TextBox Text7 
         Height          =   285
         Left            =   3240
         TabIndex        =   8
         Text            =   "-2"
         Top             =   600
         Width           =   615
      End
      Begin VB.TextBox Text6 
         Height          =   285
         Left            =   2640
         TabIndex        =   7
         Top             =   840
         Width           =   615
      End
      Begin VB.TextBox Text5 
         Height          =   285
         Left            =   2640
         TabIndex        =   6
         Text            =   "-3"
         Top             =   600
         Width           =   615
      End
      Begin VB.TextBox Text4 
         Height          =   285
         Left            =   2040
         TabIndex        =   5
         Top             =   840
         Width           =   615
      End
      Begin VB.TextBox Text3 
         Height          =   285
         Left            =   2040
         TabIndex        =   4
         Text            =   "-4"
         Top             =   600
         Width           =   615
      End
      Begin MSScriptControlCtl.ScriptControl ScriptControl1 
         Left            =   120
         Top             =   840
         _ExtentX        =   1005
         _ExtentY        =   1005
      End
      Begin VB.Label Label3 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Scale :"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   300
         Left            =   11640
         TabIndex        =   40
         Top             =   120
         Width           =   720
      End
      Begin VB.Label Label4 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Label4"
         Height          =   375
         Left            =   9240
         TabIndex        =   38
         Top             =   120
         Width           =   2295
      End
      Begin VB.Label Label5 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Trace View :"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   8040
         TabIndex        =   37
         Top             =   120
         Width           =   1095
      End
      Begin VB.Label Label2 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Enter the Expression   f(x) = y(x) ="
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   1560
         TabIndex        =   36
         Top             =   120
         Width           =   2895
      End
      Begin VB.Label Label12 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Functions :"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H000000FF&
         Height          =   375
         Left            =   360
         TabIndex        =   35
         Top             =   120
         Width           =   1215
      End
      Begin VB.Line Line3 
         X1              =   0
         X2              =   15360
         Y1              =   0
         Y2              =   0
      End
      Begin VB.Label Label11 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Table :"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H000000FF&
         Height          =   375
         Left            =   360
         TabIndex        =   32
         Top             =   600
         Width           =   855
      End
      Begin VB.Label Label10 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Y ="
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
         Left            =   11880
         TabIndex        =   29
         Top             =   600
         Width           =   375
      End
      Begin VB.Label Label9 
         BackColor       =   &H00C0FFFF&
         Caption         =   "X ="
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   10200
         TabIndex        =   28
         Top             =   600
         Width           =   495
      End
      Begin VB.Label Label8 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Y ="
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
         Left            =   1440
         TabIndex        =   27
         Top             =   840
         Width           =   375
      End
      Begin VB.Label Label7 
         BackColor       =   &H00C0FFFF&
         Caption         =   "X ="
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   1440
         TabIndex        =   26
         Top             =   600
         Width           =   495
      End
      Begin VB.Label Label6 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Customized Value :"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   8400
         TabIndex        =   24
         Top             =   600
         Width           =   1695
      End
   End
   Begin VB.Frame Frame1 
      BackColor       =   &H00C0FFFF&
      BorderStyle     =   0  'None
      Caption         =   "Functions :"
      ForeColor       =   &H000000FF&
      Height          =   1095
      Left            =   0
      TabIndex        =   0
      Top             =   0
      Width           =   15375
      Begin VB.TextBox Text2 
         Appearance      =   0  'Flat
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   300
         Left            =   14280
         TabIndex        =   1
         Text            =   "0.001"
         Top             =   120
         Visible         =   0   'False
         Width           =   840
      End
      Begin VB.Image Image2 
         Height          =   705
         Left            =   11400
         Picture         =   "graph.frx":038A
         Top             =   360
         Width           =   3720
      End
      Begin VB.Image Image1 
         Height          =   900
         Left            =   120
         Picture         =   "graph.frx":8C64
         Top             =   120
         Width           =   11250
      End
      Begin VB.Label Label13 
         BackColor       =   &H00C0E0FF&
         Caption         =   "Example : 3*Cos(3*x)*Sin(5*x) +x^5+100"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   4080
         TabIndex        =   33
         Top             =   720
         Visible         =   0   'False
         Width           =   3495
      End
      Begin VB.Line Line1 
         X1              =   0
         X2              =   15840
         Y1              =   1080
         Y2              =   1080
      End
      Begin VB.Label Label1 
         BackColor       =   &H00C0E0FF&
         Caption         =   "Accuracy :"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   225
         Left            =   14160
         TabIndex        =   2
         Top             =   480
         Visible         =   0   'False
         Width           =   1095
      End
   End
   Begin VB.Line Line2 
      X1              =   0
      X2              =   15240
      Y1              =   0
      Y2              =   0
   End
End
Attribute VB_Name = "graph"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'Add Components "Microsoft Script Control 1.0"
Dim XMin As Integer
Dim XMax  As Integer
Dim YMin As Integer
Dim YMax As Integer
Private Sub Command1_Click()
        On Error GoTo errhandler:
Command1.Enabled = False
    Dim x As Double, y As Double
    Cls
    ScaleLeft = XMin
    ScaleTop = YMax
    ScaleWidth = XMax - XMin
    ScaleHeight = -(YMax - YMin)
    ForeColor = vbBlack
    Call DrawLine(Val(txtScale))
    Call TikMark(Val(txtScale))
    DrawStyle = 0
    ForeColor = vbBlue
    Line (XMin, 0)-(XMax, 0)
    Line (0, YMin)-(0, YMax)
    ForeColor = vbRed
    ScriptControl1.Reset
    For x = XMin To XMax Step Val(Text2.Text)
        ScriptControl1.ExecuteStatement ("X = " & x)

        y = ScriptControl1.Eval(Trim(Text1.Text))
        PSet (x, y)
    Next
    
    ScriptControl1.ExecuteStatement ("X = " & Val(Text3.Text))
    Text4.Text = ScriptControl1.Eval(Trim(Text1.Text))
    
    ScriptControl1.ExecuteStatement ("X = " & Val(Text5.Text))
    Text6.Text = ScriptControl1.Eval(Trim(Text1.Text))
    
    ScriptControl1.ExecuteStatement ("X = " & Val(Text7.Text))
    Text8.Text = ScriptControl1.Eval(Trim(Text1.Text))
    
    ScriptControl1.ExecuteStatement ("X = " & Val(Text9.Text))
    Text10.Text = ScriptControl1.Eval(Trim(Text1.Text))
    
    ScriptControl1.ExecuteStatement ("X = " & Val(Text11.Text))
    Text12.Text = ScriptControl1.Eval(Trim(Text1.Text))
    
    ScriptControl1.ExecuteStatement ("X = " & Val(Text13.Text))
    Text14.Text = ScriptControl1.Eval(Trim(Text1.Text))
    
    ScriptControl1.ExecuteStatement ("X = " & Val(Text15.Text))
    Text16.Text = ScriptControl1.Eval(Trim(Text1.Text))
    
    ScriptControl1.ExecuteStatement ("X = " & Val(Text17.Text))
    Text18.Text = ScriptControl1.Eval(Trim(Text1.Text))
    
    ScriptControl1.ExecuteStatement ("X = " & Val(Text19.Text))
    Text20.Text = ScriptControl1.Eval(Trim(Text1.Text))
    
    ScriptControl1.ExecuteStatement ("X = " & Val(Text21.Text))
    Text22.Text = ScriptControl1.Eval(Trim(Text1.Text))
    
    Command1.Enabled = True
Exit Sub

errhandler:

MsgBox "                                   Invalid function          " & vbNewLine & "May change scale (Increase or Decrease) will get answer"
Command1.Enabled = True
End Sub

Private Sub Command2_Click()
On Error GoTo errhan
 ScriptControl1.ExecuteStatement ("X = " & Val(Text23.Text))
 Text24.Text = ScriptControl1.Eval(Trim(Text1.Text))
Exit Sub
errhan:
MsgBox "Error !!!"
End Sub



Private Sub Command3_Click()
Me.PrintForm
End Sub

Private Sub Form_MouseMove(Button As Integer, Shift As Integer, x As Single, y As Single)
    Me.WindowState = vbMaximized
    Label4.Caption = "X=" & x & ", " & "Y=" & y
    
End Sub

Private Sub Form_Resize()
    XMin = -Val(txtScale)
    XMax = Val(txtScale)
    YMin = -Val(txtScale)
    YMax = Val(txtScale)
    ScaleLeft = XMin
    ScaleTop = YMax
    ScaleWidth = XMax - XMin
    ScaleHeight = -(YMax - YMin)
    Refresh
End Sub
Function DrawLine(Distance As Double)
    Dumy = IIf(XMax < 0, -XMax / Distance, XMax / Distance)
    XorY = IIf(XMax < 0, -XMax, XMax)
      
    While XorY >= XMin
        If XMax < 0 Then
            Line (XorY, -XMax)-(XorY, -XMax)
            Line (-XMax, XorY)-(-XMax, XorY)
        Else
            Line (XorY, XMax)-(XorY, -XMax)
            Line (XMax, XorY)-(-XMax, XorY)
            
        End If
        XorY = XorY - Dumy
    Wend
End Function
Function TikMark(Distance As Double)
    Dumy = IIf(XMax < 0, (-XMax) / Distance, XMax / Distance)
    XorY = IIf(XMax < 0, -XMax, XMax)
        While XorY >= XMin
            If YMax < 0 Then
                Line (XorY, (-YMax) / 100)-(XorY, -((-YMax) / 100))
            Else
                Line (XorY, YMax / 100)-(XorY, -(YMax) / 100)
            End If
            If XorY <> 0 Then
                Print Format(Round(XorY, 0), "0")
            End If
            XorY = XorY - Dumy
        Wend
    Dumy = IIf(YMax < 0, (-YMax) / Distance, YMax / Distance)
    XorY = IIf(YMax < 0, -YMax, YMax)
        While XorY >= YMin
            If XMax < 0 Then
                Line ((-XMax) / 25, XorY)-(-((-XMax) / 25), XorY)
            Else
                Line (XMax / 25, XorY)-(-(XMax) / 25, XorY)
            End If
            If XorY <> 0 Then
                Print Format(Round(XorY, 0), "0")
            End If
            XorY = XorY - Dumy
        Wend
End Function

Private Sub txtScale_Change()
    XMin = -Val(txtScale)
    XMax = Val(txtScale)
    YMin = -Val(txtScale)
    YMax = Val(txtScale)
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
Private Sub txtScale_Validate(Cancel As Boolean)
If IsNumeric(txtScale.Text) = False And txtScale.Text <> "" Then
 If (txtScale.Text <> "-") Then
  i = MsgBox(txtScale.Text & " " & "is not a numeric value.Enter only numeric values", vbInformation)
  txtScale.Text = ""
  txtScale.SetFocus
 End If
End If
End Sub
Private Sub Text23_Validate(Cancel As Boolean)
If IsNumeric(Text23.Text) = False And Text23.Text <> "" Then
 If (Text23.Text <> "-") Then
  i = MsgBox(Text23.Text & " " & "is not a numeric value.Enter only numeric values", vbInformation)
  Text23.Text = ""
  Text23.SetFocus
 End If
End If
End Sub
