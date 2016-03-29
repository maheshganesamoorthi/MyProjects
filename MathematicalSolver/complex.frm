VERSION 5.00
Object = "{3B7C8863-D78F-101B-B9B5-04021C009402}#1.2#0"; "RICHTX32.OCX"
Begin VB.Form complex 
   BackColor       =   &H00C0FFFF&
   Caption         =   "complex"
   ClientHeight    =   9615
   ClientLeft      =   60
   ClientTop       =   420
   ClientWidth     =   10740
   Icon            =   "complex.frx":0000
   LinkTopic       =   "Form1"
   ScaleHeight     =   9615
   ScaleWidth      =   10740
   StartUpPosition =   3  'Windows Default
   Begin VB.Frame Frame1 
      BackColor       =   &H00C0FFFF&
      Caption         =   "Calculation :"
      ForeColor       =   &H000000FF&
      Height          =   8535
      Left            =   120
      TabIndex        =   1
      Top             =   2040
      Width           =   6615
      Begin VB.Frame Frame4 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Steps :"
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
         Height          =   1815
         Left            =   120
         TabIndex        =   22
         Top             =   6480
         Width           =   6375
         Begin RichTextLib.RichTextBox rt 
            Height          =   1215
            Left            =   240
            TabIndex        =   23
            Top             =   360
            Width           =   5895
            _ExtentX        =   10398
            _ExtentY        =   2143
            _Version        =   393217
            BackColor       =   12648447
            Appearance      =   0
            TextRTF         =   $"complex.frx":038A
            BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
               Name            =   "Trebuchet MS"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
         End
      End
      Begin VB.Frame FrameResult 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Result"
         ForeColor       =   &H000000FF&
         Height          =   1155
         Left            =   120
         TabIndex        =   17
         Top             =   4080
         Width           =   6375
         Begin VB.TextBox T6 
            Height          =   435
            Left            =   3360
            Locked          =   -1  'True
            TabIndex        =   19
            Top             =   360
            Width           =   2655
         End
         Begin VB.TextBox T5 
            Height          =   435
            Left            =   240
            Locked          =   -1  'True
            TabIndex        =   18
            Top             =   360
            Width           =   2655
         End
         Begin VB.Label Label5 
            BackColor       =   &H00C0FFFF&
            Caption         =   "                Real                                                         Imaginary"
            Height          =   195
            Left            =   600
            TabIndex        =   20
            Top             =   840
            Width           =   4875
         End
      End
      Begin VB.Frame FrameComplex2 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Complex 2"
         ForeColor       =   &H000000FF&
         Height          =   2295
         Left            =   3360
         TabIndex        =   12
         Top             =   360
         Width           =   3135
         Begin VB.TextBox T3 
            Alignment       =   2  'Center
            Height          =   435
            Left            =   240
            TabIndex        =   14
            Text            =   "1"
            Top             =   1320
            Width           =   1155
         End
         Begin VB.TextBox T4 
            Alignment       =   2  'Center
            Height          =   435
            Left            =   1560
            TabIndex        =   13
            Text            =   "1"
            Top             =   1320
            Width           =   1275
         End
         Begin VB.Label Label4 
            BackColor       =   &H00C0FFFF&
            Caption         =   "        Real                    Imaginary"
            Height          =   195
            Left            =   120
            TabIndex        =   16
            Top             =   1920
            Width           =   2715
         End
         Begin VB.Label Label2 
            Alignment       =   2  'Center
            BackColor       =   &H80000004&
            BorderStyle     =   1  'Fixed Single
            Caption         =   "                                           c         +       i * d"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   9.75
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   855
            Left            =   180
            TabIndex        =   15
            Top             =   240
            Width           =   2715
         End
      End
      Begin VB.Frame FrameComplex1 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Complex 1"
         ForeColor       =   &H000000FF&
         Height          =   2295
         Left            =   120
         TabIndex        =   7
         Top             =   360
         Width           =   3075
         Begin VB.TextBox T2 
            Alignment       =   2  'Center
            Height          =   435
            Left            =   1560
            TabIndex        =   9
            Text            =   "1"
            Top             =   1320
            Width           =   1275
         End
         Begin VB.TextBox T1 
            Alignment       =   2  'Center
            Height          =   435
            Left            =   240
            TabIndex        =   8
            Text            =   " 1"
            Top             =   1320
            Width           =   1275
         End
         Begin VB.Label Label3 
            BackColor       =   &H00C0FFFF&
            Caption         =   "        Real                  Imaginary"
            Height          =   195
            Left            =   240
            TabIndex        =   11
            Top             =   1920
            Width           =   2475
         End
         Begin VB.Label Label1 
            Alignment       =   2  'Center
            BackColor       =   &H80000004&
            BorderStyle     =   1  'Fixed Single
            Caption         =   "                                              a         +       i * b"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   9.75
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   855
            Left            =   180
            TabIndex        =   10
            Top             =   240
            Width           =   2715
         End
      End
      Begin VB.CommandButton Command1 
         Caption         =   "CLEAR"
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
         Left            =   3600
         TabIndex        =   6
         Top             =   3600
         Width           =   1335
      End
      Begin VB.Frame Frame3 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Method :"
         ForeColor       =   &H000000FF&
         Height          =   1095
         Left            =   120
         TabIndex        =   4
         Top             =   5280
         Width           =   6375
         Begin VB.Label LabelRule 
            Alignment       =   2  'Center
            BackColor       =   &H00C0FFFF&
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   12
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   615
            Left            =   240
            TabIndex        =   5
            Top             =   360
            Width           =   5775
         End
      End
      Begin VB.ComboBox ComboFunction 
         Height          =   315
         Left            =   2040
         TabIndex        =   3
         Text            =   "Select Function"
         Top             =   3000
         Width           =   4395
      End
      Begin VB.CommandButton CommandCalculate 
         Caption         =   "SOLVE"
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
         Left            =   1680
         TabIndex        =   2
         Top             =   3600
         Width           =   1455
      End
      Begin VB.Label Label6 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Select the Operation :"
         Height          =   255
         Left            =   240
         TabIndex        =   21
         Top             =   3000
         Width           =   1695
      End
   End
   Begin VB.Frame Frame2 
      BackColor       =   &H00C0FFFF&
      Caption         =   "Example :"
      ForeColor       =   &H000000FF&
      Height          =   8535
      Left            =   6840
      TabIndex        =   0
      Top             =   2040
      Width           =   8415
      Begin VB.Image Image3 
         Height          =   8190
         Left            =   360
         Picture         =   "complex.frx":0414
         Top             =   240
         Width           =   7695
      End
   End
   Begin VB.Image Image2 
      Height          =   630
      Left            =   6120
      Picture         =   "complex.frx":CD8DE
      Top             =   1320
      Width           =   3900
   End
   Begin VB.Image Image1 
      Height          =   1695
      Left            =   0
      Picture         =   "complex.frx":D5185
      Stretch         =   -1  'True
      Top             =   0
      Width           =   15360
   End
