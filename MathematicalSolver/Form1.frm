VERSION 5.00
Begin VB.Form Carfrm 
   BackColor       =   &H00C0FFFF&
   Caption         =   "Straight Line"
   ClientHeight    =   9765
   ClientLeft      =   60
   ClientTop       =   420
   ClientWidth     =   14055
   Icon            =   "Form1.frx":0000
   LinkTopic       =   "Form1"
   ScaleHeight     =   9765
   ScaleWidth      =   14055
   StartUpPosition =   3  'Windows Default
   Begin VB.Frame Frame2 
      BackColor       =   &H00C0FFFF&
      Caption         =   "Formula :"
      ForeColor       =   &H000000FF&
      Height          =   8415
      Left            =   8280
      TabIndex        =   29
      Top             =   2280
      Width           =   6975
      Begin VB.Image Image3 
         Height          =   8025
         Left            =   720
         Picture         =   "Form1.frx":038A
         Top             =   240
         Width           =   5610
      End
   End
   Begin VB.Frame Frame1 
      BackColor       =   &H00C0FFFF&
      Caption         =   "Courtesan Plane :"
      ForeColor       =   &H000000FF&
      Height          =   8415
      Left            =   120
      TabIndex        =   0
      Top             =   2280
      Width           =   8055
      Begin VB.CommandButton Command1 
         Caption         =   "Clear"
         Height          =   375
         Left            =   3840
         TabIndex        =   28
         Top             =   7560
         Width           =   1695
      End
      Begin VB.TextBox CourtesanSolution_6 
         Height          =   375
         Left            =   3240
         TabIndex        =   27
         Text            =   "Text1"
         Top             =   6960
         Width           =   4095
      End
      Begin VB.TextBox CourtesanSolution_5 
         Height          =   375
         Left            =   3240
         TabIndex        =   26
         Text            =   "Text1"
         Top             =   6360
         Width           =   4095
      End
      Begin VB.TextBox CourtesanSolution_4 
         Height          =   375
         Left            =   3240
         TabIndex        =   25
         Text            =   "Text1"
         Top             =   5760
         Width           =   4095
      End
      Begin VB.TextBox CourtesanSolution_3 
         Height          =   375
         Left            =   3240
         TabIndex        =   24
         Text            =   "Text1"
         Top             =   5160
         Width           =   4095
      End
      Begin VB.TextBox CourtesanSolution_2 
         Height          =   375
         Left            =   3240
         TabIndex        =   23
         Text            =   "Text1"
         Top             =   4560
         Width           =   4095
      End
      Begin VB.TextBox CourtesanSolution_1 
         Height          =   375
         Left            =   3240
         TabIndex        =   22
         Text            =   "Text1"
         Top             =   3960
         Width           =   4095
      End
      Begin VB.TextBox CourtesanInput_4 
         Height          =   375
         Left            =   5640
         TabIndex        =   20
         Top             =   2760
         Width           =   1935
      End
      Begin VB.TextBox CourtesanInput_2 
         Height          =   375
         Left            =   5640
         TabIndex        =   18
         Top             =   1920
         Width           =   1935
      End
      Begin VB.CommandButton CourtesanCalculateButton 
         Caption         =   "Calculate"
         Height          =   375
         Left            =   2040
         TabIndex        =   9
         Top             =   7560
         Width           =   1695
      End
      Begin VB.TextBox CourtesanInput_3 
         Height          =   375
         Left            =   3000
         TabIndex        =   8
         Top             =   2760
         Width           =   2295
      End
      Begin VB.TextBox CourtesanInput_1 
         Height          =   375
         Left            =   3000
         TabIndex        =   7
         Top             =   1920
         Width           =   2295
      End
      Begin VB.ComboBox CourtesanInputMethod 
         Height          =   315
         Left            =   2640
         TabIndex        =   1
         Text            =   "Select Input Method"
         Top             =   720
         Width           =   3855
      End
      Begin VB.Label CourtesanInputDescription_4 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Y coordinate"
         Height          =   255
         Left            =   5520
         TabIndex        =   21
         Top             =   2400
         Width           =   1695
      End
      Begin VB.Label CourtesanInputDescription_2 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Y coordinate"
         Height          =   255
         Left            =   5520
         TabIndex        =   19
         Top             =   1560
         Width           =   1335
      End
      Begin VB.Label CourtesanInputDescription_3 
         BackColor       =   &H00C0FFFF&
         Caption         =   "X coordinate"
         Height          =   255
         Left            =   2880
         TabIndex        =   17
         Top             =   2400
         Width           =   1575
      End
      Begin VB.Label CourtesanInputDescription_1 
         BackColor       =   &H00C0FFFF&
         Caption         =   "X coordinate"
         Height          =   255
         Left            =   2880
         TabIndex        =   16
         Top             =   1560
         Width           =   1815
      End
      Begin VB.Label CourtesanSolutionDescription_6 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Angle From Y-Axis"
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   11.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   495
         Left            =   840
         TabIndex        =   15
         Top             =   6960
         Width           =   2175
      End
      Begin VB.Label CourtesanSolutionDescription_5 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Angle From X-Axis"
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   11.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   495
         Left            =   840
         TabIndex        =   14
         Top             =   6360
         Width           =   2175
      End
      Begin VB.Label CourtesanSolutionDescription_4 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Slope From Y-Axis"
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   11.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   495
         Left            =   840
         TabIndex        =   13
         Top             =   5760
         Width           =   2175
      End
      Begin VB.Label CourtesanSolutionDescription_3 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Slope From X-Axis"
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   11.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   495
         Left            =   840
         TabIndex        =   12
         Top             =   5160
         Width           =   2175
      End
      Begin VB.Label CourtesanSolutionDescription_2 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Mid Point"
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   11.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   495
         Left            =   840
         TabIndex        =   11
         Top             =   4560
         Width           =   2175
      End
      Begin VB.Label CourtesanSolutionDescription_1 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Distance"
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   11.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   495
         Left            =   840
         TabIndex        =   10
         Top             =   3960
         Width           =   2175
      End
      Begin VB.Label CourtesanInputDescription_Row2_2 
         BackColor       =   &H00C0FFFF&
         Caption         =   "(X,Y)"
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   1680
         TabIndex        =   6
         Top             =   2760
         Width           =   975
      End
      Begin VB.Label CourtesanInputDescription_Row1_2 
         BackColor       =   &H00C0FFFF&
         Caption         =   "(X,Y)"
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   1680
         TabIndex        =   5
         Top             =   1920
         Width           =   975
      End
      Begin VB.Label CourtesanInputDescription_Row2_1 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Point #2"
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   360
         TabIndex        =   4
         Top             =   2760
         Width           =   975
      End
      Begin VB.Label CourtesanInputDescription_Row1_1 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Point #1"
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   360
         TabIndex        =   3
         Top             =   1920
         Width           =   975
      End
      Begin VB.Label Label1 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Input Method :"
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   11.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   720
         TabIndex        =   2
         Top             =   720
         Width           =   1695
      End
   End
   Begin VB.Image Image2 
      Height          =   540
      Left            =   5160
      Picture         =   "Form1.frx":930C8
      Top             =   1560
      Width           =   4320
   End
   Begin VB.Image Image1 
      Height          =   1710
      Left            =   0
      Picture         =   "Form1.frx":9AA8A
      Stretch         =   -1  'True
      Top             =   0
      Width           =   15360
   End
