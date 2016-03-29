VERSION 5.00
Begin VB.Form surf 
   Caption         =   "Form1"
   ClientHeight    =   3120
   ClientLeft      =   60
   ClientTop       =   420
   ClientWidth     =   4680
   LinkTopic       =   "Form1"
   ScaleHeight     =   3120
   ScaleWidth      =   4680
   StartUpPosition =   3  'Windows Default
   Begin VB.Frame Frame3 
      Caption         =   "Frame3"
      Height          =   6495
      Left            =   7680
      TabIndex        =   1
      Top             =   120
      Width           =   7455
   End
   Begin VB.Frame Frame2 
      Caption         =   "Parallogram"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   10815
      Left            =   120
      TabIndex        =   0
      Top             =   120
      Width           =   7455
      Begin VB.CommandButton Command1 
         Caption         =   "Solve"
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
         Left            =   2400
         TabIndex        =   14
         Top             =   5760
         Width           =   2535
      End
      Begin VB.OptionButton Option11 
         Caption         =   "Find Height                      (Given  Breath , length and Volume)"
         Height          =   735
         Left            =   3720
         TabIndex        =   13
         Top             =   4800
         Width           =   2535
      End
      Begin VB.OptionButton O121 
         Caption         =   "Find length                    (Given Height , breath and volume)"
         Height          =   735
         Left            =   3720
         TabIndex        =   8
         Top             =   3960
         Width           =   2415
      End
      Begin VB.OptionButton O120 
         Caption         =   "Find breath                             (Given  Length , Height and volume"
         Height          =   615
         Left            =   960
         TabIndex        =   7
         Top             =   4800
         Width           =   2535
      End
      Begin VB.OptionButton O119 
         Caption         =   "Find Volume"
         Height          =   495
         Left            =   960
         TabIndex        =   6
         Top             =   4080
         Width           =   2055
      End
      Begin VB.TextBox T34 
         Height          =   615
         Left            =   1920
         TabIndex        =   5
         Top             =   2880
         Width           =   2895
      End
      Begin VB.TextBox T33 
         Height          =   615
         Left            =   1920
         TabIndex        =   4
         Top             =   240
         Width           =   2895
      End
      Begin VB.TextBox T32 
         Height          =   615
         Left            =   1920
         TabIndex        =   3
         Top             =   1920
         Width           =   2895
      End
      Begin VB.TextBox T31 
         Height          =   615
         Left            =   1920
         TabIndex        =   2
         Top             =   1080
         Width           =   2895
      End
      Begin VB.Label Label50 
         Caption         =   "  Volume:"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   615
         Left            =   120
         TabIndex        =   12
         Top             =   3000
         Width           =   1335
      End
      Begin VB.Label Label49 
         Caption         =   "       Height:"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   615
         Left            =   240
         TabIndex        =   11
         Top             =   1920
         Width           =   855
      End
      Begin VB.Label Label48 
         Caption         =   "Length:"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   615
         Left            =   240
         TabIndex        =   10
         Top             =   360
         Width           =   1455
      End
      Begin VB.Label Label47 
         Caption         =   "Breath:"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   615
         Left            =   240
         TabIndex        =   9
         Top             =   1080
         Width           =   1455
      End
   End
End
Attribute VB_Name = "surf"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Form_Load()
Me.WindowState = vbMaximized
End Sub
