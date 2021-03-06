VERSION 5.00
Object = "{3B7C8863-D78F-101B-B9B5-04021C009402}#1.2#0"; "RICHTX32.OCX"
Begin VB.Form apfrm 
   BackColor       =   &H00C0FFFF&
   Caption         =   "Arithmetic Progression"
   ClientHeight    =   11010
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   14055
   Icon            =   "apfrm.frx":0000
   LinkTopic       =   "Form1"
   ScaleHeight     =   11010
   ScaleWidth      =   14055
   StartUpPosition =   3  'Windows Default
   Begin RichTextLib.RichTextBox rt 
      Height          =   7575
      Left            =   11880
      TabIndex        =   59
      Top             =   3000
      Width           =   3375
      _ExtentX        =   5953
      _ExtentY        =   13361
      _Version        =   393217
      BackColor       =   12648447
      ScrollBars      =   2
      DisableNoScroll =   -1  'True
      Appearance      =   0
      TextRTF         =   $"apfrm.frx":038A
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
   Begin VB.Frame Frame4 
      BackColor       =   &H00C0FFFF&
      Caption         =   "Find Term  Number :"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   3615
      Left            =   6000
      TabIndex        =   48
      Top             =   2520
      Width           =   5775
      Begin VB.TextBox T18 
         Height          =   495
         Left            =   3240
         TabIndex        =   54
         Top             =   360
         Width           =   2415
      End
      Begin VB.TextBox T19 
         Height          =   495
         Left            =   3240
         TabIndex        =   53
         Top             =   960
         Width           =   2415
      End
      Begin VB.TextBox T20 
         Height          =   495
         Left            =   3240
         TabIndex        =   52
         Top             =   1560
         Width           =   2415
      End
      Begin VB.CommandButton Command8 
         Caption         =   "Solve"
         Height          =   375
         Left            =   1560
         TabIndex        =   51
         Top             =   3000
         Width           =   1215
      End
      Begin VB.CommandButton Command7 
         Caption         =   "Clear"
         Height          =   375
         Left            =   2880
         TabIndex        =   50
         Top             =   3000
         Width           =   1215
      End
      Begin VB.TextBox T21 
         Height          =   495
         Left            =   3240
         TabIndex        =   49
         Top             =   2160
         Width           =   2415
      End
      Begin VB.Label Label25 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Enter the  value of Nth term :"
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
         TabIndex        =   58
         Top             =   1680
         Width           =   3135
      End
      Begin VB.Label Label24 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Enter the first term :"
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
         TabIndex        =   57
         Top             =   480
         Width           =   2535
      End
      Begin VB.Label Label23 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Enter the common difference :"
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
         TabIndex        =   56
         Top             =   1080
         Width           =   3375
      End
      Begin VB.Label Label22 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Nth term is :"
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
         TabIndex        =   55
         Top             =   2280
         Width           =   2295
      End
   End
   Begin VB.Frame Frame1 
      BackColor       =   &H00C0FFFF&
      Caption         =   "Find Value Nth Term  ( Using first term and common difference ):"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   3615
      Left            =   120
      TabIndex        =   29
      Top             =   2520
      Width           =   5775
      Begin VB.TextBox T41 
         Height          =   495
         Left            =   3240
         TabIndex        =   39
         Top             =   2160
         Width           =   2415
      End
      Begin VB.CommandButton Command2 
         Caption         =   "Clear"
         Height          =   375
         Left            =   3120
         TabIndex        =   34
         Top             =   3000
         Width           =   1215
      End
      Begin VB.CommandButton Command1 
         Caption         =   "Solve"
         Height          =   375
         Left            =   1800
         TabIndex        =   33
         Top             =   3000
         Width           =   1215
      End
      Begin VB.TextBox T3 
         Height          =   495
         Left            =   3240
         TabIndex        =   32
         Top             =   1560
         Width           =   2415
      End
      Begin VB.TextBox T2 
         Height          =   495
         Left            =   3240
         TabIndex        =   31
         Top             =   960
         Width           =   2415
      End
      Begin VB.TextBox T1 
         Height          =   495
         Left            =   3240
         TabIndex        =   30
         Top             =   360
         Width           =   2415
      End
      Begin VB.Label Label4 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Value of Nth term is :"
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
         TabIndex        =   38
         Top             =   2280
         Width           =   2295
      End
      Begin VB.Label Label2 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Enter the common difference :"
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
         TabIndex        =   37
         Top             =   1080
         Width           =   3375
      End
      Begin VB.Label Label1 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Enter the first term :"
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
         TabIndex        =   36
         Top             =   480
         Width           =   2535
      End
      Begin VB.Label Label3 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Enter the Nth term :"
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
         TabIndex        =   35
         Top             =   1680
         Width           =   3135
      End
   End
   Begin VB.TextBox T4 
      Height          =   495
      Left            =   3720
      TabIndex        =   28
      Top             =   4680
      Visible         =   0   'False
      Width           =   2415
   End
   Begin VB.Frame Frame2 
      BackColor       =   &H00C0FFFF&
      Caption         =   "Find Common difference and  Nth Term ( Using A.P Sequence ):"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   4215
      Left            =   120
      TabIndex        =   11
      Top             =   6360
      Width           =   5775
      Begin VB.TextBox T5 
         Height          =   375
         Left            =   840
         TabIndex        =   19
         Top             =   1200
         Width           =   855
      End
      Begin VB.TextBox T6 
         Height          =   375
         Left            =   1800
         TabIndex        =   18
         Top             =   1200
         Width           =   855
      End
      Begin VB.TextBox T7 
         Height          =   495
         Left            =   3240
         TabIndex        =   17
         Top             =   2400
         Width           =   2415
      End
      Begin VB.CommandButton Command3 
         Caption         =   "Solve"
         Height          =   375
         Left            =   1800
         TabIndex        =   16
         Top             =   3600
         Width           =   1215
      End
      Begin VB.CommandButton Command4 
         Caption         =   "Clear"
         Height          =   375
         Left            =   3240
         TabIndex        =   15
         Top             =   3600
         Width           =   1215
      End
      Begin VB.TextBox T8 
         Height          =   495
         Left            =   3240
         TabIndex        =   14
         Top             =   3000
         Width           =   2415
      End
      Begin VB.TextBox T9 
         Height          =   375
         Left            =   2760
         TabIndex        =   13
         Top             =   1200
         Width           =   855
      End
      Begin VB.TextBox T10 
         Height          =   495
         Left            =   3240
         TabIndex        =   12
         Top             =   1800
         Width           =   2415
      End
      Begin VB.Label Label6 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Enter the sequence :"
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
         TabIndex        =   27
         Top             =   480
         Width           =   2535
      End
      Begin VB.Label Label7 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Common difference is :"
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
         Left            =   360
         TabIndex        =   26
         Top             =   2520
         Width           =   3375
      End
      Begin VB.Label Label8 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Value of Nth term is :"
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
         Left            =   360
         TabIndex        =   25
         Top             =   3120
         Width           =   2295
      End
      Begin VB.Label Label9 
         BackColor       =   &H00C0FFFF&
         Caption         =   "....."
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   13.5
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   3720
         TabIndex        =   24
         Top             =   1200
         Width           =   735
      End
      Begin VB.Label Label5 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Enter the Nth term :"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   360
         TabIndex        =   23
         Top             =   1920
         Width           =   3015
      End
      Begin VB.Label Label10 
         BackColor       =   &H00C0FFFF&
         Caption         =   "1"
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
         Left            =   1080
         TabIndex        =   22
         Top             =   960
         Width           =   375
      End
      Begin VB.Label Label11 
         BackColor       =   &H00C0FFFF&
         Caption         =   "2"
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
         Left            =   2040
         TabIndex        =   21
         Top             =   960
         Width           =   375
      End
      Begin VB.Label Label12 
         BackColor       =   &H00C0FFFF&
         Caption         =   "3"
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
         Left            =   2880
         TabIndex        =   20
         Top             =   960
         Width           =   495
      End
   End
   Begin VB.Frame Frame3 
      BackColor       =   &H00C0FFFF&
      Caption         =   "Find First Term and A.P Sequence :"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   4215
      Left            =   6000
      TabIndex        =   0
      Top             =   6360
      Width           =   5775
      Begin VB.TextBox T17 
         Height          =   375
         Left            =   4800
         TabIndex        =   46
         Top             =   2880
         Width           =   855
      End
      Begin VB.TextBox T16 
         Height          =   375
         Left            =   3240
         TabIndex        =   45
         Top             =   2880
         Width           =   855
      End
      Begin VB.TextBox T15 
         Height          =   375
         Left            =   2280
         TabIndex        =   40
         Top             =   2880
         Width           =   855
      End
      Begin VB.TextBox T11 
         Height          =   495
         Left            =   3240
         TabIndex        =   6
         Top             =   360
         Width           =   2415
      End
      Begin VB.TextBox T12 
         Height          =   495
         Left            =   3240
         TabIndex        =   5
         Top             =   960
         Width           =   2415
      End
      Begin VB.TextBox T13 
         Height          =   495
         Left            =   3240
         TabIndex        =   4
         Top             =   1560
         Width           =   2415
      End
      Begin VB.CommandButton Command5 
         Caption         =   "Solve"
         Height          =   375
         Left            =   1680
         TabIndex        =   3
         Top             =   3600
         Width           =   1215
      End
      Begin VB.CommandButton Command6 
         Caption         =   "Clear"
         Height          =   375
         Left            =   3120
         TabIndex        =   2
         Top             =   3600
         Width           =   1215
      End
      Begin VB.TextBox T14 
         Height          =   375
         Left            =   1320
         TabIndex        =   1
         Top             =   2880
         Width           =   855
      End
      Begin VB.Label Label21 
         BackColor       =   &H00C0FFFF&
         Caption         =   "5"
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
         Left            =   5040
         TabIndex        =   47
         Top             =   2640
         Width           =   495
      End
      Begin VB.Label Label20 
         BackColor       =   &H00C0FFFF&
         Caption         =   "3"
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
         Left            =   3480
         TabIndex        =   44
         Top             =   2640
         Width           =   495
      End
      Begin VB.Label Label19 
         BackColor       =   &H00C0FFFF&
         Caption         =   "2"
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
         Left            =   2520
         TabIndex        =   43
         Top             =   2640
         Width           =   375
      End
      Begin VB.Label Label18 
         BackColor       =   &H00C0FFFF&
         Caption         =   "1"
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
         Left            =   1680
         TabIndex        =   42
         Top             =   2640
         Width           =   375
      End
      Begin VB.Label Label17 
         BackColor       =   &H00C0FFFF&
         Caption         =   "....."
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   13.5
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   4200
         TabIndex        =   41
         Top             =   2880
         Width           =   735
      End
      Begin VB.Label Label13 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Enter the Nth term :"
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
         TabIndex        =   10
         Top             =   1080
         Width           =   3135
      End
      Begin VB.Label Label14 
         BackColor       =   &H00C0FFFF&
         Caption         =   "A.P.Sequence is :"
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
         TabIndex        =   9
         Top             =   2280
         Width           =   2535
      End
      Begin VB.Label Label15 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Enter the common difference :"
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
         TabIndex        =   8
         Top             =   480
         Width           =   3375
      End
      Begin VB.Label Label16 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Enter the value of Nth term  :"
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
         TabIndex        =   7
         Top             =   1680
         Width           =   3015
      End
   End
   Begin VB.Label Label26 
      BackColor       =   &H00C0FFFF&
      Caption         =   "Steps :"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   375
      Left            =   11880
      TabIndex        =   60
      Top             =   2640
      Width           =   1695
   End
   Begin VB.Image Image4 
      Height          =   495
      Left            =   9240
      Picture         =   "apfrm.frx":040B
      Top             =   1800
      Width           =   3150
   End
   Begin VB.Image Image3 
      Height          =   495
      Left            =   2400
      Picture         =   "apfrm.frx":71BC
      Top             =   1800
      Width           =   3150
   End
   Begin VB.Image Image1 
      Height          =   1575
      Left            =   0
      Picture         =   "apfrm.frx":DF6D
      Stretch         =   -1  'True
      Top             =   0
      Width           =   15360
   End
   Begin VB.Image Image2 
      Height          =   720
      Left            =   5760
      Picture         =   "apfrm.frx":12F43
      Top             =   1680
      Width           =   3270
   End
