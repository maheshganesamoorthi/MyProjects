VERSION 5.00
Object = "{3B7C8863-D78F-101B-B9B5-04021C009402}#1.2#0"; "RichTx32.ocx"
Begin VB.Form factfrm 
   BackColor       =   &H00C0FFFF&
   Caption         =   "Factorial & Fabinocci"
   ClientHeight    =   8700
   ClientLeft      =   60
   ClientTop       =   420
   ClientWidth     =   9870
   Icon            =   "factfrm.frx":0000
   LinkTopic       =   "Form1"
   ScaleHeight     =   11040
   ScaleWidth      =   15240
   StartUpPosition =   3  'Windows Default
   Begin VB.Frame Frame1 
      BackColor       =   &H00C0FFFF&
      Caption         =   "Formula :"
      ForeColor       =   &H000000FF&
      Height          =   7935
      Left            =   11040
      TabIndex        =   14
      Top             =   2520
      Width           =   4095
      Begin VB.Line Line1 
         X1              =   120
         X2              =   1200
         Y1              =   1080
         Y2              =   1080
      End
      Begin VB.Label Label2 
         BackColor       =   &H00C0FFFF&
         Caption         =   "n! = n * (n-1) * (n-2) * (n-3) * .... 3 * 2 * 1"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   375
         Left            =   240
         TabIndex        =   16
         Top             =   1320
         Width           =   3615
      End
      Begin VB.Label Label1 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Factorial :"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   120
         TabIndex        =   15
         Top             =   720
         Width           =   2055
      End
   End
   Begin VB.Frame Frame6 
      BackColor       =   &H00C0FFFF&
      Caption         =   "Factorial :"
      ForeColor       =   &H000000FF&
      Height          =   7935
      Left            =   5760
      TabIndex        =   7
      Top             =   2520
      Width           =   5175
      Begin RichTextLib.RichTextBox rtbox 
         Height          =   3255
         Left            =   360
         TabIndex        =   18
         Top             =   4200
         Width           =   4575
         _ExtentX        =   8070
         _ExtentY        =   5741
         _Version        =   393217
         BackColor       =   12632319
         BorderStyle     =   0
         Enabled         =   0   'False
         ScrollBars      =   2
         DisableNoScroll =   -1  'True
         TextRTF         =   $"factfrm.frx":076A
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Trebuchet MS"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
      End
      Begin VB.TextBox T16 
         Height          =   495
         Left            =   1920
         TabIndex        =   11
         Top             =   600
         Width           =   3135
      End
      Begin VB.TextBox T17 
         Height          =   495
         Left            =   1920
         TabIndex        =   10
         Top             =   1440
         Width           =   3135
      End
      Begin VB.CommandButton Command11 
         Caption         =   "Solve"
         Height          =   375
         Left            =   1920
         TabIndex        =   9
         Top             =   2400
         Width           =   1215
      End
      Begin VB.CommandButton Command12 
         Caption         =   "Clear"
         Height          =   375
         Left            =   3240
         TabIndex        =   8
         Top             =   2400
         Width           =   1215
      End
      Begin VB.Label Label4 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Steps :"
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
         TabIndex        =   17
         Top             =   3720
         Width           =   1455
      End
      Begin VB.Label Label3 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Enter the Value :"
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
         Top             =   720
         Width           =   1815
      End
      Begin VB.Label Label7 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Factorial is :"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   495
         Left            =   120
         TabIndex        =   12
         Top             =   1560
         Width           =   1455
      End
   End
   Begin VB.Frame Frame7 
      BackColor       =   &H00C0FFFF&
      Caption         =   "Fabinocci :"
      ForeColor       =   &H000000FF&
      Height          =   7935
      Left            =   120
      TabIndex        =   0
      Top             =   2520
      Width           =   5535
      Begin VB.CommandButton Command13 
         Caption         =   "Clear"
         Height          =   375
         Left            =   3240
         TabIndex        =   4
         Top             =   7320
         Width           =   1215
      End
      Begin VB.CommandButton Command14 
         Caption         =   "Solve"
         Height          =   375
         Left            =   1920
         TabIndex        =   3
         Top             =   7320
         Width           =   1215
      End
      Begin VB.TextBox T18 
         Height          =   495
         Left            =   2040
         TabIndex        =   2
         Top             =   360
         Width           =   3255
      End
      Begin RichTextLib.RichTextBox T19 
         Height          =   6015
         Left            =   1320
         TabIndex        =   1
         Top             =   1080
         Width           =   3975
         _ExtentX        =   7011
         _ExtentY        =   10610
         _Version        =   393217
         BorderStyle     =   0
         ScrollBars      =   2
         DisableNoScroll =   -1  'True
         TextRTF         =   $"factfrm.frx":07ED
      End
      Begin VB.Label Label11 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Fabinocci :"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   495
         Left            =   120
         TabIndex        =   6
         Top             =   1200
         Width           =   1215
      End
      Begin VB.Label Label15 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Enter the Value :"
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
         TabIndex        =   5
         Top             =   480
         Width           =   1815
      End
   End
   Begin VB.Image Image2 
      Height          =   795
      Left            =   6600
      Picture         =   "factfrm.frx":086F
      Top             =   1560
      Width           =   2310
   End
   Begin VB.Image Image1 
      Height          =   1710
      Left            =   0
      Picture         =   "factfrm.frx":68C1
      Stretch         =   -1  'True
      Top             =   0
      Width           =   15360
   End
