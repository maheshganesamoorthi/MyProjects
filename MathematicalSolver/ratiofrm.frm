VERSION 5.00
Begin VB.Form ratiofrm 
   BackColor       =   &H00C0FFFF&
   Caption         =   "Line section"
   ClientHeight    =   9705
   ClientLeft      =   60
   ClientTop       =   420
   ClientWidth     =   13410
   Icon            =   "ratiofrm.frx":0000
   LinkTopic       =   "Form1"
   ScaleHeight     =   9705
   ScaleWidth      =   13410
   StartUpPosition =   3  'Windows Default
   Begin VB.Frame Frame4 
      BackColor       =   &H00C0FFFF&
      Caption         =   "Find Mid-Point :"
      ForeColor       =   &H000000FF&
      Height          =   5175
      Left            =   10680
      TabIndex        =   47
      Top             =   2520
      Width           =   4575
      Begin VB.TextBox Text5 
         Height          =   375
         Left            =   1080
         TabIndex        =   54
         Top             =   3240
         Width           =   3255
      End
      Begin VB.CommandButton Command6 
         Caption         =   "Solve"
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
         Left            =   960
         TabIndex        =   53
         Top             =   4200
         Width           =   1455
      End
      Begin VB.CommandButton Command5 
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
         Height          =   375
         Left            =   2640
         TabIndex        =   52
         Top             =   4200
         Width           =   1455
      End
      Begin VB.TextBox Text4 
         Height          =   375
         Left            =   1560
         TabIndex        =   51
         Top             =   960
         Width           =   1335
      End
      Begin VB.TextBox Text3 
         Height          =   375
         Left            =   1560
         TabIndex        =   50
         Top             =   1800
         Width           =   1335
      End
      Begin VB.TextBox Text2 
         Height          =   375
         Left            =   3000
         TabIndex        =   49
         Top             =   960
         Width           =   1335
      End
      Begin VB.TextBox Text1 
         Height          =   375
         Left            =   3000
         TabIndex        =   48
         Top             =   1800
         Width           =   1335
      End
      Begin VB.Label Label26 
         BackColor       =   &H00C0FFFF&
         Caption         =   "The required point is :"
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
         Left            =   240
         TabIndex        =   63
         Top             =   2760
         Width           =   2535
      End
      Begin VB.Label Label25 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Point #1"
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
         Left            =   240
         TabIndex        =   62
         Top             =   960
         Width           =   735
      End
      Begin VB.Label Label24 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Point #2"
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
         Left            =   240
         TabIndex        =   61
         Top             =   1800
         Width           =   735
      End
      Begin VB.Label Label23 
         BackColor       =   &H00C0FFFF&
         Caption         =   "(X,Y)"
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
         Left            =   1080
         TabIndex        =   60
         Top             =   960
         Width           =   495
      End
      Begin VB.Label Label22 
         BackColor       =   &H00C0FFFF&
         Caption         =   "(X,Y)"
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
         Left            =   1080
         TabIndex        =   59
         Top             =   1800
         Width           =   615
      End
      Begin VB.Label Label21 
         BackColor       =   &H00C0FFFF&
         Caption         =   "X coordinate"
         Height          =   255
         Left            =   1800
         TabIndex        =   58
         Top             =   600
         Width           =   1095
      End
      Begin VB.Label Label20 
         BackColor       =   &H00C0FFFF&
         Caption         =   "X coordinate"
         Height          =   255
         Left            =   1800
         TabIndex        =   57
         Top             =   1440
         Width           =   975
      End
      Begin VB.Label Label19 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Y coordinate"
         Height          =   255
         Left            =   3120
         TabIndex        =   56
         Top             =   600
         Width           =   1215
      End
      Begin VB.Label Label18 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Y coordinate"
         Height          =   255
         Left            =   3120
         TabIndex        =   55
         Top             =   1440
         Width           =   1215
      End
   End
   Begin VB.Frame Frame2 
      BackColor       =   &H00C0FFFF&
      Caption         =   "Find centroid of the triangle :"
      ForeColor       =   &H000000FF&
      Height          =   5175
      Left            =   5400
      TabIndex        =   24
      Top             =   2520
      Width           =   5175
      Begin VB.TextBox t6 
         Height          =   375
         Left            =   3480
         TabIndex        =   42
         Top             =   2400
         Width           =   1335
      End
      Begin VB.TextBox t5 
         Height          =   375
         Left            =   2040
         TabIndex        =   41
         Top             =   2400
         Width           =   1335
      End
      Begin VB.TextBox t4 
         Height          =   375
         Left            =   3480
         TabIndex        =   31
         Top             =   1560
         Width           =   1335
      End
      Begin VB.TextBox t2 
         Height          =   375
         Left            =   3480
         TabIndex        =   30
         Top             =   720
         Width           =   1335
      End
      Begin VB.TextBox t3 
         Height          =   375
         Left            =   2040
         TabIndex        =   29
         Top             =   1560
         Width           =   1335
      End
      Begin VB.TextBox t1 
         Height          =   375
         Left            =   2040
         TabIndex        =   28
         Top             =   720
         Width           =   1335
      End
      Begin VB.CommandButton Command4 
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
         Height          =   375
         Left            =   2760
         TabIndex        =   27
         Top             =   4440
         Width           =   1455
      End
      Begin VB.CommandButton Command3 
         Caption         =   "Solve"
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
         Left            =   960
         TabIndex        =   26
         Top             =   4440
         Width           =   1455
      End
      Begin VB.TextBox t7 
         Height          =   375
         Left            =   2040
         TabIndex        =   25
         Top             =   3480
         Width           =   3015
      End
      Begin VB.Label Label17 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Y coordinate"
         Height          =   255
         Left            =   3720
         TabIndex        =   46
         Top             =   2040
         Width           =   1215
      End
      Begin VB.Label Label16 
         BackColor       =   &H00C0FFFF&
         Caption         =   "X coordinate"
         Height          =   255
         Left            =   2280
         TabIndex        =   45
         Top             =   2040
         Width           =   1575
      End
      Begin VB.Label Label15 
         BackColor       =   &H00C0FFFF&
         Caption         =   "(X,Y)"
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
         Left            =   1320
         TabIndex        =   44
         Top             =   2400
         Width           =   615
      End
      Begin VB.Label Label14 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Point #3"
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
         Left            =   240
         TabIndex        =   43
         Top             =   2400
         Width           =   975
      End
      Begin VB.Label Label13 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Y coordinate"
         Height          =   255
         Left            =   3720
         TabIndex        =   40
         Top             =   1200
         Width           =   1215
      End
      Begin VB.Label Label12 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Y coordinate"
         Height          =   255
         Left            =   3720
         TabIndex        =   39
         Top             =   360
         Width           =   1215
      End
      Begin VB.Label Label11 
         BackColor       =   &H00C0FFFF&
         Caption         =   "X coordinate"
         Height          =   255
         Left            =   2280
         TabIndex        =   38
         Top             =   1200
         Width           =   1575
      End
      Begin VB.Label Label10 
         BackColor       =   &H00C0FFFF&
         Caption         =   "X coordinate"
         Height          =   255
         Left            =   2280
         TabIndex        =   37
         Top             =   360
         Width           =   1815
      End
      Begin VB.Label Label9 
         BackColor       =   &H00C0FFFF&
         Caption         =   "(X,Y)"
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
         Left            =   1320
         TabIndex        =   36
         Top             =   1560
         Width           =   615
      End
      Begin VB.Label Label8 
         BackColor       =   &H00C0FFFF&
         Caption         =   "(X,Y)"
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
         Left            =   1320
         TabIndex        =   35
         Top             =   720
         Width           =   495
      End
      Begin VB.Label Label7 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Point #2"
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
         Left            =   240
         TabIndex        =   34
         Top             =   1560
         Width           =   975
      End
      Begin VB.Label Label6 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Point #1"
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
         Left            =   240
         TabIndex        =   33
         Top             =   720
         Width           =   975
      End
      Begin VB.Label Label5 
         BackColor       =   &H00C0FFFF&
         Caption         =   "The required point is :"
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
         Left            =   120
         TabIndex        =   32
         Top             =   3600
         Width           =   2535
      End
   End
   Begin VB.Frame Frame1 
      BackColor       =   &H00C0FFFF&
      Caption         =   "Formula :"
      ForeColor       =   &H000000FF&
      Height          =   2535
      Left            =   120
      TabIndex        =   23
      Top             =   7920
      Width           =   15135
      Begin VB.Image Image6 
         Height          =   2220
         Left            =   5160
         Picture         =   "ratiofrm.frx":076A
         Top             =   240
         Width           =   4560
      End
      Begin VB.Image Image5 
         Height          =   2220
         Left            =   2640
         Picture         =   "ratiofrm.frx":216EC
         Top             =   240
         Width           =   7890
      End
      Begin VB.Image Image4 
         Height          =   1980
         Left            =   360
         Picture         =   "ratiofrm.frx":5A89E
         Top             =   360
         Width           =   14115
      End
      Begin VB.Image Image3 
         Height          =   2085
         Left            =   1200
         Picture         =   "ratiofrm.frx":B5900
         Top             =   240
         Width           =   12450
      End
   End
   Begin VB.Frame Frame3 
      BackColor       =   &H00C0FFFF&
      Caption         =   "Find Point ( Ratio Formula ) :"
      ForeColor       =   &H000000FF&
      Height          =   5175
      Left            =   120
      TabIndex        =   0
      Top             =   2520
      Width           =   5175
      Begin VB.TextBox soltxt 
         Height          =   375
         Left            =   2160
         TabIndex        =   22
         Top             =   3840
         Width           =   2895
      End
      Begin VB.TextBox n 
         Height          =   375
         Left            =   2880
         TabIndex        =   6
         Top             =   2400
         Width           =   615
      End
      Begin VB.ComboBox Combo1 
         Height          =   315
         Left            =   2160
         TabIndex        =   18
         Text            =   "Internally"
         Top             =   3120
         Width           =   2175
      End
      Begin VB.TextBox m 
         Height          =   375
         Left            =   2160
         TabIndex        =   5
         Top             =   2400
         Width           =   615
      End
      Begin VB.CommandButton Command1 
         Caption         =   "Solve"
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
         Left            =   1080
         TabIndex        =   16
         Top             =   4560
         Width           =   1455
      End
      Begin VB.CommandButton Command2 
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
         Height          =   375
         Left            =   2760
         TabIndex        =   15
         Top             =   4560
         Width           =   1455
      End
      Begin VB.TextBox x1 
         Height          =   375
         Left            =   2160
         TabIndex        =   1
         Top             =   840
         Width           =   1335
      End
      Begin VB.TextBox x2 
         Height          =   375
         Left            =   2160
         TabIndex        =   3
         Top             =   1680
         Width           =   1335
      End
      Begin VB.TextBox y1 
         Height          =   375
         Left            =   3600
         TabIndex        =   2
         Top             =   840
         Width           =   1335
      End
      Begin VB.TextBox y2 
         Height          =   375
         Left            =   3600
         TabIndex        =   4
         Top             =   1680
         Width           =   1335
      End
      Begin VB.Label Label4 
         BackColor       =   &H00C0FFFF&
         Caption         =   "The required point is :"
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
         Left            =   120
         TabIndex        =   21
         Top             =   3840
         Width           =   1935
      End
      Begin VB.Label Label3 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Divides :"
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
         Left            =   1080
         TabIndex        =   20
         Top             =   3120
         Width           =   975
      End
      Begin VB.Label Label2 
         BackColor       =   &H00C0FFFF&
         Caption         =   ":"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   15.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   495
         Left            =   2760
         TabIndex        =   19
         Top             =   2400
         Width           =   135
      End
      Begin VB.Label Label1 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Ratio :"
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
         Left            =   1320
         TabIndex        =   17
         Top             =   2400
         Width           =   735
      End
      Begin VB.Label CourtesanInputDescription_Row1_1 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Point #1"
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
         Left            =   360
         TabIndex        =   14
         Top             =   840
         Width           =   975
      End
      Begin VB.Label CourtesanInputDescription_Row2_1 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Point #2"
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
         Left            =   360
         TabIndex        =   13
         Top             =   1680
         Width           =   975
      End
      Begin VB.Label CourtesanInputDescription_Row1_2 
         BackColor       =   &H00C0FFFF&
         Caption         =   "(X,Y)"
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
         Left            =   1440
         TabIndex        =   12
         Top             =   840
         Width           =   495
      End
      Begin VB.Label CourtesanInputDescription_Row2_2 
         BackColor       =   &H00C0FFFF&
         Caption         =   "(X,Y)"
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
         Left            =   1440
         TabIndex        =   11
         Top             =   1680
         Width           =   615
      End
      Begin VB.Label CourtesanInputDescription_1 
         BackColor       =   &H00C0FFFF&
         Caption         =   "X coordinate"
         Height          =   255
         Left            =   2400
         TabIndex        =   10
         Top             =   480
         Width           =   975
      End
      Begin VB.Label CourtesanInputDescription_3 
         BackColor       =   &H00C0FFFF&
         Caption         =   "X coordinate"
         Height          =   255
         Left            =   2400
         TabIndex        =   9
         Top             =   1320
         Width           =   1095
      End
      Begin VB.Label CourtesanInputDescription_2 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Y coordinate"
         Height          =   255
         Left            =   3720
         TabIndex        =   8
         Top             =   480
         Width           =   1095
      End
      Begin VB.Label CourtesanInputDescription_4 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Y coordinate"
         Height          =   255
         Left            =   3720
         TabIndex        =   7
         Top             =   1320
         Width           =   975
      End
   End
   Begin VB.Image Image2 
      Height          =   570
      Left            =   6240
      Picture         =   "ratiofrm.frx":10A256
      Top             =   1680
      Width           =   4140
   End
   Begin VB.Image Image1 
      Height          =   1710
      Left            =   0
      Picture         =   "ratiofrm.frx":111D80
      Stretch         =   -1  'True
      Top             =   0
      Width           =   15360
   End