End
Attribute VB_Name = "Carfrm"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private Sub Command1_Click()
CourtesanInput_1.Text = ""
CourtesanInput_2.Text = ""
CourtesanInput_3.Text = ""
CourtesanInput_4.Text = ""
CourtesanSolution_1.Text = ""
CourtesanSolution_2.Text = ""
CourtesanSolution_3.Text = ""
CourtesanSolution_4.Text = ""
CourtesanSolution_5.Text = ""
CourtesanSolution_6.Text = ""
End Sub

Private Sub CourtesanCalculateButton_Click()
On Error GoTo errhan:
 Call CourtesanCalcSub(Val(CourtesanInput_1.Text), Val(CourtesanInput_2.Text), Val(CourtesanInput_3.Text), Val(CourtesanInput_4.Text), Val(CourtesanSolution_1.Text), Val(CourtesanSolution_2.Text), Val(CourtesanSolution_3.Text), Val(CourtesanSolution_4.Text), Val(CourtesanSolution_5.Text), Val(CourtesanSolution_6.Text))
 CourtesanInput_1.SetFocus
 Exit Sub
errhan:
 MsgBox err.Description, vbInformation
End Sub

Private Sub CourtesanInputMethod_Click()
CourtesanInput_1.Visible = True
        CourtesanInput_2.Visible = True
        CourtesanInput_3.Visible = True
        CourtesanInput_4.Visible = True
        CourtesanInput_1.Text = ""
        CourtesanInput_2.Text = ""
        CourtesanInput_3.Text = ""
        CourtesanInput_4.Text = ""
        CourtesanSolution_1.Text = ""
        CourtesanSolution_2.Text = ""
        CourtesanSolution_3.Text = ""
        CourtesanSolution_4.Text = ""
        CourtesanSolution_5.Text = ""
        CourtesanSolution_6.Text = ""
        Select Case CourtesanInputMethod.ListIndex
            Case Is = 0
                CourtesanSolutionDescription_1.Caption = "Distance"
                CourtesanSolutionDescription_2.Caption = "Midpoint"
                CourtesanSolutionDescription_3.Caption = "Slope From X-Axis"
                CourtesanSolutionDescription_4.Caption = "Slope From Y-Axis"
                CourtesanSolutionDescription_5.Caption = "Angle From X-Axis"
                CourtesanSolutionDescription_6.Caption = "Angle From Y-Axis"
                CourtesanInputDescription_Row1_1.Caption = "Point #1"
                CourtesanInputDescription_Row2_1.Caption = "Point #2"
                CourtesanInputDescription_1.Caption = "X-Coordinate"
                CourtesanInputDescription_3.Caption = "X-Coordinate"
                CourtesanInputDescription_2.Caption = "Y-Coordinate"
                CourtesanInputDescription_4.Caption = "Y-Coordinate"
                CourtesanInputDescription_Row1_2.Caption = "( X , Y )"
                CourtesanInputDescription_Row2_2.Caption = "( X , Y )"
                CourtesanInput_4.Visible = True
            Case Is = 1
                CourtesanSolutionDescription_1.Caption = "Point #2"
                CourtesanSolutionDescription_2.Caption = "Midpoint"
                 CourtesanInputDescription_3.Caption = "Slope From X-Axis"
                CourtesanSolutionDescription_4.Caption = "Slope From Y-Axis"
                CourtesanSolutionDescription_5.Caption = "Angle From X-Axis"
                CourtesanSolutionDescription_6.Caption = "Angle From Y-Axis"
                CourtesanInput_4.Visible = False
                CourtesanInputDescription_Row1_1.Caption = "Point #1"
                CourtesanInputDescription_Row2_1.Caption = ""
                CourtesanInputDescription_1.Caption = "X-Coordinate"
                CourtesanInputDescription_3.Caption = "Distance"
                CourtesanInputDescription_2.Caption = "Y-Coordinate"
                CourtesanInputDescription_4.Caption = ""
                CourtesanInputDescription_Row1_2.Caption = "( X , Y )"
                CourtesanInputDescription_Row2_2.Caption = ""
            
                
          Case Is = 2
                CourtesanSolutionDescription_1.Caption = "Point #2"
                CourtesanSolutionDescription_2.Caption = "Midpoint"
                CourtesanSolutionDescription_3.Caption = "Distance"
                CourtesanSolutionDescription_4.Caption = "Slope From Y-Axis"
                CourtesanSolutionDescription_5.Caption = "Angle From X-Axis"
                CourtesanSolutionDescription_6.Caption = "Angle From Y-Axis"
                CourtesanInputDescription_Row1_1.Caption = "Point #1"
                CourtesanInputDescription_Row2_1.Caption = ""
                CourtesanInputDescription_1.Caption = "X-Coordinate"
                CourtesanInputDescription_3.Caption = "Slope From X-Axis"
                CourtesanInputDescription_2.Caption = "Y-Coordinate"
                CourtesanInputDescription_4.Caption = ""
                CourtesanInputDescription_Row1_2.Caption = "( X , Y )"
                CourtesanInputDescription_Row2_2.Caption = ""
                CourtesanInput_4.Visible = False
                
            Case Is = 3
                CourtesanSolutionDescription_1.Caption = "Point #2"
                CourtesanSolutionDescription_2.Caption = "Midpoint"
                CourtesanSolutionDescription_3.Caption = "Distance"
                CourtesanSolutionDescription_4.Caption = "Slope From X-Axis"
                CourtesanSolutionDescription_5.Caption = "Angle From X-Axis"
                CourtesanSolutionDescription_6.Caption = "Angle From Y-Axis"
                CourtesanInputDescription_Row1_1.Caption = "Point #1"
                CourtesanInputDescription_Row2_1.Caption = ""
                CourtesanInputDescription_1.Caption = "X-Coordinate"
                CourtesanInputDescription_2.Caption = "Y-Coordinate"
                CourtesanInputDescription_3.Caption = "Slope From Y-Axis"
                CourtesanInputDescription_4.Caption = ""
                CourtesanInputDescription_Row1_2.Caption = "( X , Y )"
                CourtesanInputDescription_Row2_2.Caption = ""
                CourtesanInput_4.Visible = False
                
            Case Is = 4
                CourtesanSolutionDescription_1.Caption = "Point #2"
                CourtesanSolutionDescription_2.Caption = "Midpoint"
                CourtesanSolutionDescription_3.Caption = "Distance"
                CourtesanSolutionDescription_4.Caption = "Slope From X-Axis"
                CourtesanSolutionDescription_5.Caption = "Slope From Y-Axis"
                CourtesanSolutionDescription_6.Caption = "Angle From Y-Axis"
                CourtesanInputDescription_Row1_1.Caption = "Point #1"
                CourtesanInputDescription_Row2_1.Caption = ""
                CourtesanInputDescription_1.Caption = "X-Coordinate"
                CourtesanInputDescription_3.Caption = "Angle From X-Axis"
                CourtesanInputDescription_2.Caption = "Y-Coordinate"
                CourtesanInputDescription_4.Caption = ""
                CourtesanInputDescription_Row1_2.Caption = "( X , Y )"
                CourtesanInputDescription_Row2_2.Caption = ""
                CourtesanInput_4.Visible = False
            Case Is = 5
                 CourtesanSolutionDescription_1.Caption = "Point #2"
                CourtesanSolutionDescription_2.Caption = "Midpoint"
                CourtesanSolutionDescription_3.Caption = "Distance"
                CourtesanSolutionDescription_4.Caption = "Slope From X-Axis"
                CourtesanSolutionDescription_5.Caption = "Slope From Y-Axis"
                CourtesanSolutionDescription_6.Caption = "Angle From X-Axis"
                CourtesanInputDescription_Row1_1.Caption = "Point #1"
                CourtesanInputDescription_Row2_1.Caption = ""
                CourtesanInputDescription_1.Caption = "X-Coordinate"
                CourtesanInputDescription_3.Caption = "Angle From Y-Axis"
                CourtesanInputDescription_2.Caption = "Y-Coordinate"
                CourtesanInputDescription_4.Caption = ""
                CourtesanInputDescription_Row1_2.Caption = "( X , Y )"
                CourtesanInputDescription_Row2_2.Caption = ""
                CourtesanInput_4.Visible = False
            Case Is = 6
                CourtesanSolutionDescription_1.Caption = "Point #2"
                CourtesanSolutionDescription_2.Caption = "Distance"
                CourtesanSolutionDescription_3.Caption = "Slope From X-Axis"
                CourtesanSolutionDescription_4.Caption = "Slope From Y-Axis"
                CourtesanSolutionDescription_5.Caption = "Angle From X-Axis"
                CourtesanSolutionDescription_6.Caption = "Angle From Y-Axis"
                CourtesanInputDescription_Row1_1.Caption = "Point #1"
                CourtesanInputDescription_Row2_1.Caption = "Mid-Point"
                CourtesanInputDescription_1.Caption = "X-Coordinate"
                CourtesanInputDescription_3.Caption = ""
                CourtesanInputDescription_2.Caption = "Y-Coordinate"
                CourtesanInputDescription_4.Caption = ""
                CourtesanInputDescription_Row1_2.Caption = "( X , Y )"
                CourtesanInputDescription_Row2_2.Caption = "( X , Y )"
                
            Case Is = 7
                CourtesanSolutionDescription_1.Caption = "Point #1"
                CourtesanSolutionDescription_2.Caption = "Point #2"
                CourtesanSolutionDescription_3.Caption = "Slope From X-Axis"
                CourtesanSolutionDescription_4.Caption = "Slope From Y-Axis"
                CourtesanSolutionDescription_5.Caption = "Angle From X-Axis"
                CourtesanSolutionDescription_6.Caption = "Angle From Y-Axis"
                CourtesanInputDescription_Row1_1.Caption = "Midpoint"
                CourtesanInputDescription_Row2_1.Caption = ""
                CourtesanInputDescription_1.Caption = "X-Coordinate"
                CourtesanInputDescription_3.Caption = "Distance"
                CourtesanInputDescription_2.Caption = "Y-Coordinate"
                CourtesanInputDescription_4.Caption = ""
                CourtesanInputDescription_Row1_2.Caption = "( X , Y )"
                CourtesanInputDescription_Row2_2.Caption = ""
                CourtesanInput_4.Visible = False
            'Case Is = 8
               ' CourtesanSolutionDescription_1.Caption = "Point #1"
              ''  CourtesanSolutionDescription_2.Caption = "Point #2"
              '  CourtesanSolutionDescription_3.Caption = "Slope From Y-Axis"
               ' CourtesanSolutionDescription_4.Caption = "Angle From X-Axis"
               ' CourtesanSolutionDescription_5.Caption = "Angle From Y-Axis"
               ' CourtesanSolutionDescription_6.Caption = ""
               ' CourtesanInputDescription_Row1_1.Caption = "Midpoint"
               ' CourtesanInputDescription_Row2_1.Caption = ""
               ' CourtesanInputDescription_1.Caption = "X-Coordinate"
               ' CourtesanInputDescription_4.Caption = "Slope From X-Axis"
               ' CourtesanInputDescription_2.Caption = "Y-Coordinate"
               ' CourtesanInputDescription_3.Caption = "Distance"
               '' CourtesanInputDescription_Row1_2.Caption = "( X , Y )"
              '  CourtesanInputDescription_Row2_2.Caption = ""
            'Case Is = 9
               ' CourtesanSolutionDescription_1.Caption = "Point #1"
               ' CourtesanSolutionDescription_2.Caption = "Point #2"
               ' CourtesanSolutionDescription_3.Caption = "Slope From X-Axis"
               ' CourtesanSolutionDescription_4.Caption = "Angle From X-Axis"
                'CourtesanSolutionDescription_5.Caption = "Angle From Y-Axis"
               ' CourtesanSolutionDescription_6.Caption = ""
                'CourtesanInputDescription_Row1_1.Caption = "Midpoint"
               ' CourtesanInputDescription_Row2_1.Caption = ""
               ' CourtesanInputDescription_1.Caption = "X-Coordinate"
               ' CourtesanInputDescription_4.Caption = "Slope From Y-Axis"
                'CourtesanInputDescription_2.Caption = "Y-Coordinate"
               ' CourtesanInputDescription_3.Caption = "Distance"
               ' CourtesanInputDescription_Row1_2.Caption = "( X , Y )"
                ''CourtesanInputDescription_Row2_2.Caption = ""
            'Case Is = 10
               ' CourtesanSolutionDescription_1.Caption = "Point #1"
              '  CourtesanSolutionDescription_2.Caption = "Point #2"
              '  CourtesanSolutionDescription_3.Caption = "Slope From X-Axis"
              ' CourtesanSolutionDescription_4.Caption = "Slope From Y-Axis"
               ' CourtesanSolutionDescription_5.Caption = "Angle From Y-Axis"
              '  CourtesanSolutionDescription_6.Caption = ""
              '  CourtesanInputDescription_Row2_1.Caption = ""
              '  CourtesanInputDescription_1.Caption = "X-Coordinate"
               ' CourtesanInputDescription_4.Caption = "Angle From X-Axis"
               ' CourtesanInputDescription_2.Caption = "Y-Coordinate"
               ' CourtesanInputDescription_3.Caption = "Distance"
               ' CourtesanInputDescription_Row1_2.Caption = "( X , Y )"
               ' CourtesanInputDescription_Row2_2.Caption = ""
           ' Case Is = 11
             '   CourtesanSolutionDescription_1.Caption = "Point #1"
             '   CourtesanSolutionDescription_2.Caption = "Point #2"
             ''   CourtesanSolutionDescription_3.Caption = "Slope From X-Axis"
             '   CourtesanSolutionDescription_4.Caption = "Slope From Y-Axis"
             '   CourtesanSolutionDescription_5.Caption = "Angle From X-Axis"
             '   CourtesanSolutionDescription_6.Caption = ""
              '  CourtesanInputDescription_Row1_1.Caption = "Midpoint"
              '  CourtesanInputDescription_Row2_1.Caption = ""
              '  CourtesanInputDescription_1.Caption = "X-Coordinate"
              '  CourtesanInputDescription_4.Caption = "Angle From Y-Axis"
             '   CourtesanInputDescription_2.Caption = "Y-Coordinate"
              '  CourtesanInputDescription_3.Caption = "Distance"
              '  CourtesanInputDescription_Row1_2.Caption = "( X , Y )"
              '  CourtesanInputDescription_Row2_2.Caption = ""
        End Select
        CourtesanCalculateButton.Visible = True
