VERSION 5.00
Object = "{3B7C8863-D78F-101B-B9B5-04021C009402}#1.2#0"; "RichTx32.ocx"
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "TABCTL32.OCX"
Begin VB.Form areatrifrm 
   BackColor       =   &H00C0FFFF&
   Caption         =   "Area of Triangle & Incenter of Triangle"
   ClientHeight    =   8985
   ClientLeft      =   60
   ClientTop       =   420
   ClientWidth     =   10455
   Icon            =   "areatrifrm.frx":0000
   LinkTopic       =   "Form1"
   ScaleHeight     =   8985
   ScaleWidth      =   10455
   StartUpPosition =   3  'Windows Default
   Begin TabDlg.SSTab SSTab1 
      Height          =   8895
      Left            =   6480
      TabIndex        =   19
      Top             =   1800
      Width           =   8775
      _ExtentX        =   15478
      _ExtentY        =   15690
      _Version        =   393216
      Tabs            =   2
      TabHeight       =   520
      BackColor       =   12648447
      TabCaption(0)   =   "Steps"
      TabPicture(0)   =   "areatrifrm.frx":076A
      Tab(0).ControlEnabled=   -1  'True
      Tab(0).Control(0)=   "Frame2"
      Tab(0).Control(0).Enabled=   0   'False
      Tab(0).Control(1)=   "rt"
      Tab(0).Control(1).Enabled=   0   'False
      Tab(0).ControlCount=   2
      TabCaption(1)   =   "Example "
      TabPicture(1)   =   "areatrifrm.frx":0786
      Tab(1).ControlEnabled=   0   'False
      Tab(1).Control(0)=   "Frame4"
      Tab(1).ControlCount=   1
      Begin RichTextLib.RichTextBox rt 
         Height          =   7335
         Left            =   600
         TabIndex        =   21
         Top             =   1080
         Width           =   7695
         _ExtentX        =   13573
         _ExtentY        =   12938
         _Version        =   393217
         BackColor       =   12648447
         ScrollBars      =   3
         DisableNoScroll =   -1  'True
         Appearance      =   0
         TextRTF         =   $"areatrifrm.frx":07A2
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Trebuchet MS"
            Size            =   11.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
      End
      Begin VB.Frame Frame2 
         BackColor       =   &H00C0FFFF&
         Height          =   8415
         Left            =   120
         TabIndex        =   22
         Top             =   360
         Width           =   8535
         Begin VB.Label Label6 
            BackColor       =   &H00C0FFFF&
            Caption         =   " Steps :"
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
            Height          =   255
            Left            =   240
            TabIndex        =   23
            Top             =   360
            Width           =   1095
         End
      End
      Begin VB.Frame Frame4 
         BackColor       =   &H00C0FFFF&
         ForeColor       =   &H000000FF&
         Height          =   8415
         Left            =   -74880
         TabIndex        =   20
         Top             =   360
         Width           =   8535
         Begin VB.Line Line1 
            BorderColor     =   &H00808080&
            X1              =   0
            X2              =   8520
            Y1              =   3840
            Y2              =   3840
         End
         Begin VB.Image Image4 
            Height          =   3780
            Left            =   120
            Picture         =   "areatrifrm.frx":0823
            Top             =   120
            Width           =   7980
         End
         Begin VB.Image Image5 
            Height          =   4350
            Left            =   240
            Picture         =   "areatrifrm.frx":62B75
            Top             =   3960
            Width           =   7110
         End
      End
   End
   Begin VB.Frame Frame1 
      BackColor       =   &H00C0FFFF&
      Caption         =   "Enter the Values :"
      ForeColor       =   &H000000FF&
      Height          =   8775
      Left            =   120
      TabIndex        =   0
      Top             =   1800
      Width           =   6255
      Begin VB.Frame Frame3 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Calculate :"
         ForeColor       =   &H000000FF&
         Height          =   4455
         Left            =   120
         TabIndex        =   1
         Top             =   4080
         Width           =   6015
         Begin VB.TextBox Text7 
            Height          =   375
            Left            =   2400
            TabIndex        =   11
            Text            =   "Text7"
            Top             =   3000
            Width           =   3015
         End
         Begin VB.TextBox Text6 
            Height          =   375
            Left            =   4200
            TabIndex        =   10
            Text            =   "2"
            Top             =   1800
            Width           =   1215
         End
         Begin VB.TextBox Text5 
            Height          =   375
            Left            =   2760
            TabIndex        =   9
            Text            =   "-2"
            Top             =   1800
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
            Left            =   3360
            TabIndex        =   8
            Top             =   3600
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
            Left            =   1560
            TabIndex        =   7
            Top             =   3600
            Width           =   1575
         End
         Begin VB.TextBox Text4 
            Height          =   375
            Left            =   4200
            TabIndex        =   6
            Text            =   "2"
            Top             =   1320
            Width           =   1215
         End
         Begin VB.TextBox Text3 
            Height          =   375
            Left            =   2760
            TabIndex        =   5
            Text            =   "4"
            Top             =   1320
            Width           =   1215
         End
         Begin VB.TextBox Text2 
            Height          =   375
            Left            =   4200
            TabIndex        =   4
            Text            =   "5"
            Top             =   840
            Width           =   1215
         End
         Begin VB.TextBox Text1 
            Height          =   375
            Left            =   2760
            TabIndex        =   3
            Text            =   "4"
            Top             =   840
            Width           =   1215
         End
         Begin VB.ComboBox Combo1 
            Height          =   315
            Left            =   2400
            TabIndex        =   2
            Text            =   "Area"
            Top             =   2400
            Width           =   3015
         End
         Begin VB.Label CourtesanInputDescription_1 
            BackColor       =   &H00C0FFFF&
            Caption         =   "X coordinate"
            Height          =   255
            Left            =   2880
            TabIndex        =   18
            Top             =   480
            Width           =   1215
         End
         Begin VB.Label CourtesanInputDescription_2 
            BackColor       =   &H00C0FFFF&
            Caption         =   "Y coordinate"
            Height          =   255
            Left            =   4320
            TabIndex        =   17
            Top             =   480
            Width           =   975
         End
         Begin VB.Label Label4 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00C0FFFF&
            Caption         =   "Point - C"
            Height          =   375
            Left            =   1440
            TabIndex        =   16
            Top             =   1800
            Width           =   1095
         End
         Begin VB.Label Label3 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00C0FFFF&
            Caption         =   "Point - B"
            Height          =   375
            Left            =   1080
            TabIndex        =   15
            Top             =   1320
            Width           =   1455
         End
         Begin VB.Label Label2 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00C0FFFF&
            Caption         =   "Point - A"
            Height          =   375
            Left            =   1080
            TabIndex        =   14
            Top             =   840
            Width           =   1455
         End
         Begin VB.Label Label1 
            BackColor       =   &H00C0FFFF&
            Caption         =   "Center of a triangle :"
            Height          =   375
            Left            =   840
            TabIndex        =   13
            Top             =   3000
            Width           =   1455
         End
         Begin VB.Label Label5 
            BackColor       =   &H00C0FFFF&
            Caption         =   "Select the Option :"
            Height          =   375
            Left            =   960
            TabIndex        =   12
            Top             =   2400
            Width           =   1335
         End
      End
      Begin VB.Image Image3 
         Height          =   3165
         Left            =   1560
         Picture         =   "areatrifrm.frx":C78D7
         Top             =   720
         Width           =   3525
      End
   End
   Begin VB.Image Image2 
      Height          =   570
      Left            =   5760
      Picture         =   "areatrifrm.frx":EC0A5
      Top             =   1200
      Width           =   4140
   End
   Begin VB.Image Image1 
      Height          =   1455
      Left            =   -120
      Picture         =   "areatrifrm.frx":F3BCF
      Stretch         =   -1  'True
      Top             =   0
      Width           =   15465
   End