End
Attribute VB_Name = "ratiofrm"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Combo1_Click()
If Combo1.Text = "Internally" Then
Image3.Visible = True
Image4.Visible = False
Image5.Visible = False
Image6.Visible = False
ElseIf Combo1.Text = "Externally" Then
Image4.Visible = True
Image3.Visible = False
Image5.Visible = False
Image6.Visible = False
End If
End Sub

Private Sub Command1_Click()
If x1.Text = "" Or x2.Text = "" Or y1.Text = "" Or y2.Text = "" Or m.Text = "" Or n.Text = "" Then
MsgBox "Enter the Value ", vbInformation
Else
If Combo1.Text = "Internally" Then
If Val(m.Text) < 0 Or Val(n.Text) < 0 Then
MsgBox "Invalid Input", vbInformation
Else
sol1 = (Val(m.Text) * Val(x2.Text)) + (Val(n.Text) * Val(x1.Text))
sol2 = Val(m.Text) + Val(n.Text)
sol3 = (Val(m.Text) * Val(y2.Text)) + (Val(n.Text) * Val(y1.Text))
sol4 = sol1 / sol2
sol5 = sol3 / sol2
soltxt = "(" & sol4 & "  ,  " & sol5 & ")"
End If
Else
If Val(m.Text) < Val(n.Text) Then
sol1 = (Val(n.Text) * Val(x1.Text)) - (Val(m.Text) * Val(x2.Text))
sol2 = Val(n.Text) - Val(m.Text)
sol3 = (Val(n.Text) * Val(y1.Text)) - (Val(m.Text) * Val(y2.Text))
sol4 = sol1 / sol2
sol5 = sol3 / sol2
soltxt = "(" & sol4 & "  ,  " & sol5 & ")"
ElseIf Val(m.Text) > Val(n.Text) Then
sol1 = (Val(m.Text) * Val(x2.Text)) - (Val(n.Text) * Val(x1.Text))
sol2 = Val(m.Text) - Val(n.Text)
sol3 = (Val(m.Text) * Val(y2.Text)) - (Val(n.Text) * Val(y1.Text))
sol4 = sol1 / sol2
sol5 = sol3 / sol2
soltxt = "(" & sol4 & "  ,  " & sol5 & ")"
ElseIf Val(m.Text) = Val(n.Text) Then
MsgBox "Invalid Input", vbInformation
End If
End If
End If
End Sub