End Sub

Private Sub Form_Load()
Me.WindowState = vbMaximized
CourtesanInputMethod.AddItem "Point#1 and Point#2"
CourtesanInputMethod.AddItem "Point #1 with Distance "
CourtesanInputMethod.AddItem "Point #1 with Slope From X-Axis"
CourtesanInputMethod.AddItem "Point #1 with Slope From Y-Axis"
CourtesanInputMethod.AddItem "Point #1 with Angle From X-Axis"
CourtesanInputMethod.AddItem "Point #1 with Angle From Y-Axis"
CourtesanInputMethod.AddItem "Point #1 and Midpoint"
CourtesanInputMethod.AddItem "Midpoint with Distance"
'CourtesanInputMethod.AddItem "Midpoint with Slope From X-Axis"
'CourtesanInputMethod.AddItem "Midpoint with Slope From Y-Axis"
'CourtesanInputMethod.AddItem "Midpoint with Distance and Angle From X-Axis"
'CourtesanInputMethod.AddItem "Midpoint with Distance and Angle From Y-Axis"
CourtesanInput_1.Text = ""
CourtesanInput_2.Text = ""
CourtesanInput_3.Text = ""
CourtesanInput_4.Text = ""
CourtesanSolution_1.Text = ""
CourtesanSolution_2.Text = ""
CourtesanSolution_3.Text = ""
CourtesanSolution_4.Text = ""
CourtesanSolution_5.Text = ""
CourtesanSolution_6.Text = ""
End Sub
 Function DegreeToRadian(value As Long)