End
Attribute VB_Name = "apfrm"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
On Error GoTo errhan:
T41.Text = Val(T1.Text) + (((Val(T3.Text) - 1)) * Val(T2.Text))
'steps
rt.Text = " Find Value Nth Term :" & vbNewLine & "----------------------------------" & vbNewLine & " Enter the first term : " & T1.Text & vbNewLine & " Enter the common difference : " & T2.Text & vbNewLine & " Enter the Nth term : " & T3.Text & vbNewLine & vbNewLine
te = rt.Text
rt.Text = ""
rt.Text = te & " Formula is :  " & "t = a+(n-1)*d" & vbNewLine & vbNewLine
te = rt.Text
rt.Text = ""
rt.Text = te & " t = " & T1.Text & " + (" & T3.Text & " - 1) * " & T2.Text & vbNewLine & vbNewLine
te = rt.Text
rt.Text = ""
rt.Text = te & " t = " & T1.Text & " + ( " & (Val(T3.Text) - 1) & " ) * " & T2.Text & vbNewLine & vbNewLine
te = rt.Text
rt.Text = ""
rt.Text = te & " t = " & T1.Text & " + " & ((Val(T3.Text) - 1) * Val(T2.Text)) & vbNewLine & vbNewLine
te = rt.Text
rt.Text = ""
rt.Text = te & " Value of Nth term is : " & T41.Text
Exit Sub
errhan:
 MsgBox err.Description, vbInformation