Private Sub Command2_Click()
x1.Text = ""
y1.Text = ""
x2.Text = ""
y2.Text = ""
m.Text = ""
n.Text = ""
soltxt.Text = ""
End Sub

Private Sub Command3_Click()
If T1.Text = "" Or T2.Text = "" Or T3.Text = "" Or t4.Text = "" Or t5.Text = "" Or t6.Text = "" Then
MsgBox "Enter the Value ", vbInformation
Else
sol1 = (Val(T1.Text) + Val(T3.Text) + Val(t5.Text)) / 3
sol2 = (Val(T2.Text) + Val(t4.Text) + Val(t6.Text)) / 3
t7.Text = "(" & sol1 & "  ,  " & sol2 & ")"
End If
End Sub

Private Sub Command4_Click()
T1.Text = ""
T2.Text = ""
T3.Text = ""
t4.Text = ""
t5.Text = ""
t6.Text = ""
t7.Text = ""
End Sub

Private Sub Command5_Click()
Text1.Text = ""
Text2.Text = ""
Text3.Text = ""
Text4.Text = ""
Text5.Text = ""
End Sub

Private Sub Command6_Click()
If Text1.Text = "" Or Text2.Text = "" Or Text3.Text = "" Or Text4.Text = "" Then
MsgBox "Enter the Value ", vbInformation
Else
sol1 = (Val(Text4.Text) + Val(Text3.Text)) / 2
sol2 = (Val(Text1.Text) + Val(Text2.Text)) / 2
Text5.Text = "(" & sol1 & "  ,  " & sol2 & ")"
End If
End Sub

Private Sub Form_Load()
Me.WindowState = vbMaximized
Combo1.AddItem "Internally"
Combo1.AddItem "Externally"
x1.Text = ""
y1.Text = ""
x2.Text = ""
y2.Text = ""
m.Text = ""
n.Text = ""
Image3.Visible = True
Image4.Visible = False
Image5.Visible = False
Image6.Visible = False
End Sub



Private Sub t1_Click()
Image3.Visible = False
Image4.Visible = False
Image5.Visible = True
Image6.Visible = False
End Sub


Private Sub Text4_Click()
Image3.Visible = False
Image4.Visible = False
Image6.Visible = True
Image5.Visible = False
End Sub
