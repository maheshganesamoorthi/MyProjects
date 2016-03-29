VERSION 5.00
Begin VB.Form properfrm 
   BackColor       =   &H00C0FFFF&
   Caption         =   "Fraction"
   ClientHeight    =   8370
   ClientLeft      =   60
   ClientTop       =   420
   ClientWidth     =   9825
   LinkTopic       =   "Form1"
   ScaleHeight     =   8370
   ScaleWidth      =   9825
   StartUpPosition =   3  'Windows Default
   Begin VB.Frame Frame2 
      BackColor       =   &H00C0FFFF&
      Caption         =   "Explain :"
      ForeColor       =   &H000000FF&
      Height          =   8895
      Left            =   6000
      TabIndex        =   1
      Top             =   1800
      Width           =   9255
      Begin VB.Image Image3 
         Height          =   6465
         Left            =   120
         Picture         =   "properfrm.frx":0000
         Top             =   720
         Width           =   9000
      End
      Begin VB.Image Image2 
         Height          =   6240
         Left            =   120
         Picture         =   "properfrm.frx":BD6BA
         Top             =   840
         Width           =   8010
      End
   End
   Begin VB.Frame Frame1 
      BackColor       =   &H00C0FFFF&
      Caption         =   "Calculation :"
      ForeColor       =   &H000000FF&
      Height          =   8895
      Left            =   120
      TabIndex        =   0
      Top             =   1800
      Width           =   5775
      Begin VB.TextBox m3 
         Height          =   495
         Left            =   4320
         TabIndex        =   21
         Top             =   2400
         Width           =   495
      End
      Begin VB.TextBox m2 
         Height          =   495
         Left            =   2280
         TabIndex        =   20
         Top             =   2400
         Width           =   495
      End
      Begin VB.TextBox m1 
         Height          =   495
         Left            =   120
         TabIndex        =   19
         Top             =   2400
         Width           =   495
      End
      Begin VB.CommandButton Command2 
         Caption         =   "Clear"
         Height          =   375
         Left            =   3000
         TabIndex        =   18
         Top             =   3720
         Width           =   1575
      End
      Begin VB.CommandButton Command1 
         Caption         =   "Solve"
         Height          =   375
         Left            =   1200
         TabIndex        =   17
         Top             =   3720
         Width           =   1575
      End
      Begin VB.TextBox Text6 
         Height          =   495
         Left            =   5040
         TabIndex        =   11
         Top             =   2880
         Width           =   495
      End
      Begin VB.TextBox Text5 
         Height          =   495
         Left            =   5040
         TabIndex        =   10
         Top             =   1920
         Width           =   495
      End
      Begin VB.TextBox Text4 
         Height          =   495
         Left            =   3000
         TabIndex        =   9
         Top             =   2880
         Width           =   495
      End
      Begin VB.TextBox Text3 
         Height          =   495
         Left            =   3000
         TabIndex        =   8
         Top             =   1920
         Width           =   495
      End
      Begin VB.TextBox Text2 
         Height          =   495
         Left            =   840
         TabIndex        =   7
         Top             =   2880
         Width           =   495
      End
      Begin VB.TextBox Text1 
         Height          =   495
         Left            =   840
         TabIndex        =   6
         Top             =   1920
         Width           =   495
      End
      Begin VB.ComboBox Combo2 
         Height          =   315
         Left            =   2280
         TabIndex        =   5
         Text            =   "Addition"
         Top             =   1080
         Width           =   3135
      End
      Begin VB.ComboBox Combo1 
         Height          =   315
         Left            =   2280
         TabIndex        =   2
         Text            =   "Proper Fraction"
         Top             =   360
         Width           =   3135
      End
      Begin VB.Label Label23 
         BackColor       =   &H00C0FFFF&
         Height          =   375
         Left            =   4440
         TabIndex        =   41
         Top             =   7560
         Width           =   615
      End
      Begin VB.Label Label22 
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
         Height          =   375
         Left            =   240
         TabIndex        =   40
         Top             =   4680
         Width           =   1095
      End
      Begin VB.Line Line9 
         X1              =   2160
         X2              =   4080
         Y1              =   7680
         Y2              =   7680
      End
      Begin VB.Line Line8 
         X1              =   5160
         X2              =   5640
         Y1              =   7680
         Y2              =   7680
      End
      Begin VB.Line Line7 
         X1              =   1200
         X2              =   1680
         Y1              =   7680
         Y2              =   7680
      End
      Begin VB.Line Line6 
         X1              =   120
         X2              =   600
         Y1              =   7680
         Y2              =   7680
      End
      Begin VB.Line Line5 
         X1              =   3720
         X2              =   4200
         Y1              =   5880
         Y2              =   5880
      End
      Begin VB.Line Line4 
         X1              =   960
         X2              =   1440
         Y1              =   5880
         Y2              =   5880
      End
      Begin VB.Label Label21 
         BackColor       =   &H00C0FFFF&
         Caption         =   "="
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
         Left            =   4200
         TabIndex        =   39
         Top             =   7560
         Width           =   135
      End
      Begin VB.Label Label20 
         BackColor       =   &H00C0FFFF&
         Caption         =   "="
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
         Left            =   1920
         TabIndex        =   38
         Top             =   7560
         Width           =   255
      End
      Begin VB.Label Label19 
         BackColor       =   &H00C0FFFF&
         Caption         =   "+"
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
         Left            =   840
         TabIndex        =   37
         Top             =   7440
         Width           =   255
      End
      Begin VB.Label Label18 
         Alignment       =   2  'Center
         BackColor       =   &H00C0FFFF&
         Height          =   375
         Left            =   5160
         TabIndex        =   36
         Top             =   7920
         Width           =   375
      End
      Begin VB.Label Label17 
         Alignment       =   2  'Center
         BackColor       =   &H00C0FFFF&
         Height          =   375
         Left            =   5160
         TabIndex        =   35
         Top             =   7200
         Width           =   375
      End
      Begin VB.Label Label16 
         Alignment       =   2  'Center
         BackColor       =   &H00C0FFFF&
         Height          =   375
         Left            =   2160
         TabIndex        =   34
         Top             =   7920
         Width           =   1935
      End
      Begin VB.Label Label15 
         Alignment       =   2  'Center
         BackColor       =   &H00C0FFFF&
         Height          =   375
         Left            =   2160
         TabIndex        =   33
         Top             =   7200
         Width           =   1935
      End
      Begin VB.Label Label14 
         BackColor       =   &H00C0FFFF&
         Height          =   375
         Left            =   1320
         TabIndex        =   32
         Top             =   7920
         Width           =   375
      End
      Begin VB.Label Label13 
         BackColor       =   &H00C0FFFF&
         Height          =   375
         Left            =   1320
         TabIndex        =   31
         Top             =   7200
         Width           =   375
      End
      Begin VB.Label Label12 
         BackColor       =   &H00C0FFFF&
         Height          =   375
         Left            =   240
         TabIndex        =   30
         Top             =   7920
         Width           =   375
      End
      Begin VB.Label Label11 
         BackColor       =   &H00C0FFFF&
         Height          =   375
         Left            =   240
         TabIndex        =   29
         Top             =   7200
         Width           =   375
      End
      Begin VB.Label Label10 
         BackColor       =   &H00C0FFFF&
         Caption         =   "+"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   18
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   2280
         TabIndex        =   28
         Top             =   5640
         Width           =   375
      End
      Begin VB.Label Label9 
         BackColor       =   &H00C0FFFF&
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
         Left            =   3840
         TabIndex        =   27
         Top             =   6120
         Width           =   375
      End
      Begin VB.Label Label8 
         BackColor       =   &H00C0FFFF&
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
         Left            =   3840
         TabIndex        =   26
         Top             =   5400
         Width           =   375
      End
      Begin VB.Label Label7 
         BackColor       =   &H00C0FFFF&
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
         Left            =   3120
         TabIndex        =   25
         Top             =   5760
         Width           =   375
      End
      Begin VB.Label Label6 
         BackColor       =   &H00C0FFFF&
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
         Left            =   1080
         TabIndex        =   24
         Top             =   6120
         Width           =   375
      End
      Begin VB.Label Label5 
         BackColor       =   &H00C0FFFF&
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
         Left            =   1080
         TabIndex        =   23
         Top             =   5400
         Width           =   375
      End
      Begin VB.Label Label4 
         BackColor       =   &H00C0FFFF&
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
         Left            =   480
         TabIndex        =   22
         Top             =   5760
         Width           =   375
      End
      Begin VB.Label divl 
         BackColor       =   &H00C0FFFF&
         Caption         =   "/"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   24
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   615
         Left            =   1680
         TabIndex        =   16
         Top             =   2400
         Width           =   255
      End
      Begin VB.Label mull 
         BackColor       =   &H00C0FFFF&
         Caption         =   "*"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   24
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   1800
         TabIndex        =   15
         Top             =   2520
         Width           =   255
      End
      Begin VB.Label minusl 
         BackColor       =   &H00C0FFFF&
         Caption         =   "-"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   24
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   1680
         TabIndex        =   14
         Top             =   2280
         Width           =   255
      End
      Begin VB.Line Line3 
         X1              =   4920
         X2              =   5640
         Y1              =   2640
         Y2              =   2640
      End
      Begin VB.Line Line2 
         X1              =   2880
         X2              =   3600
         Y1              =   2640
         Y2              =   2640
      End
      Begin VB.Line Line1 
         X1              =   720
         X2              =   1440
         Y1              =   2640
         Y2              =   2640
      End
      Begin VB.Label Label3 
         BackColor       =   &H00C0FFFF&
         Caption         =   "="
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   24
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   495
         Left            =   3840
         TabIndex        =   13
         Top             =   2400
         Width           =   375
      End
      Begin VB.Label plusl 
         BackColor       =   &H00C0FFFF&
         Caption         =   "+"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   24
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   495
         Left            =   1680
         TabIndex        =   12
         Top             =   2400
         Width           =   495
      End
      Begin VB.Label Label2 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Select the operation :"
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
         Left            =   240
         TabIndex        =   4
         Top             =   1080
         Width           =   1935
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
         Height          =   255
         Left            =   240
         TabIndex        =   3
         Top             =   360
         Width           =   1695
      End
   End
   Begin VB.Image Image1 
      Height          =   1710
      Left            =   0
      Picture         =   "properfrm.frx":16057C
      Stretch         =   -1  'True
      Top             =   0
      Width           =   15360
   End