End Sub

Private Sub Command2_Click()
rt.Text = ""
T1.Text = ""
T2.Text = ""
T3.Text = ""
T41.Text = ""
End Sub

Private Sub Command3_Click()
On Error GoTo errhan:
If t9.Text = "" Then
t7.Text = Val(t6.Text) - Val(t5.Text)
t8.Text = Val(t5.Text) + ((Val(T10.Text) - 1) * Val(t7.Text))
Else
If (Val(t6.Text) - Val(t5.Text)) <> (Val(t9.Text) - Val(t6.Text)) Then
  MsgBox "Invalid Input", vbInformation
Else
t7.Text = Val(t6.Text) - Val(t5.Text)
t8.Text = Val(t5.Text) + ((Val(T10.Text) - 1) * Val(t7.Text))
End If
End If

' steps
rt.Text = " Find Common difference and Nth Term :" & vbNewLine & "----------------------------------------------" & vbNewLine & " a1 : " & t5.Text & vbNewLine & " a2 : " & t6.Text & vbNewLine & " a3 : " & t9.Text & vbNewLine & " Enter the Nth term (t): " & T10.Text & vbNewLine & vbNewLine
te = rt.Text
rt.Text = ""
rt.Text = te & " (i) Common difference : " & vbNewLine & vbNewLine & " d = a2 - a1 " & vbNewLine & vbNewLine & " d = " & t6.Text & " - " & t5.Text & vbNewLine & vbNewLine & " d = " & t7.Text & vbNewLine & vbNewLine & vbNewLine
te = rt.Text
rt.Text = ""
rt.Text = te & " (ii) Nth Term : " & vbNewLine & vbNewLine & " t = a+(n-1)*d " & vbNewLine & vbNewLine
te = rt.Text
rt.Text = ""
rt.Text = te & " t =  " & t5.Text & " + (" & T10.Text & " - 1) * " & t7.Text & vbNewLine & vbNewLine
te = rt.Text
rt.Text = ""
rt.Text = te & " t = " & t5.Text & " + ( " & (Val(T10.Text) - 1) & " ) * " & t7.Text & vbNewLine & vbNewLine
te = rt.Text
rt.Text = ""
rt.Text = te & " t = " & t5.Text & " + " & ((Val(T10.Text) - 1) * Val(t7.Text)) & vbNewLine & vbNewLine
te = rt.Text
rt.Text = ""
rt.Text = te & " Value of Nth term is : " & t8.Text
Exit Sub
errhan:
 MsgBox err.Description, vbInformation
