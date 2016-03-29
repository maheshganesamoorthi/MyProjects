VERSION 5.00
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "mscomct2.ocx"
Begin VB.Form calender 
   Caption         =   "Calender"
   ClientHeight    =   4125
   ClientLeft      =   60
   ClientTop       =   420
   ClientWidth     =   4005
   BeginProperty Font 
      Name            =   "Arial"
      Size            =   11.25
      Charset         =   0
      Weight          =   400
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   Icon            =   "calender.frx":0000
   LinkTopic       =   "Form1"
   ScaleHeight     =   4125
   ScaleWidth      =   4005
   StartUpPosition =   3  'Windows Default
   Begin MSComCtl2.MonthView MonthView1 
      Height          =   3120
      Left            =   240
      TabIndex        =   0
      Top             =   240
      Width           =   3540
      _ExtentX        =   6244
      _ExtentY        =   5503
      _Version        =   393216
      ForeColor       =   -2147483630
      BackColor       =   -2147483633
      Appearance      =   1
      StartOfWeek     =   67108865
      TitleBackColor  =   16761087
      TitleForeColor  =   16711680
      TrailingForeColor=   -2147483632
      CurrentDate     =   40303
   End
   Begin VB.Label Label1 
      Caption         =   "            Label1"
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
      Left            =   240
      TabIndex        =   1
      Top             =   3600
      Width           =   3375
   End
End
Attribute VB_Name = "calender"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
Me.Hide
End Sub

Private Sub Form_Load()
Label1.Caption = Format$(Now, "long Date")
MonthView1.Value = Date
End Sub