End
Attribute VB_Name = "properfrm"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private Sub Combo1_Click()
If Combo1.Text = "Proper Fraction" Then
m1.Visible = False
m2.Visible = False
m3.Visible = False
Image2.Visible = True
Image3.Visible = False
ElseIf Combo1.Text = "ImProper Fraction" Then
m1.Visible = False
m2.Visible = False
m3.Visible = False
Image2.Visible = True
Image3.Visible = False
ElseIf Combo1.Text = "Mixed Numbers" Then
m1.Visible = True
m2.Visible = True
m3.Visible = True
Image2.Visible = False
Image3.Visible = True
End If
End Sub

Private Sub Combo2_Click()
If Combo2.Text = "Addition" Then
v = 1
minusl.Visible = False
mull.Visible = False
divl.Visible = False
plusl.Visible = True
Label10.Caption = "+"
ElseIf Combo2.Text = "Subtraction" Then
v = 2
minusl.Visible = True
mull.Visible = False
divl.Visible = False
plusl.Visible = False
Label10.Caption = "-"
ElseIf Combo2.Text = "Multiplication" Then
v = 3
minusl.Visible = False
mull.Visible = True
divl.Visible = False
plusl.Visible = False
Label10.Caption = "*"
ElseIf Combo2.Text = "Division" Then
v = 4
minusl.Visible = False
mull.Visible = False
divl.Visible = True
plusl.Visible = False
Label10.Caption = "/"
End If
End Sub

