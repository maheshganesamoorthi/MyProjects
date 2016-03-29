VERSION 5.00
Begin VB.Form cirtrifrm 
   BackColor       =   &H00C0FFFF&
   Caption         =   " Co-ordinates of the circumcentre of a triangle "
   ClientHeight    =   9660
   ClientLeft      =   60
   ClientTop       =   420
   ClientWidth     =   13935
   Icon            =   "cirtrifrm.frx":0000
   LinkTopic       =   "Form1"
   ScaleHeight     =   9660
   ScaleWidth      =   13935
   StartUpPosition =   3  'Windows Default
   Begin VB.Frame Frame1 
      BackColor       =   &H00C0FFFF&
      Caption         =   "Enter the Values :"
      ForeColor       =   &H000000FF&
      Height          =   8415
      Left            =   120
      TabIndex        =   0
      Top             =   2280
      Width           =   7215
      Begin VB.Frame Frame3 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Calculate :"
         ForeColor       =   &H000000FF&
         Height          =   4215
         Left            =   120
         TabIndex        =   1
         Top             =   3960
         Width           =   6975
         Begin VB.TextBox Text7 
            Height          =   375
            Left            =   3600
            TabIndex        =   14
            Text            =   "Text7"
            Top             =   2640
            Width           =   2655
         End
         Begin VB.TextBox Text6 
            Height          =   375
            Left            =   5040
            TabIndex        =   11
            Text            =   "Text3"
            Top             =   2160
            Width           =   1215
         End
         Begin VB.TextBox Text5 
            Height          =   375
            Left            =   3600
            TabIndex        =   10
            Text            =   "Text4"
            Top             =   2160
            Width           =   1215
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
            Left            =   3960
            TabIndex        =   13
            Top             =   3480
            Width           =   1575
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
            Left            =   2160
            TabIndex        =   12
            Top             =   3480
            Width           =   1575
         End
         Begin VB.TextBox Text4 
            Height          =   375
            Left            =   5040
            TabIndex        =   9
            Text            =   "Text4"
            Top             =   1680
            Width           =   1215
         End
         Begin VB.TextBox Text3 
            Height          =   375
            Left            =   3600
            TabIndex        =   8
            Text            =   "Text3"
            Top             =   1680
            Width           =   1215
         End
         Begin VB.TextBox Text2 
            Height          =   375
            Left            =   5040
            TabIndex        =   7
            Text            =   "Text2"
            Top             =   1200
            Width           =   1215
         End
         Begin VB.TextBox Text1 
            Height          =   375
            Left            =   3600
            TabIndex        =   6
            Text            =   "Text1"
            Top             =   1200
            Width           =   1215
         End
         Begin VB.Label CourtesanInputDescription_1 
            BackColor       =   &H00C0FFFF&
            Caption         =   "X coordinate"
            Height          =   255
            Left            =   3600
            TabIndex        =   16
            Top             =   720
            Width           =   1215
         End
         Begin VB.Label CourtesanInputDescription_2 
            BackColor       =   &H00C0FFFF&
            Caption         =   "Y coordinate"
            Height          =   255
            Left            =   5160
            TabIndex        =   15
            Top             =   720
            Width           =   1335
         End
         Begin VB.Label Label4 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00C0FFFF&
            Caption         =   "Point - C"
            Height          =   375
            Left            =   2280
            TabIndex        =   5
            Top             =   2160
            Width           =   1095
         End
         Begin VB.Label Label3 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00C0FFFF&
            Caption         =   "Point - B"
            Height          =   375
            Left            =   1920
            TabIndex        =   4
            Top             =   1680
            Width           =   1455
         End
         Begin VB.Label Label2 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00C0FFFF&
            Caption         =   "Point - A"
            Height          =   375
            Left            =   1920
            TabIndex        =   3
            Top             =   1200
            Width           =   1455
         End
         Begin VB.Label Label1 
            BackColor       =   &H00C0FFFF&
            Caption         =   "Co-ordinates of the circumcentre of a triangle :"
            Height          =   375
            Left            =   120
            TabIndex        =   2
            Top             =   2640
            Width           =   3375
         End
      End
      Begin VB.Image Image2 
         Height          =   3225
         Left            =   1800
         Picture         =   "cirtrifrm.frx":076A
         Top             =   480
         Width           =   3570
      End
   End
   Begin VB.Image Image4 
      Height          =   540
      Left            =   6120
      Picture         =   "cirtrifrm.frx":26100
      Top             =   1440
      Width           =   4320
   End
   Begin VB.Image Image3 
      Height          =   8400
      Left            =   7440
      Picture         =   "cirtrifrm.frx":2DAC2
      Top             =   2280
      Width           =   7815
   End
   Begin VB.Image Image1 
      Height          =   1710
      Left            =   -120
      Picture         =   "cirtrifrm.frx":103844
      Stretch         =   -1  'True
      Top             =   -120
      Width           =   15465
   End
