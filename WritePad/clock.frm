VERSION 5.00
Begin VB.Form clock 
   BackColor       =   &H00C0C0FF&
   Caption         =   "Clock"
   ClientHeight    =   4920
   ClientLeft      =   60
   ClientTop       =   420
   ClientWidth     =   6375
   Icon            =   "clock.frx":0000
   LinkTopic       =   "Form1"
   ScaleHeight     =   4920
   ScaleWidth      =   6375
   StartUpPosition =   3  'Windows Default
   Begin VB.Frame Frame1 
      BackColor       =   &H00C0C0FF&
      BorderStyle     =   0  'None
      Caption         =   "Frame1"
      Height          =   4815
      Left            =   0
      TabIndex        =   3
      Top             =   0
      Width           =   3855
      Begin VB.Line LineSecond 
         BorderColor     =   &H00000000&
         X1              =   1917
         X2              =   720
         Y1              =   2280
         Y2              =   3360
      End
      Begin VB.Line LineMinute 
         BorderColor     =   &H00000000&
         BorderWidth     =   3
         X1              =   1905
         X2              =   1035
         Y1              =   2280
         Y2              =   1560
      End
      Begin VB.Line LineHour 
         BorderColor     =   &H00000000&
         BorderWidth     =   5
         X1              =   1920
         X2              =   3330
         Y1              =   2280
         Y2              =   1320
      End
   End
   Begin VB.Timer Timer1 
      Interval        =   1000
      Left            =   4440
      Top             =   3480
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Exit"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   4080
      TabIndex        =   0
      Top             =   2760
      Width           =   1815
   End
   Begin VB.Label Label3 
      BackColor       =   &H00C0C0FF&
      Caption         =   "Label3"
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
      Left            =   5400
      TabIndex        =   4
      Top             =   360
      Width           =   975
   End
   Begin VB.Label Label2 
      BackColor       =   &H00C0C0FF&
      Caption         =   "Label2"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   975
      Left            =   3960
      TabIndex        =   2
      Top             =   1200
      Width           =   1935
   End
   Begin VB.Label Label1 
      BackColor       =   &H00C0C0FF&
      Caption         =   "Label1"
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
      Left            =   3960
      TabIndex        =   1
      Top             =   360
      Width           =   1335
   End
End
Attribute VB_Name = "clock"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Const PI = 3.14159




Private Sub Command1_Click()
Unload Me
End Sub



Private Sub Form_Load()
Label2.Caption = Format$(Now, "Long date")
Call Timer1_Timer
End Sub



Private Sub Timer1_Timer()
Dim Hours As Single, Minutes As Single, Seconds As Single
Dim TrueHours As Single

Label1.Caption = Time
Label3.Caption = "(" & " " & Format$(Now, "short time") & " " & ")"
'Beep
Hours = Hour(Time)
Minutes = Minute(Time)
Seconds = Second(Time)
TrueHours = Hours + Minutes / 60

' I made all the X1 and Y1 equal in the form
LineHour.X2 = 1000 * Cos(PI / 180 * (30 * TrueHours - 90)) + LineHour.X1
LineHour.Y2 = 1000 * Sin(PI / 180 * (30 * TrueHours - 90)) + LineHour.Y1
    
LineMinute.X2 = 1500 * Cos(PI / 180 * (6 * Minutes - 90)) + LineHour.X1
LineMinute.Y2 = 1500 * Sin(PI / 180 * (6 * Minutes - 90)) + LineHour.Y1

LineSecond.X2 = 1600 * Cos(PI / 180 * (6 * Seconds - 90)) + LineHour.X1
LineSecond.Y2 = 1600 * Sin(PI / 180 * (6 * Seconds - 90)) + LineHour.Y1
    
End Sub