End Sub

Private Sub Command4_Click()
rt.Text = ""
t5.Text = ""
t6.Text = ""
t7.Text = ""
t8.Text = ""
t9.Text = ""
T10.Text = ""
End Sub

Private Sub Command5_Click()
On Error GoTo errhan:
T14.Text = Val(T13.Text) - ((Val(T12.Text) - 1) * Val(T11.Text))
T15.Text = Val(T14.Text) + (Val(T11.Text))
T16.Text = Val(T15.Text) + (Val(T11.Text))
T17.Text = Val(T13.Text)
Label21.Caption = Val(T12.Text)
If Val(T12.Text) = 3 Or Val(T12.Text) < 3 Then
Label21.Visible = False
T17.Visible = False
Else
Label21.Visible = True
T17.Visible = True
End If

'steps
rt.Text = " Find First Term and A.P Sequence :" & vbNewLine & "----------------------------------" & vbNewLine & " Enter the common difference : " & T11.Text & vbNewLine & " Enter the Nth term : " & T12.Text & vbNewLine & " Enter the Value Nth term : " & T13.Text & vbNewLine & vbNewLine
te = rt.Text
rt.Text = ""
rt.Text = te & " Formula is :  " & " a = t-((n-1)*d)" & vbNewLine & vbNewLine
te = rt.Text
rt.Text = ""
rt.Text = te & " a = " & T13.Text & " - ((" & T12.Text & " - 1)) * " & T11.Text & vbNewLine & vbNewLine
te = rt.Text
rt.Text = ""
rt.Text = te & " a = " & T13.Text & " - ( " & (Val(T12.Text) - 1) & " ) * " & T11.Text & vbNewLine & vbNewLine
te = rt.Text
rt.Text = ""
rt.Text = te & " a = " & T13.Text & " - " & ((Val(T12.Text) - 1) * Val(T11.Text)) & vbNewLine & vbNewLine
te = rt.Text
rt.Text = ""
rt.Text = te & " a = " & T14.Text & vbNewLine & vbNewLine
te = rt.Text
rt.Text = ""
rt.Text = te & " The Sequence is : " & " a , a+d , a+2d , a+3d ...." & vbNewLine & vbNewLine
te = rt.Text
rt.Text = ""
rt.Text = te & " a = " & T14.Text & vbNewLine & vbNewLine & " a+d = " & T14.Text & "+" & T11.Text & " = " & T15.Text & vbNewLine & vbNewLine & " a+2d = " & T14.Text & "+(2*" & T11.Text & ") = " & T16.Text & vbNewLine & vbNewLine & " a+3d = " & T14.Text & "+(3*" & T11.Text & ") = " & (T14.Text + (3 * Val(T11.Text))) & vbNewLine & vbNewLine
te = rt.Text
rt.Text = ""
rt.Text = te & " The Sequence is : " & T14.Text & "," & T15.Text & "," & T16.Text & "," & (T14.Text + (3 * Val(T11.Text))) & "...." & vbNewLine & vbNewLine

