VERSION 5.00
Object = "{0E59F1D2-1FBE-11D0-8FF2-00A0D10038BC}#1.0#0"; "msscript.ocx"
Begin VB.Form integration 
   BackColor       =   &H00C0FFFF&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Integration"
   ClientHeight    =   9750
   ClientLeft      =   45
   ClientTop       =   405
   ClientWidth     =   6855
   Icon            =   "integration.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   9750
   ScaleWidth      =   6855
   StartUpPosition =   3  'Windows Default
   Begin VB.Frame Frame2 
      BackColor       =   &H00C0FFFF&
      Caption         =   "Double Integration :"
      ForeColor       =   &H000000FF&
      Height          =   3975
      Left            =   120
      TabIndex        =   12
      Top             =   5640
      Width           =   6615
      Begin VB.TextBox T4 
         Height          =   375
         Left            =   2400
         TabIndex        =   20
         Text            =   "1/(x+y)^2"
         Top             =   480
         Width           =   2415
      End
      Begin VB.TextBox T3 
         Height          =   375
         Left            =   2640
         TabIndex        =   19
         Text            =   "2"
         Top             =   1080
         Width           =   375
      End
      Begin VB.TextBox T2 
         Height          =   375
         Left            =   2640
         TabIndex        =   18
         Text            =   "1"
         Top             =   1680
         Width           =   375
      End
      Begin VB.CommandButton Command4 
         Caption         =   "Clear"
         Default         =   -1  'True
         Height          =   375
         Left            =   3480
         TabIndex        =   17
         Top             =   3000
         Width           =   1455
      End
      Begin VB.TextBox T1 
         Height          =   375
         Left            =   2400
         TabIndex        =   16
         Top             =   2280
         Width           =   3975
      End
      Begin VB.CommandButton Command3 
         Caption         =   "Solve"
         Height          =   375
         Left            =   1800
         TabIndex        =   15
         Top             =   3000
         Width           =   1335
      End
      Begin VB.TextBox T5 
         Height          =   375
         Left            =   5880
         TabIndex        =   14
         Text            =   "4"
         Top             =   1080
         Width           =   375
      End
      Begin VB.TextBox T6 
         Height          =   375
         Left            =   5880
         TabIndex        =   13
         Text            =   "3"
         Top             =   1680
         Width           =   375
      End
      Begin MSScriptControlCtl.ScriptControl ScriptControl2 
         Left            =   5640
         Top             =   2760
         _ExtentX        =   1005
         _ExtentY        =   1005
      End
      Begin VB.Label Label12 
         BackColor       =   &H00C0FFFF&
         Caption         =   "dx dy"
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
         Left            =   4920
         TabIndex        =   27
         Top             =   480
         Width           =   615
      End
      Begin VB.Label Label11 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Enter the inner upper limit :"
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
         Left            =   3360
         TabIndex        =   26
         Top             =   1080
         Width           =   2415
      End
      Begin VB.Label Label10 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Enter the inner lower limit :"
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
         Left            =   3360
         TabIndex        =   25
         Top             =   1680
         Width           =   2415
      End
      Begin VB.Label Label9 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Enter the Function =f(x) :"
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
         Left            =   120
         TabIndex        =   24
         Top             =   600
         Width           =   2175
      End
      Begin VB.Label Label8 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Enter the outer upper limit :"
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
         Left            =   120
         TabIndex        =   23
         Top             =   1200
         Width           =   2415
      End
      Begin VB.Label Label7 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Enter the outer lower limit :"
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
         Left            =   120
         TabIndex        =   22
         Top             =   1800
         Width           =   2415
      End
      Begin VB.Label Label6 
         BackColor       =   &H00C0FFFF&
         Caption         =   " Answer :"
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
         Left            =   120
         TabIndex        =   21
         Top             =   2400
         Width           =   1575
      End
   End
   Begin VB.Frame Frame1 
      BackColor       =   &H00C0FFFF&
      Caption         =   "Single  Integration :"
      ForeColor       =   &H000000FF&
      Height          =   3735
      Left            =   120
      TabIndex        =   0
      Top             =   1920
      Width           =   6615
      Begin MSScriptControlCtl.ScriptControl ScriptControl1 
         Left            =   4080
         Top             =   840
         _ExtentX        =   1005
         _ExtentY        =   1005
      End
      Begin VB.TextBox Text4 
         Height          =   375
         Left            =   2400
         TabIndex        =   6
         Text            =   "1/(1+x)"
         Top             =   480
         Width           =   2655
      End
      Begin VB.TextBox Text3 
         Height          =   375
         Left            =   2400
         TabIndex        =   5
         Text            =   "6"
         Top             =   1080
         Width           =   1095
      End
      Begin VB.TextBox Text2 
         Height          =   375
         Left            =   2400
         TabIndex        =   4
         Text            =   "0"
         Top             =   1680
         Width           =   1095
      End
      Begin VB.CommandButton Command2 
         Caption         =   "Clear"
         Height          =   375
         Left            =   3480
         TabIndex        =   3
         Top             =   3000
         Width           =   1455
      End
      Begin VB.TextBox Text1 
         Height          =   375
         Left            =   2400
         TabIndex        =   2
         Top             =   2280
         Width           =   3975
      End
      Begin VB.CommandButton Command1 
         Caption         =   "Solve"
         Height          =   375
         Left            =   1800
         TabIndex        =   1
         Top             =   3000
         Width           =   1335
      End
      Begin VB.Label Label13 
         BackColor       =   &H00C0FFFF&
         Caption         =   "dx"
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
         Left            =   5160
         TabIndex        =   28
         Top             =   480
         Width           =   495
      End
      Begin VB.Label Label1 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Enter the Function =f(x) :"
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
         Left            =   120
         TabIndex        =   10
         Top             =   600
         Width           =   2175
      End
      Begin VB.Label Label2 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Enter the upper limit :"
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
         Left            =   120
         TabIndex        =   9
         Top             =   1200
         Width           =   1935
      End
      Begin VB.Label Label3 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Enter the lower limit :"
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
         Left            =   120
         TabIndex        =   8
         Top             =   1800
         Width           =   1815
      End
      Begin VB.Label Label4 
         BackColor       =   &H00C0FFFF&
         Caption         =   " Answer :"
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
         Left            =   120
         TabIndex        =   7
         Top             =   2400
         Width           =   1575
      End
   End
   Begin VB.Image Image2 
      Height          =   795
      Left            =   2040
      Picture         =   "integration.frx":038A
      Top             =   1080
      Width           =   2895
   End
   Begin VB.Image Image1 
      Height          =   1215
      Left            =   0
      Picture         =   "integration.frx":7BE0
      Stretch         =   -1  'True
      Top             =   0
      Width           =   6810
   End
   Begin VB.Label Label5 
      BackColor       =   &H00C0FFFF&
      Caption         =   "Label5"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   120
      TabIndex        =   11
      Top             =   8760
      Visible         =   0   'False
      Width           =   6615
   End
