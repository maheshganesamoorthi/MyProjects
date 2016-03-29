VERSION 5.00
Begin VB.Form trifrm 
   BackColor       =   &H00C0FFFF&
   Caption         =   "Triangular Solver"
   ClientHeight    =   9090
   ClientLeft      =   60
   ClientTop       =   420
   ClientWidth     =   7200
   Icon            =   "trifrm.frx":0000
   LinkTopic       =   "Form2"
   ScaleHeight     =   9090
   ScaleWidth      =   7200
   StartUpPosition =   3  'Windows Default
   Begin VB.Frame Frame8 
      BackColor       =   &H00C0FFFF&
      Caption         =   "Formula :"
      ForeColor       =   &H000000FF&
      Height          =   6615
      Left            =   10800
      TabIndex        =   29
      Top             =   3120
      Width           =   4455
      Begin VB.Image Image9 
         Height          =   6210
         Left            =   120
         Picture         =   "trifrm.frx":038A
         Stretch         =   -1  'True
         Top             =   240
         Width           =   4155
      End
   End
   Begin VB.Frame Frame7 
      BackColor       =   &H00C0FFFF&
      Caption         =   "Select Which type of your Problem :"
      ForeColor       =   &H000000FF&
      Height          =   2535
      Left            =   120
      TabIndex        =   26
      Top             =   3120
      Width           =   6615
      Begin VB.Image Image3 
         Height          =   1680
         Left            =   4440
         Picture         =   "trifrm.frx":4DAAC
         Top             =   480
         Width           =   2025
      End
      Begin VB.Image Image2 
         Height          =   1710
         Left            =   2280
         Picture         =   "trifrm.frx":4E3F0
         Top             =   480
         Width           =   2040
      End
      Begin VB.Image Image1 
         Height          =   1755
         Left            =   120
         Picture         =   "trifrm.frx":4ED2F
         Top             =   480
         Width           =   2055
      End
   End
   Begin VB.Frame Frame6 
      BackColor       =   &H00C0FFFF&
      Caption         =   "Calculate :"
      ForeColor       =   &H000000FF&
      Height          =   6615
      Left            =   6840
      TabIndex        =   17
      Top             =   3120
      Width           =   3855
      Begin VB.CommandButton Command2 
         Caption         =   "Clear"
         Height          =   495
         Left            =   1200
         TabIndex        =   28
         Top             =   4680
         Width           =   1815
      End
      Begin VB.CommandButton Calculate 
         Caption         =   "Calculate"
         Height          =   495
         Left            =   1200
         TabIndex        =   27
         Top             =   3960
         Width           =   1815
      End
      Begin VB.TextBox sol 
         Height          =   495
         Left            =   1080
         TabIndex        =   25
         Top             =   2760
         Width           =   2655
      End
      Begin VB.TextBox var3 
         Height          =   495
         Left            =   1080
         TabIndex        =   23
         Top             =   2040
         Width           =   2655
      End
      Begin VB.TextBox var2 
         Height          =   495
         Left            =   1080
         TabIndex        =   22
         Top             =   1320
         Width           =   2655
      End
      Begin VB.TextBox var1 
         Height          =   495
         Left            =   1080
         TabIndex        =   21
         Top             =   600
         Width           =   2655
      End
      Begin VB.Label Label4 
         BackColor       =   &H00C0FFFF&
         Caption         =   "4"
         Height          =   255
         Left            =   240
         TabIndex        =   24
         Top             =   2880
         Width           =   975
      End
      Begin VB.Label Label3 
         BackColor       =   &H00C0FFFF&
         Caption         =   "3"
         Height          =   255
         Left            =   240
         TabIndex        =   20
         Top             =   2160
         Width           =   975
      End
      Begin VB.Label Label2 
         BackColor       =   &H00C0FFFF&
         Caption         =   "2"
         Height          =   255
         Left            =   240
         TabIndex        =   19
         Top             =   1440
         Width           =   975
      End
      Begin VB.Label Label1 
         BackColor       =   &H00C0FFFF&
         Caption         =   "1"
         Height          =   255
         Left            =   240
         TabIndex        =   18
         Top             =   720
         Width           =   975
      End
   End
   Begin VB.Frame Frame5 
      BackColor       =   &H00C0FFFF&
      Caption         =   "Dimensions :"
      ForeColor       =   &H000000FF&
      Height          =   3975
      Left            =   120
      TabIndex        =   16
      Top             =   5760
      Width           =   2655
      Begin VB.Image Image6 
         Height          =   2055
         Left            =   120
         Picture         =   "trifrm.frx":4F542
         Top             =   960
         Width           =   2430
      End
      Begin VB.Image Image5 
         Height          =   2070
         Left            =   120
         Picture         =   "trifrm.frx":504A7
         Top             =   960
         Width           =   2415
      End
      Begin VB.Image Image4 
         Height          =   2040
         Left            =   120
         Picture         =   "trifrm.frx":51218
         Top             =   960
         Width           =   2445
      End
   End
   Begin VB.Frame Frame4 
      BackColor       =   &H00C0FFFF&
      Caption         =   "Desired Solution :"
      ForeColor       =   &H000000FF&
      Height          =   3975
      Left            =   5040
      TabIndex        =   9
      Top             =   5760
      Width           =   1695
      Begin VB.OptionButton Option6 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Side - c"
         Height          =   375
         Left            =   240
         TabIndex        =   15
         Top             =   3360
         Width           =   1335
      End
      Begin VB.OptionButton Option5 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Side - b"
         Height          =   375
         Left            =   240
         TabIndex        =   14
         Top             =   2760
         Width           =   1335
      End
      Begin VB.OptionButton Option4 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Side - a"
         Height          =   375
         Left            =   240
         TabIndex        =   13
         Top             =   2160
         Width           =   1335
      End
      Begin VB.OptionButton Option3 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Angel - C"
         Height          =   375
         Left            =   240
         TabIndex        =   12
         Top             =   1560
         Width           =   1335
      End
      Begin VB.OptionButton Option2 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Angel - B"
         Height          =   375
         Left            =   240
         TabIndex        =   11
         Top             =   960
         Width           =   1335
      End
      Begin VB.OptionButton Option1 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Angel - A"
         Height          =   375
         Left            =   240
         TabIndex        =   10
         Top             =   360
         Width           =   1335
      End
   End
   Begin VB.Frame Frame1 
      BackColor       =   &H00C0FFFF&
      Caption         =   "Known Dimensions :"
      ForeColor       =   &H000000FF&
      Height          =   3975
      Left            =   2880
      TabIndex        =   0
      Top             =   5760
      Width           =   2055
      Begin VB.Frame Frame3 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Sides :"
         ForeColor       =   &H000000FF&
         Height          =   1695
         Left            =   120
         TabIndex        =   2
         Top             =   2160
         Width           =   1815
         Begin VB.CheckBox sidec 
            BackColor       =   &H00C0FFFF&
            Caption         =   "Side - c"
            Height          =   375
            Left            =   240
            TabIndex        =   8
            Top             =   1080
            Width           =   1215
         End
         Begin VB.CheckBox sideb 
            BackColor       =   &H00C0FFFF&
            Caption         =   "Side - b"
            Height          =   375
            Left            =   240
            TabIndex        =   7
            Top             =   720
            Width           =   1215
         End
         Begin VB.CheckBox sidea 
            BackColor       =   &H00C0FFFF&
            Caption         =   "Side - a"
            Height          =   375
            Left            =   240
            TabIndex        =   6
            Top             =   360
            Width           =   1215
         End
      End
      Begin VB.Frame Frame2 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Angles :"
         ForeColor       =   &H000000FF&
         Height          =   1695
         Left            =   120
         TabIndex        =   1
         Top             =   360
         Width           =   1815
         Begin VB.CheckBox angelc 
            BackColor       =   &H00C0FFFF&
            Caption         =   "Angel - C"
            Height          =   255
            Left            =   240
            TabIndex        =   5
            Top             =   1200
            Width           =   1215
         End
         Begin VB.CheckBox angelb 
            BackColor       =   &H00C0FFFF&
            Caption         =   "Angel - B"
            Height          =   255
            Left            =   240
            TabIndex        =   4
            Top             =   840
            Width           =   1215
         End
         Begin VB.CheckBox angela 
            BackColor       =   &H00C0FFFF&
            Caption         =   "Angel - A"
            Height          =   255
            Left            =   240
            TabIndex        =   3
            Top             =   480
            Width           =   1215
         End
      End
   End
   Begin VB.Image Image8 
      Height          =   705
      Left            =   5880
      Picture         =   "trifrm.frx":51E4F
      Top             =   1920
      Width           =   3810
   End
   Begin VB.Image Image7 
      Height          =   1710
      Left            =   0
      Picture         =   "trifrm.frx":5AAD5
      Stretch         =   -1  'True
      Top             =   0
      Width           =   15360
   End