End
Attribute VB_Name = "cirtrifrm"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False


Private Sub Command1_Click()
On Error GoTo errhan:
If Text1.Text = "" Or Text2.Text = "" Or Text3.Text = "" Or Text4.Text = "" Or Text5.Text = "" Or Text6.Text = "" Then
 MsgBox "Enter the value", vbInformation
Else
x1 = Val(Text1.Text)
y1 = Val(Text2.Text)
x2 = Val(Text3.Text)
y2 = Val(Text4.Text)
x3 = Val(Text5.Text)
y3 = Val(Text6.Text)
midx1 = (x1 + x2) / 2
midy1 = (y1 + y2) / 2
midx2 = (x2 + x3) / 2
midy2 = (y2 + y3) / 2

'Find Equation of the perpendicular bisector of AB through D
If (x2 - x1) = 0 Then
 perslop1 = 0
 A = 0
 B = 1
 C = midy1
Else
 slop1 = (y2 - y1) / (x2 - x1)
  If slop1 = 0 Then
   A = 1
   B = 0
   C = midx1
  Else
   perslop1 = -1 / slop1
   A = -1 * perslop1
   B = -1 * -1
   C = -1 * (-midy1 + (midx1 * perslop1))
  End If
End If

'Find Equation of the perpendicular bisector of BC through E
If (x3 - x2) = 0 Then
perslop2 = 0
D = 0
e = 1
F = midy2
Else
slop2 = (y3 - y2) / (x3 - x2)
If slop2 = 0 Then
D = 1
e = 0
F = midx2
Else
perslop2 = -1 / slop2
D = -1 * perslop2
e = -1 * -1
F = -1 * (-midy2 + (midx2 * perslop2))
End If
End If

' Solve two equation and find point
G = Val(A * e)
H = Val(A * F)
i = Val(D * B)
j = Val(D * C)

i = i / -1
j = j / -1

If Val(i + G) = 0 Then
MsgBox "      No solve exist       ", vbInformation, "Invalid"
Else
k = (j + H) / (i + G)
l = (C - (B * k)) / A
Text7.Text = "(" & l & " " & "," & " " & k & ")"
'MsgBox A & B & C & D & e & F
End If
End If
Exit Sub
errhan:
  MsgBox err.Description, vbInformation
End Sub

Private Sub Command2_Click()
Text1.Text = ""
Text2.Text = ""
Text3.Text = ""
Text4.Text = ""
Text5.Text = ""
Text6.Text = ""
Text7.Text = ""
End Sub

Private Sub Form_Load()
Me.WindowState = vbMaximized
Text1.Visible = True
Text2.Visible = True
Text3.Visible = True
Text4.Visible = True
Text5.Visible = True
Text6.Visible = True
Text7.Visible = True
Text1.Text = ""
Text2.Text = ""
Text3.Text = ""
Text4.Text = ""
Text5.Text = ""
Text6.Text = ""
Text7.Text = ""
End Sub