Exit Sub
errhan:
 MsgBox err.Description, vbInformation
End Sub

Private Sub Command6_Click()

rt.Text = ""
T11.Text = ""
T12.Text = ""
T13.Text = ""

T14.Text = ""
T15.Text = ""
T16.Text = ""
T17.Text = ""
End Sub

Private Sub Command7_Click()
rt.Text = ""
T18.Text = ""
T19.Text = ""
T20.Text = ""
T21.Text = ""
End Sub

Private Sub Command8_Click()
On Error GoTo errhan:
If Val(T19.Text) = 0 Then
MsgBox "Invalid Input", vbInformation
Else
T21.Text = ((Val(T20.Text) - Val(T18.Text)) / Val(T19.Text)) + 1
End If
'steps
rt.Text = " Find Nth Term :" & vbNewLine & "----------------------------------" & vbNewLine & " Enter the first term : " & T18.Text & vbNewLine & " Enter the common difference : " & T19.Text & vbNewLine & " Enter the Value Nth term : " & T20.Text & vbNewLine & vbNewLine
te = rt.Text
rt.Text = ""
rt.Text = te & " Formula is :  " & " n = ( (t-a)/d )+1" & vbNewLine & vbNewLine
te = rt.Text
rt.Text = ""
rt.Text = te & " n = " & " ( (" & T20.Text & "-" & T18.Text & ")/" & T19.Text & ")+1" & vbNewLine & vbNewLine
te = rt.Text
rt.Text = ""
rt.Text = te & " n = " & " ( (" & T20.Text - T18.Text & ")/" & T19.Text & ")+1" & vbNewLine & vbNewLine
te = rt.Text
rt.Text = ""
rt.Text = te & " n = " & " (" & ((T20.Text - T18.Text) / T19.Text) & ")+1" & vbNewLine & vbNewLine
te = rt.Text
rt.Text = ""
rt.Text = te & " n = " & (((T20.Text - T18.Text) / T19.Text)) + 1 & vbNewLine & vbNewLine
te = rt.Text
rt.Text = ""
rt.Text = te & " The Nth term is : " & T21.Text
Exit Sub
errhan:
 MsgBox err.Description, vbInformation
