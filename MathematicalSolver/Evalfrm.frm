VERSION 5.00
Object = "{0E59F1D2-1FBE-11D0-8FF2-00A0D10038BC}#1.0#0"; "msscript.ocx"
Begin VB.Form Evalfrm 
   BackColor       =   &H00C0FFFF&
   Caption         =   "Expression Evaluvation:"
   ClientHeight    =   7995
   ClientLeft      =   60
   ClientTop       =   420
   ClientWidth     =   7500
   Icon            =   "Evalfrm.frx":0000
   LinkTopic       =   "Form1"
   ScaleHeight     =   7995
   ScaleWidth      =   7500
   StartUpPosition =   3  'Windows Default
   Begin VB.Frame Frame2 
      BackColor       =   &H00C0FFFF&
      Caption         =   "Example :"
      ForeColor       =   &H000000FF&
      Height          =   7935
      Left            =   7440
      TabIndex        =   28
      Top             =   2520
      Width           =   7815
      Begin VB.Image Image4 
         Height          =   6180
         Left            =   480
         Picture         =   "Evalfrm.frx":038A
         Top             =   720
         Width           =   6765
      End
      Begin VB.Image Image3 
         Height          =   5250
         Left            =   360
         Picture         =   "Evalfrm.frx":88A1C
         Top             =   600
         Width           =   7020
      End
   End
   Begin VB.Frame Frame1 
      BackColor       =   &H00C0FFFF&
      Caption         =   "Expression Evaluvation :"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   5775
      Left            =   120
      TabIndex        =   7
      Top             =   4680
      Width           =   7275
      Begin VB.TextBox Text8 
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   435
         Left            =   1680
         TabIndex        =   26
         Top             =   4800
         Width           =   5385
      End
      Begin VB.CommandButton Command3 
         Caption         =   "Clear"
         Height          =   435
         Left            =   4560
         TabIndex        =   25
         Top             =   2760
         Width           =   1455
      End
      Begin VB.CommandButton Command2 
         Caption         =   "Solve"
         Height          =   435
         Left            =   2880
         TabIndex        =   24
         Top             =   2760
         Width           =   1455
      End
      Begin VB.TextBox Text7 
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   495
         Left            =   2160
         TabIndex        =   23
         Top             =   2040
         Width           =   4935
      End
      Begin VB.TextBox Text6 
         Height          =   405
         Left            =   720
         TabIndex        =   21
         Top             =   4080
         Width           =   1095
      End
      Begin VB.TextBox Text5 
         Height          =   405
         Left            =   720
         TabIndex        =   20
         Top             =   3600
         Width           =   1095
      End
      Begin VB.TextBox Text4 
         Height          =   405
         Left            =   720
         TabIndex        =   19
         Top             =   3120
         Width           =   1095
      End
      Begin VB.TextBox Text3 
         Height          =   405
         Left            =   720
         TabIndex        =   18
         Top             =   2640
         Width           =   1095
      End
      Begin VB.TextBox Text2 
         Height          =   405
         Left            =   720
         TabIndex        =   17
         Top             =   2160
         Width           =   1095
      End
      Begin VB.TextBox Text1 
         Height          =   405
         Left            =   720
         TabIndex        =   16
         Top             =   1680
         Width           =   1095
      End
      Begin VB.ComboBox Combo1 
         Height          =   315
         Left            =   3120
         TabIndex        =   8
         Text            =   "2"
         Top             =   840
         Width           =   1815
      End
      Begin VB.Label Label10 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Result :"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   405
         Left            =   720
         TabIndex        =   27
         Top             =   4920
         Width           =   735
      End
      Begin VB.Label Label9 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Enter the expression :"
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
         Left            =   2160
         TabIndex        =   22
         Top             =   1680
         Width           =   2055
      End
      Begin VB.Label Label8 
         BackColor       =   &H00C0FFFF&
         Caption         =   "C :"
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
         TabIndex        =   15
         Top             =   4200
         Width           =   375
      End
      Begin VB.Label Label7 
         BackColor       =   &H00C0FFFF&
         Caption         =   "B :"
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
         TabIndex        =   14
         Top             =   3720
         Width           =   375
      End
      Begin VB.Label Label6 
         BackColor       =   &H00C0FFFF&
         Caption         =   "A :"
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
         TabIndex        =   13
         Top             =   3240
         Width           =   375
      End
      Begin VB.Label Label5 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Z :"
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
         TabIndex        =   12
         Top             =   2760
         Width           =   375
      End
      Begin VB.Label Label4 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Y :"
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
         TabIndex        =   11
         Top             =   2280
         Width           =   375
      End
      Begin VB.Label Label3 
         BackColor       =   &H00C0FFFF&
         Caption         =   "X :"
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
         TabIndex        =   10
         Top             =   1800
         Width           =   375
      End
      Begin VB.Label Label2 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Enter the Number of Variables :"
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
         TabIndex        =   9
         Top             =   840
         Width           =   2895
      End
   End
   Begin MSScriptControlCtl.ScriptControl scrCalc 
      Left            =   -120
      Top             =   4680
      _ExtentX        =   1005
      _ExtentY        =   1005
   End
   Begin VB.Frame fraTest1 
      BackColor       =   &H00C0FFFF&
      Caption         =   "Expression Evaluvation :"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   204
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   2145
      Left            =   120
      TabIndex        =   0
      Top             =   2520
      Width           =   7275
      Begin VB.CommandButton Command1 
         Caption         =   "Clear"
         Height          =   435
         Left            =   3720
         TabIndex        =   6
         Top             =   1440
         Width           =   1515
      End
      Begin VB.TextBox lblTest1_2 
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   435
         Left            =   2400
         TabIndex        =   5
         Top             =   720
         Width           =   4785
      End
      Begin VB.CommandButton cmdCalc1 
         Caption         =   "Solve"
         Height          =   435
         Left            =   1920
         TabIndex        =   2
         Top             =   1440
         Width           =   1515
      End
      Begin VB.TextBox txtTest1 
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   435
         Left            =   2400
         TabIndex        =   1
         Top             =   240
         Width           =   4785
      End
      Begin VB.Label Label1 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Enter the expression :"
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
         TabIndex        =   4
         Top             =   360
         Width           =   2055
      End
      Begin VB.Label lblTest1_1 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Result :"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   405
         Left            =   240
         TabIndex        =   3
         Top             =   840
         Width           =   1335
      End
   End
   Begin VB.Image Image2 
      Height          =   615
      Left            =   6360
      Picture         =   "Evalfrm.frx":1009E6
      Top             =   1800
      Width           =   2145
   End
   Begin VB.Image Image1 
      Height          =   1710
      Left            =   0
      Picture         =   "Evalfrm.frx":104F58
      Stretch         =   -1  'True
      Top             =   0
      Width           =   15240
   End