value = value * (3.14 / 180)
End Function
 Function RadianToDegree(value As Long)
value = value * (180 / 3.14)
End Function
Public Sub CourtesanCalcSub(CourtesanInput1 As Integer, CourtesanInput2 As Integer, CourtesanInput3 As Integer, CourtesanInput4 As Integer, CourtesanSolution1 As Integer, CourtesanSolution2 As Integer, CourtesanSolution3 As Integer, CourtesanSolution4 As Integer, CourtesanSolution5 As Integer, CourtesanSolution6 As Integer)
        On Error GoTo errhan
        Dim ConversionSolution1 As Long
        Dim k As Long
          Dim ConversionSolution2 As Long
          Dim Solution1X As Double
          Dim Solution1Y As Double
        Select Case CourtesanInputMethod.ListIndex
            Case Is = 0
                   ' point#1 and point#2
                    If CourtesanInput_1.Text = "" Or CourtesanInput_2.Text = "" Or CourtesanInput_3.Text = "" Or CourtesanInput_4.Text = "" Then
                     MsgBox "Enter the data", vbInformation
                    Else
                    CourtesanSolution_1.Text = Sqr((Val(CourtesanInput_3) - Val(CourtesanInput_1)) ^ 2 + (Val(CourtesanInput_4) - Val(CourtesanInput_2)) ^ 2)
                    CourtesanSolution_2.Text = "(" & (Val(CourtesanInput_3) + Val(CourtesanInput_1)) / 2 & "," & (Val(CourtesanInput_2) + Val(CourtesanInput_4)) / 2 & ")"
                    If (Val(CourtesanInput3) - Val(CourtesanInput_1)) = 0 Then
                    MsgBox "Slope is Undefined", vbInformation
                    Else
                    CourtesanSolution_4.Text = Round((Val(CourtesanInput_4) - Val(CourtesanInput_2)) / (Val(CourtesanInput_3) - Val(CourtesanInput_1)), 3)
                    End If
                    If (Val(CourtesanInput_4) - Val(CourtesanInput_2)) = 0 Then
                    MsgBox "Slope is Undefined", vbInformation
                    Else
                    CourtesanSolution_3.Text = Round((Val(CourtesanInput_3) - Val(CourtesanInput_1)) / (Val(CourtesanInput_4) - Val(CourtesanInput_2)), 3)
                    End If
                    sol3 = Round((Atn(Val(CourtesanSolution_4.Text))) * (180 / 3.14))
                    Select Case sol3
                    Case Is > 270
                    sol3 = sol3 - 270
                    Case Is > 180
                    sol3 = sol3 - 180
                    Case Is > 90
                    sol3 = sol3 - 90
                    End Select
                    CourtesanSolution_5.Text = Val(sol3)
                    sol4 = Round(90 - Val(CourtesanSolution_5.Text))
                     Select Case sol4
                    Case Is > 270
                    sol4 = sol4 - 270
                    Case Is > 180
                    sol4 = sol4 - 180
                    Case Is > 90
                    sol4 = sol4 - 90
                    End Select
                    CourtesanSolution_6.Text = Val(sol4)
                    End If
                    
            Case Is = 1
                    'Distance and point#1
                    If CourtesanInput_1.Text = "" Or CourtesanInput_2.Text = "" Or CourtesanInput_3.Text = "" Then
                     MsgBox "Enter the data", vbInformation
                    Else
                    sol1 = (Val(CourtesanInput_3)) ^ 2
                    sol2 = (Val(CourtesanInput_1) - 0) ^ 2
                    sol3 = (Val(CourtesanInput_2)) ^ 2
                    sol4 = -2 * (Val(CourtesanInput_2))
                    sol5 = Val(sol2) + Val(sol3) - Val(sol1)
                    'factorization
                    sol6 = (Val(sol4)) ^ 2 - (4 * 1 * Val(sol5))
                    If sol6 < 0 Then
                    MsgBox "Invalid Input", vbInformation
                    Else
                    sol6 = Sqr(Val(sol6))
                    sol7 = -1 * Val(sol4) / 2
                    sol8 = Val(sol6) / 2
                    sol9 = Val(sol7) + Val(sol8)
                    sol10 = Val(sol7) - Val(sol8)
                    CourtesanSolution_1.Text = "(" & "0" & "," & Round(sol9, 1) & ")" & "   " & "(or)" & "   " & "(" & "0" & "," & sol10 & ")"
                    CourtesanSolution_2.Text = "(" & Round(Val(CourtesanInput_1) / 2, 1) & "," & Round((Val(CourtesanInput_2) + sol9) / 2, 1) & ")" & "   " & "(or)" & "   " & "(" & Val(CourtesanInput_1) / 2 & "," & (Val(CourtesanInput_2) + sol10) / 2 & ")"
                    End If
                    so1 = Round((0 - Val(CourtesanInput_1)) / (sol9 - Val(CourtesanInput_2)), 3)
                    so2 = Round((0 - Val(CourtesanInput_1)) / (sol10 - Val(CourtesanInput_2)), 3)
                    CourtesanSolution_3.Text = so1 & "(or)" & so2
                    CourtesanSolution_4.Text = Round(1 / so1, 3) & "(or)" & Round(1 / so2, 3)
                    CourtesanSolution_5.Text = Round(Atn(Val(so1)) * (180 / 3.14)) & "(or)" & Round(Atn(Val(so2)) * (180 / 3.14))
                    CourtesanSolution_6.Text = Round(90 - Atn(Val(so1)) * (180 / 3.14)) & "(or)" & Round(90 - Atn(Val(so2)) * (180 / 3.14))
                    End If
                    
            Case Is = 2
                    'slope on x-axis and point
                    If CourtesanInput_1.Text = "" Or CourtesanInput_2.Text = "" Or CourtesanInput_3.Text = "" Then
                     MsgBox "Enter the data", vbInformation
                    Else
                    CourtesanSolution_5.Text = Round(Atn(Val(CourtesanInput_3)) * (180 / 3.14))
                    CourtesanSolution_6.Text = Round(90 - Val(CourtesanSolution_5.Text))
                    CourtesanSolution_4.Text = Round(1 / Val(CourtesanInput_3), 3)
                    sol1 = ((0 - Val(CourtesanInput_1)) / Val(CourtesanInput_3)) + Val(CourtesanInput_2)
                    CourtesanSolution_1.Text = "(" & "0" & "," & Round(sol1, 1) & ")"
                    CourtesanSolution_2.Text = "(" & Round(Val(CourtesanInput_1) / 2, 1) & "," & Round((Val(CourtesanInput_2) + sol1) / 2, 1) & ")"
                    CourtesanSolution_3.Text = Sqr((0 - Val(CourtesanInput_1)) ^ 2 + (Val(sol1) - Val(CourtesanInput_2)) ^ 2)
                    End If

           Case Is = 3
                    'slope on y-axis and point
                    If CourtesanInput_1.Text = "" Or CourtesanInput_2.Text = "" Or CourtesanInput_3.Text = "" Then
                     MsgBox "Enter the data", vbInformation
                    Else
                    CourtesanSolution_5.Text = Round(Atn(Val(CourtesanInput_3)) * (180 / 3.14))
                    CourtesanSolution_6.Text = Round(90 - Val(CourtesanSolution_5.Text))
                    CourtesanSolution_4.Text = Round(1 / Val(CourtesanInput_3), 3)
                    sol1 = ((0 - Val(CourtesanInput_2)) / Val(CourtesanInput_3)) + Val(CourtesanInput_1)
                    CourtesanSolution_1.Text = "(" & Round(sol1, 1) & "," & "0" & ")"
                    CourtesanSolution_2.Text = "(" & Round((Val(CourtesanInput_1) + sol1) / 2, 1) & "," & Round(Val(CourtesanInput_2) / 2, 1) & ")"
                    CourtesanSolution_3.Text = Sqr((sol1 - Val(CourtesanInput_1)) ^ 2 + (0 - Val(CourtesanInput_2)) ^ 2)
                    End If
          Case Is = 4
                    If CourtesanInput_1.Text = "" Or CourtesanInput_2.Text = "" Or CourtesanInput_3.Text = "" Then
                     MsgBox "Enter the data", vbInformation
                    Else
                   'angle on x-axis and point
                   sol2 = (Val(CourtesanInput_3)) * (3.14 / 180)
                   CourtesanSolution_4.Text = Round(Tan(Val(sol2))) '* (180 / 3.14)
                   CourtesanSolution_5.Text = Round(1 / Val(CourtesanSolution_4.Text), 3)
                   CourtesanSolution_6.Text = Round(90 - Val(CourtesanInput_3))
                   sol1 = ((0 - Val(CourtesanInput_1)) / Val(CourtesanSolution_4.Text)) + Val(CourtesanInput_2)
                   CourtesanSolution_1.Text = "(" & "0" & "," & Round(sol1, 1) & ")"
                   CourtesanSolution_2.Text = "(" & Round(Val(CourtesanInput_1) / 2, 1) & "," & Round((Val(CourtesanInput_2) + sol1) / 2, 1) & ")"
                   CourtesanSolution_3.Text = Sqr((0 - Val(CourtesanInput_1)) ^ 2 + (Val(sol1) - Val(CourtesanInput_2)) ^ 2)
                   End If
          Case Is = 5
                   'angle on y-axis and point
                   If CourtesanInput_1.Text = "" Or CourtesanInput_2.Text = "" Or CourtesanInput_3.Text = "" Then
                     MsgBox "Enter the data", vbInformation
                    Else
                   sol2 = (Val(CourtesanInput_3)) * (3.14 / 180)
                   CourtesanSolution_5.Text = Round(Tan(Val(sol2))) '* (180 / 3.14)
                   CourtesanSolution_4.Text = Round(1 / Val(CourtesanSolution_5.Text), 3)
                   CourtesanSolution_6.Text = Round(90 - Val(CourtesanInput_3))
                   sol1 = ((0 - Val(CourtesanInput_2)) / Val(CourtesanSolution_5.Text)) + Val(CourtesanInput_1)
                   CourtesanSolution_1.Text = "(" & Round(sol1, 1) & "," & "0" & ")"
                   CourtesanSolution_2.Text = "(" & Round((Val(CourtesanInput_1) + sol1) / 2, 1) & "," & Round((Val(CourtesanInput_2)) / 2, 1) & ")"
                   CourtesanSolution_3.Text = Sqr((Val(sol1) - Val(CourtesanInput_1)) ^ 2 + (0 - Val(CourtesanInput_2)) ^ 2)
                    End If
          Case Is = 6
                    ' point#1 and mid point
                    If CourtesanInput_1.Text = "" Or CourtesanInput_2.Text = "" Or CourtesanInput_3.Text = "" Or CourtesanInput_4.Text = "" Then
                     MsgBox "Enter the data", vbInformation
                    Else
                    sol1 = (2 * (Val(CourtesanInput_3))) - Val(CourtesanInput_1)
                    sol2 = (2 * (Val(CourtesanInput_4))) - Val(CourtesanInput_2)
                    CourtesanSolution_1.Text = "(" & Round(sol1, 1) & "," & Round(sol2, 1) & ")"
                    CourtesanSolution_2.Text = Sqr((Val(sol1) - Val(CourtesanInput_1)) ^ 2 + (Val(sol2) - Val(CourtesanInput_2)) ^ 2)
                    If (Val(sol1) - Val(CourtesanInput_1)) = 0 Then
                    MsgBox "Slope is Undefined", vbInformation
                    Else
                    CourtesanSolution_4.Text = Round((Val(sol2) - Val(CourtesanInput_2)) / (Val(sol1) - Val(CourtesanInput_1)), 3)
                    End If
                    If (Val(sol2) - Val(CourtesanInput_2)) = 0 Then
                    MsgBox "Slope is Undefined", vbInformation
                    Else
                    CourtesanSolution_3.Text = Round((Val(sol1) - Val(CourtesanInput_1)) / (Val(sol2) - Val(CourtesanInput_2)), 3)
                    End If
                    sol3 = Round((Atn(Val(CourtesanSolution_4.Text))) * (180 / 3.14))
                    Select Case sol3
                    Case Is > 270
                    sol3 = sol3 - 270
                    Case Is > 180
                    sol3 = sol3 - 180
                    Case Is > 90
                    sol3 = sol3 - 90
                    End Select
                    CourtesanSolution_5.Text = Val(sol3)
                    sol4 = Round(90 - Val(CourtesanSolution_5.Text))
                     Select Case sol4
                    Case Is > 270
                    sol4 = sol4 - 270
                    Case Is > 180
                    sol4 = sol4 - 180
                    Case Is > 90
                    sol4 = sol4 - 90
                    End Select
                    CourtesanSolution_6.Text = Round(Val(sol4))
                     End If
           Case Is = 7
                    'Distance and Mid-point
                    If CourtesanInput_1.Text = "" Or CourtesanInput_2.Text = "" Or CourtesanInput_3.Text = "" Then
                     MsgBox "Enter the data", vbInformation
                    Else
                    sol1 = (Val(CourtesanInput_3)) ^ 2
                    sol2 = (Val(CourtesanInput_1) - 0) ^ 2
                    sol3 = (Val(CourtesanInput_2)) ^ 2
                    sol4 = -2 * (Val(CourtesanInput_2))
                    sol5 = Val(sol2) + Val(sol3) - Val(sol1)
                    'factorization
                    sol6 = (Val(sol4)) ^ 2 - (4 * 1 * Val(sol5))
                    If sol6 < 0 Then
                    MsgBox "Invalid Input", vbInformation
                    Else
                    sol6 = Sqr(Val(sol6))
                    sol7 = -1 * Val(sol4) / 2
                    sol8 = Val(sol6) / 2
                    sol9 = Val(sol7) + Val(sol8)
                    sol10 = Val(sol7) - Val(sol8)
                    CourtesanSolution_1.Text = "(" & "0" & "," & Round(sol9, 1) & ")" & "   " & "(or)" & "   " & "(" & "0" & "," & sol10 & ")"
                    CourtesanSolution_2.Text = "(" & Round(Val(CourtesanInput_1) / 2, 1) & "," & Round((Val(CourtesanInput_2) + sol9) / 2, 1) & ")" & "   " & "(or)" & "   " & "(" & Val(CourtesanInput_1) / 2 & "," & (Val(CourtesanInput_2) + sol10) / 2 & ")"
                    End If
                    so1 = Round((0 - Val(CourtesanInput_1)) / (sol9 - Val(CourtesanInput_2)), 3)
                    so2 = Round((0 - Val(CourtesanInput_1)) / (sol10 - Val(CourtesanInput_2)), 3)
                    CourtesanSolution_3.Text = so1 & "(or)" & so2
                    CourtesanSolution_4.Text = Round(1 / so1, 3) & "(or)" & Round(1 / so2, 3)
                    CourtesanSolution_5.Text = Round(Atn(Val(so1)) * (180 / 3.14)) & "(or)" & Round(Atn(Val(so2)) * (180 / 3.14))
                    CourtesanSolution_6.Text = Round(90 - Atn(Val(so1)) * (180 / 3.14)) & "(or)" & Round(90 - Atn(Val(so2)) * (180 / 3.14))
                    End If

        End Select
        CourtesanSolution_1.Text = CourtesanSolution_1.Text
        Exit Sub
    