Private Sub Command1_Click()

  ' ******** Proper Fraction **********
  
If Combo1.Text = "Proper Fraction" Then
  If Combo2.Text = "Addition" Then
  If Val(Text2.Text) < Val(Text1.Text) Or Val(Text4.Text) < Val(Text3.Text) Or Val(Text2.Text) = 0 Or Val(Text4.Text) = 0 Then
    MsgBox "Invalid Value", vbInformation
  Else
   Text5.Text = (Val(Text1.Text) * Val(Text4.Text)) + (Val(Text2.Text) * Val(Text3.Text))
   Text6.Text = Val(Text2.Text) * Val(Text4.Text)
  End If
  End If
  If Combo2.Text = "Subtraction" Then
  If Val(Text2.Text) < Val(Text1.Text) Or Val(Text4.Text) < Val(Text3.Text) Or Val(Text2.Text) = 0 Or Val(Text4.Text) = 0 Then
    MsgBox "Invalid Value", vbInformation
  Else
   Text5.Text = (Val(Text1.Text) * Val(Text4.Text)) - (Val(Text2.Text) * Val(Text3.Text))
   Text6.Text = Val(Text2.Text) * Val(Text4.Text)
  End If
  End If
  If Combo2.Text = "Multiplication" Then
  If Val(Text2.Text) < Val(Text1.Text) Or Val(Text4.Text) < Val(Text3.Text) Or Val(Text2.Text) = 0 Or Val(Text4.Text) = 0 Then
    MsgBox "Invalid Value", vbInformation
  Else
   Text5.Text = Val(Text1.Text) * Val(Text3.Text)
   Text6.Text = Val(Text2.Text) * Val(Text4.Text)
  End If
  End If
  If Combo2.Text = "Division" Then
  If Val(Text2.Text) < Val(Text1.Text) Or Val(Text4.Text) < Val(Text3.Text) Or Val(Text2.Text) = 0 Or Val(Text4.Text) = 0 Then
    MsgBox "Invalid Value", vbInformation
  Else
   Text5.Text = Val(Text1.Text) * Val(Text4.Text)
   Text6.Text = Val(Text2.Text) * Val(Text3.Text)
  End If
  End If
  
  ' ******** ImProper Fraction **********
  