End
Attribute VB_Name = "Evalfrm"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False



Private Sub Combo1_Click()
Select Case Combo1.Text
Case "1"

Label3.Visible = True
Text1.Visible = True

Label4.Visible = False
Text2.Visible = False

Label5.Visible = False
Text3.Visible = False

Label6.Visible = False
Text4.Visible = False

Label7.Visible = False
Text5.Visible = False

Label8.Visible = False
Text6.Visible = False

Case "2"

Label3.Visible = True
Text1.Visible = True

Label4.Visible = True
Text2.Visible = True

Label5.Visible = False
Text3.Visible = False

Label6.Visible = False
Text4.Visible = False

Label7.Visible = False
Text5.Visible = False

Label8.Visible = False
Text6.Visible = False

Case "3"

Label3.Visible = True
Text1.Visible = True

Label4.Visible = True
Text2.Visible = True

Label5.Visible = True
Text3.Visible = True

Label6.Visible = False
Text4.Visible = False

Label7.Visible = False
Text5.Visible = False

Label8.Visible = False
Text6.Visible = False

Case "4"

Label3.Visible = True
Text1.Visible = True

Label4.Visible = True
Text2.Visible = True

Label5.Visible = True
Text3.Visible = True

Label6.Visible = True
Text4.Visible = True

Label7.Visible = False
Text5.Visible = False

Label8.Visible = False
Text6.Visible = False

Case "5"

Label3.Visible = True
Text1.Visible = True

Label4.Visible = True
Text2.Visible = True

Label5.Visible = True
Text3.Visible = True

Label6.Visible = True
Text4.Visible = True

Label7.Visible = True
Text5.Visible = True

Label8.Visible = False
Text6.Visible = False

Case "6"

Label3.Visible = True
Text1.Visible = True

Label4.Visible = True
Text2.Visible = True

Label5.Visible = True
Text3.Visible = True

Label6.Visible = True
Text4.Visible = True

Label7.Visible = True
Text5.Visible = True

Label8.Visible = True
Text6.Visible = True
End Select
Image4.Visible = True
Image3.Visible = False
End Sub

Private Sub Command1_Click()
txtTest1.Text = ""
lblTest1_2.Text = ""
End Sub

Private Sub cmdCalc1_Click()
On Error GoTo ErrCalc
lblTest1_2.Text = Str(scrCalc.Eval(txtTest1.Text))
Exit Sub
ErrCalc:
lblTest1_2.Text = "ERRORS!!!"
'MsgBox "Calculation's Error!"
MsgBox err.Description, vbInformation
End Sub



Private Sub Command2_Click()
On Error GoTo errhan:
Select Case Combo1.Text