End
Attribute VB_Name = "integration"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
On Error GoTo Errorhan:
If Text4.Text = "" Or Text3.Text = "" Or Text3.Text = "" Then
  MsgBox "    Invalid Data     ", vbInformation, "Valid"
Else
'formula for simson's 1/3 rule is
'I=(h/3)*{(y0+yn)+2(y2+y4+y6+...)+4(y1+y3+...)}
Dim y(1000000) As Double
Dim A(1000000) As Double
Dim i As Double
Dim p As Long
z = 0
num = 0
H = (Val(Text3.Text) - Val(Text2.Text)) / 10 ' find distance between two points
k = Val(Text3.Text) 'upper limit
j = Val(Text2.Text) 'lower limit
p = 0

' find (y0+yn)
For i = Val(j) To Val(k) Step Val(H)
  y(p) = Func_f_x(i)
  A(p) = y(p)
 p = p + 1
 Next i
y(p) = Func_f_x(k)
ans = y(0) + y(p)


'find 2(y2+y4+...)
 For n = 2 To p - 2 Step 2
  z = z + A(n)
 Next n
 z = 2 * z
 
 'find 4(y1+y3+...)
For r = 1 To p - 1 Step 2
num = num + A(r)
Next r
num = num * 4
'Text1.Text = Log(4)
Text1.Text = ((ans + z + num) * H) / 3
End If
Exit Sub
Errorhan:
 MsgBox err.Description, vbInformation
End Sub


Function Func_f_x(x1)
On Error GoTo errhan
    'Function f(x) to integrate
    ScriptControl1.Reset 'Reset the MS Scriptcontrol
    ScriptControl1.ExecuteStatement ("x = " & x1) 'Execute statement for x variable = X1
    Func_f_x = ScriptControl1.Eval(Trim(Text4.Text)) 'Evaluate it
    Exit Function