End
Attribute VB_Name = "trifrm"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim con1 As Double
Dim ConversionNumber As Double
Dim TrigOutput1 As Double
Dim q1 As Double
Dim T1, T2, T3 As Double
 Function RadianToDegree(ByVal number As Double) As Double
RadianToDegree = number * (180 / 3.14)
End Function
 Function DegreeToRadian(ByVal ConNumber As Double)
        DegreeToRadian = ConNumber * (3.14 / 180)
End Function
Function ACos(ByVal number As Double) As Double
    If Abs(number) <> 1 Then
        ACos = 1.5707963267949 - Atn(number / Sqr(1 - number * number))
        'ACos = Atn(-Val(number) / Sqr(-Val(number) * Val(number) + 1)) + 2 * Atn(1)
    ElseIf number = -1 Then
        ACos = 3.14159265358979
    End If
    'elseif number=1 --> Acos=0 (implicit)
End Function
Function ASin(value As Double) As Double
    If Abs(value) <> 1 Then
        ASin = Atn(value / Sqr(1 - value * value))
    Else
        ASin = 1.5707963267949 * Sgn(value)
    End If
End Function



Function TrigCalcSub(v11 As Double, v12 As Double, v13 As Double) As Double
On Error GoTo errhan:
        Select Case ConversionNumber
            Case Is = 1
                T1 = Val(var2.Text) * Val(var2.Text)
                T2 = Val(var3.Text) * Val(var3.Text)
                T3 = Val(var1.Text) * Val(var1.Text)
                q1 = (T1 + T2 - T3) / (2 * Val(var2.Text) * Val(var3.Text))
                q1 = ACos(q1)
                TrigOutput1 = RadianToDegree(q1)
                sol.Text = Round(Val(TrigOutput1))
                
            Case Is = 2
                TrigOutput1 = Round((180 - Val(var1.Text) - Val(var2.Text)))
            Case Is = 3
                con1 = DegreeToRadian(Val(var1.Text))
                con1 = ASin((Val(var3.Text) * Sin(con1)) / Val(var2.Text))
               con1 = RadianToDegree(con1)
                TrigOutput1 = Round(con1)
            Case Is = 4
                con1 = DegreeToRadian(Val(var1.Text))
                con1 = ASin((Val(var3.Text) * Sin(con1)) / Val(var2.Text))
                con1 = RadianToDegree(con1)
                TrigOutput1 = Round(con1)
                sol.Text = TrigOutput1
            Case Is = 5
                con1 = DegreeToRadian(Val(var1.Text))
                con1 = Sqr((Val(var3.Text) * Val(var3.Text)) + (Val(var2.Text) * Val(var2.Text)) - (2 * Val(var3.Text) * Val(var2.Text) * Cos(con1)))
                con1 = ACos(((Val(var2.Text) * Val(var2.Text)) + (con1 * con1) - (Val(var3.Text) * Val(var3.Text))) / (2 * Val(var2.Text) * con1))
               con1 = RadianToDegree(con1)
                TrigOutput1 = (Round(con1))
                sol.Text = TrigOutput1
            Case Is = 6
                con1 = DegreeToRadian(Val(var1.Text))
                con1 = Sqr(Val(var3.Text) ^ 2 + Val(var2.Text) ^ 2 - (2 * Val(var3.Text) * Val(var2.Text) * Cos(con1)))
                con1 = ACos((Val(var2.Text) ^ 2 + con1 ^ 2 - Val(var3.Text) ^ 2) / (2 * Val(var2.Text) * con1))
               con1 = RadianToDegree(con1)
                TrigOutput1 = (Round(con1))
            Case Is = 7
                con1 = DegreeToRadian(Val(var1.Text))
                con1 = Sqr(Val(var3.Text) ^ 2 + Val(var2.Text) ^ 2 - (2 * Val(var3.Text) * Val(var2.Text) * Cos(con1)))
                TrigOutput1 = (con1)
            Case Is = 8
                con1 = DegreeToRadian(Val(var2.Text))
                ConversionSolution2 = con1
                con1 = DegreeToRadian(Val(var1.Text))
                con1 = (Val(var3.Text) * (Sin(con1) / Sin(ConversionSolution2)))
                TrigOutput1 = (con1)
            Case Is = 9
                con1 = DegreeToRadian(Val(var2.Text))
                ConversionSolution2 = con1
                con1 = DegreeToRadian(Val(var1.Text))
                con1 = (Val(var3.Text) * (Sin(con1) / Sin(ConversionSolution2)))
                TrigOutput1 = (con1)
            Case Is = 10
                con1 = 180 - (Val(var1.Text) + Val(var2.Text))
                con1 = DegreeToRadian(con1)
                ConversionSolution2 = con1
                con1 = DegreeToRadian(Val(var1.Text))
                con1 = (Val(var3.Text) * (Sin(con1) / Sin(ConversionSolution2)))
                TrigOutput1 = (con1)
            Case Is = 11
                con1 = DegreeToRadian(Val(var1.Text))
                ConversionSolution2 = con1
                con1 = 180 - (Val(var1.Text) + Val(var2.Text))
                con1 = DegreeToRadian(con1)
                con1 = (Val(var3.Text) * (Sin(con1) / Sin(ConversionSolution2)))
                TrigOutput1 = (con1)
            Case Is = 12
                con1 = DegreeToRadian(Val(var1.Text))
                ConversionSolution2 = con1
                con1 = 180 - (Val(var1.Text) + Val(var2.Text))
                con1 = DegreeToRadian(con1)
                con1 = (Val(var3.Text) * (Sin(con1) / Sin(ConversionSolution2)))
                TrigOutput1 = (con1)
            Case Is = 13
                con1 = DegreeToRadian(Val(var1.Text))
                con1 = ASin((Val(var3.Text) * Sin(con1)) / Val(var2.Text))
               con1 = RadianToDegree(con1)
                con1 = 180 - (Val(var1.Text) + con1)
                TrigOutput1 = (Round(con1))
            Case Is = 14
                con1 = DegreeToRadian(Val(var1.Text))
                con1 = ASin((Val(var3.Text) * Sin(con1)) / Val(var2.Text))
               con1 = RadianToDegree(con1)
                con1 = 180 - (Val(var1.Text) + con1)
                TrigOutput1 = (Round(con1))
            Case Is = 15
                con1 = 180 - (Val(var1.Text) + Val(var2.Text))
                con1 = DegreeToRadian(con1)
                ConversionSolution2 = con1
                con1 = DegreeToRadian(Val(var1.Text))
                con1 = (Val(var3.Text) * (Sin(con1) / Sin(ConversionSolution2)))
                TrigOutput1 = (con1)
            Case Is = 16
                TrigOutput1 = (Round(Val(var1.Text)))
                
        End Select
        sol.Text = (TrigOutput1)
        Exit Function