ElseIf Combo1.Text = "ImProper Fraction" Then
  If Combo2.Text = "Addition" Then
  If Val(Text2.Text) < Val(Text1.Text) Or Val(Text4.Text) < Val(Text3.Text) Or Val(Text2.Text) = 0 Or Val(Text4.Text) = 0 Then
    MsgBox "Invalid Value", vbInformation
  Else
   Text5.Text = (Val(Text1.Text) * Val(Text4.Text)) + (Val(Text2.Text) * Val(Text3.Text))
   Text6.Text = Val(Text2.Text) * Val(Text4.Text)
  End If
  End If
  If Combo2.Text = "Subtraction" Then
  If Val(Text2.Text) < Val(Text1.Text) Or Val(Text4.Text) < Val(Text3.Text) Or Val(Text2.Text) = 0 Or Val(Text4.Text) = 0 Then
    MsgBox "Invalid Value", vbInformation
  Else
   Text5.Text = (Val(Text1.Text) * Val(Text4.Text)) - (Val(Text2.Text) * Val(Text3.Text))
   Text6.Text = Val(Text2.Text) * Val(Text4.Text)
  End If
  End If
  If Combo2.Text = "Multiplication" Then
  If Val(Text2.Text) < Val(Text1.Text) Or Val(Text4.Text) < Val(Text3.Text) Or Val(Text2.Text) = 0 Or Val(Text4.Text) = 0 Then
    MsgBox "Invalid Value", vbInformation
  Else
   Text5.Text = Val(Text1.Text) * Val(Text3.Text)
   Text6.Text = Val(Text2.Text) * Val(Text4.Text)
  End If
  End If
  If Combo2.Text = "Division" Then
  If Val(Text2.Text) < Val(Text1.Text) Or Val(Text4.Text) < Val(Text3.Text) Or Val(Text2.Text) = 0 Or Val(Text4.Text) = 0 Then
    MsgBox "Invalid Value", vbInformation
  Else
   Text5.Text = Val(Text1.Text) * Val(Text4.Text)
   Text6.Text = Val(Text2.Text) * Val(Text3.Text)
  End If
  End If
  
  ' ******** Mixed numbers **********
  
 ElseIf Combo1.Text = "Mixed Numbers" Then
  If Combo2.Text = "Addition" Then
  If Val(Text1.Text) > Val(Text2.Text) Or Val(Text3.Text) > Val(Text4.Text) Or Val(Text2.Text) = 0 Or Val(Text4.Text) = 0 Then
    MsgBox "Invalid Value", vbInformation
  Else
   If Val(m1.Text) < 0 Then
    A = -1 * Val(m1.Text)
    B = (Val(Text2.Text) * A) + Val(Text1.Text)
    B = -1 * B
    C = Val(Text2.Text)
   Else
    A = Val(m1.Text)
    B = (Val(Text2.Text) * A) + Val(Text1.Text)
    C = Val(Text2.Text)
  End If
    
  If Val(m2.Text) < 0 Then
    D = -1 * Val(m2.Text)
    e = (Val(Text4.Text) * D) + Val(Text3.Text)
    e = -1 * B
    F = Val(Text4.Text)
   Else
    D = Val(m2.Text)
    e = (Val(Text4.Text) * D) + Val(Text3.Text)
    F = Val(Text4.Text)
  End If
    
    G = (B * F) + (C * e)
    H = C * F
   m3.Text = G / H
   If (G Mod H) = 0 Then
   Text5.Text = H
   Else
   Text5.Text = G Mod H
   End If
   Text6.Text = H
  End If
  End If
  If Combo2.Text = "Subtraction" Then
  If Val(Text1.Text) > Val(Text2.Text) Or Val(Text3.Text) > Val(Text4.Text) Or Val(Text2.Text) = 0 Or Val(Text4.Text) = 0 Then
    MsgBox "Invalid Value", vbInformation
  Else
   If Val(m1.Text) < 0 Then
    A = -1 * Val(m1.Text)
    B = (Val(Text2.Text) * A) + Val(Text1.Text)
    B = -1 * B
    C = Val(Text2.Text)
   Else
    A = Val(m1.Text)
    B = (Val(Text2.Text) * A) + Val(Text1.Text)
    C = Val(Text2.Text)
  End If
    
  If Val(m2.Text) < 0 Then
    D = -1 * Val(m2.Text)
    e = (Val(Text4.Text) * D) + Val(Text3.Text)
    e = -1 * B
    F = Val(Text4.Text)
   Else
    D = Val(m2.Text)
    e = (Val(Text4.Text) * D) + Val(Text3.Text)
    F = Val(Text4.Text)
  End If
    
    G = (B * F) - (C * e)
    H = C * F
   m3.Text = G / H
  If (G Mod H) = 0 Then
   Text5.Text = H
   Else
   Text5.Text = G Mod H
   End If
   Text6.Text = H
  End If
  End If
  If Combo2.Text = "Multiplication" Then
  If Val(Text1.Text) > Val(Text2.Text) Or Val(Text3.Text) > Val(Text4.Text) Or Val(Text2.Text) = 0 Or Val(Text4.Text) = 0 Then
    MsgBox "Invalid Value", vbInformation
  Else
   If Val(m1.Text) < 0 Then
    A = -1 * Val(m1.Text)
    B = (Val(Text2.Text) * A) + Val(Text1.Text)
    B = -1 * B
    C = Val(Text2.Text)
   Else
    A = Val(m1.Text)
    B = (Val(Text2.Text) * A) + Val(Text1.Text)
    C = Val(Text2.Text)
  End If
    
  If Val(m2.Text) < 0 Then
    D = -1 * Val(m2.Text)
    e = (Val(Text4.Text) * D) + Val(Text3.Text)
    e = -1 * B
    F = Val(Text4.Text)
   Else
    D = Val(m2.Text)
    e = (Val(Text4.Text) * D) + Val(Text3.Text)
    F = Val(Text4.Text)
  End If
    
    G = B * e
    H = C * F
   m3.Text = G / H
   If (G Mod H) = 0 Then
   Text5.Text = H
   Else
   Text5.Text = G Mod H
   End If
   Text6.Text = H
  End If
  End If
 If Combo2.Text = "Division" Then
  If Val(Text1.Text) > Val(Text2.Text) Or Val(Text3.Text) > Val(Text4.Text) Or Val(Text2.Text) = 0 Or Val(Text4.Text) = 0 Then
    MsgBox "Invalid Value", vbInformation
  Else
   If Val(m1.Text) < 0 Then
    A = -1 * Val(m1.Text)
    B = (Val(Text2.Text) * A) + Val(Text1.Text)
    B = -1 * B
    C = Val(Text2.Text)
   Else
    A = Val(m1.Text)
    B = (Val(Text2.Text) * A) + Val(Text1.Text)
    C = Val(Text2.Text)
  End If
    
  If Val(m2.Text) < 0 Then
    D = -1 * Val(m2.Text)
    e = (Val(Text4.Text) * D) + Val(Text3.Text)
    e = -1 * B
    F = Val(Text4.Text)
   Else
    D = Val(m2.Text)
    e = (Val(Text4.Text) * D) + Val(Text3.Text)
    F = Val(Text4.Text)
  End If
    
    G = B * F
    H = C * e
   m3.Text = G / H
   If (G Mod H) = 0 Then
   Text5.Text = H
   Else
   Text5.Text = G Mod H
   End If
   Text6.Text = H
  End If