End
Attribute VB_Name = "areatrifrm"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim arr(1 To 5) As Long
Dim brr(1 To 5) As Long
Private Sub Combo1_Click()
If Combo1.Text = "Incenter" Then
Label1.Caption = "Co-ordinates Incenter of triangle"
ElseIf Combo1.Text = "Area" Then
Label1.Caption = "Area of triangle"
End If
End Sub

Private Sub Command1_Click()
On Error GoTo errhan:
If Text1.Text = "" Or Text2.Text = "" Or Text3.Text = "" Or Text4.Text = "" Or Text5.Text = "" Or Text6.Text = "" Then
 MsgBox "Enter the value", vbInformation
Else
If Combo1.Text = "Incenter" Then
x1 = Val(Text1.Text)
y1 = Val(Text2.Text)
x2 = Val(Text3.Text)
y2 = Val(Text4.Text)
x3 = Val(Text5.Text)
y3 = Val(Text6.Text)


A = Sqr((x3 - x2) ^ 2 + (y3 - y2) ^ 2)
B = Sqr((x3 - x1) ^ 2 + (y3 - y1) ^ 2)
C = Sqr((x2 - x1) ^ 2 + (y2 - y1) ^ 2)

sol1 = (A * x1) + (B * x2) + (C * x3)
sol2 = A + B + C
sol3 = (A * y1) + (B * y2) + (C * y3)
sol4 = sol1 / sol2
sol5 = sol3 / sol2
Text7.Text = "(" & sol4 & " " & "," & " " & sol5 & ")"
ElseIf Combo1.Text = "Area" Then
'Area=1/2[x1 (y2 – y3) + x2 (y3 – y1) + x3 (y1 – y2)]