errhan:
    MsgBox err.Description, vbCritical, "An Error ocurred " & err.number
    End Sub
Private Sub CourtesanInput_1_Validate(Cancel As Boolean)
If IsNumeric(CourtesanInput_1.Text) = False And CourtesanInput_1.Text <> "" Then
 If (CourtesanInput_1.Text <> "-") Then
  i = MsgBox(CourtesanInput_1.Text & " " & "is not a numeric value.Enter only numeric values", vbInformation)
  CourtesanInput_1.Text = ""
  CourtesanInput_1.SetFocus
 End If
End If
End Sub
Private Sub CourtesanInput_2_Validate(Cancel As Boolean)
If IsNumeric(CourtesanInput_2.Text) = False And CourtesanInput_2.Text <> "" Then
 If (CourtesanInput_2.Text <> "-") Then
  i = MsgBox(CourtesanInput_2.Text & " " & "is not a numeric value.Enter only numeric values", vbInformation)
  CourtesanInput_2.Text = ""
  CourtesanInput_2.SetFocus
 End If
End If
End Sub
Private Sub CourtesanInput_3_Validate(Cancel As Boolean)
If IsNumeric(CourtesanInput_3.Text) = False And CourtesanInput_3.Text <> "" Then
 If (CourtesanInput_3.Text <> "-") Then
  i = MsgBox(CourtesanInput_3.Text & " " & "is not a numeric value.Enter only numeric values", vbInformation)
  CourtesanInput_3.Text = ""
  CourtesanInput_3.SetFocus
 End If
End If
End Sub
Private Sub CourtesanInput_4_Validate(Cancel As Boolean)
If IsNumeric(CourtesanInput_4.Text) = False And CourtesanInput_4.Text <> "" Then
 If (CourtesanInput_4.Text <> "-") Then
  i = MsgBox(CourtesanInput_4.Text & " " & "is not a numeric value.Enter only numeric values", vbInformation)
  CourtesanInput_4.Text = ""
  CourtesanInput_4.SetFocus
 End If
End If
End Sub