End Sub

Private Sub Form_Load()
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


Private Sub T41_Validate(Cancel As Boolean)
If IsNumeric(T41.Text) = False And T41.Text <> "" Then
 If (T41.Text <> "-") Then
  i = MsgBox(T41.Text & " " & "is not a numeric value.Enter only numeric values", vbInformation)
  T41.Text = ""
  T41.SetFocus
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



Private Sub T7_Validate(Cancel As Boolean)
If IsNumeric(t7.Text) = False And t7.Text <> "" Then
 If (t7.Text <> "-") Then
  i = MsgBox(t7.Text & " " & "is not a numeric value.Enter only numeric values", vbInformation)
  t7.Text = ""
  t7.SetFocus
 End If
End If
End Sub


Private Sub T8_Validate(Cancel As Boolean)
If IsNumeric(t8.Text) = False And t8.Text <> "" Then
 If (t8.Text <> "-") Then
  i = MsgBox(t8.Text & " " & "is not a numeric value.Enter only numeric values", vbInformation)
  t8.Text = ""
  t8.SetFocus
 End If
End If
End Sub
Private Sub T9_Validate(Cancel As Boolean)
If IsNumeric(t9.Text) = False And t9.Text <> "" Then
 If (t9.Text <> "-") Then
  i = MsgBox(t9.Text & " " & "is not a numeric value.Enter only numeric values", vbInformation)
  t9.Text = ""
  t9.SetFocus
 End If
End If
End Sub
Private Sub T10_Validate(Cancel As Boolean)
If IsNumeric(T10.Text) = False And T10.Text <> "" Then
 If (T10.Text <> "-") Then
  i = MsgBox(T10.Text & " " & "is not a numeric value.Enter only numeric values", vbInformation)
  T10.Text = ""
  T10.SetFocus
 End If
End If
End Sub