arr(1) = Val(Text1.Text)
arr(2) = Val(Text3.Text)
arr(3) = Val(Text5.Text)
brr(1) = Val(Text2.Text)
brr(2) = Val(Text4.Text)
brr(3) = Val(Text6.Text)

For i = 1 To 3
 For j = 1 To 3
  If arr(i) < arr(j) Then
   temp = arr(i)
   arr(i) = arr(j)
   arr(j) = temp
   
   tempoary = brr(i)
   brr(i) = brr(j)
   brr(j) = tempoary
  End If
 Next j
Next i
  
x1 = arr(1)
x2 = arr(2)
x3 = arr(3)
y1 = brr(1)
y2 = brr(2)
y3 = brr(3)

A = ((x1 * (y2 - y3)) + (x2 * (y3 - y1)) + (x3 * (y1 - y2))) / 2
If A < 0 Then
tp = A
A = -1 * A
Else
tp = A
End If
Text7.Text = A
rt.Text = " Point #A : " & "( " & x1 & "," & y1 & " )"
rt.Text = rt.Text & vbNewLine & " Point #B : " & "( " & x2 & "," & y2 & " )"
rt.Text = rt.Text & vbNewLine & " Point #C : " & "( " & x3 & "," & y3 & " )"
rt.Text = rt.Text & vbNewLine & vbNewLine & " Area = [ (x1 * (y2 - y3) ) + (x2 * (y3 - y1) ) + (x3 * (y1 - y2) ) ] / 2"
rt.Text = rt.Text & vbNewLine & vbNewLine & " Area = [ (" & x1 & " * " & " ( " & y2 & " - " & y3 & " ) )" & " + " & "( " & x2 & " * " & "( " & y3 & " - " & y1 & " ) ) + ( " & x3 & " * ( " & y1 & " - " & y2 & " ) ) ] / 2"
rt.Text = rt.Text & vbNewLine & vbNewLine & " Area = [ (" & x1 & " * " & " ( " & y2 - y3 & " ) )" & " + " & "( " & x2 & " * " & "( " & y3 - y1 & " ) ) + ( " & x3 & " * ( " & y1 - y2 & " ) ) ] / 2"
rt.Text = rt.Text & vbNewLine & vbNewLine & " Area = [ (" & x1 * (y2 - y3) & ")" & " + " & "( " & x2 * (y3 - y1) & " ) + ( " & x3 * (y1 - y2) & ") ] / 2"
rt.Text = rt.Text & vbNewLine & vbNewLine & " Area = " & "( " & (x1 * (y2 - y3)) + (x2 * (y3 - y1)) + (x3 * (y1 - y2)) & " ) " & " / 2 "
If tp > 0 Then
rt.Text = rt.Text & vbNewLine & vbNewLine & " Area = | " & A & " |" & " = " & A & " sq.units"
Else
rt.Text = rt.Text & vbNewLine & vbNewLine & " Area = | " & "-" & A & " |" & " = " & A & " sq.units"
End If
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
rt.Text = ""
End Sub

Private Sub Form_Load()
Label1.Caption = "Area of triangle"
Combo1.AddItem "Area"
Combo1.AddItem "Incenter"
'Text1.Text = ""
'Text2.Text = ""
'Text3.Text = ""
'Text4.Text = ""
'Text5.Text = ""
'Text6.Text = ""
Text7.Text = ""
Me.WindowState = vbMaximized
End Sub