End
Attribute VB_Name = "complex"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub ComboFunction_click()
 Select Case ComboFunction.List(ComboFunction.ListIndex)
Case "Addition"
     Label2.Enabled = True
     T4.Enabled = True
     T3.Enabled = True
Case "Subtraction"
     Label2.Enabled = True
     T4.Enabled = True
     T3.Enabled = True
Case "Multiplication"
     Label2.Enabled = True
     T4.Enabled = True
     T3.Enabled = True
Case "Division"
     Label2.Enabled = True
     T4.Enabled = True
     T3.Enabled = True
Case "e ^ (Complex 1)"
     Label2.Enabled = False
     T3.Enabled = False
     T4.Enabled = False
End Select
End Sub

Private Sub Command1_Click()
T1 = "": T2 = "": T3 = "": T4 = "": t5 = "": t6 = ""
rt.Text = ""
End Sub



Private Sub CommandCalculate_Click()
On Error GoTo errhan:
If T1.Text = "" Then
 T1.Text = "0"
End If
If T2.Text = "" Then
 T2.Text = "0"
End If
If T3.Text = "" Then
 T3.Text = "0"
End If
If T4.Text = "" Then
 T4.Text = "0"
End If
If ComboFunction.Text = "" Then
 MsgBox "           Select appropriate function           ", vbOKOnly, "Select function"
 
Else
Select Case ComboFunction
Case Is = "Addition"
  t5 = Val(T1) + Val(T3)
  t6 = Val(T2) + Val(T4)
  LabelRule = "(a+i*b)+(c+i*d) = (a+c)+i*(b+d)"
  rt.Text = " First complex number     : " & Val(T1) & "+" & "(" & Val(T3) & " * i)"
  rt.Text = rt.Text & vbNewLine & " Second complex number : " & Val(T2) & "+" & "(" & Val(T4) & " * i)" & " + "
  rt.Text = rt.Text & vbNewLine & "                                     ----------------"
  rt.Text = rt.Text & vbNewLine & " Addition                        : " & Val(t5) & "+" & "(" & Val(t6) & " * i)"