End If
End If
Label20.Visible = True
Label21.Visible = True
Line8.Visible = True
Line9.Visible = True
If Combo2.Text = "Addition" Then
Label15.Caption = "( " & Label11.Caption & " * " & Label14.Caption & " ) + " & "( " & Label12.Caption & " * " & Label13.Caption & " ) "
Label16.Caption = "( " & Label12.Caption & " * " & Label14.Caption & " )"
Label19.Caption = "+"
ElseIf Combo2.Text = "Subtraction" Then
Label15.Caption = "( " & Label11.Caption & " * " & Label14.Caption & " ) - " & "( " & Label12.Caption & " * " & Label13.Caption & " ) "
Label16.Caption = "( " & Label12.Caption & " * " & Label14.Caption & " )"
Label19.Caption = "-"
ElseIf Combo2.Text = "Multiplication" Then
Label15.Caption = "( " & Label11.Caption & " * " & Label13.Caption & " ) "
Label16.Caption = "( " & Label12.Caption & " * " & Label14.Caption & " )"
Label19.Caption = "*"
ElseIf Combo2.Text = "Division" Then
Label15.Caption = "( " & Label11.Caption & " * " & Label14.Caption & " ) "
Label16.Caption = "( " & Label12.Caption & " * " & Label13.Caption & " )"
Label19.Caption = "/"
End If
End Sub