Private Sub T11_Validate(Cancel As Boolean)
If IsNumeric(T11.Text) = False And T11.Text <> "" Then
 If (T11.Text <> "-") Then
  i = MsgBox(T11.Text & " " & "is not a numeric value.Enter only numeric values", vbInformation)
  T11.Text = ""
  T11.SetFocus
 End If
End If
End Sub


Private Sub T12_Validate(Cancel As Boolean)
If IsNumeric(T12.Text) = False And T12.Text <> "" Then
 If (T12.Text <> "-") Then
  i = MsgBox(T12.Text & " " & "is not a numeric value.Enter only numeric values", vbInformation)
  T12.Text = ""
  T12.SetFocus
 End If
End If
End Sub
Private Sub T13_Validate(Cancel As Boolean)
If IsNumeric(T13.Text) = False And T13.Text <> "" Then
 If (T13.Text <> "-") Then
  i = MsgBox(T13.Text & " " & "is not a numeric value.Enter only numeric values", vbInformation)
  T13.Text = ""
  T13.SetFocus
 End If
End If
End Sub

Private Sub T14_Validate(Cancel As Boolean)
If IsNumeric(T14.Text) = False And T14.Text <> "" Then
 If (T14.Text <> "-") Then
  i = MsgBox(T14.Text & " " & "is not a numeric value.Enter only numeric values", vbInformation)
  T14.Text = ""
  T14.SetFocus
 End If
End If
End Sub
Private Sub T15_Validate(Cancel As Boolean)
If IsNumeric(T15.Text) = False And T15.Text <> "" Then
 If (T15.Text <> "-") Then
  i = MsgBox(T15.Text & " " & "is not a numeric value.Enter only numeric values", vbInformation)
  T15.Text = ""
  T15.SetFocus
 End If
End If
End Sub



Private Sub T16_Validate(Cancel As Boolean)
If IsNumeric(T16.Text) = False And T16.Text <> "" Then
 If (T16.Text <> "-") Then
  i = MsgBox(T16.Text & " " & "is not a numeric value.Enter only numeric values", vbInformation)
  T16.Text = ""
  T16.SetFocus
 End If
End If
End Sub


Private Sub T17_Validate(Cancel As Boolean)
If IsNumeric(T17.Text) = False And T17.Text <> "" Then
 If (T17.Text <> "-") Then
  i = MsgBox(T17.Text & " " & "is not a numeric value.Enter only numeric values", vbInformation)
  T17.Text = ""
  T17.SetFocus
 End If
End If
End Sub
Private Sub T18_Validate(Cancel As Boolean)
If IsNumeric(T18.Text) = False And T18.Text <> "" Then
 If (T18.Text <> "-") Then
  i = MsgBox(T18.Text & " " & "is not a numeric value.Enter only numeric values", vbInformation)
  T18.Text = ""
  T18.SetFocus
 End If
End If
End Sub
Private Sub T19_Validate(Cancel As Boolean)
If IsNumeric(T19.Text) = False And T19.Text <> "" Then
 If (T19.Text <> "-") Then
  i = MsgBox(T19.Text & " " & "is not a numeric value.Enter only numeric values", vbInformation)
  T19.Text = ""
  T19.SetFocus
 End If
End If
End Sub



Private Sub T20_Validate(Cancel As Boolean)
If IsNumeric(T20.Text) = False And T20.Text <> "" Then
 If (T20.Text <> "-") Then
  i = MsgBox(T20.Text & " " & "is not a numeric value.Enter only numeric values", vbInformation)
  T20.Text = ""
  T20.SetFocus
 End If
End If
End Sub

Private Sub T21_Validate(Cancel As Boolean)
If IsNumeric(T21.Text) = False And T21.Text <> "" Then
 If (T21.Text <> "-") Then
  i = MsgBox(T21.Text & " " & "is not a numeric value.Enter only numeric values", vbInformation)
  T21.Text = ""
  T21.SetFocus
 End If
End If
End Sub
