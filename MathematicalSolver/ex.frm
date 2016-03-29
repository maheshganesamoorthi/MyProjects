VERSION 5.00
Begin VB.Form ex 
   Caption         =   "Form1"
   ClientHeight    =   3120
   ClientLeft      =   60
   ClientTop       =   420
   ClientWidth     =   4680
   LinkTopic       =   "Form1"
   ScaleHeight     =   3120
   ScaleWidth      =   4680
   StartUpPosition =   3  'Windows Default
   Begin VB.OptionButton Option1 
      Caption         =   "Centimeter"
      Height          =   375
      Left            =   240
      TabIndex        =   9
      Top             =   600
      Width           =   1215
   End
   Begin VB.OptionButton Option2 
      Caption         =   "Meter"
      Height          =   375
      Left            =   240
      TabIndex        =   8
      Top             =   1080
      Width           =   1095
   End
   Begin VB.OptionButton Option3 
      Caption         =   "Millimeter"
      Height          =   375
      Left            =   240
      TabIndex        =   7
      Top             =   1560
      Width           =   1095
   End
   Begin VB.OptionButton Option4 
      Caption         =   "Decimeter"
      Height          =   375
      Left            =   240
      TabIndex        =   6
      Top             =   2040
      Width           =   1095
   End
   Begin VB.OptionButton Option5 
      Caption         =   "Hecter"
      Height          =   375
      Left            =   240
      TabIndex        =   5
      Top             =   2520
      Width           =   1095
   End
   Begin VB.OptionButton Option6 
      Caption         =   "Centimeter"
      Height          =   255
      Left            =   3120
      TabIndex        =   4
      Top             =   720
      Width           =   1455
   End
   Begin VB.OptionButton Option7 
      Caption         =   "Meter"
      Height          =   375
      Left            =   3120
      TabIndex        =   3
      Top             =   1080
      Width           =   1335
   End
   Begin VB.OptionButton Option8 
      Caption         =   "Millimeter"
      Height          =   375
      Left            =   3120
      TabIndex        =   2
      Top             =   1560
      Width           =   1095
   End
   Begin VB.OptionButton Option9 
      Caption         =   "Decimeter"
      Height          =   375
      Left            =   3120
      TabIndex        =   1
      Top             =   2040
      Width           =   1335
   End
   Begin VB.OptionButton Option10 
      Caption         =   "Hecter"
      Height          =   255
      Left            =   3120
      TabIndex        =   0
      Top             =   2520
      Width           =   1215
   End
   Begin VB.Image Image6 
      Height          =   4905
      Left            =   5520
      Picture         =   "ex.frx":0000
      Top             =   3600
      Width           =   2760
   End
   Begin VB.Label Label1 
      Caption         =   "INPUT:"
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
      Left            =   0
      TabIndex        =   11
      Top             =   0
      Width           =   1215
   End
   Begin VB.Label Label2 
      Caption         =   "OUTPUT:"
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
      Left            =   3000
      TabIndex        =   10
      Top             =   0
      Width           =   1095
   End
End
Attribute VB_Name = "ex"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