Private Sub Command2_Click()
Text1.Text = ""
Text2.Text = ""
Text3.Text = ""
Text4.Text = ""
Text5.Text = ""
Text6.Text = ""
m1.Text = ""
m2.Text = ""
m3.Text = ""
Line4.Visible = False
Line5.Visible = False
Line6.Visible = False
Line7.Visible = False
Line8.Visible = False
Line9.Visible = False
Label10.Visible = False
Label20.Visible = False
Label21.Visible = False
Label19.Visible = False
Label15.Visible = False
Label16.Visible = False
End Sub

Private Sub Form_Load()
Me.WindowState = vbMaximized
v = 1
minusl.Visible = False
mull.Visible = False
divl.Visible = False
plusl.Visible = True
Combo1.AddItem "Proper Fraction"
Combo1.AddItem "ImProper Fraction"
Combo1.AddItem "Mixed Numbers"
Combo2.AddItem "Addition"
Combo2.AddItem "Subtraction"
Combo2.AddItem "Multiplication"
Combo2.AddItem "Division"
Combo1.Text = "Proper Fraction"
m1.Visible = False
m2.Visible = False
m3.Visible = False
Image2.Visible = True
Image3.Visible = False
Line4.Visible = False
Line5.Visible = False
Line6.Visible = False
Line7.Visible = False
Line8.Visible = False
Line9.Visible = False
Label10.Visible = False
Label20.Visible = False
Label21.Visible = False
Label19.Visible = False
End Sub
                                                