errhan:
   MsgBox "Invalid Data", vbInformation, "Invalid"
End Function
Function Func_f_x1(x1, x2)
On Error GoTo errhan
    'Function f(x) to integrate
    ScriptControl1.Reset 'Reset the MS Scriptcontrol
    ScriptControl1.ExecuteStatement ("x = " & x1) 'Execute statement for x variable = X1
    ScriptControl1.ExecuteStatement ("y = " & x2)
    Func_f_x1 = ScriptControl1.Eval(Trim(t4.Text)) 'Evaluate it
    Exit Function
errhan:
   MsgBox "Invalid Data", vbInformation, "Invalid"
End Function

Private Sub Command2_Click()
Text1.Text = ""
Text2.Text = ""
Text3.Text = ""
Text4.Text = ""
End Sub

Private Sub Command3_Click()
On Error GoTo errhan:
If t4.Text = "" Or T3.Text = "" Or T3.Text = "" Then
  MsgBox "    Invalid Data     ", vbInformation, "Invalid"
Else
'formula for simson's rule is
'I=(hk/9)*{(sum of four corner values)+4(sum of boundry values)+16(central value)}
Dim y(1000000) As Double
Dim A(1000000) As Double
Dim i, i1 As Double
Dim p As Long
z = 0
num = 0
H = (Val(T3.Text) - Val(T2.Text)) / 2 ' find distance between two points
h1 = (Val(t5.Text) - Val(t6.Text)) / 2
k = Val(T3.Text) 'upper limit
j = Val(T2.Text) 'lower limit
k1 = Val(t5.Text) 'upper limit
j1 = Val(t6.Text) 'lower limit
p = 0


For i = Val(j) To Val(k) Step Val(H)
  For i1 = Val(j1) To Val(k1) Step Val(h1)
  y(p) = Func_f_x1(i, i1)
  A(p) = y(p)
 p = p + 1
  Next i1
 Next i
y(p) = Func_f_x1(k, k1)
num = (H * h1) / 9
num1 = num * ((y(0) + y(2) + y(6) + y(8)) + 4 * (y(1) + y(3) + y(5) + y(7)) + 16 * (y(4)))
T1.Text = num1
End If
Exit Sub
errhan:
 MsgBox err.Description, vbInformation
End Sub

Private Sub Command4_Click()
T1.Text = ""
T2.Text = ""
T3.Text = ""
t4.Text = ""
t5.Text = ""
t6.Text = ""
End Sub

Private Sub Form_Load()
Label5.Caption = "Note : " & Chr(10) & "      The integration can be solved by Simson's Rule ( Numerical Method )."
'Me.WindowState = vbMaximized
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
Private Sub Text2_Validate(Cancel As Boolean)
If IsNumeric(Text2.Text) = False And Text2.Text <> "" Then
 If (Text2.Text <> "-") Then
  i = MsgBox(Text2.Text & " " & "is not a numeric value.Enter only numeric values", vbInformation)
  Text2.Text = ""
  Text2.SetFocus
 End If
End If
End Sub
Private Sub T2_Validate(Cancel As Boolean)
If IsNumeric(T2.Text) = False And T2.Text <> "" Then
 If (T2.Text <> "-") Then
  i = MsgBox(T2.Text & " " & "is not a numeric value.Enter only numeric values", vbInformation)
  T2.Text = ""
  T2.SetFocus
 End If
End If
End Sub



Private Sub T3_Validate(Cancel As Boolean)
If IsNumeric(T3.Text) = False And T3.Text <> "" Then
 If (T3.Text <> "-") Then
  i = MsgBox(T3.Text & " " & "is not a numeric value.Enter only numeric values", vbInformation)
  T3.Text = ""
  T3.SetFocus
 End If
End If
End Sub



Private Sub T5_Validate(Cancel As Boolean)
If IsNumeric(t5.Text) = False And t5.Text <> "" Then
 If (t5.Text <> "-") Then
  i = MsgBox(t5.Text & " " & "is not a numeric value.Enter only numeric values", vbInformation)
  t5.Text = ""
  t5.SetFocus
 End If
End If
End Sub
Private Sub T6_Validate(Cancel As Boolean)
If IsNumeric(t6.Text) = False And t6.Text <> "" Then
 If (t6.Text <> "-") Then
  i = MsgBox(t6.Text & " " & "is not a numeric value.Enter only numeric values", vbInformation)
  t6.Text = ""
  t6.SetFocus
 End If
End If
End Sub


