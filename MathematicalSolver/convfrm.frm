VERSION 5.00
Begin VB.Form convfrm 
   BackColor       =   &H00C0FFFF&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Conversion"
   ClientHeight    =   6945
   ClientLeft      =   45
   ClientTop       =   405
   ClientWidth     =   7170
   Icon            =   "convfrm.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   6945
   ScaleWidth      =   7170
   StartUpPosition =   3  'Windows Default
   Begin VB.Frame Frame2 
      BackColor       =   &H00C0FFFF&
      Caption         =   "Unit Conversion :"
      ForeColor       =   &H000000FF&
      Height          =   5175
      Left            =   120
      TabIndex        =   0
      Top             =   1680
      Width           =   6975
      Begin VB.OptionButton Option14 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Temperature"
         Height          =   255
         Left            =   1680
         TabIndex        =   20
         Top             =   2520
         Width           =   1335
      End
      Begin VB.OptionButton Option13 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Time"
         Height          =   255
         Left            =   1680
         TabIndex        =   19
         Top             =   2160
         Width           =   1335
      End
      Begin VB.OptionButton Option12 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Angle"
         Height          =   255
         Left            =   1680
         TabIndex        =   18
         Top             =   1800
         Width           =   1335
      End
      Begin VB.OptionButton Option11 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Speed"
         Height          =   255
         Left            =   1680
         TabIndex        =   17
         Top             =   1440
         Width           =   1335
      End
      Begin VB.OptionButton Option10 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Density"
         Height          =   255
         Left            =   1680
         TabIndex        =   16
         Top             =   1080
         Width           =   1335
      End
      Begin VB.OptionButton Option9 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Mass"
         Height          =   255
         Left            =   1680
         TabIndex        =   15
         Top             =   720
         Width           =   1335
      End
      Begin VB.OptionButton Option8 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Torque"
         Height          =   255
         Left            =   1680
         TabIndex        =   14
         Top             =   360
         Width           =   1335
      End
      Begin VB.OptionButton Option7 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Pressure"
         Height          =   255
         Left            =   120
         TabIndex        =   13
         Top             =   2520
         Width           =   1335
      End
      Begin VB.OptionButton Option6 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Energy"
         Height          =   255
         Left            =   120
         TabIndex        =   12
         Top             =   2160
         Width           =   1335
      End
      Begin VB.OptionButton Option5 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Power"
         Height          =   255
         Left            =   120
         TabIndex        =   11
         Top             =   1800
         Width           =   1335
      End
      Begin VB.OptionButton Option4 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Force"
         Height          =   255
         Left            =   120
         TabIndex        =   10
         Top             =   1440
         Width           =   1335
      End
      Begin VB.OptionButton Option3 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Volume"
         Height          =   255
         Left            =   120
         TabIndex        =   9
         Top             =   1080
         Width           =   1335
      End
      Begin VB.OptionButton Option2 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Area"
         Height          =   255
         Left            =   120
         TabIndex        =   8
         Top             =   720
         Width           =   1335
      End
      Begin VB.OptionButton Option1 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Length"
         Height          =   255
         Left            =   120
         TabIndex        =   7
         Top             =   360
         Width           =   1335
      End
      Begin VB.CommandButton Command3 
         Caption         =   "Clear"
         Height          =   375
         Left            =   3360
         TabIndex        =   6
         Top             =   4320
         Width           =   1335
      End
      Begin VB.CommandButton Command2 
         Caption         =   "Convert"
         Height          =   375
         Left            =   1680
         TabIndex        =   5
         Top             =   4320
         Width           =   1335
      End
      Begin VB.TextBox Text3 
         Height          =   375
         Left            =   2400
         TabIndex        =   4
         Top             =   3720
         Width           =   3495
      End
      Begin VB.TextBox Text2 
         Height          =   375
         Left            =   2400
         TabIndex        =   3
         Top             =   3240
         Width           =   3495
      End
      Begin VB.ComboBox Combo3 
         Height          =   315
         ItemData        =   "convfrm.frx":038A
         Left            =   3240
         List            =   "convfrm.frx":038C
         TabIndex        =   2
         Top             =   2160
         Width           =   2055
      End
      Begin VB.ComboBox Combo2 
         Height          =   315
         Left            =   3240
         TabIndex        =   1
         Top             =   960
         Width           =   2055
      End
      Begin VB.Label Label8 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Select the Unit :"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   240
         Left            =   3240
         TabIndex        =   26
         Top             =   360
         Width           =   1635
      End
      Begin VB.Label Label7 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Select the Convert Unit :"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   240
         Left            =   3240
         TabIndex        =   25
         Top             =   1560
         Width           =   2490
      End
      Begin VB.Label Label5 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Answer is:"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   240
         Left            =   240
         TabIndex        =   24
         Top             =   3720
         Width           =   1065
      End
      Begin VB.Label Label4 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Enter the value :"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   240
         Left            =   240
         TabIndex        =   23
         Top             =   3240
         Width           =   1680
      End
      Begin VB.Label Label9 
         BackColor       =   &H00C0FFFF&
         Height          =   375
         Left            =   5400
         TabIndex        =   22
         Top             =   960
         Width           =   1455
      End
      Begin VB.Label Label10 
         BackColor       =   &H00C0FFFF&
         Height          =   375
         Left            =   5400
         TabIndex        =   21
         Top             =   2160
         Width           =   1455
      End
   End
   Begin VB.Image Image2 
      Height          =   600
      Left            =   1680
      Picture         =   "convfrm.frx":038E
      Top             =   960
      Width           =   3810
   End
   Begin VB.Image Image1 
      Height          =   855
      Left            =   0
      Picture         =   "convfrm.frx":77BF
      Stretch         =   -1  'True
      Top             =   0
      Width           =   7170
   End
End
Attribute VB_Name = "convfrm"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Option Compare Text
Dim st As Integer
Private Const csValidChars As String = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ"

 Public Sub MeterToKilometers(ByVal ConversionNumber As Double)
        ConversionSolution1 = (ConversionNumber / 1000)
        Text3.Text = ConversionSolution1
    End Sub

    Public Sub MeterToCentimeters(ByVal ConversionNumber As Double)
        ConversionSolution1 = (ConversionNumber * 100)
        Text3.Text = ConversionSolution1
    End Sub

    Public Sub MeterToMillimeters(ByVal ConversionNumber As Double)
        ConversionSolution1 = (ConversionNumber * 1000)
        Text3.Text = ConversionSolution1
    End Sub

    Public Sub MeterToFeet(ByVal ConversionNumber As Double)
        ConversionSolution1 = (ConversionNumber * 3.28084)
        Text3.Text = ConversionSolution1
    End Sub

    Public Sub MeterToInches(ByVal ConversionNumber As Double)
        ConversionSolution1 = (ConversionNumber * 39.37)
        Text3.Text = ConversionSolution1
    End Sub

    Public Sub MeterToYards(ByVal ConversionNumber As Double)
        ConversionSolution1 = (ConversionNumber * 1.093613)
        Text3.Text = ConversionSolution1
    End Sub

    Public Sub MeterToMiles(ByVal ConversionNumber As Double)
        ConversionSolution1 = ((ConversionNumber / 1000) * 0.621371)
        Text3.Text = ConversionSolution1
    End Sub

    Public Sub MeterToNMiles(ByVal ConversionNumber As Double)
        ConversionSolution1 = ((ConversionNumber / 1000) * 0.539957)
        Text3.Text = ConversionSolution1
    End Sub

    Public Sub KilometerToMeters(ByVal ConversionNumber As Double)
        ConversionSolution1 = (ConversionNumber * 1000)
        Text3.Text = ConversionSolution1
    End Sub

    Public Sub KilometerToCentimeters(ByVal ConversionNumber As Double)
        ConversionSolution1 = (ConversionNumber * 100000)
        Text3.Text = ConversionSolution1
    End Sub

    Public Sub KilometerToMillimeters(ByVal ConversionNumber As Double)
        ConversionSolution1 = (ConversionNumber * 1000000)
        Text3.Text = ConversionSolution1
    End Sub

    Public Sub KilometerToFeet(ByVal ConversionNumber As Double)
        ConversionSolution1 = ((ConversionNumber * 1000) * 3.28084)
        Text3.Text = ConversionSolution1
    End Sub

    Public Sub KilometerToInches(ByVal ConversionNumber As Double)
        ConversionSolution1 = ((ConversionNumber * 1000) * 39.37)
        Text3.Text = ConversionSolution1
    End Sub

    Public Sub KilometerToYards(ByVal ConversionNumber As Double)
        ConversionSolution1 = ((ConversionNumber * 1000) * 1.093613)
        Text3.Text = ConversionSolution1
    End Sub

    Public Sub KilometerToMiles(ByVal ConversionNumber As Double)
        ConversionSolution1 = (ConversionNumber * 0.621371)
        Text3.Text = ConversionSolution1
    End Sub

    Public Sub KilometerToNMiles(ByVal ConversionNumber As Double)
        ConversionSolution1 = (ConversionNumber * 0.539957)
        Text3.Text = ConversionSolution1
    End Sub

    Public Sub CentimeterToMeters(ByVal ConversionNumber As Double)
        ConversionSolution1 = (ConversionNumber / 100)
        Text3.Text = ConversionSolution1
    End Sub

    Public Sub CentimeterToKilometers(ByVal ConversionNumber As Double)
        ConversionSolution1 = (ConversionNumber / 100000)
        Text3.Text = ConversionSolution1
    End Sub

    Public Sub CentimeterToMillimeters(ByVal ConversionNumber As Double)
        ConversionSolution1 = (ConversionNumber * 10)
        Text3.Text = ConversionSolution1
    End Sub

    Public Sub CentimeterToFeet(ByVal ConversionNumber As Double)
        ConversionSolution1 = (ConversionNumber * 0.032808)
        Text3.Text = ConversionSolution1
    End Sub

    Public Sub CentimeterToInches(ByVal ConversionNumber As Double)
        ConversionSolution1 = (ConversionNumber * 0.393701)
        Text3.Text = ConversionSolution1
    End Sub

    Public Sub CentimeterToYards(ByVal ConversionNumber As Double)
        ConversionSolution1 = ((ConversionNumber * 0.032808) / 3)
        Text3.Text = ConversionSolution1
    End Sub

    Public Sub CentimeterToMiles(ByVal ConversionNumber As Double)
        ConversionSolution1 = ((ConversionNumber * 0.032808) / 5280)
        Text3.Text = ConversionSolution1
    End Sub

    Public Sub CentimeterToNMiles(ByVal ConversionNumber As Double)
        ConversionSolution1 = ((ConversionNumber * 0.032808) / 6076.115)
        Text3.Text = ConversionSolution1
    End Sub

    Public Sub MillimeterToMeters(ByVal ConversionNumber As Double)
        ConversionSolution1 = (ConversionNumber / 1000)
        Text3.Text = ConversionSolution1
    End Sub

    Public Sub MillimeterTokilometers(ByVal ConversionNumber As Double)
        ConversionSolution1 = (ConversionNumber / 1000000)
        Text3.Text = ConversionSolution1
    End Sub

    Public Sub MillimeterToCentimeters(ByVal ConversionNumber As Double)
        ConversionSolution1 = (ConversionNumber / 10)
        Text3.Text = ConversionSolution1
    End Sub

    Public Sub MillimeterToFeet(ByVal ConversionNumber As Double)
        ConversionSolution1 = ((ConversionNumber / 1000) * 3.28084)
        Text3.Text = ConversionSolution1
    End Sub

    Public Sub MillimeterToInches(ByVal ConversionNumber As Double)
        ConversionSolution1 = ((ConversionNumber / 1000) * 39.37)
        Text3.Text = ConversionSolution1
    End Sub

    Public Sub MillimeterToYards(ByVal ConversionNumber As Double)
        ConversionSolution1 = ((ConversionNumber / 1000) * 1.0936)
        Text3.Text = ConversionSolution1
    End Sub

    Public Sub MillimeterToMiles(ByVal ConversionNumber As Double)
        ConversionSolution1 = ((ConversionNumber / 1000000) * 0.621371)
        Text3.Text = ConversionSolution1
    End Sub

    Public Sub MillimeterToNMiles(ByVal ConversionNumber As Double)
        ConversionSolution1 = ((ConversionNumber / 1000000) * 0.539957)
        Text3.Text = ConversionSolution1
    End Sub

    Public Sub FeetToMeters(ByVal ConversionNumber As Double)
        ConversionSolution1 = (ConversionNumber * 0.3048)
        Text3.Text = ConversionSolution1
    End Sub

    Public Sub FeetToKilometers(ByVal ConversionNumber As Double)
        ConversionSolution1 = ((ConversionNumber * 0.3048) / 1000)
        Text3.Text = ConversionSolution1
    End Sub

    Public Sub FeetToCentimeters(ByVal ConversionNumber As Double)
        ConversionSolution1 = ((ConversionNumber * 0.3048) * 100)
        Text3.Text = ConversionSolution1
    End Sub

    Public Sub FeetToMillimeters(ByVal ConversionNumber As Double)
        ConversionSolution1 = ((ConversionNumber * 0.3048) * 1000)
        Text3.Text = ConversionSolution1
    End Sub

    Public Sub FeetToInches(ByVal ConversionNumber As Double)
        ConversionSolution1 = (ConversionNumber * 12)
        Text3.Text = ConversionSolution1
    End Sub

    Public Sub FeetToYards(ByVal ConversionNumber As Double)
        ConversionSolution1 = (ConversionNumber / 3)
        Text3.Text = ConversionSolution1
    End Sub

    Public Sub FeetToMiles(ByVal ConversionNumber As Double)
        ConversionSolution1 = (ConversionNumber / 5280)
        Text3.Text = ConversionSolution1
    End Sub

    Public Sub FeetToNMiles(ByVal ConversionNumber As Double)
        ConversionSolution1 = (ConversionNumber / 6076.115)
        Text3.Text = ConversionSolution1
    End Sub

    Public Sub InchToMeters(ByVal ConversionNumber As Double)
        ConversionSolution1 = (ConversionNumber / 39.37)
        Text3.Text = ConversionSolution1
    End Sub

    Public Sub InchToKilometers(ByVal ConversionNumber As Double)
        ConversionSolution1 = ((ConversionNumber / 39.37) / 1000)
        Text3.Text = ConversionSolution1
    End Sub

    Public Sub InchToCentimeters(ByVal ConversionNumber As Double)
        ConversionSolution1 = ((ConversionNumber / 39.37) * 100)
        Text3.Text = ConversionSolution1
    End Sub

    Public Sub InchToMillimeters(ByVal ConversionNumber As Double)
        ConversionSolution1 = ((ConversionNumber / 39.37) * 1000)
        Text3.Text = ConversionSolution1
    End Sub

    Public Sub InchToFeet(ByVal ConversionNumber As Double)
        ConversionSolution1 = (ConversionNumber / 12)
        Text3.Text = ConversionSolution1
    End Sub

    Public Sub InchToYards(ByVal ConversionNumber As Double)
        ConversionSolution1 = (ConversionNumber / 36)
        Text3.Text = ConversionSolution1
    End Sub

    Public Sub InchToMiles(ByVal ConversionNumber As Double)
        ConversionSolution1 = ((ConversionNumber / 12) / 5280)
        Text3.Text = ConversionSolution1
    End Sub

    Public Sub InchToNMiles(ByVal ConversionNumber As Double)
        ConversionSolution1 = ((ConversionNumber / 12) / 6076.115)
        Text3.Text = ConversionSolution1
    End Sub

    Public Sub YardToMeters(ByVal ConversionNumber As Double)
        ConversionSolution1 = (ConversionNumber * 0.9144)
        Text3.Text = ConversionSolution1
    End Sub

    Public Sub YardToKilometers(ByVal ConversionNumber As Double)
        ConversionSolution1 = ((ConversionNumber * 0.9144) / 1000)
        Text3.Text = ConversionSolution1
    End Sub

    Public Sub YardToCentimeters(ByVal ConversionNumber As Double)
        ConversionSolution1 = ((ConversionNumber * 0.9144) * 100)
        Text3.Text = ConversionSolution1
    End Sub

    Public Sub YardToMillimeters(ByVal ConversionNumber As Double)
        ConversionSolution1 = ((ConversionNumber * 0.9144) * 1000)
        Text3.Text = ConversionSolution1
    End Sub

    Public Sub YardToFeet(ByVal ConversionNumber As Double)
        ConversionSolution1 = (ConversionNumber * 3)
        Text3.Text = ConversionSolution1
    End Sub

    Public Sub YardToInches(ByVal ConversionNumber As Double)
        ConversionSolution1 = (ConversionNumber * 36)
        Text3.Text = ConversionSolution1
    End Sub

    Public Sub YardToMiles(ByVal ConversionNumber As Double)
        ConversionSolution1 = (ConversionNumber / 1760)
        Text3.Text = ConversionSolution1
    End Sub

    Public Sub YardToNMiles(ByVal ConversionNumber As Double)
        ConversionSolution1 = (ConversionNumber / 2025.3718)
        Text3.Text = ConversionSolution1
    End Sub

    Public Sub MileToMeters(ByVal ConversionNumber As Double)
        ConversionSolution1 = (ConversionNumber * 1609.344)
        Text3.Text = ConversionSolution1
    End Sub

    Public Sub MileToKilometers(ByVal ConversionNumber As Double)
        ConversionSolution1 = ((ConversionNumber * 1609.344) / 1000)
        Text3.Text = ConversionSolution1
    End Sub

    Public Sub MileToCentimeters(ByVal ConversionNumber As Double)
        ConversionSolution1 = ((ConversionNumber * 1609.344) * 100)
        Text3.Text = ConversionSolution1
    End Sub

    Public Sub MileToMillimeters(ByVal ConversionNumber As Double)
        ConversionSolution1 = ((ConversionNumber * 1609.344) * 1000)
        Text3.Text = ConversionSolution1
    End Sub

Public Sub MileToFeet(ByVal ConversionNumber As Double)
    ConversionSolution1 = (ConversionNumber * 5280)
    Text3.Text = ConversionSolution1
End Sub

Public Sub MileToInches(ByVal ConversionNumber As Double)
    ConversionSolution1 = ((ConversionNumber * 5280) * 12)
    Text3.Text = ConversionSolution1
End Sub
Public Sub MileToYards(ByVal ConversionNumber As Double)
    ConversionSolution1 = ((ConversionNumber * 5280) / 3)
    Text3.Text = ConversionSolution1
End Sub
Public Sub MileToNMiles(ByVal ConversionNumber As Double)
    ConversionSolution1 = (ConversionNumber * 0.868976)
    Text3.Text = ConversionSolution1
End Sub
Public Sub NMileToMeters(ByVal ConversionNumber As Double)
    ConversionSolution1 = (ConversionNumber * 1852)
    Text3.Text = ConversionSolution1
End Sub
Public Sub NMileToKilometers(ByVal ConversionNumber As Double)
    ConversionSolution1 = ((ConversionNumber * 1852) / 1000)
    Text3.Text = ConversionSolution1
End Sub
Public Sub NMileToCentimeters(ByVal ConversionNumber As Double)
    ConversionSolution1 = ((ConversionNumber * 1852) * 100)
    Text3.Text = ConversionSolution1
End Sub
Public Sub NMileToMillimeters(ByVal ConversionNumber As Double)
    ConversionSolution1 = ((ConversionNumber * 1852) * 1000)
    Text3.Text = ConversionSolution1
End Sub
Public Sub NMileToFeet(ByVal ConversionNumber As Double)
    ConversionSolution1 = (ConversionNumber * 6076.115)
    Text3.Text = ConversionSolution1
End Sub
Public Sub NMileToInches(ByVal ConversionNumber As Double)
    ConversionSolution1 = ((ConversionNumber * 6076.115) * 12)
    Text3.Text = ConversionSolution1
End Sub
Public Sub NMileToYards(ByVal ConversionNumber As Double)
    ConversionSolution1 = ((ConversionNumber * 6076.115) / 3)
    Text3.Text = ConversionSolution1
End Sub
Public Sub NMileToMiles(ByVal ConversionNumber As Double)
    ConversionSolution1 = (ConversionNumber * 1.1508)
    Text3.Text = ConversionSolution1
End Sub
Public Sub SquareMeterToSquareKilometers(ByVal ConversionNumber As Double)
    ConversionSolution1 = (ConversionNumber / 1000000)
    Text3.Text = ConversionSolution1
End Sub
Public Sub SquareMeterToSquareCentimeters(ByVal ConversionNumber As Double)
    ConversionSolution1 = (ConversionNumber * 10000)
    Text3.Text = ConversionSolution1
End Sub
Public Sub SquareMeterToSquareMillimeters(ByVal ConversionNumber As Double)
    ConversionSolution1 = (ConversionNumber * 1000000)
    Text3.Text = ConversionSolution1