Private Sub m1_Change()
Label4.Caption = m1.Text
If Combo1.Text = "Proper Fraction" Or Combo1.Text = "ImProper Fraction" Then
Label11.Caption = Text1.Text
Else
 If Val(m1.Text) < 0 Then
    A = -1 * Val(m1.Text)
    B = (Val(Text2.Text) * A) + Val(Text1.Text)
    B = -1 * B
    Label11.Caption = B
   Else
    A = Val(m1.Text)
    B = (Val(Text2.Text) * A) + Val(Text1.Text)
    Label11.Caption = B
End If

End If
End Sub

Private Sub m2_Change()
Label7.Caption = m2.Text
If Combo1.Text = "Proper Fraction" Or Combo1.Text = "ImProper Fraction" Then
Label13.Caption = Text3.Text
Else
 If Val(m2.Text) < 0 Then
    D = -1 * Val(m2.Text)
    e = (Val(Text4.Text) * D) + Val(Text3.Text)
    e = -1 * B
     Label13.Caption = e
  Else
    D = Val(m2.Text)
    e = (Val(Text4.Text) * D) + Val(Text3.Text)
     Label13.Caption = e
  End If

End If
End Sub

Private Sub m3_Change()
Label23.Caption = m3.Text
End Sub

Private Sub Text1_Change()
Label5.Caption = Text1.Text
If Combo1.Text = "Proper Fraction" Or Combo1.Text = "ImProper Fraction" Then
Label11.Caption = Text1.Text
Else
 If Val(m1.Text) < 0 Then
    A = -1 * Val(m1.Text)
    B = (Val(Text2.Text) * A) + Val(Text1.Text)
    B = -1 * B
    Label11.Caption = B
   Else
    A = Val(m1.Text)
    B = (Val(Text2.Text) * A) + Val(Text1.Text)
    Label11.Caption = B
End If

End If
End Sub

Private Sub Text2_Change()
Label6.Caption = Text2.Text
Label12.Caption = Text2.Text
Line4.Visible = True
Line6.Visible = True
Label10.Visible = True
Label19.Visible = True
If Combo1.Text = "Proper Fraction" Or Combo1.Text = "ImProper Fraction" Then
'Label11.Caption = Text2.Text
Else
 If Val(m1.Text) < 0 Then
    A = -1 * Val(m1.Text)
    B = (Val(Text2.Text) * A) + Val(Text1.Text)
    B = -1 * B
    Label11.Caption = B
   Else
    A = Val(m1.Text)
    B = (Val(Text2.Text) * A) + Val(Text1.Text)
    Label11.Caption = B
End If
End If
End Sub

Private Sub Text3_Change()
Label8.Caption = Text3.Text
If Combo1.Text = "Proper Fraction" Or Combo1.Text = "ImProper Fraction" Then
Label13.Caption = Text3.Text
Else
 If Val(m2.Text) < 0 Then
    D = -1 * Val(m2.Text)
    e = (Val(Text4.Text) * D) + Val(Text3.Text)
    e = -1 * B
     Label13.Caption = e
  Else
    D = Val(m2.Text)
    e = (Val(Text4.Text) * D) + Val(Text3.Text)
     Label13.Caption = e
  End If

End If
End Sub

Private Sub Text4_Change()
Label9.Caption = Text4.Text
Label14.Caption = Text4.Text
Line5.Visible = True
Line7.Visible = True
If Combo1.Text = "Proper Fraction" Or Combo1.Text = "ImProper Fraction" Then
'Label13.Caption = Text4.Text
Else
 If Val(m2.Text) < 0 Then
    D = -1 * Val(m2.Text)
    e = (Val(Text4.Text) * D) + Val(Text3.Text)
    e = -1 * B
     Label13.Caption = e
 Else
    D = Val(m2.Text)
    e = (Val(Text4.Text) * D) + Val(Text3.Text)
    Label13.Caption = e
  End If
 
End If
End Sub

Private Sub Text5_Change()
Label17.Caption = Text5.Text
End Sub

Private Sub Text6_Change()
Label18.Caption = Text6.Text
End Sub