errhan:
 MsgBox err.Description, vbInformation

    End Function

Private Sub angela_Click()
Call EvaluateTriangle
End Sub

Private Sub angelb_Click()
Call EvaluateTriangle
End Sub

Private Sub angelc_Click()
Call EvaluateTriangle
End Sub

Private Sub Calculate_Click()
On Error GoTo err:
FirstConversionItemSet = True
                If Label1.Caption = "Angle A" Or Label1.Caption = "Angle B" Or Label1.Caption = "Angle C" Then
                If Val(var1.Text) >= 180 Then
                    MsgBox "Data out of range"
                    FirstConversionItemSet = False
                End If
             End If
             If Label2.Caption = "Angle A" Or Label2.Caption = "Angle B" Or Label2.Caption = "Angle C" Then
                If Val(var2.Text) >= 180 Then
                    MsgBox "Data out of range"
                    FirstConversionItemSet = False
                End If
           End If
            If Label3.Caption = "Angle A" Or Label3.Caption = "Angle B" Or Label3.Caption = "Angle C" Then
                If Val(var3.Text) >= 180 Then
                    MsgBox "Data out of range"
                    FirstConversionItemSet = False
                End If
            End If
            If FirstConversionItemSet = True Then
               Call TrigCalcSub(Val(var1), Val(var2), Val(var3))
            End If
        Exit Sub

              'Call TrigCalcSub(Val(var1.Text), Val(var2.Text), Val(var3.Text))
    'sol.Text = ConversionNumber