Case "1"
    scrCalc.Reset 'Reset the MS Scriptcontrol
    scrCalc.ExecuteStatement ("x = " & Text1.Text)  'Execute statement for x variable = X1
    Text8.Text = scrCalc.Eval(Trim(Text7.Text))
    
Case "2"
    scrCalc.Reset 'Reset the MS Scriptcontrol
    scrCalc.ExecuteStatement ("x = " & Text1.Text)
    scrCalc.ExecuteStatement ("y = " & Text2.Text) 'Execute statement for x variable = X1
    Text8.Text = scrCalc.Eval(Trim(Text7.Text))
    
Case "3"
    scrCalc.Reset 'Reset the MS Scriptcontrol
    scrCalc.ExecuteStatement ("x = " & Text1.Text)
    scrCalc.ExecuteStatement ("y = " & Text2.Text) 'Execute statement for x variable = X1
    scrCalc.ExecuteStatement ("z = " & Text3.Text)
    Text8.Text = scrCalc.Eval(Trim(Text7.Text))
    
Case "4"
    scrCalc.Reset 'Reset the MS Scriptcontrol
    scrCalc.ExecuteStatement ("x = " & Text1.Text)
    scrCalc.ExecuteStatement ("y = " & Text2.Text) 'Execute statement for x variable = X1
    scrCalc.ExecuteStatement ("z = " & Text3.Text)
    scrCalc.ExecuteStatement ("a = " & Text4.Text)
    Text8.Text = scrCalc.Eval(Trim(Text7.Text))
    
Case "5"
    scrCalc.Reset 'Reset the MS Scriptcontrol
    scrCalc.ExecuteStatement ("x = " & Text1.Text)
    scrCalc.ExecuteStatement ("y = " & Text2.Text) 'Execute statement for x variable = X1
    scrCalc.ExecuteStatement ("z = " & Text3.Text)
    scrCalc.ExecuteStatement ("a = " & Text4.Text)
    scrCalc.ExecuteStatement ("b = " & Text5.Text)
    Text8.Text = scrCalc.Eval(Trim(Text7.Text))
    
Case "6"
    scrCalc.Reset 'Reset the MS Scriptcontrol
    scrCalc.ExecuteStatement ("x = " & Text1.Text)
    scrCalc.ExecuteStatement ("y = " & Text2.Text) 'Execute statement for x variable = X1
    scrCalc.ExecuteStatement ("z = " & Text3.Text)
    scrCalc.ExecuteStatement ("a = " & Text4.Text)
    scrCalc.ExecuteStatement ("b = " & Text5.Text)
    scrCalc.ExecuteStatement ("c = " & Text6.Text)
    Text8.Text = scrCalc.Eval(Trim(Text7.Text))
    End Select
Exit Sub
errhan:
Text8.Text = "ERRORS !!!"
MsgBox err.Description, vbInformation
End Sub

Private Sub Command3_Click()
Text1.Text = ""
Text2.Text = ""
Text3.Text = ""
Text4.Text = ""
Text5.Text = ""
Text6.Text = ""
Text7.Text = ""
Text8.Text = ""
End Sub

Private Sub Form_Load()
Me.WindowState = vbMaximized
txtTest1.Text = "((5+45)*2)/5 + 23+15/3+Cos(3.14)+Sin(3.14)"
Combo1.AddItem "1"
Combo1.AddItem "2"
Combo1.AddItem "3"
Combo1.AddItem "4"
Combo1.AddItem "5"
Combo1.AddItem "6"
Label3.Visible = True
Text1.Visible = True

Label4.Visible = True
Text2.Visible = True

Label5.Visible = False
Text3.Visible = False

Label6.Visible = False
Text4.Visible = False

Label7.Visible = False
Text5.Visible = False

Label8.Visible = False
Text6.Visible = False
Image3.Visible = True
Image4.Visible = False
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
Private Sub Text2_Validate(Cancel As Boolean)
If IsNumeric(Text2.Text) = False And Text2.Text <> "" Then
 If (Text2.Text <> "-") Then
  i = MsgBox(Text2.Text & " " & "is not a numeric value.Enter only numeric values", vbInformation)
  Text2.Text = ""
  Text2.SetFocus
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
Private Sub Text5_Validate(Cancel As Boolean)
If IsNumeric(Text5.Text) = False And Text5.Text <> "" Then
 If (Text5.Text <> "-") Then
  i = MsgBox(Text5.Text & " " & "is not a numeric value.Enter only numeric values", vbInformation)
  Text5.Text = ""
  Text5.SetFocus
 End If
End If
End Sub

Private Sub Text7_Click()
Image4.Visible = True
Image3.Visible = False
End Sub

Private Sub txtTest1_Click()
Image3.Visible = True
Image4.Visible = False
End Sub
