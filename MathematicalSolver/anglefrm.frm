VERSION 5.00
Begin VB.Form anglefrm 
   BackColor       =   &H00C0FFFF&
   Caption         =   "Angle"
   ClientHeight    =   9750
   ClientLeft      =   60
   ClientTop       =   420
   ClientWidth     =   11160
   LinkTopic       =   "Form1"
   ScaleHeight     =   11040
   ScaleWidth      =   15240
   StartUpPosition =   3  'Windows Default
   Begin VB.Frame Frame3 
      BackColor       =   &H00C0FFFF&
      Caption         =   "Calculation :"
      ForeColor       =   &H000000FF&
      Height          =   2775
      Left            =   7320
      TabIndex        =   6
      Top             =   7920
      Width           =   7935
      Begin VB.CommandButton Command2 
         Caption         =   "Clear"
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
         Left            =   6360
         TabIndex        =   12
         Top             =   2040
         Width           =   1095
      End
      Begin VB.CommandButton Command1 
         Caption         =   "Solve"
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
         Left            =   5040
         TabIndex        =   11
         Top             =   2040
         Width           =   1095
      End
      Begin VB.TextBox Text1 
         Height          =   375
         Left            =   6840
         TabIndex        =   10
         Top             =   1320
         Width           =   975
      End
      Begin VB.ComboBox Combo3 
         Height          =   315
         Left            =   5400
         TabIndex        =   8
         Text            =   "Combo3"
         Top             =   840
         Width           =   2055
      End
      Begin VB.Label Label4 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Enetr the angle ""a"" :"
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
         Left            =   4920
         TabIndex        =   9
         Top             =   1440
         Width           =   2175
      End
      Begin VB.Label Label3 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Select Known Angle :"
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
         Left            =   4920
         TabIndex        =   7
         Top             =   480
         Width           =   2295
      End
      Begin VB.Image Image11 
         Height          =   2460
         Left            =   360
         Picture         =   "anglefrm.frx":0000
         Top             =   240
         Width           =   4155
      End
   End
   Begin VB.Frame Frame2 
      BackColor       =   &H00C0FFFF&
      Caption         =   "Tutorial - II"
      ForeColor       =   &H000000FF&
      Height          =   6615
      Left            =   7320
      TabIndex        =   1
      Top             =   1440
      Width           =   7935
      Begin VB.ComboBox Combo2 
         Height          =   315
         Left            =   2640
         TabIndex        =   4
         Text            =   "Combo1"
         Top             =   360
         Width           =   3015
      End
      Begin VB.Image Image10 
         Height          =   5865
         Left            =   840
         Picture         =   "anglefrm.frx":21542
         Top             =   600
         Width           =   6555
      End
      Begin VB.Image Image9 
         Height          =   5820
         Left            =   840
         Picture         =   "anglefrm.frx":9E966
         Top             =   600
         Width           =   6555
      End
      Begin VB.Image Image8 
         Height          =   5520
         Left            =   840
         Picture         =   "anglefrm.frx":11AE2A
         Top             =   960
         Width           =   6315
      End
      Begin VB.Image Image7 
         Height          =   5550
         Left            =   840
         Picture         =   "anglefrm.frx":18C76E
         Top             =   840
         Width           =   6825
      End
      Begin VB.Label Label2 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Select the option :"
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
         Left            =   840
         TabIndex        =   5
         Top             =   360
         Width           =   2895
      End
   End
   Begin VB.Frame Frame1 
      BackColor       =   &H00C0FFFF&
      Caption         =   "Tutorial - I"
      ForeColor       =   &H000000FF&
      Height          =   9255
      Left            =   120
      TabIndex        =   0
      Top             =   1440
      Width           =   7095
      Begin VB.ComboBox Combo1 
         Height          =   315
         Left            =   2160
         TabIndex        =   3
         Text            =   "Combo1"
         Top             =   480
         Width           =   3015
      End
      Begin VB.Image Image6 
         Height          =   6540
         Left            =   840
         Picture         =   "anglefrm.frx":2080E2
         Top             =   1320
         Width           =   5475
      End
      Begin VB.Image Image5 
         Height          =   6540
         Left            =   720
         Picture         =   "anglefrm.frx":27CBC6
         Top             =   1200
         Width           =   5625
      End
      Begin VB.Image Image4 
         Height          =   6270
         Left            =   840
         Picture         =   "anglefrm.frx":2F4D2A
         Top             =   1320
         Width           =   5490
      End
      Begin VB.Image Image3 
         Height          =   6330
         Left            =   840
         Picture         =   "anglefrm.frx":365184
         Top             =   1320
         Width           =   5505
      End
      Begin VB.Image Image2 
         Height          =   6495
         Left            =   960
         Picture         =   "anglefrm.frx":3D6DA6
         Top             =   1200
         Width           =   5490
      End
      Begin VB.Label Label1 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Select the option :"
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
         Left            =   360
         TabIndex        =   2
         Top             =   480
         Width           =   2895
      End
   End
   Begin VB.Image Image1 
      Height          =   1710
      Left            =   0
      Picture         =   "anglefrm.frx":44B274
      Stretch         =   -1  'True
      Top             =   0
      Width           =   15360
   End