End
Attribute VB_Name = "factfrm"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Form_Load()
Me.WindowState = vbMaximized
End Sub
Private Sub Command11_Click()
On Error GoTo errhan:
fact = 1
If T16.Text = "" Then
 MsgBox "Enter the value", vbInformation
 Exit Sub
Else
If Val(T16.Text) < 0 Then
 MsgBox "Invalid Value", vbInformation, "Valid"
 Exit Sub
ElseIf Val(T16.Text) > 170 Then
 MsgBox "Enter the value between 0 to 170", vbInformation, "Valid"
 Exit Sub
Else
 For i = 1 To Val(T16.Text)
 fact = fact * i
 Next i
 T17.Text = fact
 rtbox.Text = ""
 rtbox.Text = "n! = n * (n-1) * (n-2) * (n-3) * .... 3 * 2 * 1" & vbNewLine & vbNewLine & Val(T16.Text) & "! = "
End If
 
If T16.Text < 21 Then
 For i = Val(T16.Text) To 2 Step -1
 te = rtbox.Text
 rtbox.Text = ""
 rtbox.Text = te & i & " " & "*" & " "
 Next i
 te = rtbox.Text
 rtbox.Text = ""
 rtbox.Text = te & " " & "1" & vbNewLine & vbNewLine & Val(T16.Text) & "! = " & Val(T17.Text)
ElseIf T16.Text > 20 Then
 For i = Val(T16.Text) To Val(T16.Text) - 6 Step -1
 te = rtbox.Text
 rtbox.Text = ""
 rtbox.Text = te & i & " " & "*" & " "
 Next i
 te = rtbox.Text
 rtbox.Text = ""
 rtbox.Text = te & " " & ". . . . . . * "
 For i = 7 To 2 Step -1
 te = rtbox.Text
 rtbox.Text = ""
 rtbox.Text = te & i & " " & "*" & " "
 Next i
 te = rtbox.Text
 rtbox.Text = ""
 rtbox.Text = te & " " & "1" & vbNewLine & vbNewLine & Val(T16.Text) & "! = " & Val(T17.Text)
End If
End If
Exit Sub
errhan:
 MsgBox err.Description, vbInformation

End Sub
Private Sub Command14_Click()
On Error GoTo errhan:
Dim s As String
Dim fibi() As Long
Dim pFile As Integer
If Val(T18.Text) > 1400 Then
MsgBox "The Range between 1 to 1400"
Else
j = 0
x = 1
y = 1
T19.Text = y & vbNewLine & x


 For i = 0 To Val(T18.Text) - 2
       z = x + y
       s = T19.Text
       T19.Text = ""
       T19.Text = s & vbNewLine & z
       x = y
       y = z
       j = j + 1
 Next i
 End If
 Exit Sub
errhan:
 MsgBox err.Description, vbInformation

 End Sub
Private Sub Command12_Click()
T16.Text = ""
T17.Text = ""
rtbox.Text = ""
End Sub

Private Sub Command13_Click()
T18.Text = ""
T19.Text = ""
End Sub