Exit Sub

err:
            MsgBox "Invalid Input", vbInformation
            
              
End Sub









Private Sub Command2_Click()
var1.Text = ""
var2.Text = ""
var3.Text = ""
sol.Text = ""
End Sub

Private Sub Form_Load()
Me.WindowState = vbMaximized
Label1.Caption = ""
Label2.Caption = ""
Label3.Caption = ""
Label4.Caption = ""
End Sub

Private Sub Image1_Click()
Image4.Visible = True
Image5.Visible = False
Image6.Visible = False
End Sub

Private Sub Image2_Click()
Image4.Visible = False
Image5.Visible = True
Image6.Visible = False
End Sub

Private Sub Image3_Click()
Image4.Visible = False
Image5.Visible = False
Image6.Visible = True
End Sub

Private Sub Option1_Click()
Call EvaluateTriangle
End Sub


Private Sub Option2_Click()
Call EvaluateTriangle
End Sub

Private Sub Option3_Click()
Call EvaluateTriangle
End Sub

Private Sub Option4_Click()
Call EvaluateTriangle
End Sub

Private Sub Option5_Click()
Call EvaluateTriangle
End Sub

Private Sub Option6_Click()
Call EvaluateTriangle
End Sub
Private Sub EvaluateTriangle()
        sol.Text = ""
          var1.Text = ""
          var2.Text = ""
          var3.Text = ""
        ConversionNumber = 0
        If Option1.value = True Then
            Label4.Caption = "Angle A ="
            Calculate.Visible = True
            var1.Visible = True
            var2.Visible = True
            var3.Visible = True
            If angela.value = 1 Then
                ConversionNumber = 16
                Label1.Caption = "Angle A"
                Label2.Caption = ""
                Label3.Caption = ""
                var2.Visible = False
                var3.Visible = False
                'sol.Text = ConversionNumber
        ElseIf sidea.value = 1 And sideb.value = 1 And sidec.value = 1 Then
                ConversionNumber = 1
                Label1.Caption = "Side a"
                Label2.Caption = "Side b"
                Label3.Caption = "Side c"
                'sol.Text = ConversionNumber
            ElseIf angelb.value = 1 And angelc.value = 1 Then
                ConversionNumber = 2
                Label1.Caption = "Angle B"
                Label2.Caption = "Angle C"
                Label3.Caption = ""
                var3.Visible = False
            ElseIf angelb.value = 1 And sideb.value = 1 And sidea.value = 1 Then
                ConversionNumber = 3
                Label1.Caption = "Angle B"
                Label2.Caption = "Side b"
                Label3.Caption = "Side a"
            ElseIf angelc.value = 1 And sidec.value = 1 And sidea.value = 1 Then
                ConversionNumber = 4
                Label1.Caption = "Angle C"
                Label2.Caption = "Side c"
                Label3.Caption = "Side a"
            ElseIf angelb.value = 1 And sidec.value = 1 And sidea.value = 1 Then
                ConversionNumber = 5
                Label1.Caption = "Angle B"
                Label2.Caption = "Side c"
                Label3.Caption = "Side a"
            ElseIf angelc.value = 1 And sideb.value = 1 And sidea.value = 1 Then
                ConversionNumber = 6
                Label1.Caption = "Angle C"
                Label2.Caption = "Side b"
                Label3.Caption = "Side a"
            ElseIf angelb.value = 1 And sideb.value = 1 And sidec.value = 1 Then
                ConversionNumber = 13
                Label1.Caption = "Angle B"
                Label2.Caption = "Side b"
                Label3.Caption = "Side c"
            ElseIf angelc.value = 1 And sideb.value = 1 And sidec.value = 1 Then
                ConversionNumber = 14
                Label1.Caption = "Angle C"
                Label2.Caption = "Side c"
                Label3.Caption = "Side b"
            
            Else
                Calculate.Visible = False
                var1.Visible = False
                var2.Visible = False
                var3.Visible = False
                
                Label1.Caption = ""
                Label2.Caption = ""
                Label3.Caption = ""
                End If
        End If
        If Option2.value = True Then
            Label4.Caption = "Angle B ="
            Calculate.Visible = True
            var1.Visible = True
            var2.Visible = True
            var3.Visible = True
            If angelb.value = 1 Then
                ConversionNumber = 16
                Label1.Caption = "Angle B"
                Label2.Caption = ""
                Label3.Caption = ""
                var2.Visible = False
                var3.Visible = False
            ElseIf sidea.value = 1 And sideb.value = 1 And sidec.value = 1 Then
                ConversionNumber = 1
                Label1.Caption = "Side b"
                Label2.Caption = "Side a"
                Label3.Caption = "Side c"
            ElseIf angela.value = 1 And angelc.value = 1 Then
                ConversionNumber = 2
                Label1.Caption = "Angle A"
                Label2.Caption = "Angle C"
                Label3.Caption = ""
                var3.Visible = False
            ElseIf angela.value = 1 And sideb.value = 1 And sidea.value = 1 Then
                ConversionNumber = 3
                Label1.Caption = "Angle A"
                Label2.Caption = "Side a"
                Label3.Caption = "Side b"
            ElseIf angelc.value = 1 And sidec.value = 1 And sideb.value = 1 Then
                ConversionNumber = 4
                Label1.Caption = "Angle C"
                Label2.Caption = "Side c"
                Label3.Caption = "Side b"
            ElseIf angela.value = 1 And sidec.value = 1 And sideb.value = 1 Then
                ConversionNumber = 5
                Label1.Caption = "Angle A"
                Label2.Caption = "Side c"
                Label3.Caption = "Side b"
            ElseIf angelc.value = 1 And sideb.value = 1 And sidea.value = 1 Then
                ConversionNumber = 6
                Label1.Caption = "Angle C"
                Label2.Caption = "Side a"
                Label3.Caption = "Side b"
            ElseIf angela.value = 1 And sidea.value = 1 And sidec.value = 1 Then
                ConversionNumber = 13
                Label1.Caption = "Angle A"
                Label2.Caption = "Side a"
                Label3.Caption = "Side c"
            ElseIf angelc.value = 1 And sidea.value = 1 And sidec.value = 1 Then
                ConversionNumber = 14
                Label1.Caption = "Angle C"
                Label2.Caption = "Side c"
                Label3.Caption = "Side a"
               
            Else
                Calculate.Visible = False
                var1.Visible = False
                var2.Visible = False
                var3.Visible = False
                Label1.Caption = ""
                Label2.Caption = ""
                Label3.Caption = ""
         End If
        End If
        If Option3.value = True Then
            Label4.Caption = "Angle C ="
            Calculate.Visible = True
            var1.Visible = True
            var2.Visible = True
            var3.Visible = True
            If angelc.value = 1 Then
                ConversionNumber = 16
                Label1.Caption = "Angle C"
                Label2.Caption = ""
                Label3.Caption = ""
                var2.Visible = False
                var3.Visible = False
            ElseIf sidea.value = 1 And sideb.value = 1 And sidec.value = 1 Then
                ConversionNumber = 1
                Label1.Caption = "Side c"
                Label2.Caption = "Side a"
                Label3.Caption = "Side b"
            ElseIf angelb.value = 1 And angela.value = 1 Then
                ConversionNumber = 2
                Label1.Caption = "Angle A"
                Label2.Caption = "Angle B"
                Label3.Caption = ""
                var3.Visible = False
            ElseIf angela.value = 1 And sidea.value = 1 And sidec.value = 1 Then
                ConversionNumber = 3
                Label1.Caption = "Angle A"
                Label2.Caption = "Side a"
                Label3.Caption = "Side c"
            ElseIf angelb.value = 1 And sidec.value = 1 And sideb.value = 1 Then
                ConversionNumber = 4
                Label1.Caption = "Angle B"
                Label2.Caption = "Side b"
                Label3.Caption = "Side c"
            ElseIf angela.value = 1 And sidec.value = 1 And sideb.value = 1 Then
                ConversionNumber = 5
                Label1.Caption = "Angle A"
                Label2.Caption = "Side b"
                Label3.Caption = "Side c"
            ElseIf angelb.value = 1 And sidea.value = 1 And sidec.value = 1 Then
                ConversionNumber = 6
                Label1.Caption = "Angle B"
                Label2.Caption = "Side a"
                Label3.Caption = "Side c"
            ElseIf angela.value = 1 And sideb.value = 1 And sidea.value = 1 Then
                ConversionNumber = 13
                Label1.Caption = "Angle A"
                Label2.Caption = "Side a"
                Label3.Caption = "Side b"
            ElseIf angelb.value = 1 And sideb.value = 1 And sidea.value = 1 Then
                ConversionNumber = 14
                Label1.Caption = "Angle B"
                Label2.Caption = "Side b"
                Label3.Caption = "Side a"
            
            Else
                Calculate.Visible = False
                var1.Visible = False
                var2.Visible = False
                var3.Visible = False
                
                Label1.Caption = ""
                Label2.Caption = ""
                Label3.Caption = ""
          End If
        End If
        If Option4.value = True Then
            Label4.Caption = "Side a ="
            Calculate.Visible = True
            var1.Visible = True
            var2.Visible = True
            var3.Visible = True
            If sidea.value = 1 Then
                ConversionNumber = 16
                Label1.Caption = "Side a"
                Label2.Caption = ""
                Label3.Caption = ""
                var2.Visible = False
                var3.Visible = False
            ElseIf angela.value = 1 And sideb.value = 1 And sidec.value = 1 Then
                ConversionNumber = 7
                Label1.Caption = "Angle A"
                Label2.Caption = "Side b"
                Label3.Caption = "Side c"
            ElseIf angelb.value = 1 And angela.value = 1 And sideb.value = 1 Then
                ConversionNumber = 8
                Label1.Caption = "Angle A"
                Label2.Caption = "Angle B"
                Label3.Caption = "Side b"
            ElseIf angela.value = 1 And angelc.value = 1 And sidec.value = 1 Then
                ConversionNumber = 9
                Label1.Caption = "Angle A"
                Label2.Caption = "Angle C"
                Label3.Caption = "Side c"
            ElseIf angela.value = 1 And sidec.value = 1 And angelb.value = 1 Then
                ConversionNumber = 10
                Label1.Caption = "Angle A"
                Label2.Caption = "Angle B"
                Label3.Caption = "Side c"
            ElseIf angela.value = 1 And sideb.value = 1 And angelc.value = 1 Then
                ConversionNumber = 15
                Label1.Caption = "Angle A"
                Label2.Caption = "Angle C"
                Label3.Caption = "Side b"
            ElseIf angelc.value = 1 And angelb.value = 1 And sidec.value = 1 Then
                ConversionNumber = 11
                Label1.Caption = "Angle C"
                Label2.Caption = "Angle B"
                Label3.Caption = "Side c"
            ElseIf angelb.value = 1 And angelc.value = 1 And sideb.value = 1 Then
                ConversionNumber = 12
                Label1.Caption = "Angle B"
                Label2.Caption = "Angle C"
                Label3.Caption = "Side b"
            
            Else
                Calculate.Visible = False
                var1.Visible = False
                var2.Visible = False
                var3.Visible = False
                
                Label1.Caption = ""
                Label2.Caption = ""
                Label3.Caption = ""
            End If
        End If
        If Option5.value = True Then
            Label4.Caption = "Side b ="
            Calculate.Visible = True
            var1.Visible = True
            var2.Visible = True
            var3.Visible = True
            If sideb.value = 1 Then
                ConversionNumber = 16
                Label1.Caption = "Side b"
                Label2.Caption = ""
                Label3.Caption = ""
                var2.Visible = False
                var3.Visible = False
            ElseIf angelb.value = 1 And sidea.value = 1 And sidec.value = 1 Then
                ConversionNumber = 7
                Label1.Caption = "Angle B"
                Label2.Caption = "Side a"
                Label3.Caption = "Side c"
            ElseIf angelb.value = 1 And angela.value = 1 And sidea.value = 1 Then
                ConversionNumber = 8
                Label1.Caption = "Angle B"
                Label2.Caption = "Angle A"
                Label3.Caption = "Side a"
            ElseIf angelb.value = 1 And angelc.value = 1 And sidec.value = 1 Then
                ConversionNumber = 9
                Label1.Caption = "Angle B"
                Label2.Caption = "Angle C"
                Label3.Caption = "Side c"
            ElseIf angela.value = 1 And sidec.value = 1 And angelb.value = 1 Then
                ConversionNumber = 10
                Label1.Caption = "Angle B"
                Label2.Caption = "Angle A"
                Label3.Caption = "Side c"
            ElseIf angelb.value = 1 And angelc.value = 1 And sidea.value = 1 Then
                ConversionNumber = 15
                Label1.Caption = "Angle B"
                Label2.Caption = "Angle C"
                Label3.Caption = "Side a"
            ElseIf angelc.value = 1 And angela.value = 1 And sidea.value = 1 Then
                ConversionNumber = 11
                Label1.Caption = "Angle A"
                Label2.Caption = "Angle C"
                Label3.Caption = "Side a"
            ElseIf angela.value = 1 And angelc.value = 1 And sidec.value = 1 Then
                ConversionNumber = 12
                Label1.Caption = "Angle C"
                Label2.Caption = "Angle A"
                Label3.Caption = "Side c"
            
            Else
                Calculate.Visible = False
                var1.Visible = False
                var2.Visible = False
                var3.Visible = False
                
                Label1.Caption = ""
                Label2.Caption = ""
                Label3.Caption = ""
            End If
       End If
        If Option6.value = True Then
            Label4.Caption = "Side c ="
            Calculate.Visible = True
            var1.Visible = True
            var2.Visible = True
            var3.Visible = True
            If sidec.value = 1 Then
                ConversionNumber = 16
                Label1.Caption = "Side c"
                Label2.Caption = ""
                Label3.Caption = ""
                var2.Visible = False
                var3.Visible = False
            ElseIf sidea.value = 1 And sideb.value = 1 And angelc.value = 1 Then
                ConversionNumber = 7
                Label1.Caption = "Angle C"
                Label2.Caption = "Side a"
                Label3.Caption = "Side b"
            ElseIf angelc.value = 1 And angela.value = 1 And sidea.value = 1 Then
                ConversionNumber = 8
                Label1.Caption = "Angle C"
                Label2.Caption = "Angle A"
                Label3.Caption = "Side a"
            ElseIf angelb.value = 1 And angelc.value = 1 And sideb.value = 1 Then
                ConversionNumber = 9
                Label1.Caption = "Angle C"
                Label2.Caption = "Angle B"
                Label3.Caption = "Side b"
            ElseIf angela.value = 1 And sideb.value = 1 And angelc.value = 1 Then
                ConversionNumber = 10
                Label1.Caption = "Angle C"
                Label2.Caption = "Angle A"
                Label3.Caption = "Side b"
            ElseIf angelb.value = 1 And sidea.value = 1 And angelc.value = 1 Then
                ConversionNumber = 15
                Label1.Caption = "Angle C"
                Label2.Caption = "Angle B"
                Label3.Caption = "Side a"
            ElseIf angela.value = 1 And angelb.value = 1 And sidea.value = 1 Then
                ConversionNumber = 11
                Label1.Caption = "Angle A"
                Label2.Caption = "Angle B"
                Label3.Caption = "Side a"
            ElseIf angelb.value = 1 And angela.value = 1 And sideb.value = 1 Then
                ConversionNumber = 12
                Label1.Caption = "Angle B"
                Label2.Caption = "Angle A"
                Label3.Caption = "Side b"
            
            Else
                Calculate.Visible = False
                var1.Visible = False
                var2.Visible = False
                var3.Visible = False
                Label1.Caption = ""
                Label2.Caption = ""
                Label3.Caption = ""
            End If
        End If
End Sub

Private Sub sidea_Click()

Call EvaluateTriangle
End Sub

Private Sub sideb_Click()
Call EvaluateTriangle
End Sub

Private Sub sidec_Click()
Call EvaluateTriangle
End Sub