End
Attribute VB_Name = "anglefrm"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Combo1_Click()
If Combo1.Text = "Acute Angle" Then
Image2.Visible = True
Image3.Visible = False
Image4.Visible = False
Image5.Visible = False
Image6.Visible = False
ElseIf Combo1.Text = "Obtuse Angle" Then
Image3.Visible = True
Image2.Visible = False
Image4.Visible = False
Image5.Visible = False
Image6.Visible = False
ElseIf Combo1.Text = "Reflex Angle" Then
Image4.Visible = True
Image3.Visible = False
Image2.Visible = False
Image5.Visible = False
Image6.Visible = False
ElseIf Combo1.Text = "Zero Angle" Then
Image5.Visible = True
Image3.Visible = False
Image4.Visible = False
Image2.Visible = False
Image6.Visible = False
ElseIf Combo1.Text = "Right Angle" Then
Image6.Visible = True
Image3.Visible = False
Image4.Visible = False
Image5.Visible = False
Image2.Visible = False
End If
End Sub

Private Sub Combo2_Click()
If Combo2.Text = "Vertically opposite Angles" Then
Image7.Visible = True
Image8.Visible = False
Image9.Visible = False
Image10.Visible = False
ElseIf Combo2.Text = "Alternate Angles" Then
Image10.Visible = True
Image7.Visible = False
Image8.Visible = False
Image9.Visible = False
ElseIf Combo2.Text = "Corresponding Angles" Then
Image8.Visible = True
Image7.Visible = False
Image10.Visible = False
Image9.Visible = False
ElseIf Combo2.Text = "Supplementary Angles" Then
Image9.Visible = True
Image7.Visible = False
Image8.Visible = False
Image10.Visible = False
End If
End Sub

Private Sub Combo3_Click()
If Combo3.Text = "a" Then
Label4.Caption = "Enetr the angle - a :"
ElseIf Combo3.Text = "c" Then
Label4.Caption = "Enetr the angle - c :"
ElseIf Combo3.Text = "t" Then
Label4.Caption = "Enetr the angle - t :"
ElseIf Combo3.Text = "u" Then
Label4.Caption = "Enetr the angle - u :"
ElseIf Combo3.Text = "w" Then
Label4.Caption = "Enetr the angle - w :"
ElseIf Combo3.Text = "x" Then
Label4.Caption = "Enetr the angle - x :"
ElseIf Combo3.Text = "y" Then
Label4.Caption = "Enetr the angle - y :"
ElseIf Combo3.Text = "z" Then
Label4.Caption = "Enetr the angle - z :"
End If
End Sub

Private Sub Command1_Click()
If Val(Text1.Text) > 180 Or Val(Text1.Text) < 0 Then
 MsgBox "Invalid Value", vbInformation
Else
 If Combo3.Text = "w" Then
  MsgBox "Other Angles are:" & vbNewLine & " angle of z = " & Val(Text1.Text) & vbNewLine & " angle of u = " & Val(Text1.Text) & vbNewLine & " angle of x = " & Val(Text1.Text) & vbNewLine & " angle of t = " & 180 - Val(Text1.Text) & vbNewLine & " angle of y = " & 180 - Val(Text1.Text) & vbNewLine & " angle of a = " & 180 - Val(Text1.Text) & vbNewLine & " angle of c = " & 180 - Val(Text1.Text)
 ElseIf Combo3.Text = "a" Then
 
 End If
End If
End Sub

Private Sub Command2_Click()
Text1.Text = ""
End Sub

Private Sub Form_Load()
Me.WindowState = vbMaximized
Combo1.AddItem "Acute Angle"
Combo1.AddItem "Right Angle"
Combo1.AddItem "Obtuse Angle"
Combo1.AddItem "Reflex Angle"
Combo1.AddItem "Zero Angle"
Combo1.Text = "Acute Angle"

Combo2.AddItem "Vertically opposite Angles"
Combo2.AddItem "Alternate Angles"
Combo2.AddItem "Corresponding Angles"
Combo2.AddItem "Supplementary Angles"
Combo2.Text = "Vertically opposite Angles"

Combo3.AddItem "a"
Combo3.AddItem "c"
Combo3.AddItem "t"
Combo3.AddItem "u"
Combo3.AddItem "w"
Combo3.AddItem "x"
Combo3.AddItem "y"
Combo3.AddItem "z"
Combo3.Text = "w"
Label4.Caption = "Enetr the angle - w :"

Image7.Visible = True
Image8.Visible = False
Image9.Visible = False
Image10.Visible = False

Image2.Visible = True
Image3.Visible = False
Image4.Visible = False
Image5.Visible = False
Image6.Visible = False
End Sub