End Sub
Public Sub SquareMeterToSquareFeet(ByVal ConversionNumber As Double)
    ConversionSolution1 = (ConversionNumber * 10.7639104167)
    Text3.Text = ConversionSolution1
End Sub
Public Sub SquareMeterToSquareInches(ByVal ConversionNumber As Double)
    ConversionSolution1 = (ConversionNumber * 1550.00310001)
    Text3.Text = ConversionSolution1
End Sub
Public Sub SquareMeterToSquareYards(ByVal ConversionNumber As Double)
    ConversionSolution1 = (ConversionNumber * 1.1959900463)
    Text3.Text = ConversionSolution1
End Sub
Public Sub SquareMeterToSquareMiles(ByVal ConversionNumber As Double)
    ConversionSolution1 = (ConversionNumber / 2589988.11034)
    Text3.Text = ConversionSolution1
End Sub
Public Sub SquareMeterToAcres(ByVal ConversionNumber As Double)
    ConversionSolution1 = (ConversionNumber / 4046.8564224)
    Text3.Text = ConversionSolution1
End Sub
Public Sub SquareKilometerToSquareMeters(ByVal ConversionNumber As Double)
    ConversionSolution1 = (ConversionNumber * 1000000)
    Text3.Text = ConversionSolution1
End Sub
Public Sub SquareKilometerToSquareCentimeters(ByVal ConversionNumber As Double)
    ConversionSolution1 = (ConversionNumber * 10000000000#)
    Text3.Text = ConversionSolution1
End Sub
Public Sub SquareKilometerToSquareMillimeters(ByVal ConversionNumber As Double)
    ConversionSolution1 = (ConversionNumber * 1000000000000#)
    Text3.Text = ConversionSolution1
End Sub
Public Sub SquareKilometerToSquareFeet(ByVal ConversionNumber As Double)
    ConversionSolution1 = (ConversionNumber * 10763910.4167)
    Text3.Text = ConversionSolution1
End Sub
Public Sub SquareKilometerToSquareInches(ByVal ConversionNumber As Double)
    ConversionSolution1 = (ConversionNumber * 1550003100.01)
    Text3.Text = ConversionSolution1
End Sub
Public Sub SquareKilometerToSquareYards(ByVal ConversionNumber As Double)
    ConversionSolution1 = (ConversionNumber * 1195990.0463)
    Text3.Text = ConversionSolution1
End Sub
Public Sub SquareKilometerToSquareMiles(ByVal ConversionNumber As Double)
    ConversionSolution1 = (ConversionNumber * 0.386102158542)
    Text3.Text = ConversionSolution1
End Sub
Public Sub SquareKilometerToAcres(ByVal ConversionNumber As Double)
    ConversionSolution1 = (ConversionNumber * 247.105381467)
    Text3.Text = ConversionSolution1
End Sub
Public Sub SquareCentimeterToSquareMeters(ByVal ConversionNumber As Double)
    ConversionSolution1 = (ConversionNumber / 10000)
    Text3.Text = ConversionSolution1
End Sub
Public Sub SquareCentimeterToSquareKilometers(ByVal ConversionNumber As Double)
    ConversionSolution1 = (ConversionNumber / 10000000000#)
    Text3.Text = ConversionSolution1
End Sub
Public Sub SquareCentimeterToSquareMillimeters(ByVal ConversionNumber As Double)
    ConversionSolution1 = (ConversionNumber * 100)
    Text3.Text = ConversionSolution1
End Sub
Public Sub SquareCentimeterToSquareFeet(ByVal ConversionNumber As Double)
    ConversionSolution1 = (ConversionNumber * 0.001076391042)
    Text3.Text = ConversionSolution1
End Sub
Public Sub SquareCentimeterToSquareInches(ByVal ConversionNumber As Double)
    ConversionSolution1 = (ConversionNumber * 0.155000310001)
    Text3.Text = ConversionSolution1
End Sub
Public Sub SquareCentimeterToSquareYards(ByVal ConversionNumber As Double)
    ConversionSolution1 = (ConversionNumber / 8361.2736)
    Text3.Text = ConversionSolution1
End Sub
Public Sub SquareCentimeterToSquareMiles(ByVal ConversionNumber As Double)
    ConversionSolution1 = (ConversionNumber / 25899881103.4)
    Text3.Text = ConversionSolution1
End Sub
Public Sub SquareCentimeterToAcres(ByVal ConversionNumber As Double)
    ConversionSolution1 = (ConversionNumber / 40468564.224)
    Text3.Text = ConversionSolution1
End Sub
Public Sub SquareMillimeterToSquareMeters(ByVal ConversionNumber As Double)
    ConversionSolution1 = (ConversionNumber / 1000000)
    Text3.Text = ConversionSolution1
End Sub
   Public Sub SquareMillimeterToSquareKilometers(ByVal ConversionNumber As Double)
    ConversionSolution1 = (ConversionNumber / 1000000000000#)
    Text3.Text = ConversionSolution1
End Sub
Public Sub SquareMillimeterToSquareCentimeters(ByVal ConversionNumber As Double)
    ConversionSolution1 = (ConversionNumber / 100)
    Text3.Text = ConversionSolution1
End Sub
Public Sub SquareMillimeterToSquareFeet(ByVal ConversionNumber As Double)
    ConversionSolution1 = (ConversionNumber * 0.00001076391)
    Text3.Text = ConversionSolution1
End Sub
Public Sub SquareMillimeterToSquareInches(ByVal ConversionNumber As Double)
    ConversionSolution1 = (ConversionNumber * 0.0015500031)
    Text3.Text = ConversionSolution1
End Sub
Public Sub SquareMillimeterToSquareYards(ByVal ConversionNumber As Double)
    ConversionSolution1 = (ConversionNumber / 836127.36)
    Text3.Text = ConversionSolution1
End Sub
Public Sub SquareMillimeterToSquareMiles(ByVal ConversionNumber As Double)
    ConversionSolution1 = (ConversionNumber / 2589988110340#)
    Text3.Text = ConversionSolution1
End Sub
Public Sub SquareMillimeterToAcres(ByVal ConversionNumber As Double)
    ConversionSolution1 = (ConversionNumber / 4046856422.4)
    Text3.Text = ConversionSolution1
End Sub
Public Sub SquareFeetToSquareMeters(ByVal ConversionNumber As Double)
    ConversionSolution1 = (ConversionNumber * 0.09290304)
    Text3.Text = ConversionSolution1
End Sub
Public Sub SquareFeetToSquareKilometers(ByVal ConversionNumber As Double)
    ConversionSolution1 = (ConversionNumber / 10763910.4167)
    Text3.Text = ConversionSolution1
End Sub
Public Sub SquareFeetToSquareCentimeters(ByVal ConversionNumber As Double)
    ConversionSolution1 = (ConversionNumber * 929.0304)
    Text3.Text = ConversionSolution1
End Sub
Public Sub SquareFeetToSquareMillimeters(ByVal ConversionNumber As Double)
    ConversionSolution1 = (ConversionNumber * 92903.04)
    Text3.Text = ConversionSolution1
End Sub
Public Sub SquareFeetToSquareInches(ByVal ConversionNumber As Double)
    ConversionSolution1 = (ConversionNumber * 144)
    Text3.Text = ConversionSolution1
End Sub
Public Sub SquareFeetToSquareYards(ByVal ConversionNumber As Double)
    ConversionSolution1 = (ConversionNumber * 0.111111111111)
    Text3.Text = ConversionSolution1
End Sub
Public Sub SquareFeetToSquareMiles(ByVal ConversionNumber As Double)
    ConversionSolution1 = (ConversionNumber / 27878400)
    Text3.Text = ConversionSolution1
End Sub
Public Sub SquareFeetToAcres(ByVal ConversionNumber As Double)
    ConversionSolution1 = (ConversionNumber / 43560)
    Text3.Text = ConversionSolution1
End Sub
Public Sub SquareInchToMeters(ByVal ConversionNumber As Double)
    ConversionSolution1 = (ConversionNumber / 1550.00310001)
    Text3.Text = ConversionSolution1
End Sub
Public Sub SquareInchToKilometers(ByVal ConversionNumber As Double)
    ConversionSolution1 = (ConversionNumber / 1550003100.01)
    Text3.Text = ConversionSolution1
End Sub
Public Sub SquareInchToCentimeters(ByVal ConversionNumber As Double)
    ConversionSolution1 = (ConversionNumber * 6.4516)
    Text3.Text = ConversionSolution1
End Sub
Public Sub SquareInchToMillimeters(ByVal ConversionNumber As Double)
    ConversionSolution1 = (ConversionNumber * 645.16)
    Text3.Text = ConversionSolution1
End Sub
Public Sub SquareInchToFeet(ByVal ConversionNumber As Double)
    ConversionSolution1 = (ConversionNumber * 0.006944444444)
    Text3.Text = ConversionSolution1
End Sub
Public Sub SquareInchToYards(ByVal ConversionNumber As Double)
    ConversionSolution1 = (ConversionNumber / 1296)
    Text3.Text = ConversionSolution1
End Sub
Public Sub SquareInchToMiles(ByVal ConversionNumber As Double)
    ConversionSolution1 = (ConversionNumber / 4014489600#)
    Text3.Text = ConversionSolution1
End Sub
Public Sub SquareInchToAcres(ByVal ConversionNumber As Double)
    ConversionSolution1 = (ConversionNumber / 6272640)
    Text3.Text = ConversionSolution1
End Sub
Public Sub SquareYardToMeters(ByVal ConversionNumber As Double)
    ConversionSolution1 = (ConversionNumber * 0.83612736)
    Text3.Text = ConversionSolution1
End Sub
Public Sub SquareYardToKilometers(ByVal ConversionNumber As Double)
    ConversionSolution1 = (ConversionNumber / 1195990.0463)
    Text3.Text = ConversionSolution1
End Sub
Public Sub SquareYardToCentimeters(ByVal ConversionNumber As Double)
    ConversionSolution1 = (ConversionNumber * 8361.2736)
    Text3.Text = ConversionSolution1
End Sub
Public Sub SquareYardToMillimeters(ByVal ConversionNumber As Double)
    ConversionSolution1 = (ConversionNumber * 836127.36)
    Text3.Text = ConversionSolution1
End Sub
Public Sub SquareYardToFeet(ByVal ConversionNumber As Double)
    ConversionSolution1 = (ConversionNumber * 9)
    Text3.Text = ConversionSolution1
End Sub
Public Sub SquareYardToInches(ByVal ConversionNumber As Double)
    ConversionSolution1 = (ConversionNumber * 1296)
    Text3.Text = ConversionSolution1
End Sub
Public Sub SquareYardToMiles(ByVal ConversionNumber As Double)
    ConversionSolution1 = (ConversionNumber / 3097600)
    Text3.Text = ConversionSolution1
End Sub
Public Sub SquareYardToAcres(ByVal ConversionNumber As Double)
    ConversionSolution1 = (ConversionNumber / 4840)
    Text3.Text = ConversionSolution1
End Sub
Public Sub SquareMileToMeters(ByVal ConversionNumber As Double)
    ConversionSolution1 = (ConversionNumber * 2589988.11034)
    Text3.Text = ConversionSolution1
End Sub
Public Sub SquareMileToKilometers(ByVal ConversionNumber As Double)
    ConversionSolution1 = (ConversionNumber * 2.58998811034)
    Text3.Text = ConversionSolution1
End Sub
Public Sub SquareMileToCentimeters(ByVal ConversionNumber As Double)
    ConversionSolution1 = (ConversionNumber * 25899881103.4)
    Text3.Text = ConversionSolution1
End Sub
Public Sub SquareMileToMillimeters(ByVal ConversionNumber As Double)
    ConversionSolution1 = (ConversionNumber * 2589988110340#)
    Text3.Text = ConversionSolution1
End Sub
Public Sub SquareMileToFeet(ByVal ConversionNumber As Double)
    ConversionSolution1 = (ConversionNumber * 27878400)
    Text3.Text = ConversionSolution1
End Sub
Public Sub SquareMileToInches(ByVal ConversionNumber As Double)
    ConversionSolution1 = (ConversionNumber * 4014489600#)
    Text3.Text = ConversionSolution1
End Sub
Public Sub SquareMileToYards(ByVal ConversionNumber As Double)
    ConversionSolution1 = (ConversionNumber * 3097600)
    Text3.Text = ConversionSolution1
End Sub
Public Sub SquareMileToAcres(ByVal ConversionNumber As Double)
    ConversionSolution1 = (ConversionNumber * 640)
    Text3.Text = ConversionSolution1
End Sub
Public Sub AcresToMeters(ByVal ConversionNumber As Double)
    ConversionSolution1 = (ConversionNumber * 4046.8564224)
    Text3.Text = ConversionSolution1
End Sub
Public Sub AcresToKilometers(ByVal ConversionNumber As Double)
    ConversionSolution1 = (ConversionNumber * 0.004046856422)
    Text3.Text = ConversionSolution1
End Sub
Public Sub AcresToCentimeters(ByVal ConversionNumber As Double)
    ConversionSolution1 = (ConversionNumber * 40468564.224)
    Text3.Text = ConversionSolution1
End Sub
Public Sub AcresToMillimeters(ByVal ConversionNumber As Double)
    ConversionSolution1 = (ConversionNumber * 4046856422.4)
    Text3.Text = ConversionSolution1
End Sub
Public Sub AcresToFeet(ByVal ConversionNumber As Double)
    ConversionSolution1 = (ConversionNumber * 43560)
    Text3.Text = ConversionSolution1
End Sub
Public Sub AcresToInches(ByVal ConversionNumber As Double)
    ConversionSolution1 = (ConversionNumber * 6272640)
    Text3.Text = ConversionSolution1
End Sub
Public Sub AcresToYards(ByVal ConversionNumber As Double)
    ConversionSolution1 = (ConversionNumber * 4840)
    Text3.Text = ConversionSolution1
End Sub
Public Sub AcresToMiles(ByVal ConversionNumber As Double)
    ConversionSolution1 = (ConversionNumber * 0.0015625)
    Text3.Text = ConversionSolution1
End Sub
Public Sub CubicMeterToCentimeters(ByVal ConversionNumber As Double)
    ConversionSolution1 = (ConversionNumber * 1000000)
    Text3.Text = ConversionSolution1
End Sub
Public Sub CubicMeterToFeet(ByVal ConversionNumber As Double)
    ConversionSolution1 = (ConversionNumber * 35.3146667215)
    Text3.Text = ConversionSolution1
End Sub

Public Sub CubicMeterToInches(ByVal ConversionNumber As Double)
    ConversionSolution1 = (ConversionNumber * 61023.7440947)
    Text3.Text = ConversionSolution1
End Sub
Public Sub CubicMeterToLiters(ByVal ConversionNumber As Double)
    ConversionSolution1 = (ConversionNumber * 1000)
    Text3.Text = ConversionSolution1
End Sub
Public Sub CubicMeterToGallons(ByVal ConversionNumber As Double)
    ConversionSolution1 = (ConversionNumber * 264.172052358)
    Text3.Text = ConversionSolution1
End Sub
Public Sub CubicMeterToCups(ByVal ConversionNumber As Double)
    ConversionSolution1 = (ConversionNumber * 4226.75283773)
    Text3.Text = ConversionSolution1
End Sub
Public Sub CubicMeterToTablespoons(ByVal ConversionNumber As Double)
    ConversionSolution1 = (ConversionNumber * 67628.0454037)
    Text3.Text = ConversionSolution1
End Sub
Public Sub CubicMeterToTeaspoons(ByVal ConversionNumber As Double)
    ConversionSolution1 = (ConversionNumber * 202884.136211)
    Text3.Text = ConversionSolution1
End Sub
Public Sub CubicCentimeterToMeters(ByVal ConversionNumber As Double)
    ConversionSolution1 = (ConversionNumber / 1000000)
    Text3.Text = ConversionSolution1
End Sub
Public Sub CubicCentimeterToFeet(ByVal ConversionNumber As Double)
    ConversionSolution1 = (ConversionNumber / 28316.846592)
    Text3.Text = ConversionSolution1
End Sub
Public Sub CubicCentimeterToInches(ByVal ConversionNumber As Double)
    ConversionSolution1 = (ConversionNumber * 0.061023744095)
    Text3.Text = ConversionSolution1
End Sub
Public Sub CubicCentimeterToLiters(ByVal ConversionNumber As Double)
    ConversionSolution1 = (ConversionNumber * 0.001)
    Text3.Text = ConversionSolution1
End Sub
Public Sub CubicCentimeterToGallons(ByVal ConversionNumber As Double)
    ConversionSolution1 = (ConversionNumber / 3785.411784)
    Text3.Text = ConversionSolution1
End Sub
Public Sub CubicCentimeterToCups(ByVal ConversionNumber As Double)
    ConversionSolution1 = (ConversionNumber * 0.004226752838)
    Text3.Text = ConversionSolution1
End Sub
Public Sub CubicCentimeterToTablespoons(ByVal ConversionNumber As Double)
    ConversionSolution1 = (ConversionNumber * 0.067628045404)
    Text3.Text = ConversionSolution1
End Sub
Public Sub CubicCentimeterToTeaspoons(ByVal ConversionNumber As Double)
    ConversionSolution1 = (ConversionNumber * 0.202884136211)
    Text3.Text = ConversionSolution1
End Sub
Public Sub CubicFeetToMeters(ByVal ConversionNumber As Double)
    ConversionSolution1 = (ConversionNumber * 0.028316846592)
    Text3.Text = ConversionSolution1
End Sub
Public Sub CubicFeetToCentimeters(ByVal ConversionNumber As Double)
    ConversionSolution1 = (ConversionNumber * 28316.846592)
    Text3.Text = ConversionSolution1
End Sub
Public Sub CubicFeetToInches(ByVal ConversionNumber As Double)
    ConversionSolution1 = (ConversionNumber * 1728)
    Text3.Text = ConversionSolution1
End Sub
Public Sub CubicFeetToLiters(ByVal ConversionNumber As Double)
    ConversionSolution1 = (ConversionNumber * 28.316846592)
    Text3.Text = ConversionSolution1
End Sub
Public Sub CubicFeetToGallons(ByVal ConversionNumber As Double)
    ConversionSolution1 = (ConversionNumber * 7.48051948052)
    Text3.Text = ConversionSolution1
End Sub
Public Sub CubicFeetToCups(ByVal ConversionNumber As Double)
    ConversionSolution1 = (ConversionNumber * 119.688311688)
    Text3.Text = ConversionSolution1
End Sub
Public Sub CubicFeetToTablespoons(ByVal ConversionNumber As Double)
    ConversionSolution1 = (ConversionNumber * 1915.01298701)
    Text3.Text = ConversionSolution1
End Sub
Public Sub CubicFeetToTeaspoons(ByVal ConversionNumber As Double)
    ConversionSolution1 = (ConversionNumber * 5745.03896104)
    Text3.Text = ConversionSolution1
End Sub
Public Sub CubicInchToMeters(ByVal ConversionNumber As Double)
    ConversionSolution1 = (ConversionNumber / 61023.7440947)
    Text3.Text = ConversionSolution1
End Sub
Public Sub CubicInchToCentimeters(ByVal ConversionNumber As Double)
    ConversionSolution1 = (ConversionNumber * 16.387064)
    Text3.Text = ConversionSolution1
End Sub
Public Sub CubicInchToFeet(ByVal ConversionNumber As Double)
    ConversionSolution1 = (ConversionNumber / 1728)
    Text3.Text = ConversionSolution1
End Sub
Public Sub CubicInchToLiters(ByVal ConversionNumber As Double)
    ConversionSolution1 = (ConversionNumber / 61.0237440947)
    Text3.Text = ConversionSolution1
End Sub
Public Sub CubicInchToGallons(ByVal ConversionNumber As Double)
    ConversionSolution1 = (ConversionNumber / 231)
    Text3.Text = ConversionSolution1
End Sub
Public Sub CubicInchToCups(ByVal ConversionNumber As Double)
    ConversionSolution1 = (ConversionNumber * 0.069264069264)
    Text3.Text = ConversionSolution1
End Sub
Public Sub CubicInchToTablespoons(ByVal ConversionNumber As Double)
    ConversionSolution1 = (ConversionNumber * 1.10822510823)
    Text3.Text = ConversionSolution1
End Sub
Public Sub CubicInchToTeaspoons(ByVal ConversionNumber As Double)
    ConversionSolution1 = (ConversionNumber * 3.32467532468)
    Text3.Text = ConversionSolution1
End Sub
Public Sub LiterToMeters(ByVal ConversionNumber As Double)
    ConversionSolution1 = (ConversionNumber * 0.001)
    Text3.Text = ConversionSolution1
End Sub
Public Sub LiterToCentimeters(ByVal ConversionNumber As Double)
    ConversionSolution1 = (ConversionNumber * 1000)
    Text3.Text = ConversionSolution1
End Sub
Public Sub LiterToFeet(ByVal ConversionNumber As Double)
    ConversionSolution1 = (ConversionNumber * 0.035314666721)
    Text3.Text = ConversionSolution1
End Sub
Public Sub LiterToInches(ByVal ConversionNumber As Double)
    ConversionSolution1 = (ConversionNumber * 61.0237440947)
    Text3.Text = ConversionSolution1
End Sub
Public Sub LiterToGallons(ByVal ConversionNumber As Double)
    ConversionSolution1 = (ConversionNumber * 0.264172052358)
    Text3.Text = ConversionSolution1
End Sub
Public Sub LiterToCups(ByVal ConversionNumber As Double)
    ConversionSolution1 = (ConversionNumber * 4.22675283773)
    Text3.Text = ConversionSolution1
End Sub
Public Sub LiterToTablespoons(ByVal ConversionNumber As Double)
    ConversionSolution1 = (ConversionNumber * 67.6280454037)
    Text3.Text = ConversionSolution1
End Sub
Public Sub LiterToTeaspoons(ByVal ConversionNumber As Double)
    ConversionSolution1 = (ConversionNumber * 202.884136211)
    Text3.Text = ConversionSolution1
End Sub
Public Sub GallonToMeters(ByVal ConversionNumber As Double)
    ConversionSolution1 = (ConversionNumber * 0.003785411784)
    Text3.Text = ConversionSolution1
End Sub
Public Sub GallonToCentimeters(ByVal ConversionNumber As Double)
    ConversionSolution1 = (ConversionNumber * 3785.411784)
    Text3.Text = ConversionSolution1
End Sub
Public Sub GallonToFeet(ByVal ConversionNumber As Double)
    ConversionSolution1 = (ConversionNumber * 0.133680555556)
    Text3.Text = ConversionSolution1
End Sub
Public Sub GallonToInches(ByVal ConversionNumber As Double)
    ConversionSolution1 = (ConversionNumber * 231)
    Text3.Text = ConversionSolution1
End Sub
Public Sub GallonToLiters(ByVal ConversionNumber As Double)
    ConversionSolution1 = (ConversionNumber * 3.785411784)
    Text3.Text = ConversionSolution1
End Sub
Public Sub GallonToCups(ByVal ConversionNumber As Double)
    ConversionSolution1 = (ConversionNumber * 16)
    Text3.Text = ConversionSolution1
End Sub
Public Sub GallonToTablespoons(ByVal ConversionNumber As Double)
    ConversionSolution1 = (ConversionNumber * 256)
    Text3.Text = ConversionSolution1
End Sub
Public Sub GallonToTeaspoons(ByVal ConversionNumber As Double)
    ConversionSolution1 = (ConversionNumber * 768)
    Text3.Text = ConversionSolution1
End Sub
Public Sub CupsToMeters(ByVal ConversionNumber As Double)
    ConversionSolution1 = (ConversionNumber / 4226.75283773)
    Text3.Text = ConversionSolution1
End Sub
Public Sub CupsToCentimeters(ByVal ConversionNumber As Double)
    ConversionSolution1 = (ConversionNumber * 236.5882365)
    Text3.Text = ConversionSolution1
End Sub
Public Sub CupsToFeet(ByVal ConversionNumber As Double)
    ConversionSolution1 = (ConversionNumber * 0.008355034722)
    Text3.Text = ConversionSolution1
End Sub
Public Sub CupsToInches(ByVal ConversionNumber As Double)
    ConversionSolution1 = (ConversionNumber * 14.4375)
    Text3.Text = ConversionSolution1
End Sub
Public Sub CupsToLiters(ByVal ConversionNumber As Double)
    ConversionSolution1 = (ConversionNumber * 0.2365882365)
    Text3.Text = ConversionSolution1
End Sub
Public Sub CupsToGallons(ByVal ConversionNumber As Double)
    ConversionSolution1 = (ConversionNumber / 16)
    Text3.Text = ConversionSolution1
End Sub
Public Sub CupsToTablespoons(ByVal ConversionNumber As Double)
    ConversionSolution1 = (ConversionNumber * 16)
    Text3.Text = ConversionSolution1
End Sub
Public Sub CupsToTeaspoons(ByVal ConversionNumber As Double)
    ConversionSolution1 = (ConversionNumber * 48)
    Text3.Text = ConversionSolution1
End Sub
Public Sub TablespoonToMeters(ByVal ConversionNumber As Double)
    ConversionSolution1 = (ConversionNumber / 67628.0454037)
    Text3.Text = ConversionSolution1
End Sub
Public Sub TablespoonToCentimeters(ByVal ConversionNumber As Double)
    ConversionSolution1 = (ConversionNumber * 14.7867647813)
    Text3.Text = ConversionSolution1
End Sub


Public Sub TablespoonToFeet(ByVal ConversionNumber As Double)
    ConversionSolution1 = (ConversionNumber / 1915.01298701)
    Text3.Text = ConversionSolution1
End Sub
Public Sub TablespoonToInches(ByVal ConversionNumber As Double)
    ConversionSolution1 = (ConversionNumber * 0.90234375)
    Text3.Text = ConversionSolution1
End Sub
Public Sub TablespoonToLiters(ByVal ConversionNumber As Double)
    ConversionSolution1 = (ConversionNumber / 67.6280454037)
    Text3.Text = ConversionSolution1
End Sub
Public Sub TablespoonToGallons(ByVal ConversionNumber As Double)
    ConversionSolution1 = (ConversionNumber / 256)
    Text3.Text = ConversionSolution1
End Sub
Public Sub TablespoonToCups(ByVal ConversionNumber As Double)
    ConversionSolution1 = (ConversionNumber * 0.0625)
    Text3.Text = ConversionSolution1
End Sub
Public Sub TablespoonToTeaspoons(ByVal ConversionNumber As Double)
    ConversionSolution1 = (ConversionNumber * 3)
    Text3.Text = ConversionSolution1
End Sub
Public Sub TeaspoonToMeters(ByVal ConversionNumber As Double)
    ConversionSolution1 = (ConversionNumber / 202884.136211)
    Text3.Text = ConversionSolution1
End Sub
Public Sub TeaspoonToCentimeters(ByVal ConversionNumber As Double)
    ConversionSolution1 = (ConversionNumber * 4.92892159375)
    Text3.Text = ConversionSolution1
End Sub
Public Sub TeaspoonToFeet(ByVal ConversionNumber As Double)
    ConversionSolution1 = (ConversionNumber / 5745.03896104)
    Text3.Text = ConversionSolution1
End Sub
Public Sub TeaspoonToInches(ByVal ConversionNumber As Double)
    ConversionSolution1 = (ConversionNumber * 0.30078125)
    Text3.Text = ConversionSolution1
End Sub
Public Sub TeaspoonToLiters(ByVal ConversionNumber As Double)
    ConversionSolution1 = (ConversionNumber / 202.884136211)
    Text3.Text = ConversionSolution1
End Sub
Public Sub TeaspoonToGallons(ByVal ConversionNumber As Double)
    ConversionSolution1 = (ConversionNumber / 768)
    Text3.Text = ConversionSolution1
End Sub
Public Sub TeaspoonToCups(ByVal ConversionNumber As Double)
    ConversionSolution1 = (ConversionNumber * 0.020833333333)
    Text3.Text = ConversionSolution1
End Sub
Public Sub TeaspoonToTablespoons(ByVal ConversionNumber As Double)
    ConversionSolution1 = (ConversionNumber * 0.333333333333)
    Text3.Text = ConversionSolution1
End Sub
Public Sub DyneToNewtons(ByVal ConversionNumber As Double)
    ConversionSolution1 = (ConversionNumber / 100000)
    Text3.Text = ConversionSolution1
End Sub
Public Sub DyneToPounds(ByVal ConversionNumber As Double)
    ConversionSolution1 = (ConversionNumber / 4.448221615)
    Text3.Text = ConversionSolution1
End Sub
Public Sub DyneToGramForce(ByVal ConversionNumber As Double)
    ConversionSolution1 = (ConversionNumber / 980665)
    Text3.Text = ConversionSolution1
End Sub
Public Sub DyneToTons(ByVal ConversionNumber As Double)
    ConversionSolution1 = (ConversionNumber / 889644323.052)
    Text3.Text = ConversionSolution1
End Sub
Public Sub NewtonToDynes(ByVal ConversionNumber As Double)
    ConversionSolution1 = (ConversionNumber * 100000)
    Text3.Text = ConversionSolution1
End Sub
Public Sub NewtonToPounds(ByVal ConversionNumber As Double)
    ConversionSolution1 = (ConversionNumber * 0.224808943)
    Text3.Text = ConversionSolution1
End Sub
Public Sub NewtonToGramForce(ByVal ConversionNumber As Double)
    ConversionSolution1 = (ConversionNumber * 0.101971621)
    Text3.Text = ConversionSolution1
End Sub
Public Sub NewtonToTons(ByVal ConversionNumber As Double)
    ConversionSolution1 = (ConversionNumber / 8896.44323052)
    Text3.Text = ConversionSolution1
End Sub
Public Sub PoundToDynes(ByVal ConversionNumber As Double)
    ConversionSolution1 = (ConversionNumber * 444822.161526)
    Text3.Text = ConversionSolution1
End Sub
Public Sub PoundToNewtons(ByVal ConversionNumber As Double)
    ConversionSolution1 = (ConversionNumber * 4.448221615)
    Text3.Text = ConversionSolution1
End Sub
Public Sub PoundToGramForce(ByVal ConversionNumber As Double)
    ConversionSolution1 = (ConversionNumber * 0.45359237)
    Text3.Text = ConversionSolution1
End Sub
Public Sub PoundToTons(ByVal ConversionNumber As Double)
    ConversionSolution1 = (ConversionNumber / 2000)
    Text3.Text = ConversionSolution1
End Sub
Public Sub GramForceToDynes(ByVal ConversionNumber As Double)
    ConversionSolution1 = (ConversionNumber * 980665)
    Text3.Text = ConversionSolution1
End Sub
Public Sub GramForceToNewtons(ByVal ConversionNumber As Double)
    ConversionSolution1 = (ConversionNumber * 9.80665)
    Text3.Text = ConversionSolution1
End Sub
Public Sub GramForceToPounds(ByVal ConversionNumber As Double)
    ConversionSolution1 = (ConversionNumber * 2.204622622)
    Text3.Text = ConversionSolution1
End Sub
Public Sub GramForceToTons(ByVal ConversionNumber As Double)
    ConversionSolution1 = (ConversionNumber * 0.001102311)
    Text3.Text = ConversionSolution1
End Sub
Public Sub TonToDynes(ByVal ConversionNumber As Double)
    ConversionSolution1 = (ConversionNumber * 889644323.052)
    Text3.Text = ConversionSolution1
End Sub
Public Sub TonToNewtons(ByVal ConversionNumber As Double)
    ConversionSolution1 = (ConversionNumber * 8896.44323052)
    Text3.Text = ConversionSolution1
End Sub
Public Sub TonToPounds(ByVal ConversionNumber As Double)
    ConversionSolution1 = (ConversionNumber * 2000)
    Text3.Text = ConversionSolution1
End Sub
Public Sub TonToGramForce(ByVal ConversionNumber As Double)
    ConversionSolution1 = (ConversionNumber * 907.18474)
    Text3.Text = ConversionSolution1
End Sub
Public Sub BTUPerHrToFtLbPerSec(ByVal ConversionNumber As Double)
    ConversionSolution1 = (ConversionNumber * 778.169262266)
    Text3.Text = ConversionSolution1
End Sub
Public Sub BTUPerHrToHorsepower(ByVal ConversionNumber As Double)
    ConversionSolution1 = (ConversionNumber * 1.41485320412)
    Text3.Text = ConversionSolution1
End Sub
Public Sub BTUPerHrToCalPerSec(ByVal ConversionNumber As Double)
    ConversionSolution1 = (ConversionNumber * 251.995761111)
    Text3.Text = ConversionSolution1
End Sub
Public Sub BTUPerHrToWatts(ByVal ConversionNumber As Double)
    ConversionSolution1 = (ConversionNumber * 1055.05585262)
    Text3.Text = ConversionSolution1
End Sub
Public Sub FtLbPerSecToBTUPerHr(ByVal ConversionNumber As Double)
    ConversionSolution1 = (ConversionNumber * 0.001285067463)
    Text3.Text = ConversionSolution1
End Sub
Public Sub FtLbPerSecToHorsepower(ByVal ConversionNumber As Double)
    ConversionSolution1 = (ConversionNumber * 0.001818181818)
    Text3.Text = ConversionSolution1
End Sub
Public Sub FtLbPerSecToCalPerSec(ByVal ConversionNumber As Double)
    ConversionSolution1 = (ConversionNumber * 0.323831553533)
    Text3.Text = ConversionSolution1
End Sub
Public Sub FtLbPerSecToWatts(ByVal ConversionNumber As Double)
    ConversionSolution1 = (ConversionNumber * 1.35581794833)
    Text3.Text = ConversionSolution1
End Sub
Public Sub HorsepowerToBTUPerHr(ByVal ConversionNumber As Double)
    ConversionSolution1 = (ConversionNumber * 0.706787104901)
    Text3.Text = ConversionSolution1
End Sub
Public Sub HorsepowerToFtLbPerSec(ByVal ConversionNumber As Double)
    ConversionSolution1 = (ConversionNumber * 550)
    Text3.Text = ConversionSolution1
End Sub
Public Sub HorsepowerToCalPerSec(ByVal ConversionNumber As Double)
    ConversionSolution1 = (ConversionNumber * 178.107354443)
    Text3.Text = ConversionSolution1
End Sub
Public Sub HorsepowerToWatts(ByVal ConversionNumber As Double)
    ConversionSolution1 = (ConversionNumber * 745.699871582)
    Text3.Text = ConversionSolution1
End Sub
Public Sub CalPerSecToBTUPerHr(ByVal ConversionNumber As Double)
    ConversionSolution1 = (ConversionNumber * 0.003968320719)
    Text3.Text = ConversionSolution1
End Sub
Public Sub CalPerSecToFtLbPerSec(ByVal ConversionNumber As Double)
    ConversionSolution1 = (ConversionNumber * 3.08802520659)
    Text3.Text = ConversionSolution1
End Sub
Public Sub CalPerSecToHorsepower(ByVal ConversionNumber As Double)
    ConversionSolution1 = (ConversionNumber * 0.005614591285)
    Text3.Text = ConversionSolution1
End Sub
Public Sub CalPerSecToWatts(ByVal ConversionNumber As Double)
    ConversionSolution1 = (ConversionNumber * 4.1868)
    Text3.Text = ConversionSolution1
End Sub
Public Sub WattsToBTUPerHr(ByVal ConversionNumber As Double)
        ConversionSolution1 = (ConversionNumber * 0.0094781720313)
        Text3.Text = ConversionSolution1
    End Sub
    Public Sub WattsToFtLbPerSec(ByVal ConversionNumber As Double)
        ConversionSolution1 = (ConversionNumber * 0.737562149277)
        Text3.Text = ConversionSolution1
    End Sub
    Public Sub WattsToHorsepower(ByVal ConversionNumber As Double)
        ConversionSolution1 = (ConversionNumber * 0.00134102209)
        Text3.Text = ConversionSolution1
    End Sub
    Public Sub WattsToCalPerSec(ByVal ConversionNumber As Double)
        ConversionSolution1 = (ConversionNumber * 0.238845896628)
        Text3.Text = ConversionSolution1
    End Sub
    Public Sub BTUToFtLb(ByVal ConversionNumber As Double)
        ConversionSolution1 = (ConversionNumber * 778.169262266)
        Text3.Text = ConversionSolution1
    End Sub
    Public Sub BTUToHorsepowerHr(ByVal ConversionNumber As Double)
        ConversionSolution1 = (ConversionNumber / 2545)
        Text3.Text = ConversionSolution1
    End Sub
    Public Sub BTUToJoule(ByVal ConversionNumber As Double)
        ConversionSolution1 = (ConversionNumber * 1055.05585262)
        Text3.Text = ConversionSolution1
    End Sub
    Public Sub BTUToCalorie(ByVal ConversionNumber As Double)
        ConversionSolution1 = (ConversionNumber * 251.995761111)
        Text3.Text = ConversionSolution1
    End Sub
    Public Sub BTUToKilowattHr(ByVal ConversionNumber As Double)
        ConversionSolution1 = (ConversionNumber / 3412.14163313)
        Text3.Text = ConversionSolution1
    End Sub
    Public Sub FtLbToBTU(ByVal ConversionNumber As Double)
        ConversionSolution1 = (ConversionNumber * 0.001285067463)
        Text3.Text = ConversionSolution1
    End Sub
    Public Sub FtLbToHorsepowerHr(ByVal ConversionNumber As Double)
        ConversionSolution1 = (ConversionNumber * 0.0000005051)
        Text3.Text = ConversionSolution1
    End Sub
    Public Sub FtLbToJoule(ByVal ConversionNumber As Double)
        ConversionSolution1 = (ConversionNumber * 1.35581794833)
        Text3.Text = ConversionSolution1
    End Sub
    Public Sub FtLbToCalorie(ByVal ConversionNumber As Double)
        ConversionSolution1 = (ConversionNumber * 0.323831553533)
        Text3.Text = ConversionSolution1
    End Sub
    Public Sub FtLbToKilowattHr(ByVal ConversionNumber As Double)
        ConversionSolution1 = (ConversionNumber / 2655223.7374)
        Text3.Text = ConversionSolution1
    End Sub
    Public Sub HorsepowerHrToBTU(ByVal ConversionNumber As Double)
        ConversionSolution1 = (ConversionNumber * 2545)
        Text3.Text = ConversionSolution1
    End Sub
    Public Sub HorsepowerHrToFtLb(ByVal ConversionNumber As Double)
        ConversionSolution1 = (ConversionNumber * 1980000)
        Text3.Text = ConversionSolution1
    End Sub
    Public Sub HorsepowerHrToJoule(ByVal ConversionNumber As Double)
        ConversionSolution1 = (ConversionNumber * 2685000)
        Text3.Text = ConversionSolution1
    End Sub
    Public Sub HorsepowerHrToCalorie(ByVal ConversionNumber As Double)
        ConversionSolution1 = (ConversionNumber * 641300)
        Text3.Text = ConversionSolution1
    End Sub
    Public Sub HorsepowerHrToKilowattHr(ByVal ConversionNumber As Double)
        ConversionSolution1 = (ConversionNumber * 0.7457)
        Text3.Text = ConversionSolution1
    End Sub
    Public Sub JouleToBTU(ByVal ConversionNumber As Double)
        ConversionSolution1 = (ConversionNumber / 1055.05585262)
        Text3.Text = ConversionSolution1
    End Sub
    Public Sub JouleToFtLb(ByVal ConversionNumber As Double)
        ConversionSolution1 = (ConversionNumber * 0.737562149277)
        Text3.Text = ConversionSolution1
    End Sub
    Public Sub JouleToHorsepowerHr(ByVal ConversionNumber As Double)
        ConversionSolution1 = (ConversionNumber / 2685000)
        Text3.Text = ConversionSolution1
    End Sub
    Public Sub JouleToCalorie(ByVal ConversionNumber As Double)
        ConversionSolution1 = (ConversionNumber * 0.238845896628)
        Text3.Text = ConversionSolution1
    End Sub
    Public Sub JouleToKilowattHr(ByVal ConversionNumber As Double)
        ConversionSolution1 = (ConversionNumber / 3600000)
        Text3.Text = ConversionSolution1
    End Sub
    Public Sub CalorieToBTU(ByVal ConversionNumber As Double)
        ConversionSolution1 = (ConversionNumber * 0.003968320719)
        Text3.Text = ConversionSolution1
    End Sub
    Public Sub CalorieToFtLb(ByVal ConversionNumber As Double)
        ConversionSolution1 = (ConversionNumber * 3.08802520659)
        Text3.Text = ConversionSolution1
    End Sub
    Public Sub CalorieToHorsepowerHr(ByVal ConversionNumber As Double)
        ConversionSolution1 = (ConversionNumber / 641300)
        Text3.Text = ConversionSolution1
    End Sub
    Public Sub CalorieToJoule(ByVal ConversionNumber As Double)
        ConversionSolution1 = (ConversionNumber * 4.1868)
        Text3.Text = ConversionSolution1
    End Sub
    Public Sub CalorieToKilowattHr(ByVal ConversionNumber As Double)
        ConversionSolution1 = (ConversionNumber / 859845.227859)
        Text3.Text = ConversionSolution1
    End Sub
    Public Sub KilowattHrToBTU(ByVal ConversionNumber As Double)
        ConversionSolution1 = (ConversionNumber * 3412.14163313)
        Text3.Text = ConversionSolution1
    End Sub
    Public Sub KilowattHrToFtLb(ByVal ConversionNumber As Double)
        ConversionSolution1 = (ConversionNumber * 2655223.7374)
        Text3.Text = ConversionSolution1
    End Sub
    Public Sub KilowattHrToHorsepowerHr(ByVal ConversionNumber As Double)
        ConversionSolution1 = (ConversionNumber * 1.341)
        Text3.Text = ConversionSolution1
    End Sub
    Public Sub KilowattHrToJoule(ByVal ConversionNumber As Double)
        ConversionSolution1 = (ConversionNumber * 3600000)
        Text3.Text = ConversionSolution1
    End Sub
    Public Sub KilowattHrToCalorie(ByVal ConversionNumber As Double)
        ConversionSolution1 = (ConversionNumber * 859845.227859)
        Text3.Text = ConversionSolution1
    End Sub
    Public Sub AtmToMmHg(ByVal ConversionNumber As Double)
        ConversionSolution1 = (ConversionNumber * 760)
        Text3.Text = ConversionSolution1
    End Sub
    Public Sub AtmToPascal(ByVal ConversionNumber As Double)
        ConversionSolution1 = (ConversionNumber * 101300)
        Text3.Text = ConversionSolution1
    End Sub
    Public Sub AtmToPSI(ByVal ConversionNumber As Double)
        ConversionSolution1 = (ConversionNumber * 14.6959487755)
        Text3.Text = ConversionSolution1
    End Sub
    Public Sub AtmToPSF(ByVal ConversionNumber As Double)
        ConversionSolution1 = (ConversionNumber * 2116)
        Text3.Text = ConversionSolution1
    End Sub
    Public Sub AtmToDynePerCm(ByVal ConversionNumber As Double)
        ConversionSolution1 = (ConversionNumber * 1013000)
        Text3.Text = ConversionSolution1
    End Sub
    Public Sub AtmToBar(ByVal ConversionNumber As Double)
        ConversionSolution1 = (ConversionNumber * 1.01325)
        Text3.Text = ConversionSolution1
    End Sub
    Public Sub MmHgToAtm(ByVal ConversionNumber As Double)
        ConversionSolution1 = (ConversionNumber * 0.001315789474)
        Text3.Text = ConversionSolution1
    End Sub
    Public Sub MmHgToPascal(ByVal ConversionNumber As Double)
        ConversionSolution1 = (ConversionNumber * 133.3)
        Text3.Text = ConversionSolution1
    End Sub
    Public Sub MmHgToPSI(ByVal ConversionNumber As Double)
        ConversionSolution1 = (ConversionNumber * 0.019336774705)
        Text3.Text = ConversionSolution1
    End Sub
    Public Sub MmHgToPSF(ByVal ConversionNumber As Double)
        ConversionSolution1 = (ConversionNumber * 2.785)
        Text3.Text = ConversionSolution1
    End Sub
    Public Sub MmHgToDynePerCm(ByVal ConversionNumber As Double)
        ConversionSolution1 = (ConversionNumber * 1333)
        Text3.Text = ConversionSolution1
    End Sub
    Public Sub MmHgToBar(ByVal ConversionNumber As Double)
        ConversionSolution1 = (ConversionNumber * 0.001333223684)
        Text3.Text = ConversionSolution1
    End Sub
    Public Sub PascalToAtm(ByVal ConversionNumber As Double)
        ConversionSolution1 = (ConversionNumber * 0.000009869)
        Text3.Text = ConversionSolution1
    End Sub
    Public Sub PascalToMmHg(ByVal ConversionNumber As Double)
        ConversionSolution1 = (ConversionNumber / 133.3)
        Text3.Text = ConversionSolution1
    End Sub
    Public Sub PascalToPSI(ByVal ConversionNumber As Double)
        ConversionSolution1 = (ConversionNumber * 0.000145)
        Text3.Text = ConversionSolution1
    End Sub
    Public Sub PascalToPSF(ByVal ConversionNumber As Double)
        ConversionSolution1 = (ConversionNumber * 0.02089)
        Text3.Text = ConversionSolution1
    End Sub
    Public Sub PascalToDynePerCm(ByVal ConversionNumber As Double)
        ConversionSolution1 = (ConversionNumber * 10)
        Text3.Text = ConversionSolution1
    End Sub
    Public Sub PascalToBar(ByVal ConversionNumber As Double)
        ConversionSolution1 = (ConversionNumber / 100000)
        Text3.Text = ConversionSolution1
    End Sub
    Public Sub PSIToAtm(ByVal ConversionNumber As Double)
        ConversionSolution1 = (ConversionNumber * 0.06804596391)
        Text3.Text = ConversionSolution1
    End Sub
    Public Sub PSIToMmHg(ByVal ConversionNumber As Double)
        ConversionSolution1 = (ConversionNumber * 51.7149325715)
        Text3.Text = ConversionSolution1
    End Sub
    Public Sub PSIToPascal(ByVal ConversionNumber As Double)
        ConversionSolution1 = (ConversionNumber * 6895)
        Text3.Text = ConversionSolution1
    End Sub
    Public Sub PSIToPSF(ByVal ConversionNumber As Double)
        ConversionSolution1 = (ConversionNumber * 144)
        Text3.Text = ConversionSolution1
    End Sub
    Public Sub PSIToDynePerCm(ByVal ConversionNumber As Double)
        ConversionSolution1 = (ConversionNumber * 68950)
        Text3.Text = ConversionSolution1
    End Sub
    Public Sub PSIToBar(ByVal ConversionNumber As Double)
        ConversionSolution1 = (ConversionNumber * 0.068947572932)
        Text3.Text = ConversionSolution1
    End Sub
    Public Sub PSFToAtm(ByVal ConversionNumber As Double)
        ConversionSolution1 = (ConversionNumber * 0.004725)
        Text3.Text = ConversionSolution1
    End Sub
    Public Sub PSFToMmHg(ByVal ConversionNumber As Double)
        ConversionSolution1 = (ConversionNumber * 0.3591)
        Text3.Text = ConversionSolution1
    End Sub
    Public Sub PSFToPascal(ByVal ConversionNumber As Double)
        ConversionSolution1 = (ConversionNumber * 47.88020833333)
        Text3.Text = ConversionSolution1
    End Sub
    Public Sub PSFToPSI(ByVal ConversionNumber As Double)
        ConversionSolution1 = (ConversionNumber * 0.006944444444)
        Text3.Text = ConversionSolution1
    End Sub
    Public Sub PSFToDynePerCm(ByVal ConversionNumber As Double)
        ConversionSolution1 = (ConversionNumber * 478.8020833)
        Text3.Text = ConversionSolution1
    End Sub
    Public Sub PSFToBar(ByVal ConversionNumber As Double)
        ConversionSolution1 = (ConversionNumber * 0.000478802083)
        Text3.Text = ConversionSolution1
    End Sub
    Public Sub DynePerCmToAtm(ByVal ConversionNumber As Double)
        ConversionSolution1 = (ConversionNumber * 0.0000009869)
        Text3.Text = ConversionSolution1
    End Sub
    Public Sub DynePerCmToMmHg(ByVal ConversionNumber As Double)
        ConversionSolution1 = (ConversionNumber * 0.0007501)
        Text3.Text = ConversionSolution1
    End Sub
    Public Sub DynePerCmToPascal(ByVal ConversionNumber As Double)
        ConversionSolution1 = (ConversionNumber * 0.1)
        Text3.Text = ConversionSolution1
    End Sub
    Public Sub DynePerCmToPSI(ByVal ConversionNumber As Double)
        ConversionSolution1 = (ConversionNumber * 0.00001405)
        Text3.Text = ConversionSolution1
    End Sub
    Public Sub DynePerCmToPSF(ByVal ConversionNumber As Double)
        ConversionSolution1 = (ConversionNumber * 0.002089)
        Text3.Text = ConversionSolution1
    End Sub
    Public Sub DynePerCmToBar(ByVal ConversionNumber As Double)
        ConversionSolution1 = ((ConversionNumber * 0.0000009869) * 1.01325)
        Text3.Text = ConversionSolution1
    End Sub
    Public Sub BarToAtm(ByVal ConversionNumber As Double)
        ConversionSolution1 = (ConversionNumber * 0.986923266716)
        Text3.Text = ConversionSolution1
    End Sub
    Public Sub BarToMmHg(ByVal ConversionNumber As Double)
        ConversionSolution1 = (ConversionNumber * 750.061682704)
        Text3.Text = ConversionSolution1
    End Sub
    Public Sub BarToPascal(ByVal ConversionNumber As Double)
        ConversionSolution1 = ((ConversionNumber * 0.986923266716) * 101300)
        Text3.Text = ConversionSolution1
    End Sub
    Public Sub BarToPSI(ByVal ConversionNumber As Double)
        ConversionSolution1 = (ConversionNumber * 14.503773773)
        Text3.Text = ConversionSolution1
    End Sub
    Public Sub BarToPSF(ByVal ConversionNumber As Double)
        ConversionSolution1 = ((ConversionNumber * 0.986923266716) * 2116)
        Text3.Text = ConversionSolution1
    End Sub
    Public Sub BarToDynePerCm(ByVal ConversionNumber As Double)
        ConversionSolution1 = ((ConversionNumber * 0.986923266716) * 1013000)
        Text3.Text = ConversionSolution1
    End Sub
    Public Sub FtLbToInLb(ByVal ConversionNumber As Double)
        ConversionSolution1 = (ConversionNumber * 12)
        Text3.Text = ConversionSolution1
    End Sub
    Public Sub FtLbToNm(ByVal ConversionNumber As Double)
        ConversionSolution1 = (ConversionNumber * 0.3048 * 4.448221615)
        Text3.Text = ConversionSolution1
    End Sub
    Public Sub InLbToFtLb(ByVal ConversionNumber As Double)
        ConversionSolution1 = (ConversionNumber / 12)
        Text3.Text = ConversionSolution1
    End Sub
    Public Sub InLbToNm(ByVal ConversionNumber As Double)
        ConversionSolution1 = ((ConversionNumber / 12) * 0.3048 * 4.448221615)
        Text3.Text = ConversionSolution1
    End Sub
    Public Sub NmToFtLb(ByVal ConversionNumber As Double)
        ConversionSolution1 = (ConversionNumber / (0.3048 * 4.448221615))
        Text3.Text = ConversionSolution1
    End Sub
    Public Sub NmToInLb(ByVal ConversionNumber As Double)
        ConversionSolution1 = ((ConversionNumber / (0.3048 * 4.448221615)) * 12)
        Text3.Text = ConversionSolution1
    End Sub
    Public Sub GramToKilogram(ByVal ConversionNumber As Double)
        ConversionSolution1 = (ConversionNumber * 0.001)
        Text3.Text = ConversionSolution1
 End Sub
    Public Sub GramToSlug(ByVal ConversionNumber As Double)
        ConversionSolution1 = (ConversionNumber / 14593.9029372)
        Text3.Text = ConversionSolution1
    End Sub
    Public Sub GramToOunce(ByVal ConversionNumber As Double)
        ConversionSolution1 = (ConversionNumber * 0.03527)
        Text3.Text = ConversionSolution1
    End Sub
    Public Sub GramToPound(ByVal ConversionNumber As Double)
        ConversionSolution1 = (ConversionNumber / 453.59237)
        Text3.Text = ConversionSolution1
    End Sub
    Public Sub KilogramToGram(ByVal ConversionNumber As Double)
        ConversionSolution1 = (ConversionNumber * 1000)
        Text3.Text = ConversionSolution1
    End Sub
    Public Sub KilogramToSlug(ByVal ConversionNumber As Double)
        ConversionSolution1 = (ConversionNumber * 0.068521765857)
        Text3.Text = ConversionSolution1
    End Sub
    Public Sub KilogramToOunce(ByVal ConversionNumber As Double)
        ConversionSolution1 = (ConversionNumber * 35.27)
        Text3.Text = ConversionSolution1
    End Sub
    Public Sub KilogramToPound(ByVal ConversionNumber As Double)
        ConversionSolution1 = (ConversionNumber * 2.20462262185)
        Text3.Text = ConversionSolution1
    End Sub
    Public Sub SlugToGram(ByVal ConversionNumber As Double)
        ConversionSolution1 = (ConversionNumber * 14593.9029372)
        Text3.Text = ConversionSolution1
    End Sub
    Public Sub SlugToKilogram(ByVal ConversionNumber As Double)
        ConversionSolution1 = (ConversionNumber * 14.5939029372)
        Text3.Text = ConversionSolution1
    End Sub
    Public Sub SlugToOunce(ByVal ConversionNumber As Double)
        ConversionSolution1 = (ConversionNumber * 514.8)
        Text3.Text = ConversionSolution1
    End Sub
    Public Sub SlugToPound(ByVal ConversionNumber As Double)
        ConversionSolution1 = (ConversionNumber * 32.1740485564)
        Text3.Text = ConversionSolution1
    End Sub
    Public Sub OunceToGram(ByVal ConversionNumber As Double)
        ConversionSolution1 = (ConversionNumber * 28.35)
        Text3.Text = ConversionSolution1
    End Sub
    Public Sub OunceToKilogram(ByVal ConversionNumber As Double)
        ConversionSolution1 = (ConversionNumber * 0.02835)
        Text3.Text = ConversionSolution1
    End Sub
    Public Sub OunceToSlug(ByVal ConversionNumber As Double)
        ConversionSolution1 = (ConversionNumber * 0.001943)
        Text3.Text = ConversionSolution1
    End Sub
    Public Sub OunceToPound(ByVal ConversionNumber As Double)
        ConversionSolution1 = (ConversionNumber * 0.0625)
        Text3.Text = ConversionSolution1
    End Sub
    Public Sub PoundToGram(ByVal ConversionNumber As Double)
        ConversionSolution1 = (ConversionNumber * 453.59237)
        Text3.Text = ConversionSolution1
    End Sub
    Public Sub PoundToKilogram(ByVal ConversionNumber As Double)
        ConversionSolution1 = (ConversionNumber * 0.45359237)
        Text3.Text = ConversionSolution1
    End Sub
    Public Sub PoundToSlug(ByVal ConversionNumber As Double)
        ConversionSolution1 = (ConversionNumber * 0.031080950172)
        Text3.Text = ConversionSolution1
    End Sub
    Public Sub PoundToOunce(ByVal ConversionNumber As Double)
        ConversionSolution1 = (ConversionNumber * 16)
        Text3.Text = ConversionSolution1
    End Sub
    Public Sub GramPerCubicCmToKgPerM(ByVal ConversionNumber As Double)
        ConversionSolution1 = (ConversionNumber * 1000)
        Text3.Text = ConversionSolution1
    End Sub
    Public Sub GramPerCubicCmToSlugPerFt(ByVal ConversionNumber As Double)
        ConversionSolution1 = (ConversionNumber * 1.94)
        Text3.Text = ConversionSolution1
    End Sub
    Public Sub GramPerCubicCmToLbPerFt(ByVal ConversionNumber As Double)
        ConversionSolution1 = (ConversionNumber * 62.43)
        Text3.Text = ConversionSolution1
    End Sub
    Public Sub GramPerCubicCmToLbPerIn(ByVal ConversionNumber As Double)
        ConversionSolution1 = (ConversionNumber * 0.03613)
        Text3.Text = ConversionSolution1
    End Sub
    Public Sub KilogramPerCubicMToGramPerCm(ByVal ConversionNumber As Double)
        ConversionSolution1 = (ConversionNumber * 0.001)
        Text3.Text = ConversionSolution1
    End Sub
    Public Sub KilogramPerCubicMToSlugPerFt(ByVal ConversionNumber As Double)
        ConversionSolution1 = (ConversionNumber * 0.00194)
        Text3.Text = ConversionSolution1
    End Sub
    Public Sub KilogramPerCubicMToLbPerFt(ByVal ConversionNumber As Double)
        ConversionSolution1 = (ConversionNumber * 0.06243)
        Text3.Text = ConversionSolution1
    End Sub
    Public Sub KilogramPerCubicMToLbPerIn(ByVal ConversionNumber As Double)
        ConversionSolution1 = (ConversionNumber * 0.00003613)
        Text3.Text = ConversionSolution1
    End Sub
    Public Sub SlugPerCubicFootToGramPerCm(ByVal ConversionNumber As Double)
        ConversionSolution1 = (ConversionNumber * 0.5154)
        Text3.Text = ConversionSolution1
    End Sub
    Public Sub SlugPerCubicFootToKgPerM(ByVal ConversionNumber As Double)
        ConversionSolution1 = (ConversionNumber * 515.4)
        Text3.Text = ConversionSolution1
    End Sub
    Public Sub SlugPerCubicFootToLbPerFt(ByVal ConversionNumber As Double)
        ConversionSolution1 = (ConversionNumber * 32.17)
        Text3.Text = ConversionSolution1
    End Sub
    Public Sub SlugPerCubicFootToLbPerIn(ByVal ConversionNumber As Double)
        ConversionSolution1 = (ConversionNumber * 0.01862)
        Text3.Text = ConversionSolution1
    End Sub
    Public Sub PoundPerCubicFootToGramPerCm(ByVal ConversionNumber As Double)
        ConversionSolution1 = (ConversionNumber * 0.1602)
        Text3.Text = ConversionSolution1
    End Sub
    Public Sub PoundPerCubicFootToKgPerM(ByVal ConversionNumber As Double)
        ConversionSolution1 = (ConversionNumber * 16.02)
        Text3.Text = ConversionSolution1
    End Sub
    Public Sub PoundPerCubicFootToSlugPerFt(ByVal ConversionNumber As Double)
        ConversionSolution1 = (ConversionNumber * 0.03108)
        Text3.Text = ConversionSolution1
    End Sub
    Public Sub PoundPerCubicFootToLbPerIn(ByVal ConversionNumber As Double)
        ConversionSolution1 = (ConversionNumber * 0.0005787)
        Text3.Text = ConversionSolution1
    End Sub
    Public Sub PoundPerCubicInchToGramPerCm(ByVal ConversionNumber As Double)
        ConversionSolution1 = (ConversionNumber * 27.68)
        Text3.Text = ConversionSolution1
    End Sub
    Public Sub PoundPerCubicInchToKgPerM(ByVal ConversionNumber As Double)
        ConversionSolution1 = (ConversionNumber * 27680)
        Text3.Text = ConversionSolution1
    End Sub
    Public Sub PoundPerCubicInchToSlugPerFt(ByVal ConversionNumber As Double)
        ConversionSolution1 = (ConversionNumber * 53.71)
        Text3.Text = ConversionSolution1
    End Sub
    Public Sub PoundPerCubicInchToLbPerFt(ByVal ConversionNumber As Double)
        ConversionSolution1 = (ConversionNumber * 1728)
        Text3.Text = ConversionSolution1
    End Sub
    Public Sub FeetPerSecToKmPerHr(ByVal ConversionNumber As Double)
        ConversionSolution1 = (ConversionNumber * 1.09728)
        Text3.Text = ConversionSolution1
    End Sub
    Public Sub FeetPerSecToMeterPerSec(ByVal ConversionNumber As Double)
        ConversionSolution1 = (ConversionNumber * 0.3048)
        Text3.Text = ConversionSolution1
End Sub
Public Sub FeetPerSecToMilPerHr(ByVal ConversionNumber As Double)
        ConversionSolution1 = (ConversionNumber * 0.681818181818182)
        Text3.Text = ConversionSolution1
    End Sub
    Public Sub FeetPerSecToKnots(ByVal ConversionNumber As Double)
        ConversionSolution1 = (ConversionNumber * 0.592483801296)
        Text3.Text = ConversionSolution1
    End Sub
    Public Sub KilometerPerHrToFtPerSec(ByVal ConversionNumber As Double)
        ConversionSolution1 = (ConversionNumber * 0.911344415281)
        Text3.Text = ConversionSolution1
    End Sub
    Public Sub KilometerPerHrToMeterPerSec(ByVal ConversionNumber As Double)
        ConversionSolution1 = (ConversionNumber * 0.277777777778)
        Text3.Text = ConversionSolution1
    End Sub
    Public Sub KilometerPerHrToMilPerHr(ByVal ConversionNumber As Double)
        ConversionSolution1 = (ConversionNumber * 0.621371192237)
        Text3.Text = ConversionSolution1
    End Sub
    Public Sub KilometerPerHrToKnots(ByVal ConversionNumber As Double)
        ConversionSolution1 = (ConversionNumber * 0.539956803456)
        Text3.Text = ConversionSolution1
    End Sub
    Public Sub MetersPerSecToFtPerSec(ByVal ConversionNumber As Double)
        ConversionSolution1 = (ConversionNumber * 3.28083989501)
        Text3.Text = ConversionSolution1
    End Sub
    Public Sub MetersPerSecToKmPerHr(ByVal ConversionNumber As Double)
        ConversionSolution1 = (ConversionNumber * 3.6)
        Text3.Text = ConversionSolution1
    End Sub
    Public Sub MetersPerSecToMilPerHr(ByVal ConversionNumber As Double)
        ConversionSolution1 = (ConversionNumber * 2.23693629205)
        Text3.Text = ConversionSolution1
    End Sub
    Public Sub MetersPerSecToKnots(ByVal ConversionNumber As Double)
        ConversionSolution1 = (ConversionNumber * 1.94384449244)
        Text3.Text = ConversionSolution1
    End Sub
    Public Sub MilesPerHrToFtPerSec(ByVal ConversionNumber As Double)
        ConversionSolution1 = (ConversionNumber * 1.466666666667)
        Text3.Text = ConversionSolution1
    End Sub
    Public Sub MilesPerHrToKmPerHr(ByVal ConversionNumber As Double)
        ConversionSolution1 = (ConversionNumber * 1.609344)
        Text3.Text = ConversionSolution1
    End Sub
    Public Sub MilesPerHrToMetersPerSec(ByVal ConversionNumber As Double)
        ConversionSolution1 = (ConversionNumber * 0.44704)
        Text3.Text = ConversionSolution1
    End Sub
    Public Sub MilesPerHrToKnot(ByVal ConversionNumber As Double)
        ConversionSolution1 = (ConversionNumber * 0.868976241901)
        Text3.Text = ConversionSolution1
    End Sub
    Public Sub KnotsToFtPerSec(ByVal ConversionNumber As Double)
        ConversionSolution1 = (ConversionNumber * 1.6878098571)
        Text3.Text = ConversionSolution1
    End Sub
    Public Sub KnotsToKmPerHr(ByVal ConversionNumber As Double)
        ConversionSolution1 = (ConversionNumber * 1.852)
        Text3.Text = ConversionSolution1
    End Sub
    Public Sub KnotsToMetersPerSec(ByVal ConversionNumber As Double)
        ConversionSolution1 = (ConversionNumber * 0.514444444444)
        Text3.Text = ConversionSolution1
    End Sub
    Public Sub KnotsToMilPerHr(ByVal ConversionNumber As Double)
        ConversionSolution1 = (ConversionNumber * 1.15077944802)
        Text3.Text = ConversionSolution1
    End Sub
    Public Sub DegreeToMinute(ByVal ConversionNumber As Double)
        ConversionSolution1 = (ConversionNumber * 60)
        Text3.Text = ConversionSolution1
    End Sub
    Public Sub DegreeToSecond(ByVal ConversionNumber As Double)
        ConversionSolution1 = (ConversionNumber * 3600)
        Text3.Text = ConversionSolution1
    End Sub
    Public Sub DegreeToRadian(ByVal ConversionNumber As Double)
        ConversionSolution1 = (ConversionNumber * (3.14 / 180))
        Text3.Text = ConversionSolution1
    End Sub
    Public Sub DegreeToRevolution(ByVal ConversionNumber As Double)
        ConversionSolution1 = (ConversionNumber / 360)
        Text3.Text = ConversionSolution1
    End Sub
    Public Sub AngleMinuteToDegree(ByVal ConversionNumber As Double)
        ConversionSolution1 = (ConversionNumber / 60)
        Text3.Text = ConversionSolution1
    End Sub
    Public Sub AngleMinuteToSecond(ByVal ConversionNumber As Double)
        ConversionSolution1 = (ConversionNumber * 60)
        Text3.Text = ConversionSolution1
    End Sub
    Public Sub AngleMinuteToRadian(ByVal ConversionNumber As Double)
        ConversionSolution1 = (ConversionNumber * 0.0002909)
        Text3.Text = ConversionSolution1
    End Sub
    Public Sub AngleMinuteToRevolution(ByVal ConversionNumber As Double)
        ConversionSolution1 = ((ConversionNumber / 60) / 360)
        Text3.Text = ConversionSolution1
    End Sub
    Public Sub AngleSecondToDegree(ByVal ConversionNumber As Double)
        ConversionSolution1 = (ConversionNumber / 3600)
        Text3.Text = ConversionSolution1
    End Sub
    Public Sub AngleSecondToMinute(ByVal ConversionNumber As Double)
        ConversionSolution1 = (ConversionNumber / 60)
        Text3.Text = ConversionSolution1
    End Sub
    Public Sub AngleSecondToRadian(ByVal ConversionNumber As Double)
        ConversionSolution1 = (ConversionNumber * 0.000004848)
        Text3.Text = ConversionSolution1
    End Sub
    Public Sub AngleSecondToRevolution(ByVal ConversionNumber As Double)
        ConversionSolution1 = ((ConversionNumber / 3600) / 360)
        Text3.Text = ConversionSolution1
    End Sub
    Public Sub RadianToDegree(ByVal ConversionNumber As Double)
        ConversionSolution1 = (ConversionNumber * (180 / 3.14))
        Text3.Text = ConversionSolution1
    End Sub
    Public Sub RadianToMinute(ByVal ConversionNumber As Double)
        ConversionSolution1 = (ConversionNumber * 3438)
        Text3.Text = ConversionSolution1
    End Sub
    Public Sub RadianToSecond(ByVal ConversionNumber As Double)
        ConversionSolution1 = (ConversionNumber * 206300)
        Text3.Text = ConversionSolution1
    End Sub
    Public Sub RadianToRevolution(ByVal ConversionNumber As Double)
        ConversionSolution1 = (ConversionNumber * 0.1592)
        Text3.Text = ConversionSolution1
    End Sub
    Public Sub RevolutionToDegree(ByVal ConversionNumber As Double)
        ConversionSolution1 = (ConversionNumber * 360)
        Text3.Text = ConversionSolution1
    End Sub
    Public Sub RevolutionToMinute(ByVal ConversionNumber As Double)
        ConversionSolution1 = ((ConversionNumber * 360) * 60)
        Text3.Text = ConversionSolution1
    End Sub
    Public Sub RevolutionToSecond(ByVal ConversionNumber As Double)
        ConversionSolution1 = ((ConversionNumber * 360) * 3600)
        Text3.Text = ConversionSolution1
    End Sub
    Public Sub RevolutionToRadian(ByVal ConversionNumber As Double)
        ConversionSolution1 = (ConversionNumber * 6.283)
        Text3.Text = ConversionSolution1
    End Sub
    Public Sub YearToMonth(ByVal ConversionNumber As Double)
        ConversionSolution1 = (ConversionNumber * 12)
        Text3.Text = ConversionSolution1
    End Sub
    Public Sub YearToWeek(ByVal ConversionNumber As Double)
        ConversionSolution1 = (ConversionNumber * 52.177)
        Text3.Text = ConversionSolution1
    End Sub
    Public Sub YearToDay(ByVal ConversionNumber As Double)
        ConversionSolution1 = (ConversionNumber * 365.242)
        Text3.Text = ConversionSolution1
    End Sub
    Public Sub YearToHour(ByVal ConversionNumber As Double)
        ConversionSolution1 = ((ConversionNumber * 365.242) * 24)
        Text3.Text = ConversionSolution1
    End Sub
    Public Sub YearToMinute(ByVal ConversionNumber As Double)
        ConversionSolution1 = ((ConversionNumber * 52.177) * (24 * 60))
        Text3.Text = ConversionSolution1
    End Sub
    Public Sub YearToSecond(ByVal ConversionNumber As Double)
        ConversionSolution1 = ((ConversionNumber * 52.177) * (24 * 60 * 60))
        Text3.Text = ConversionSolution1
    End Sub
    Public Sub MonthToYear(ByVal ConversionNumber As Double)
        ConversionSolution1 = (ConversionNumber / 12)
        Text3.Text = ConversionSolution1
    End Sub
    Public Sub MonthToWeek(ByVal ConversionNumber As Double)
        ConversionSolution1 = (ConversionNumber * 4.36)
        Text3.Text = ConversionSolution1
    End Sub
    Public Sub MonthToDay(ByVal ConversionNumber As Double)
        ConversionSolution1 = (ConversionNumber * 30.5)
        Text3.Text = ConversionSolution1
    End Sub
    Public Sub MonthToHour(ByVal ConversionNumber As Double)
        ConversionSolution1 = ((ConversionNumber * 30.5) * 24)
        Text3.Text = ConversionSolution1
    End Sub
    Public Sub MonthToMinute(ByVal ConversionNumber As Double)
        ConversionSolution1 = ((ConversionNumber * 30.5) * (24 * 60))
        Text3.Text = ConversionSolution1
    End Sub
    Public Sub MonthToSecond(ByVal ConversionNumber As Double)
        ConversionSolution1 = ((ConversionNumber * 30.5) * (24 * 60 * 60))
        Text3.Text = ConversionSolution1
    End Sub
    Public Sub WeekToYear(ByVal ConversionNumber As Double)
        ConversionSolution1 = (ConversionNumber / 52.177)
        Text3.Text = ConversionSolution1
    End Sub
    Public Sub WeekToMonth(ByVal ConversionNumber As Double)
        ConversionSolution1 = (ConversionNumber / 4.36)
        Text3.Text = ConversionSolution1
    End Sub
    Public Sub WeekToDay(ByVal ConversionNumber As Double)
        ConversionSolution1 = (ConversionNumber * 7)
        Text3.Text = ConversionSolution1
    End Sub
    Public Sub WeekToHour(ByVal ConversionNumber As Double)
        ConversionSolution1 = (ConversionNumber * (7 * 24))
        Text3.Text = ConversionSolution1
    End Sub
    Public Sub WeekToMinute(ByVal ConversionNumber As Double)
        ConversionSolution1 = (ConversionNumber * (7 * 24 * 60))
        Text3.Text = ConversionSolution1
    End Sub
    Public Sub WeekToSecond(ByVal ConversionNumber As Double)
        ConversionSolution1 = (ConversionNumber * (7 * 24 * 60 * 60))
        Text3.Text = ConversionSolution1
    End Sub
    Public Sub DayToYear(ByVal ConversionNumber As Double)
        ConversionSolution1 = (ConversionNumber / 365.242)
        Text3.Text = ConversionSolution1
    End Sub
    Public Sub DayToMonth(ByVal ConversionNumber As Double)
        ConversionSolution1 = (ConversionNumber / 30.5)
        Text3.Text = ConversionSolution1
    End Sub
    Public Sub DayToWeek(ByVal ConversionNumber As Double)
        ConversionSolution1 = (ConversionNumber / 7)
        Text3.Text = ConversionSolution1
    End Sub
    Public Sub DayToHour(ByVal ConversionNumber As Double)
        ConversionSolution1 = (ConversionNumber * 24)
        Text3.Text = ConversionSolution1
    End Sub
    Public Sub DayToMinute(ByVal ConversionNumber As Double)
        ConversionSolution1 = (ConversionNumber * (24 * 60))
        Text3.Text = ConversionSolution1
    End Sub
    Public Sub DayToSecond(ByVal ConversionNumber As Double)
        ConversionSolution1 = (ConversionNumber * (24 * 60 * 60))
        Text3.Text = ConversionSolution1
    End Sub
    Public Sub HourToYear(ByVal ConversionNumber As Double)
        ConversionSolution1 = (ConversionNumber / (365.242 * 24))
        Text3.Text = ConversionSolution1
    End Sub
    Public Sub HourToMonth(ByVal ConversionNumber As Double)
        ConversionSolution1 = (ConversionNumber / (30.5 * 24))
        Text3.Text = ConversionSolution1
    End Sub
    Public Sub HourToWeek(ByVal ConversionNumber As Double)
        ConversionSolution1 = (ConversionNumber / (7 * 24))
        Text3.Text = ConversionSolution1
    End Sub
    Public Sub HourToDay(ByVal ConversionNumber As Double)
        ConversionSolution1 = (ConversionNumber / 24)
        Text3.Text = ConversionSolution1
    End Sub
    Public Sub HourToMinute(ByVal ConversionNumber As Double)
        ConversionSolution1 = (ConversionNumber * 60)
        Text3.Text = ConversionSolution1
    End Sub
    Public Sub HourToSecond(ByVal ConversionNumber As Double)
        ConversionSolution1 = (ConversionNumber * 3600)
        Text3.Text = ConversionSolution1
    End Sub
    Public Sub MinuteToYear(ByVal ConversionNumber As Double)
        ConversionSolution1 = (ConversionNumber / (365.242 * 24 * 60))
        Text3.Text = ConversionSolution1
    End Sub
    Public Sub MinuteToMonth(ByVal ConversionNumber As Double)
        ConversionSolution1 = (ConversionNumber / (30.5 * 24 * 60))
        Text3.Text = ConversionSolution1
    End Sub
    Public Sub MinuteToWeek(ByVal ConversionNumber As Double)
        ConversionSolution1 = (ConversionNumber / (7 * 24 * 60))
        Text3.Text = ConversionSolution1
    End Sub
    Public Sub MinuteToDay(ByVal ConversionNumber As Double)
        ConversionSolution1 = (ConversionNumber / (24 * 60))
        Text3.Text = ConversionSolution1
    End Sub
    Public Sub MinuteToHour(ByVal ConversionNumber As Double)
        ConversionSolution1 = (ConversionNumber / 60)
        Text3.Text = ConversionSolution1
    End Sub
    Public Sub MinuteToSecond(ByVal ConversionNumber As Double)
        ConversionSolution1 = (ConversionNumber * 60)
        Text3.Text = ConversionSolution1
    End Sub
    Public Sub SecondToYear(ByVal ConversionNumber As Double)
        ConversionSolution1 = (ConversionNumber / (365.242 * 24 * 60 * 60))
        Text3.Text = ConversionSolution1
    End Sub
    Public Sub SecondToMonth(ByVal ConversionNumber As Double)
        ConversionSolution1 = (ConversionNumber / (30.5 * 24 * 60 * 60))
        Text3.Text = ConversionSolution1
    End Sub
    Public Sub SecondToWeek(ByVal ConversionNumber As Double)
        ConversionSolution1 = (ConversionNumber / (7 * 24 * 60 * 60))
        Text3.Text = ConversionSolution1
    End Sub
    Public Sub SecondToDay(ByVal ConversionNumber As Double)
        ConversionSolution1 = (ConversionNumber / (24 * 60 * 60))
        Text3.Text = ConversionSolution1
    End Sub
    Public Sub SecondToHour(ByVal ConversionNumber As Double)
        ConversionSolution1 = (ConversionNumber / 3600)
        Text3.Text = ConversionSolution1
    End Sub
    Public Sub SecondToMinute(ByVal ConversionNumber As Double)
        ConversionSolution1 = (ConversionNumber / 60)
        Text3.Text = ConversionSolution1
    End Sub
    Public Sub DegreeFToDegreeC(ByVal ConversionNumber As Double)
        ConversionSolution1 = ((ConversionNumber - 32) / 1.8)
        Text3.Text = ConversionSolution1
    End Sub
    Public Sub DegreeFToDegreeK(ByVal ConversionNumber As Double)
        ConversionSolution1 = (((ConversionNumber - 32) / 1.8) + 273.15)
        Text3.Text = ConversionSolution1
    End Sub
    Public Sub DegreeCToDegreeF(ByVal ConversionNumber As Double)
        ConversionSolution1 = ((ConversionNumber * 1.8) + 32)
        Text3.Text = ConversionSolution1
    End Sub
    Public Sub DegreeCToDegreeK(ByVal ConversionNumber As Double)
        ConversionSolution1 = (ConversionNumber + 273.15)
        Text3.Text = ConversionSolution1
    End Sub
    Public Sub DegreeKToDegreeF(ByVal ConversionNumber As Double)
        ConversionSolution1 = (((ConversionNumber - 273.15) * 1.8) + 32)
        Text3.Text = ConversionSolution1
    End Sub
    Public Sub DegreeKToDegreeC(ByVal ConversionNumber As Double)
        ConversionSolution1 = (ConversionNumber - 273.15)
        Text3.Text = ConversionSolution1
    End Sub





Function conversion(st As Integer, ByVal Conversion1 As Integer, ByVal Conversion2 As Integer)
On Error GoTo errhan:
Select Case st
            Case Is = 0 ' Length
                Select Case Conversion1
                    Case Is = 0
                        Select Case Conversion2
                            Case Is = 0
                                ConversionSolution1 = Val(Text2.Text)
                                Text3.Text = ConversionSolution1
                            Case Is = 1
                                MeterToKilometers (Val(Text2.Text))
                            Case Is = 2
                                MeterToCentimeters (Val(Text2.Text))
                            Case Is = 3
                                MeterToMillimeters (Val(Text2.Text))
                            Case Is = 4
                                MeterToFeet (Val(Text2.Text))
                            Case Is = 5
                                MeterToInches (Val(Text2.Text))
                            Case Is = 6
                                MeterToYards (Val(Text2.Text))
                            Case Is = 7
                                MeterToMiles (Val(Text2.Text))
                            Case Is = 8
                                MeterToNMiles (Val(Text2.Text))
                        End Select
                    Case Is = 1
                        Select Case Conversion2
                            Case Is = 0
                                KilometerToMeters (Val(Text2.Text))
                            Case Is = 1
                                ConversionSolution1 = (Val(Text2.Text))
                                Text3.Text = ConversionSolution1
                            Case Is = 2
                                KilometerToCentimeters (Val(Text2.Text))
                            Case Is = 3
                                KilometerToMillimeters (Val(Text2.Text))
                            Case Is = 4
                                KilometerToFeet (Val(Text2.Text))
                            Case Is = 5
                                KilometerToInches (Val(Text2.Text))
                            Case Is = 6
                                KilometerToYards (Val(Text2.Text))
                            Case Is = 7
                                KilometerToMiles (Val(Text2.Text))
                            Case Is = 8
                                KilometerToNMiles (Val(Text2.Text))
                        End Select
                    Case Is = 2
                        Select Case Conversion2
                            Case Is = 0
                                CentimeterToMeters (Val(Text2.Text))
                            Case Is = 1
                                CentimeterToKilometers (Val(Text2.Text))
                            Case Is = 2
                                ConversionSolution1 = (Val(Text2.Text))
                                Text3.Text = ConversionSolution1
                            Case Is = 3
                                CentimeterToMillimeters (Val(Text2.Text))
                            Case Is = 4
                                CentimeterToFeet (Val(Text2.Text))
                            Case Is = 5
                                CentimeterToInches (Val(Text2.Text))
                            Case Is = 6
                                CentimeterToYards (Val(Text2.Text))
                            Case Is = 7
                                CentimeterToMiles (Val(Text2.Text))
                            Case Is = 8
                                CentimeterToNMiles (Val(Text2.Text))
                        End Select
                    Case Is = 3
                        Select Case Conversion2
                            Case Is = 0
                                MillimeterToMeters (Val(Text2.Text))
                            Case Is = 1
                                MillimeterTokilometers (Val(Text2.Text))
                            Case Is = 2
                                MillimeterToCentimeters (Val(Text2.Text))
                            Case Is = 3
                                ConversionSolution1 = (Val(Text2.Text))
                                Text3.Text = ConversionSolution1
                            Case Is = 4
                                MillimeterToFeet (Val(Text2.Text))
                            Case Is = 5
                                MillimeterToInches (Val(Text2.Text))
                            Case Is = 6
                                MillimeterToYards (Val(Text2.Text))
                            Case Is = 7
                                MillimeterToMiles (Val(Text2.Text))
                            Case Is = 8
                                MillimeterToNMiles (Val(Text2.Text))
                        End Select
                    Case Is = 4
                        Select Case Conversion2
                            Case Is = 0
                                FeetToMeters (Val(Text2.Text))
                            Case Is = 1
                                FeetToKilometers (Val(Text2.Text))
                            Case Is = 2
                                FeetToCentimeters (Val(Text2.Text))
                            Case Is = 3
                                FeetToMillimeters (Val(Text2.Text))
                            Case Is = 4
                                ConversionSolution1 = (Val(Text2.Text))
                                Text3.Text = ConversionSolution1
                            Case Is = 5
                                FeetToInches (Val(Text2.Text))
                            Case Is = 6
                                FeetToYards (Val(Text2.Text))
                            Case Is = 7
                                FeetToMiles (Val(Text2.Text))
                            Case Is = 8
                                FeetToNMiles (Val(Text2.Text))
                        End Select
                    Case Is = 5
                        Select Case Conversion2
                            Case Is = 0
                                InchToMeters (Val(Text2.Text))
                            Case Is = 1
                                InchToKilometers (Val(Text2.Text))
                            Case Is = 2
                                InchToCentimeters (Val(Text2.Text))
                            Case Is = 3
                                InchToMillimeters (Val(Text2.Text))
                            Case Is = 4
                                InchToFeet (Val(Text2.Text))
                            Case Is = 5
                                ConversionSolution1 = (Val(Text2.Text))
                                Text3.Text = ConversionSolution1
                            Case Is = 6
                                InchToYards (Val(Text2.Text))
                            Case Is = 7
                                InchToMiles (Val(Text2.Text))
                            Case Is = 8
                                InchToNMiles (Val(Text2.Text))
                        End Select
                    Case Is = 6
                        Select Case Conversion2
                            Case Is = 0
                                YardToMeters (Val(Text2.Text))
                            Case Is = 1
                                YardToKilometers (Val(Text2.Text))
                            Case Is = 2
                                YardToCentimeters (Val(Text2.Text))
                            Case Is = 3
                                YardToMillimeters (Val(Text2.Text))
                            Case Is = 4
                                YardToFeet (Val(Text2.Text))
                            Case Is = 5
                                YardToInches (Val(Text2.Text))
                            Case Is = 6
                                ConversionSolution1 = (Val(Text2.Text))
                                Text3.Text = ConversionSolution1
                            Case Is = 7
                                YardToMiles (Val(Text2.Text))
                            Case Is = 8
                                YardToNMiles (Val(Text2.Text))
                        End Select
                    Case Is = 7
                        Select Case Conversion2
                            Case Is = 0
                                MileToMeters (Val(Text2.Text))
                            Case Is = 1
                                MileToKilometers (Val(Text2.Text))
                            Case Is = 2
                                MileToCentimeters (Val(Text2.Text))
                            Case Is = 3
                                MileToMillimeters (Val(Text2.Text))
                            Case Is = 4
                                MileToFeet (Val(Text2.Text))
                            Case Is = 5
                                MileToInches (Val(Text2.Text))
                            Case Is = 6
                                MileToYards (Val(Text2.Text))
                            Case Is = 7
                                ConversionSolution1 = (Val(Text2.Text))
                                Text3.Text = ConversionSolution1
                            Case Is = 8
                                MileToNMiles (Val(Text2.Text))
                        End Select
                    Case Is = 8
                        Select Case Conversion2
                            Case Is = 0
                                NMileToMeters (Val(Text2.Text))
                            Case Is = 1
                                NMileToKilometers (Val(Text2.Text))
                            Case Is = 2
                                NMileToCentimeters (Val(Text2.Text))
                            Case Is = 3
                                NMileToMillimeters (Val(Text2.Text))
                            Case Is = 4
                                NMileToFeet (Val(Text2.Text))
                            Case Is = 5
                                NMileToInches (Val(Text2.Text))
                            Case Is = 6
                                NMileToYards (Val(Text2.Text))
                            Case Is = 7
                                NMileToMiles (Val(Text2.Text))
                            Case Is = 8
                                ConversionSolution1 = (Val(Text2.Text))
                                   Text3.Text = ConversionSolution1
                        End Select
                End Select
            Case Is = 1 ' Area
                Select Case Conversion1
                    Case Is = 0
                        Select Case Conversion2
                            Case Is = 0
                                ConversionSolution1 = (Val(Text2.Text))
                                Text3.Text = ConversionSolution1
                            Case Is = 1
                                SquareMeterToSquareKilometers (Val(Text2.Text))
                            Case Is = 2
                                SquareMeterToSquareCentimeters (Val(Text2.Text))
                            Case Is = 3
                                SquareMeterToSquareMillimeters (Val(Text2.Text))
                            Case Is = 4
                                SquareMeterToSquareFeet (Val(Text2.Text))
                            Case Is = 5
                                SquareMeterToSquareInches (Val(Text2.Text))
                            Case Is = 6
                                SquareMeterToSquareYards (Val(Text2.Text))
                            Case Is = 7
                                SquareMeterToSquareMiles (Val(Text2.Text))
                            Case Is = 8
                                SquareMeterToAcres (Val(Text2.Text))
                        End Select
                    Case Is = 1
                        Select Case Conversion2
                            Case Is = 0
                                SquareKilometerToSquareMeters (Val(Text2.Text))
                            Case Is = 1
                                ConversionSolution1 = (Val(Text2.Text))
                                Text3.Text = ConversionSolution1
                            Case Is = 2
                                SquareKilometerToSquareCentimeters (Val(Text2.Text))
                            Case Is = 3
                                SquareKilometerToSquareMillimeters (Val(Text2.Text))
                            Case Is = 4
                                SquareKilometerToSquareFeet (Val(Text2.Text))
                            Case Is = 5
                                SquareKilometerToSquareInches (Val(Text2.Text))
                            Case Is = 6
                                SquareKilometerToSquareYards (Val(Text2.Text))
                            Case Is = 7
                                SquareKilometerToSquareMiles (Val(Text2.Text))
                            Case Is = 8
                                SquareKilometerToAcres (Val(Text2.Text))
                        End Select
                    Case Is = 2
                        Select Case Conversion2
                            Case Is = 0
                                SquareCentimeterToSquareMeters (Val(Text2.Text))
                            Case Is = 1
                                SquareCentimeterToSquareKilometers (Val(Text2.Text))
                            Case Is = 2
                                ConversionSolution1 = (Val(Text2.Text))
                                Text3.Text = ConversionSolution1
                            Case Is = 3
                                SquareCentimeterToSquareMillimeters (Val(Text2.Text))
                            Case Is = 4
                                SquareCentimeterToSquareFeet (Val(Text2.Text))
                            Case Is = 5
                                SquareCentimeterToSquareInches (Val(Text2.Text))
                            Case Is = 6
                                SquareCentimeterToSquareYards (Val(Text2.Text))
                            Case Is = 7
                                SquareCentimeterToSquareMiles (Val(Text2.Text))
                            Case Is = 8
                                SquareCentimeterToAcres (Val(Text2.Text))
                        End Select
                    Case Is = 3
                        Select Case Conversion2
                            Case Is = 0
                                SquareMillimeterToSquareMeters (Val(Text2.Text))
                            Case Is = 1
                                SquareMillimeterToSquareKilometers (Val(Text2.Text))
                            Case Is = 2
                                SquareMillimeterToSquareCentimeters (Val(Text2.Text))
                            Case Is = 3
                                ConversionSolution1 = (Val(Text2.Text))
                                Text3.Text = ConversionSolution1
                            Case Is = 4
                                SquareMillimeterToSquareFeet (Val(Text2.Text))
                            Case Is = 5
                                SquareMillimeterToSquareInches (Val(Text2.Text))
                            Case Is = 6
                                SquareMillimeterToSquareYards (Val(Text2.Text))
                            Case Is = 7
                                SquareMillimeterToSquareMiles (Val(Text2.Text))
                            Case Is = 8
                                SquareMillimeterToAcres (Val(Text2.Text))
                        End Select
                    Case Is = 4
                        Select Case Conversion2
                            Case Is = 0
                                SquareFeetToSquareMeters (Val(Text2.Text))
                            Case Is = 1
                                SquareFeetToSquareKilometers (Val(Text2.Text))
                            Case Is = 2
                                SquareFeetToSquareCentimeters (Val(Text2.Text))
                            Case Is = 3
                                SquareFeetToSquareMillimeters (Val(Text2.Text))
                            Case Is = 4
                                ConversionSolution1 = (Val(Text2.Text))
                                Text3.Text = ConversionSolution1
                            Case Is = 5
                                SquareFeetToSquareInches (Val(Text2.Text))
                            Case Is = 6
                                SquareFeetToSquareYards (Val(Text2.Text))
                            Case Is = 7
                                SquareFeetToSquareMiles (Val(Text2.Text))
                            Case Is = 8
                                SquareFeetToAcres (Val(Text2.Text))
                        End Select
                    Case Is = 5
                        Select Case Conversion2
                            Case Is = 0
                                SquareInchToMeters (Val(Text2.Text))
                            Case Is = 1
                                SquareInchToKilometers (Val(Text2.Text))
                            Case Is = 2
                                SquareInchToCentimeters (Val(Text2.Text))
                            Case Is = 3
                                SquareInchToMillimeters (Val(Text2.Text))
                            Case Is = 4
                                SquareInchToFeet (Val(Text2.Text))
                            Case Is = 5
                                ConversionSolution1 = (Val(Text2.Text))
                                Text3.Text = ConversionSolution1
                            Case Is = 6
                                SquareInchToYards (Val(Text2.Text))
                            Case Is = 7
                                SquareInchToMiles (Val(Text2.Text))
                            Case Is = 8
                                SquareInchToAcres (Val(Text2.Text))
                        End Select
                    Case Is = 6
                        Select Case Conversion2
                            Case Is = 0
                                SquareYardToMeters (Val(Text2.Text))
                            Case Is = 1
                                SquareYardToKilometers (Val(Text2.Text))
                            Case Is = 2
                                SquareYardToCentimeters (Val(Text2.Text))
                            Case Is = 3
                                SquareYardToMillimeters (Val(Text2.Text))
                            Case Is = 4
                                SquareYardToFeet (Val(Text2.Text))
                            Case Is = 5
                                SquareYardToInches (Val(Text2.Text))
                            Case Is = 6
                                ConversionSolution1 = (Val(Text2.Text))
                                Text3.Text = ConversionSolution1
                            Case Is = 7
                                SquareYardToMiles (Val(Text2.Text))
                            Case Is = 8
                                SquareYardToAcres (Val(Text2.Text))
                        End Select
                    Case Is = 7
                        Select Case Conversion2
                            Case Is = 0
                                SquareMileToMeters (Val(Text2.Text))
                            Case Is = 1
                                SquareMileToKilometers (Val(Text2.Text))
                            Case Is = 2
                                SquareMileToCentimeters (Val(Text2.Text))
                            Case Is = 3
                                SquareMileToMillimeters (Val(Text2.Text))
                            Case Is = 4
                                SquareMileToFeet (Val(Text2.Text))
                            Case Is = 5
                                SquareMileToInches (Val(Text2.Text))
                            Case Is = 6
                                SquareMileToYards (Val(Text2.Text))
                            Case Is = 7
                                ConversionSolution1 = (Val(Text2.Text))
                                Text3.Text = ConversionSolution1
                            Case Is = 8
                                SquareMileToAcres (Val(Text2.Text))
                        End Select
                    Case Is = 8
                        Select Case Conversion2
                            Case Is = 0
                                AcresToMeters (Val(Text2.Text))
                            Case Is = 1
                                AcresToKilometers (Val(Text2.Text))
                            Case Is = 2
                                AcresToCentimeters (Val(Text2.Text))
                            Case Is = 3
                                AcresToMillimeters (Val(Text2.Text))
                            Case Is = 4
                                AcresToFeet (Val(Text2.Text))
                            Case Is = 5
                                AcresToInches (Val(Text2.Text))
                            Case Is = 6
                                AcresToYards (Val(Text2.Text))
                            Case Is = 7
                                AcresToMiles (Val(Text2.Text))
                            Case Is = 8
                                ConversionSolution1 = (Val(Text2.Text))
                                   Text3.Text = ConversionSolution1
                        End Select
                End Select
            Case Is = 2 ' Volume
                Select Case Conversion1
                    Case Is = 0
                        Select Case Conversion2
                            Case Is = 0
                                ConversionSolution1 = (Val(Text2.Text))
                                Text3.Text = ConversionSolution1
                            Case Is = 1
                                CubicMeterToCentimeters (Val(Text2.Text))
                            Case Is = 2
                                CubicMeterToFeet (Val(Text2.Text))
                            Case Is = 3
                                CubicMeterToInches (Val(Text2.Text))
                            Case Is = 4
                                CubicMeterToLiters (Val(Text2.Text))
                            Case Is = 5
                                CubicMeterToGallons (Val(Text2.Text))
                            Case Is = 6
                                CubicMeterToCups (Val(Text2.Text))
                            Case Is = 7
                                CubicMeterToTablespoons (Val(Text2.Text))
                            Case Is = 8
                                CubicMeterToTeaspoons (Val(Text2.Text))
                        End Select
                    Case Is = 1
                        Select Case Conversion2
                            Case Is = 0
                                CubicCentimeterToMeters (Val(Text2.Text))
                            Case Is = 1
                                ConversionSolution1 = (Val(Text2.Text))
                                Text3.Text = ConversionSolution1
                            Case Is = 2
                                CubicCentimeterToFeet (Val(Text2.Text))
                            Case Is = 3
                                CubicCentimeterToInches (Val(Text2.Text))
                            Case Is = 4
                                CubicCentimeterToLiters (Val(Text2.Text))
                            Case Is = 5
                                CubicCentimeterToGallons (Val(Text2.Text))
                            Case Is = 6
                                CubicCentimeterToCups (Val(Text2.Text))
                            Case Is = 7
                                CubicCentimeterToTablespoons (Val(Text2.Text))
                            Case Is = 8
                                CubicCentimeterToTeaspoons (Val(Text2.Text))
                        End Select
                    Case Is = 2
                        Select Case Conversion2
                            Case Is = 0
                                CubicFeetToMeters (Val(Text2.Text))
                            Case Is = 1
                                CubicFeetToCentimeters (Val(Text2.Text))
                            Case Is = 2
                                ConversionSolution1 = (Val(Text2.Text))
                                Text3.Text = ConversionSolution1
                            Case Is = 3
                                CubicFeetToInches (Val(Text2.Text))
                            Case Is = 4
                                CubicFeetToLiters (Val(Text2.Text))
                            Case Is = 5
                                CubicFeetToGallons (Val(Text2.Text))
                            Case Is = 6
                                CubicFeetToCups (Val(Text2.Text))
                            Case Is = 7
                                CubicFeetToTablespoons (Val(Text2.Text))
                            Case Is = 8
                                CubicFeetToTeaspoons (Val(Text2.Text))
                        End Select
                    Case Is = 3
                        Select Case Conversion2
                            Case Is = 0
                                CubicInchToMeters (Val(Text2.Text))
                            Case Is = 1
                                CubicInchToCentimeters (Val(Text2.Text))
                            Case Is = 2
                                CubicInchToFeet (Val(Text2.Text))
                            Case Is = 3
                                ConversionSolution1 = (Val(Text2.Text))
                                Text3.Text = ConversionSolution1
                            Case Is = 4
                                CubicInchToLiters (Val(Text2.Text))
                            Case Is = 5
                                CubicInchToGallons (Val(Text2.Text))
                            Case Is = 6
                                CubicInchToCups (Val(Text2.Text))
                            Case Is = 7
                                CubicInchToTablespoons (Val(Text2.Text))
                            Case Is = 8
                                CubicInchToTeaspoons (Val(Text2.Text))
                        End Select
                    Case Is = 4
                        Select Case Conversion2
                            Case Is = 0
                                LiterToMeters (Val(Text2.Text))
                            Case Is = 1
                                LiterToCentimeters (Val(Text2.Text))
                            Case Is = 2
                                LiterToFeet (Val(Text2.Text))
                            Case Is = 3
                                LiterToInches (Val(Text2.Text))
                            Case Is = 4
                                ConversionSolution1 = (Val(Text2.Text))
                                Text3.Text = ConversionSolution1
                            Case Is = 5
                                LiterToGallons (Val(Text2.Text))
                            Case Is = 6
                                LiterToCups (Val(Text2.Text))
                            Case Is = 7
                                LiterToTablespoons (Val(Text2.Text))
                            Case Is = 8
                                LiterToTeaspoons (Val(Text2.Text))
                        End Select
                    Case Is = 5
                        Select Case Conversion2
                            Case Is = 0
                                GallonToMeters (Val(Text2.Text))
                            Case Is = 1
                                GallonToCentimeters (Val(Text2.Text))
                            Case Is = 2
                                GallonToFeet (Val(Text2.Text))
                            Case Is = 3
                                GallonToInches (Val(Text2.Text))
                            Case Is = 4
                                GallonToLiters (Val(Text2.Text))
                            Case Is = 5
                                ConversionSolution1 = (Val(Text2.Text))
                                Text3.Text = ConversionSolution1
                            Case Is = 6
                                GallonToCups (Val(Text2.Text))
                            Case Is = 7
                                GallonToTablespoons (Val(Text2.Text))
                            Case Is = 8
                                GallonToTeaspoons (Val(Text2.Text))
                        End Select
                    Case Is = 6
                        Select Case Conversion2
                            Case Is = 0
                                CupsToMeters (Val(Text2.Text))
                            Case Is = 1
                                CupsToCentimeters (Val(Text2.Text))
                            Case Is = 2
                                CupsToFeet (Val(Text2.Text))
                            Case Is = 3
                                CupsToInches (Val(Text2.Text))
                            Case Is = 4
                                CupsToLiters (Val(Text2.Text))
                            Case Is = 5
                                CupsToGallons (Val(Text2.Text))
                            Case Is = 6
                                ConversionSolution1 = (Val(Text2.Text))
                                Text3.Text = ConversionSolution1
                            Case Is = 7
                                CupsToTablespoons (Val(Text2.Text))
                            Case Is = 8
                                CupsToTeaspoons (Val(Text2.Text))
                        End Select
                    Case Is = 7
                        Select Case Conversion2
                            Case Is = 0
                                TablespoonToMeters (Val(Text2.Text))
                            Case Is = 1
                                TablespoonToCentimeters (Val(Text2.Text))
                            Case Is = 2
                                TablespoonToFeet (Val(Text2.Text))
                            Case Is = 3
                                TablespoonToInches (Val(Text2.Text))
                            Case Is = 4
                                TablespoonToLiters (Val(Text2.Text))
                            Case Is = 5
                                TablespoonToGallons (Val(Text2.Text))
                            Case Is = 6
                                TablespoonToCups (Val(Text2.Text))
                            Case Is = 7
                                ConversionSolution1 = (Val(Text2.Text))
                                Text3.Text = ConversionSolution1
                            Case Is = 8
                                TablespoonToTeaspoons (Val(Text2.Text))
                        End Select
                    Case Is = 8
                        Select Case Conversion2
                            Case Is = 0
                                TeaspoonToMeters (Val(Text2.Text))
                            Case Is = 1
                                TeaspoonToCentimeters (Val(Text2.Text))
                            Case Is = 2
                                TeaspoonToFeet (Val(Text2.Text))
                            Case Is = 3
                                TeaspoonToInches (Val(Text2.Text))
                            Case Is = 4
                                TeaspoonToLiters (Val(Text2.Text))
                            Case Is = 5
                                TeaspoonToGallons (Val(Text2.Text))
                            Case Is = 6
                                TeaspoonToCups (Val(Text2.Text))
                            Case Is = 7
                                TeaspoonToTablespoons (Val(Text2.Text))
                            Case Is = 8
                                ConversionSolution1 = (Val(Text2.Text))
                                   Text3.Text = ConversionSolution1
                        End Select
                End Select
            Case Is = 3 ' Force
                Select Case Conversion1
                    Case Is = 0
                        Select Case Conversion2
                            Case Is = 0
                                ConversionSolution1 = (Val(Text2.Text))
                                Text3.Text = ConversionSolution1
                            Case Is = 1
                                DyneToNewtons (Val(Text2.Text))
                            Case Is = 2
                                DyneToPounds (Val(Text2.Text))
                            Case Is = 3
                                DyneToGramForce (Val(Text2.Text))
                            Case Is = 4
                                DyneToTons (Val(Text2.Text))
                        End Select
                    Case Is = 1
                        Select Case Conversion2
                            Case Is = 0
                                NewtonToDynes (Val(Text2.Text))
                            Case Is = 1
                                ConversionSolution1 = (Val(Text2.Text))
                                Text3.Text = ConversionSolution1
                            Case Is = 2
                                NewtonToPounds (Val(Text2.Text))
                            Case Is = 3
                                NewtonToGramForce (Val(Text2.Text))
                            Case Is = 4
                                NewtonToTons (Val(Text2.Text))
                        End Select
                    Case Is = 2
                        Select Case Conversion2
                            Case Is = 0
                                PoundToDynes (Val(Text2.Text))
                            Case Is = 1
                                PoundToNewtons (Val(Text2.Text))
                            Case Is = 2
                                ConversionSolution1 = (Val(Text2.Text))
                                Text3.Text = ConversionSolution1
                            Case Is = 3
                                PoundToGramForce (Val(Text2.Text))
                            Case Is = 4
                                PoundToTons (Val(Text2.Text))
                        End Select
                    Case Is = 3
                        Select Case Conversion2
                            Case Is = 0
                                GramForceToDynes (Val(Text2.Text))
                            Case Is = 1
                                GramForceToNewtons (Val(Text2.Text))
                            Case Is = 2
                                GramForceToPounds (Val(Text2.Text))
                            Case Is = 3
                                ConversionSolution1 = (Val(Text2.Text))
                                Text3.Text = ConversionSolution1
                            Case Is = 4
                                GramForceToTons (Val(Text2.Text))
                        End Select
                    Case Is = 4
                        Select Case Conversion2
                            Case Is = 0
                                TonToDynes (Val(Text2.Text))
                            Case Is = 1
                                TonToNewtons (Val(Text2.Text))
                            Case Is = 2
                                TonToPounds (Val(Text2.Text))
                            Case Is = 3
                                TonToGramForce (Val(Text2.Text))
                            Case Is = 4
                                ConversionSolution1 = (Val(Text2.Text))
                                   Text3.Text = ConversionSolution1
                        End Select
                End Select
            Case Is = 4 ' Power
                Select Case Conversion1
                    Case Is = 0
                        Select Case Conversion2
                            Case Is = 0
                                ConversionSolution1 = (Val(Text2.Text))
                                Text3.Text = ConversionSolution1
                            Case Is = 1
                                BTUPerHrToFtLbPerSec (Val(Text2.Text))
                            Case Is = 2
                                BTUPerHrToHorsepower (Val(Text2.Text))
                            Case Is = 3
                                BTUPerHrToCalPerSec (Val(Text2.Text))
                            Case Is = 4
                                BTUPerHrToWatts (Val(Text2.Text))
                        End Select
                    Case Is = 1
                        Select Case Conversion2
                            Case Is = 0
                                FtLbPerSecToBTUPerHr (Val(Text2.Text))
                            Case Is = 1
                                ConversionSolution1 = (Val(Text2.Text))
                                Text3.Text = ConversionSolution1
                            Case Is = 2
                                FtLbPerSecToHorsepower (Val(Text2.Text))
                            Case Is = 3
                                FtLbPerSecToCalPerSec (Val(Text2.Text))
                            Case Is = 4
                                FtLbPerSecToWatts (Val(Text2.Text))
                        End Select
                    Case Is = 2
                        Select Case Conversion2
                            Case Is = 0
                                HorsepowerToBTUPerHr (Val(Text2.Text))
                            Case Is = 1
                                HorsepowerToFtLbPerSec (Val(Text2.Text))
                            Case Is = 2
                                ConversionSolution1 = (Val(Text2.Text))
                                Text3.Text = ConversionSolution1
                            Case Is = 3
                                HorsepowerToCalPerSec (Val(Text2.Text))
                            Case Is = 4
                                HorsepowerToWatts (Val(Text2.Text))
                        End Select
                    Case Is = 3
                        Select Case Conversion2
                            Case Is = 0
                                CalPerSecToBTUPerHr (Val(Text2.Text))
                            Case Is = 1
                                CalPerSecToFtLbPerSec (Val(Text2.Text))
                            Case Is = 2
                                CalPerSecToHorsepower (Val(Text2.Text))
                            Case Is = 3
                                ConversionSolution1 = (Val(Text2.Text))
                                Text3.Text = ConversionSolution1
                            Case Is = 4
                                CalPerSecToWatts (Val(Text2.Text))
                        End Select
                    Case Is = 4
                        Select Case Conversion2
                            Case Is = 0
                                WattsToBTUPerHr (Val(Text2.Text))
                            Case Is = 1
                                WattsToFtLbPerSec (Val(Text2.Text))
                            Case Is = 2
                                WattsToHorsepower (Val(Text2.Text))
                            Case Is = 3
                                WattsToCalPerSec (Val(Text2.Text))
                            Case Is = 4
                                ConversionSolution1 = (Val(Text2.Text))
                                   Text3.Text = ConversionSolution1
                        End Select
                End Select
            Case Is = 5 ' Energy
                Select Case Conversion1
                    Case Is = 0
                        Select Case Conversion2
                            Case Is = 0
                                ConversionSolution1 = (Val(Text2.Text))
                                Text3.Text = ConversionSolution1
                            Case Is = 1
                                BTUToFtLb (Val(Text2.Text))
                            Case Is = 2
                                BTUToHorsepowerHr (Val(Text2.Text))
                            Case Is = 3
                                BTUToJoule (Val(Text2.Text))
                            Case Is = 4
                                BTUToCalorie (Val(Text2.Text))
                            Case Is = 5
                                BTUToKilowattHr (Val(Text2.Text))
                        End Select
                    Case Is = 1
                        Select Case Conversion2
                            Case Is = 0
                                FtLbToBTU (Val(Text2.Text))
                            Case Is = 1
                                ConversionSolution1 = (Val(Text2.Text))
                                Text3.Text = ConversionSolution1
                            Case Is = 2
                                FtLbToHorsepowerHr (Val(Text2.Text))
                            Case Is = 3
                                FtLbToJoule (Val(Text2.Text))
                            Case Is = 4
                                FtLbToCalorie (Val(Text2.Text))
                            Case Is = 5
                                FtLbToKilowattHr (Val(Text2.Text))
                        End Select
                    Case Is = 2
                        Select Case Conversion2
                            Case Is = 0
                                HorsepowerHrToBTU (Val(Text2.Text))
                            Case Is = 1
                                HorsepowerHrToFtLb (Val(Text2.Text))
                            Case Is = 2
                                ConversionSolution1 = (Val(Text2.Text))
                                Text3.Text = ConversionSolution1
                            Case Is = 3
                                HorsepowerHrToJoule (Val(Text2.Text))
                            Case Is = 4
                                HorsepowerHrToCalorie (Val(Text2.Text))
                            Case Is = 5
                                HorsepowerHrToKilowattHr (Val(Text2.Text))
                        End Select
                    Case Is = 3
                        Select Case Conversion2
                            Case Is = 0
                                JouleToBTU (Val(Text2.Text))
                            Case Is = 1
                                JouleToFtLb (Val(Text2.Text))
                            Case Is = 2
                                JouleToHorsepowerHr (Val(Text2.Text))
                            Case Is = 3
                                ConversionSolution1 = (Val(Text2.Text))
                                Text3.Text = ConversionSolution1
                            Case Is = 4
                                JouleToCalorie (Val(Text2.Text))
                            Case Is = 5
                                JouleToKilowattHr (Val(Text2.Text))
                        End Select
                    Case Is = 4
                        Select Case Conversion2
                            Case Is = 0
                                CalorieToBTU (Val(Text2.Text))
                            Case Is = 1
                                CalorieToFtLb (Val(Text2.Text))
                            Case Is = 2
                                CalorieToHorsepowerHr (Val(Text2.Text))
                            Case Is = 3
                                CalorieToJoule (Val(Text2.Text))
                            Case Is = 4
                                ConversionSolution1 = (Val(Text2.Text))
                                Text3.Text = ConversionSolution1
                            Case Is = 5
                                CalorieToKilowattHr (Val(Text2.Text))
                        End Select
                    Case Is = 5
                        Select Case Conversion2
                            Case Is = 0
                                KilowattHrToBTU (Val(Text2.Text))
                            Case Is = 1
                                KilowattHrToFtLb (Val(Text2.Text))
                            Case Is = 2
                                KilowattHrToHorsepowerHr (Val(Text2.Text))
                            Case Is = 3
                                KilowattHrToJoule (Val(Text2.Text))
                            Case Is = 4
                                KilowattHrToCalorie (Val(Text2.Text))
                            Case Is = 5
                                ConversionSolution1 = (Val(Text2.Text))
                                   Text3.Text = ConversionSolution1
                        End Select


                End Select
            Case Is = 6 ' Pressure
                Select Case Conversion1
                    Case Is = 0
                        Select Case Conversion2
                            Case Is = 0
                                ConversionSolution1 = (Val(Text2.Text))
                                Text3.Text = ConversionSolution1
                            Case Is = 1
                                AtmToMmHg (Val(Text2.Text))
                            Case Is = 2
                                AtmToPascal (Val(Text2.Text))
                            Case Is = 3
                                AtmToPSI (Val(Text2.Text))
                            Case Is = 4
                                AtmToPSF (Val(Text2.Text))
                            Case Is = 5
                                AtmToDynePerCm (Val(Text2.Text))
                            Case Is = 6
                                AtmToBar (Val(Text2.Text))
                        End Select
                    Case Is = 1
                        Select Case Conversion2
                            Case Is = 0
                                MmHgToAtm (Val(Text2.Text))
                            Case Is = 1
                                ConversionSolution1 = (Val(Text2.Text))
                                Text3.Text = ConversionSolution1
                            Case Is = 2
                                MmHgToPascal (Val(Text2.Text))
                            Case Is = 3
                                MmHgToPSI (Val(Text2.Text))
                            Case Is = 4
                                MmHgToPSF (Val(Text2.Text))
                            Case Is = 5
                                MmHgToDynePerCm (Val(Text2.Text))
                            Case Is = 6
                                MmHgToBar (Val(Text2.Text))
                        End Select
                    Case Is = 2
                        Select Case Conversion2
                            Case Is = 0
                                PascalToAtm (Val(Text2.Text))
                            Case Is = 1
                                PascalToMmHg (Val(Text2.Text))
                            Case Is = 2
                                ConversionSolution1 = (Val(Text2.Text))
                                Text3.Text = ConversionSolution1
                            Case Is = 3
                                PascalToPSI (Val(Text2.Text))
                            Case Is = 4
                                PascalToPSF (Val(Text2.Text))
                            Case Is = 5
                                PascalToDynePerCm (Val(Text2.Text))
                            Case Is = 6
                                PascalToBar (Val(Text2.Text))
                        End Select
                    Case Is = 3
                        Select Case Conversion2
                            Case Is = 0
                                PSIToAtm (Val(Text2.Text))
                            Case Is = 1
                                PSIToMmHg (Val(Text2.Text))
                            Case Is = 2
                                PSIToPascal (Val(Text2.Text))
                            Case Is = 3
                                ConversionSolution1 = (Val(Text2.Text))
                                Text3.Text = ConversionSolution1
                            Case Is = 4
                                PSIToPSF (Val(Text2.Text))
                            Case Is = 5
                                PSIToDynePerCm (Val(Text2.Text))
                            Case Is = 6
                                PSIToBar (Val(Text2.Text))
                        End Select
                    Case Is = 4
                        Select Case Conversion2
                            Case Is = 0
                                PSFToAtm (Val(Text2.Text))
                            Case Is = 1
                                PSFToMmHg (Val(Text2.Text))
                            Case Is = 2
                                PSFToPascal (Val(Text2.Text))
                            Case Is = 3
                                PSFToPSI (Val(Text2.Text))
                            Case Is = 4
                                ConversionSolution1 = (Val(Text2.Text))
                                Text3.Text = ConversionSolution1
                            Case Is = 5
                                PSFToDynePerCm (Val(Text2.Text))
                            Case Is = 6
                                PSFToBar (Val(Text2.Text))
                        End Select
                    Case Is = 5
                        Select Case Conversion2
                            Case Is = 0
                                DynePerCmToAtm (Val(Text2.Text))
                            Case Is = 1
                                DynePerCmToMmHg (Val(Text2.Text))
                            Case Is = 2
                                DynePerCmToPascal (Val(Text2.Text))
                            Case Is = 3
                                DynePerCmToPSI (Val(Text2.Text))
                            Case Is = 4
                                DynePerCmToPSF (Val(Text2.Text))
                            Case Is = 5
                                ConversionSolution1 = (Val(Text2.Text))
                                Text3.Text = ConversionSolution1
                            Case Is = 6
                                DynePerCmToBar (Val(Text2.Text))
                        End Select
                    Case Is = 6
                        Select Case Conversion2
                            Case Is = 0
                                BarToAtm (Val(Text2.Text))
                            Case Is = 1
                                BarToMmHg (Val(Text2.Text))
                            Case Is = 2
                                BarToPascal (Val(Text2.Text))
                            Case Is = 3
                                BarToPSI (Val(Text2.Text))
                            Case Is = 4
                                BarToPSF (Val(Text2.Text))
                            Case Is = 5
                                BarToDynePerCm (Val(Text2.Text))
                            Case Is = 6
                                ConversionSolution1 = (Val(Text2.Text))
                                Text3.Text = ConversionSolution1
                        End Select
                End Select
            Case Is = 7 ' Torque
                Select Case Conversion1
                    Case Is = 0
                        Select Case Conversion2
                            Case Is = 0
                                ConversionSolution1 = (Val(Text2.Text))
                                Text3.Text = ConversionSolution1
                            Case Is = 1
                                FtLbToInLb (Val(Text2.Text))
                            Case Is = 2
                                FtLbToNm (Val(Text2.Text))
                        End Select
                    Case Is = 1
                        Select Case Conversion2
                            Case Is = 0
                                InLbToFtLb (Val(Text2.Text))
                            Case Is = 1
                                ConversionSolution1 = (Val(Text2.Text))
                                Text3.Text = ConversionSolution1
                            Case Is = 2
                                InLbToNm (Val(Text2.Text))
                        End Select
                    Case Is = 2
                        Select Case Conversion2
                            Case Is = 0
                                NmToFtLb (Val(Text2.Text))
                            Case Is = 1
                                NmToInLb (Val(Text2.Text))
                            Case Is = 2
                                ConversionSolution1 = (Val(Text2.Text))
                                   Text3.Text = ConversionSolution1
                        End Select
                End Select
            Case Is = 8 ' Mass
                Select Case Conversion1
                    Case Is = 0
                        Select Case Conversion2
                            Case Is = 0
                                ConversionSolution1 = (Val(Text2.Text))
                                Text3.Text = ConversionSolution1
                            Case Is = 1
                                GramToKilogram (Val(Text2.Text))
                            Case Is = 2
                                GramToSlug (Val(Text2.Text))
                            Case Is = 3
                                GramToOunce (Val(Text2.Text))
                            Case Is = 4
                                GramToPound (Val(Text2.Text))
                        End Select
                    Case Is = 1
                        Select Case Conversion2
                            Case Is = 0
                                KilogramToGram (Val(Text2.Text))
                            Case Is = 1
                                ConversionSolution1 = (Val(Text2.Text))
                                Text3.Text = ConversionSolution1
                            Case Is = 2
                                KilogramToSlug (Val(Text2.Text))
                            Case Is = 3
                                KilogramToOunce (Val(Text2.Text))
                            Case Is = 4
                                KilogramToPound (Val(Text2.Text))
                        End Select
                    Case Is = 2
                        Select Case Conversion2
                            Case Is = 0
                                SlugToGram (Val(Text2.Text))
                            Case Is = 1
                                SlugToKilogram (Val(Text2.Text))
                            Case Is = 2
                                ConversionSolution1 = (Val(Text2.Text))
                                Text3.Text = ConversionSolution1
                            Case Is = 3
                                SlugToOunce (Val(Text2.Text))
                            Case Is = 4
                                SlugToPound (Val(Text2.Text))
                        End Select
                    Case Is = 3
                        Select Case Conversion2
                            Case Is = 0
                                OunceToGram (Val(Text2.Text))
                            Case Is = 1
                                OunceToKilogram (Val(Text2.Text))
                            Case Is = 2
                                OunceToSlug (Val(Text2.Text))
                            Case Is = 3
                                ConversionSolution1 = (Val(Text2.Text))
                                Text3.Text = ConversionSolution1
                            Case Is = 4
                                OunceToPound (Val(Text2.Text))
                        End Select
                    Case Is = 4
                        Select Case Conversion2
                            Case Is = 0
                                PoundToGram (Val(Text2.Text))
                            Case Is = 1
                                PoundToKilogram (Val(Text2.Text))
                            Case Is = 2
                                PoundToSlug (Val(Text2.Text))
                            Case Is = 3
                                PoundToOunce (Val(Text2.Text))
                            Case Is = 4
                                ConversionSolution1 = (Val(Text2.Text))
                                   Text3.Text = ConversionSolution1
                        End Select
                End Select
            Case Is = 9 ' Density
                Select Case Conversion1
                    Case Is = 0
                        Select Case Conversion2
                            Case Is = 0
                                ConversionSolution1 = (Val(Text2.Text))
                                Text3.Text = ConversionSolution1
                            Case Is = 1
                                GramPerCubicCmToKgPerM (Val(Text2.Text))
                            Case Is = 2
                                GramPerCubicCmToSlugPerFt (Val(Text2.Text))
                            Case Is = 3
                                GramPerCubicCmToLbPerFt (Val(Text2.Text))
                            Case Is = 4
                                GramPerCubicCmToLbPerIn (Val(Text2.Text))
                        End Select
                    Case Is = 1
                        Select Case Conversion2
                            Case Is = 0
                                KilogramPerCubicMToGramPerCm (Val(Text2.Text))
                            Case Is = 1
                                ConversionSolution1 = (Val(Text2.Text))
                                Text3.Text = ConversionSolution1
                            Case Is = 2
                                KilogramPerCubicMToSlugPerFt (Val(Text2.Text))
                            Case Is = 3
                                KilogramPerCubicMToLbPerFt (Val(Text2.Text))
                            Case Is = 4
                                KilogramPerCubicMToLbPerIn (Val(Text2.Text))
                        End Select
                    Case Is = 2
                        Select Case Conversion2
                            Case Is = 0
                                SlugPerCubicFootToGramPerCm (Val(Text2.Text))
                            Case Is = 1
                                SlugPerCubicFootToKgPerM (Val(Text2.Text))
                            Case Is = 2
                                ConversionSolution1 = (Val(Text2.Text))
                                Text3.Text = ConversionSolution1
                            Case Is = 3
                                SlugPerCubicFootToLbPerFt (Val(Text2.Text))
                            Case Is = 4
                                SlugPerCubicFootToLbPerIn (Val(Text2.Text))
                        End Select
                    Case Is = 3
                        Select Case Conversion2
                            Case Is = 0
                                PoundPerCubicFootToGramPerCm (Val(Text2.Text))
                            Case Is = 1
                                PoundPerCubicFootToKgPerM (Val(Text2.Text))
                            Case Is = 2
                                PoundPerCubicFootToSlugPerFt (Val(Text2.Text))
                            Case Is = 3
                                ConversionSolution1 = (Val(Text2.Text))
                                Text3.Text = ConversionSolution1
                            Case Is = 4
                                PoundPerCubicFootToLbPerIn (Val(Text2.Text))
                        End Select
                    Case Is = 4
                        Select Case Conversion2
                            Case Is = 0
                                PoundPerCubicInchToGramPerCm (Val(Text2.Text))
                            Case Is = 1
                                PoundPerCubicInchToKgPerM (Val(Text2.Text))
                            Case Is = 2
                                PoundPerCubicInchToSlugPerFt (Val(Text2.Text))
                            Case Is = 3
                                PoundPerCubicInchToLbPerFt (Val(Text2.Text))
                            Case Is = 4
                                ConversionSolution1 = (Val(Text2.Text))
                                   Text3.Text = ConversionSolution1
                        End Select
                End Select
            Case Is = 10 ' Speed
                Select Case Conversion1
                    Case Is = 0
                        Select Case Conversion2
                            Case Is = 0
                                ConversionSolution1 = (Val(Text2.Text))
                                Text3.Text = ConversionSolution1
                            Case Is = 1
                                FeetPerSecToKmPerHr (Val(Text2.Text))
                            Case Is = 2
                                FeetPerSecToMeterPerSec (Val(Text2.Text))
                            Case Is = 3
                                FeetPerSecToMilPerHr (Val(Text2.Text))
                            Case Is = 4
                                FeetPerSecToKnots (Val(Text2.Text))
                        End Select
                    Case Is = 1
                        Select Case Conversion2
                            Case Is = 0
                                KilometerPerHrToFtPerSec (Val(Text2.Text))
                            Case Is = 1
                                ConversionSolution1 = (Val(Text2.Text))
                                Text3.Text = ConversionSolution1
                            Case Is = 2
                                KilometerPerHrToMeterPerSec (Val(Text2.Text))
                            Case Is = 3
                                KilometerPerHrToMilPerHr (Val(Text2.Text))
                            Case Is = 4
                                KilometerPerHrToKnots (Val(Text2.Text))
                        End Select
                    Case Is = 2
                        Select Case Conversion2
                            Case Is = 0
                                MetersPerSecToFtPerSec (Val(Text2.Text))
                            Case Is = 1
                                MetersPerSecToKmPerHr (Val(Text2.Text))
                            Case Is = 2
                                ConversionSolution1 = (Val(Text2.Text))
                                Text3.Text = ConversionSolution1
                            Case Is = 3
                                MetersPerSecToMilPerHr (Val(Text2.Text))
                            Case Is = 4
                                MetersPerSecToKnots (Val(Text2.Text))
                        End Select
                    Case Is = 3
                        Select Case Conversion2
                            Case Is = 0
                                MilesPerHrToFtPerSec (Val(Text2.Text))
                            Case Is = 1
                                MilesPerHrToKmPerHr (Val(Text2.Text))
                            Case Is = 2
                                MilesPerHrToMetersPerSec (Val(Text2.Text))
                            Case Is = 3
                                ConversionSolution1 = (Val(Text2.Text))
                                Text3.Text = ConversionSolution1
                            Case Is = 4
                                MilesPerHrToKnot (Val(Text2.Text))
                        End Select
                    Case Is = 4
                        Select Case Conversion2
                            Case Is = 0
                                KnotsToFtPerSec (Val(Text2.Text))
                            Case Is = 1
                                KnotsToKmPerHr (Val(Text2.Text))
                            Case Is = 2
                                KnotsToMetersPerSec (Val(Text2.Text))
                            Case Is = 3
                                KnotsToMilPerHr (Val(Text2.Text))
                            Case Is = 4
                                ConversionSolution1 = (Val(Text2.Text))
                                   Text3.Text = ConversionSolution1
                        End Select
                End Select
            Case Is = 11 ' Angle
                Select Case Conversion1
                    Case Is = 0
                        Select Case Conversion2
                            Case Is = 0
                                ConversionSolution1 = (Val(Text2.Text))
                                Text3.Text = ConversionSolution1
                            Case Is = 1
                                DegreeToMinute (Val(Text2.Text))
                            Case Is = 2
                                DegreeToSecond (Val(Text2.Text))
                            Case Is = 3
                                DegreeToRadian (Val(Text2.Text))
                            Case Is = 4
                                DegreeToRevolution (Val(Text2.Text))
                        End Select
                    Case Is = 1
                        Select Case Conversion2
                            Case Is = 0
                                AngleMinuteToDegree (Val(Text2.Text))
                            Case Is = 1
                                ConversionSolution1 = (Val(Text2.Text))
                                Text3.Text = ConversionSolution1
                            Case Is = 2
                                AngleMinuteToSecond (Val(Text2.Text))
                            Case Is = 3
                                AngleMinuteToRadian (Val(Text2.Text))
                            Case Is = 4
                                AngleMinuteToRevolution (Val(Text2.Text))
                        End Select
                    Case Is = 2
                        Select Case Conversion2
                            Case Is = 0
                                AngleSecondToDegree (Val(Text2.Text))
                            Case Is = 1
                                AngleSecondToMinute (Val(Text2.Text))
                            Case Is = 2
                                ConversionSolution1 = (Val(Text2.Text))
                                Text3.Text = ConversionSolution1
                            Case Is = 3
                                AngleSecondToRadian (Val(Text2.Text))
                            Case Is = 4
                                AngleSecondToRevolution (Val(Text2.Text))
                        End Select
                    Case Is = 3
                        Select Case Conversion2
                            Case Is = 0
                                RadianToDegree (Val(Text2.Text))
                            Case Is = 1
                                RadianToMinute (Val(Text2.Text))
                            Case Is = 2
                                RadianToSecond (Val(Text2.Text))
                            Case Is = 3
                                ConversionSolution1 = (Val(Text2.Text))
                                Text3.Text = ConversionSolution1
                            Case Is = 4
                                RadianToRevolution (Val(Text2.Text))
                        End Select
                    Case Is = 4
                        Select Case Conversion2
                            Case Is = 0
                                RevolutionToDegree (Val(Text2.Text))
                            Case Is = 1
                                RevolutionToMinute (Val(Text2.Text))
                            Case Is = 2
                                RevolutionToSecond (Val(Text2.Text))
                            Case Is = 3
                                RevolutionToRadian (Val(Text2.Text))
                            Case Is = 4
                                ConversionSolution1 = (Val(Text2.Text))
                                   Text3.Text = ConversionSolution1
                        End Select
                End Select
            Case Is = 12 ' Time
                Select Case Conversion1
                    Case Is = 0
                        Select Case Conversion2
                            Case Is = 0
                                ConversionSolution1 = (Val(Text2.Text))
                                Text3.Text = ConversionSolution1
                            Case Is = 1
                                YearToMonth (Val(Text2.Text))
                            Case Is = 2
                                YearToWeek (Val(Text2.Text))
                            Case Is = 3
                                YearToDay (Val(Text2.Text))
                            Case Is = 4
                                YearToHour (Val(Text2.Text))
                            Case Is = 5
                                YearToMinute (Val(Text2.Text))
                            Case Is = 6
                                YearToSecond (Val(Text2.Text))
                        End Select
                    Case Is = 1
                        Select Case Conversion2
                            Case Is = 0
                                MonthToYear (Val(Text2.Text))
                            Case Is = 1
                                ConversionSolution1 = (Val(Text2.Text))
                                Text3.Text = ConversionSolution1
                            Case Is = 2
                                MonthToWeek (Val(Text2.Text))
                            Case Is = 3
                                MonthToDay (Val(Text2.Text))
                            Case Is = 4
                                MonthToHour (Val(Text2.Text))
                            Case Is = 5
                                MonthToMinute (Val(Text2.Text))
                            Case Is = 6
                                MonthToSecond (Val(Text2.Text))
                        End Select
                    Case Is = 2
                        Select Case Conversion2
                            Case Is = 0
                                WeekToYear (Val(Text2.Text))
                            Case Is = 1
                                WeekToMonth (Val(Text2.Text))
                            Case Is = 2
                                ConversionSolution1 = (Val(Text2.Text))
                                Text3.Text = ConversionSolution1
                            Case Is = 3
                                WeekToDay (Val(Text2.Text))
                            Case Is = 4
                                WeekToHour (Val(Text2.Text))
                            Case Is = 5
                                WeekToMinute (Val(Text2.Text))
                            Case Is = 6
                                WeekToSecond (Val(Text2.Text))
                        End Select
                    Case Is = 3
                        Select Case Conversion2
                            Case Is = 0

                                DayToYear (Val(Text2.Text))
                            Case Is = 1
                                DayToMonth (Val(Text2.Text))
                            Case Is = 2
                                DayToWeek (Val(Text2.Text))
                            Case Is = 3
                                ConversionSolution1 = (Val(Text2.Text))
                                Text3.Text = ConversionSolution1
                            Case Is = 4
                                DayToHour (Val(Text2.Text))
                            Case Is = 5
                                DayToMinute (Val(Text2.Text))
                            Case Is = 6
                                DayToSecond (Val(Text2.Text))
                        End Select
                    Case Is = 4
                        Select Case Conversion2
                            Case Is = 0
                                HourToYear (Val(Text2.Text))
                            Case Is = 1
                                HourToMonth (Val(Text2.Text))
                            Case Is = 2
                                HourToWeek (Val(Text2.Text))
                            Case Is = 3
                                HourToDay (Val(Text2.Text))
                            Case Is = 4
                                ConversionSolution1 = (Val(Text2.Text))
                                Text3.Text = ConversionSolution1
                            Case Is = 5
                                HourToMinute (Val(Text2.Text))
                            Case Is = 6
                                HourToSecond (Val(Text2.Text))
                        End Select
                    Case Is = 5
                        Select Case Conversion2
                            Case Is = 0
                                MinuteToYear (Val(Text2.Text))
                            Case Is = 1
                                MinuteToMonth (Val(Text2.Text))
                            Case Is = 2
                                MinuteToWeek (Val(Text2.Text))
                            Case Is = 3
                                MinuteToDay (Val(Text2.Text))
                            Case Is = 4
                                MinuteToHour (Val(Text2.Text))
                            Case Is = 5
                                ConversionSolution1 = (Val(Text2.Text))
                                Text3.Text = ConversionSolution1
                            Case Is = 6
                                MinuteToSecond (Val(Text2.Text))
                        End Select
                    Case Is = 6
                        Select Case Conversion2
                            Case Is = 0
                                SecondToYear (Val(Text2.Text))
                            Case Is = 1
                                SecondToMonth (Val(Text2.Text))
                            Case Is = 2
                                SecondToWeek (Val(Text2.Text))
                            Case Is = 3
                                SecondToDay (Val(Text2.Text))
                            Case Is = 4
                                SecondToHour (Val(Text2.Text))
                            Case Is = 5
                                SecondToMinute (Val(Text2.Text))
                            Case Is = 6
                                ConversionSolution1 = (Val(Text2.Text))
                                   Text3.Text = ConversionSolution1
                        End Select
                End Select
            Case Is = 13 ' Temperature
                Select Case Conversion1
                    Case Is = 0
                        Select Case Conversion2
                            Case Is = 0
                                ConversionSolution1 = (Val(Text2.Text))
                                Text3.Text = ConversionSolution1
                            Case Is = 1
                                DegreeFToDegreeC (Val(Text2.Text))
                            Case Is = 2
                                DegreeFToDegreeK (Val(Text2.Text))
                        End Select
                    Case Is = 1
                        Select Case Conversion2
                            Case Is = 0
                                DegreeCToDegreeF (Val(Text2.Text))
                            Case Is = 1
                                ConversionSolution1 = (Val(Text2.Text))
                                Text3.Text = ConversionSolution1
                            Case Is = 2
                                DegreeCToDegreeK (Val(Text2.Text))
                        End Select
                    Case Is = 2
                        Select Case Conversion2
                            Case Is = 0
                                DegreeKToDegreeF (Val(Text2.Text))
                            Case Is = 1
                                DegreeKToDegreeC (Val(Text2.Text))
                            Case Is = 2
                                ConversionSolution1 = (Val(Text2.Text))
                                   Text3.Text = ConversionSolution1
                        End Select
                End Select
        End Select
        
Exit Function
errhan:
 MsgBox err.Description, vbInformation
End Function


Private Sub Command2_Click()
On Error GoTo errhan:
Dim st1 As Integer
Dim st2 As Integer
st1 = Combo2.ListIndex
st2 = Combo3.ListIndex
st = st - 1
Label9.Caption = Combo2.Text
Label10.Caption = Combo3.Text
Call conversion(st, st1, st2)
If Option1.value = True Then
Option1_Click
ElseIf Option2.value = True Then
Option2_Click
ElseIf Option3.value = True Then
Option3_Click
ElseIf Option4.value = True Then
Option4_Click
ElseIf Option5.value = True Then
Option5_Click
ElseIf Option6.value = True Then
Option6_Click
ElseIf Option7.value = True Then
Option7_Click
ElseIf Option8.value = True Then
Option8_Click
ElseIf Option9.value = True Then
Option9_Click
ElseIf Option10.value = True Then
Option10_Click
ElseIf Option11.value = True Then
Option11_Click
ElseIf Option12.value = True Then
Option12_Click
ElseIf Option13.value = True Then
Option13_Click
ElseIf Option14.value = True Then
Option14_Click
End If
Exit Sub
errhan:
 MsgBox err.Description, vbInformation

End Sub

Private Sub Command3_Click()
Text2.Text = ""
Text3.Text = ""
End Sub

Private Sub Form_Load()

'Me.WindowState = vbMaximized
End Sub

Private Sub Option1_Click()
st = 1
                Combo2.clear
                Combo3.clear
                Combo2.AddItem ("Meter")
                Combo2.AddItem ("Kilometer")
                Combo2.AddItem ("Centimeter")
                Combo2.AddItem ("Millimeter")
                Combo2.AddItem ("Feet")
                Combo2.AddItem ("Inches")
                Combo2.AddItem ("Yards")
                Combo2.AddItem ("Miles")
                Combo2.AddItem ("Nautical Miles")
                Combo3.AddItem ("Meter")
                Combo3.AddItem ("Kilometer")
                Combo3.AddItem ("Centimeter")
                Combo3.AddItem ("Millimeter")
                Combo3.AddItem ("Feet")
                Combo3.AddItem ("Inches")
                Combo3.AddItem ("Yards")
                Combo3.AddItem ("Miles")
                Combo3.AddItem ("Nautical Miles")

End Sub

Private Sub Option10_Click()
st = 10
Combo2.clear
                Combo3.clear
Combo2.AddItem ("Gram-per-cubic cm")
                Combo2.AddItem ("Kilogram-per-cubic m")
                Combo2.AddItem ("Slug-per-cubic ft")
                Combo2.AddItem ("Pound-per cubic ft")
                Combo2.AddItem ("Pound-per-cubic in")
                Combo3.AddItem ("Gram-per-cubic cm")
                Combo3.AddItem ("Kilogram-per-cubic m")
                Combo3.AddItem ("Slug-per-cubic ft")
                Combo3.AddItem ("Pound-per cubic ft")
                Combo3.AddItem ("Pound-per-cubic in")

End Sub

Private Sub Option11_Click()
st = 11
Combo2.clear
                Combo3.clear
Combo2.AddItem ("Ft-per-sec")
                Combo2.AddItem ("Kilometer-per-hr")
                Combo2.AddItem ("Meter-per-sec")
                Combo2.AddItem ("Miles-per-hr")
                Combo2.AddItem ("Knot")
                Combo3.AddItem ("Ft-per-sec")
                Combo3.AddItem ("Kilometer-per-hr")
                Combo3.AddItem ("Meter-per-sec")
                Combo3.AddItem ("Miles-per-hr")
                Combo3.AddItem ("Knot")

End Sub

Private Sub Option12_Click()
st = 12
Combo2.clear
                Combo3.clear
Combo2.AddItem ("Degree")
                Combo2.AddItem ("Minute")
                Combo2.AddItem ("Second")
                Combo2.AddItem ("Radian")
                Combo2.AddItem ("Revolution")
                Combo3.AddItem ("Degree")
                Combo3.AddItem ("Minute")
                Combo3.AddItem ("Second")
                Combo3.AddItem ("Radian")
                Combo3.AddItem ("Revolution")

End Sub

Private Sub Option13_Click()
st = 13
Combo2.clear
                Combo3.clear
Combo2.AddItem ("Year")
                Combo2.AddItem ("Month")
                Combo2.AddItem ("Week")
                Combo2.AddItem ("Day")
                Combo2.AddItem ("Hour")
                Combo2.AddItem ("Minute")
                Combo2.AddItem ("Second")
                Combo3.AddItem ("Year")
                Combo3.AddItem ("Month")
                Combo3.AddItem ("Week")
                Combo3.AddItem ("Day")
                Combo3.AddItem ("Hour")
                Combo3.AddItem ("Minute")
                Combo3.AddItem ("Second")

End Sub

Private Sub Option14_Click()
st = 14
Combo2.clear
                Combo3.clear
Combo2.AddItem ("Fahrenheit")
                Combo2.AddItem ("Celsius")
                Combo2.AddItem ("Kelvin")
                Combo3.AddItem ("Fahrenheit")
                Combo3.AddItem ("Celsius")
                Combo3.AddItem ("Kelvin")

End Sub

Private Sub Option2_Click()
st = 2
Combo2.clear
                Combo3.clear
Combo2.AddItem ("Square Meter")
                Combo2.AddItem ("Square Kilometer")
                Combo2.AddItem ("Square Centimeter")
                Combo2.AddItem ("Square Millimeter")
                Combo2.AddItem ("Square Feet")
                Combo2.AddItem ("Square Inches")
                Combo2.AddItem ("Square Yards")
                Combo2.AddItem ("Square Miles")
                Combo2.AddItem ("Acres")
                Combo3.AddItem ("Square Meter")
                Combo3.AddItem ("Square Kilometer")
                Combo3.AddItem ("Square Centimeter")
                Combo3.AddItem ("Square Millimeter")
                Combo3.AddItem ("Square Feet")
                Combo3.AddItem ("Square Inches")
                Combo3.AddItem ("Square Yards")
                Combo3.AddItem ("Square Miles")
                Combo3.AddItem ("Acres")

End Sub

Private Sub Option3_Click()
st = 3
Combo2.clear
                Combo3.clear
Combo2.AddItem ("Cubic Meter")
                Combo2.AddItem ("Cubic Centimeter")
                Combo2.AddItem ("Cubic Feet")
                Combo2.AddItem ("Cubic Inches")
                Combo2.AddItem ("Liter")
                Combo2.AddItem ("Gallon")
                Combo2.AddItem ("Cup")
                Combo2.AddItem ("Tablespoon")
                Combo2.AddItem ("Teaspoon")
                Combo3.AddItem ("Cubic Meter")
                Combo3.AddItem ("Cubic Centimeter")
                Combo3.AddItem ("Cubic Feet")
                Combo3.AddItem ("Cubic Inches")
                Combo3.AddItem ("Liter")
                Combo3.AddItem ("Gallon")
                Combo3.AddItem ("Cup")
                Combo3.AddItem ("Tablespoon")
                Combo3.AddItem ("Teaspoon")

End Sub

Private Sub Option4_Click()
st = 4
Combo2.clear
                Combo3.clear
                Combo2.AddItem ("Dyne")
                Combo2.AddItem ("Newton")
                Combo2.AddItem ("Pound")
                Combo2.AddItem ("Kilogram-Force")
                Combo2.AddItem ("Ton")
                Combo3.AddItem ("Dyne")
                Combo3.AddItem ("Newton")
                Combo3.AddItem ("Pound")
                Combo3.AddItem ("Kilogram-Force")
                Combo3.AddItem ("Ton")

End Sub

Private Sub Option5_Click()
st = 5
Combo2.clear
                Combo3.clear
Combo2.AddItem ("BTU/hr")
                Combo2.AddItem ("ft-lb/sec")
                Combo2.AddItem ("Horsepower")
                Combo2.AddItem ("calorie/sec")
                Combo2.AddItem ("WATT")
                Combo3.AddItem ("BTU/hr")
                Combo3.AddItem ("ft-lb/sec")
                Combo3.AddItem ("Horsepower")
                Combo3.AddItem ("calorie/sec")
                Combo3.AddItem ("WATT")

End Sub

Private Sub Option6_Click()
st = 6
Combo2.clear
                Combo3.clear
Combo2.AddItem ("BTU")
                Combo2.AddItem ("ft-lb")
                Combo2.AddItem ("Horsepower-hr")
                Combo2.AddItem ("Joule")
                Combo2.AddItem ("Calorie")
                Combo2.AddItem ("Killowatt-hour")
                Combo3.AddItem ("BTU")
                Combo3.AddItem ("ft-lb")
                Combo3.AddItem ("Horsepower-hr")
                Combo3.AddItem ("Joule")
                Combo3.AddItem ("Calorie")
                Combo3.AddItem ("Killowatt-hour")

End Sub

Private Sub Option7_Click()
st = 7
Combo2.clear

                Combo3.clear
                Combo2.AddItem ("Atmosphere")
                Combo2.AddItem ("mmHg")
                Combo2.AddItem ("Pascal")
                Combo2.AddItem ("psi")
                Combo2.AddItem ("pound-per-SqFt")
                Combo2.AddItem ("dyne-per-cm")
                Combo2.AddItem ("Bar")
                Combo3.AddItem ("Atmosphere")
                Combo3.AddItem ("mmHg")
                Combo3.AddItem ("Pascal")
                Combo3.AddItem ("psi")
                Combo3.AddItem ("pound-per-SqFt")
                Combo3.AddItem ("dyne-per-cm")
                Combo3.AddItem ("Bar")

End Sub

Private Sub Option8_Click()
st = 8
Combo2.clear
                Combo3.clear
                Combo2.AddItem ("Ft-lb")
                Combo2.AddItem ("In-lb")
                Combo2.AddItem ("N-m")
                Combo3.AddItem ("Ft-lb")
                Combo3.AddItem ("In-lb")
                Combo3.AddItem ("N-m")

End Sub

Private Sub Option9_Click()
st = 9
Combo2.clear
                Combo3.clear
Combo2.AddItem ("Gram")
                Combo2.AddItem ("Kilogram")
                Combo2.AddItem ("Slug")
                Combo2.AddItem ("Ounce - on Earth")
                Combo2.AddItem ("Pound - on Earth")
                Combo3.AddItem ("Gram")
                Combo3.AddItem ("Kilogram")
                Combo3.AddItem ("Slug")
                Combo3.AddItem ("Ounce - on Earth")
                Combo3.AddItem ("Pound - on Earth")

End Sub

'Private Sub txtInput_Change()
'txtInput.Text = UCase(txtInput.Text)
'SendKeys "{END}"
'End Sub

Private Sub Text2_Validate(Cancel As Boolean)
If IsNumeric(Text2.Text) = False And Text2.Text <> "" Then
 If (Text2.Text <> "-") Then
  i = MsgBox(Text2.Text & " " & "is not a numeric value.Enter only numeric values", vbInformation)
  Text2.Text = ""
  Text2.SetFocus
 End If
End If
End Sub
Private Sub txtInput_Validate(Cancel As Boolean)
If IsNumeric(txtInput.Text) = False And txtInput.Text <> "" Then
 If (txtInput.Text <> "-") Then
  i = MsgBox(txtInput.Text & " " & "is not a numeric value.Enter only numeric values", vbInformation)
  txtInput.Text = ""
  txtInput.SetFocus
 End If
End If
End Sub