Case Is = "Subtraction"
  t5 = Val(T1) - Val(T3)
  t6 = Val(T2) - Val(T4)
  LabelRule = "(a+i*b)-(c+i*d) = (a-c)+i*(b-d)"
  rt.Text = " First complex number     : " & Val(T1) & "+" & "(" & Val(T3) & " * i)"
  rt.Text = rt.Text & vbNewLine & " Second complex number : " & Val(T2) & "+" & "(" & Val(T4) & " * i)" & " - "
  rt.Text = rt.Text & vbNewLine & "                                     ----------------"
  rt.Text = rt.Text & vbNewLine & " Subtraction                   : " & Val(t5) & "+" & "(" & Val(t6) & " * i)"
Case Is = "Multiplication"
   t5 = (Val(T1) * Val(T3)) - (Val(T2) * Val(T4))
   t6 = (Val(T1) * Val(T4)) + (Val(T2) * Val(T3))
   LabelRule = "(a+i*b)*(c+i*d) = a*c-b*d + i*(a*d+b*c)"
  rt.Text = "   " & Val(T1) & "+" & "(" & Val(T3) & " i)" & "  *  " & Val(T2) & "+" & "(" & Val(T4) & "i)"
  rt.Text = rt.Text & vbNewLine & " = " & Val(T1) & " * " & Val(T3) & " - " & Val(T2) & " * " & Val(T4) & " + " & " i( " & Val(T1) & " * " & Val(T4) & " + " & Val(T2) & " * " & Val(T3) & ")"
  rt.Text = rt.Text & vbNewLine & " Multiplication : " & Val(t5) & "+" & "(" & Val(t6) & ") i"
 Case Is = "Division"
    If Val(T3) = 0 And Val(T4) = 0 Then
         MsgBox "You Cannot Divide By <0,0>", 48, "Division Error"
    Else
    A = (Val(T1) * Val(T3)) - (Val(T2) * -(Val(T4)))
    B = (Val(T2) * Val(T3)) - (Val(T1) * Val(T4))
    C = (Val(T3) * Val(T3)) + (Val(T4) * Val(T4))
    t5 = Val(A) / Val(C)
    t6 = Val(B) / Val(C)
    End If
    LabelRule = "(a+i*b)/(c+i*d) = [(a+i*b)*(c-i*d)]/(c^2+d^2)"
  rt.Text = "   " & Val(T1) & "+" & "(" & Val(T3) & "i)" & "  /  " & Val(T2) & "+" & "(" & Val(T4) & "i)"
  rt.Text = rt.Text & vbNewLine & " = " & "{ [ " & Val(T1) & "+" & "(" & Val(T2) & "i) ]  *  [ " & Val(T3) & "+" & "(" & Val(T4) & "i) ] }  / ( " & Val(T3) & "^2" & "+" & Val(T4) & "^2 )"
  rt.Text = rt.Text & vbNewLine & " Division : " & Val(t5) & "+" & "(" & Val(t6) & ") i"
 Case Is = "e ^ (Complex 1)"
     A = Val(T1.Text)
     B = Val(T2.Text)
     t5.Text = Exp(A) * Cos(B)
     t6.Text = Exp(A) * Sin(B)
     LabelRule = "e ^ (a+i*b) = (e ^ a)[Cos(b)+i*Sin(b)]"
  rt.Text = "   " & "e ^ " & "[ " & Val(T1) & "+" & "(" & Val(T3) & "i) ]"
  rt.Text = rt.Text & vbNewLine & " = " & " ( e^" & Val(T1) & " )" & " [ Cos(" & Val(T2) & ")" & " + " & "i*Sin(" & Val(T2) & ") ]"
  rt.Text = rt.Text & vbNewLine & " = " & Val(t5) & "+" & "(" & Val(t6) & ") i"
    End Select
End If
Exit Sub
errhan:
 MsgBox err.Description, vbInformation

End Sub

Private Sub exit_Click()
Me.Hide
main.Show
End Sub

Private Sub Form_Load()
With ComboFunction
    .clear
    .AddItem "Addition"
    .AddItem "Subtraction"
    .AddItem "Multiplication"
    .AddItem "Division"
    .AddItem "e ^ (Complex 1)"
    .ListIndex = 0
End With
Me.WindowState = vbMaximized
End Sub
Private Sub T1_Validate(Cancel As Boolean)
If IsNumeric(T1.Text) = False And T1.Text <> "" Then
 If (T1.Text <> "-") Then
  i = MsgBox(T1.Text & " " & "is not a numeric value.Enter only numeric values", vbInformation)
  T1.Text = ""
  T1.SetFocus
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


Private Sub T4_Validate(Cancel As Boolean)
If IsNumeric(T4.Text) = False And T4.Text <> "" Then
 If (T4.Text <> "-") Then
  i = MsgBox(T4.Text & " " & "is not a numeric value.Enter only numeric values", vbInformation)
  T4.Text = ""
  T4.SetFocus
 End If
End If
End Sub

