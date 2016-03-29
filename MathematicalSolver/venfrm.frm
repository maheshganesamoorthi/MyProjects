VERSION 5.00
Begin VB.Form venfrm 
   BackColor       =   &H00C0FFFF&
   Caption         =   "Venn Diagram for sets "
   ClientHeight    =   9750
   ClientLeft      =   60
   ClientTop       =   420
   ClientWidth     =   14070
   Icon            =   "venfrm.frx":0000
   LinkTopic       =   "Form1"
   ScaleHeight     =   9750
   ScaleWidth      =   14070
   StartUpPosition =   3  'Windows Default
   Begin VB.Frame Frame2 
      BackColor       =   &H00C0FFFF&
      Caption         =   "Venn Diagram :"
      ForeColor       =   &H000000FF&
      Height          =   7215
      Left            =   5880
      TabIndex        =   12
      Top             =   2520
      Width           =   9255
      Begin VB.Image Image13 
         Height          =   2865
         Left            =   1800
         Picture         =   "venfrm.frx":076A
         Top             =   2160
         Width           =   6780
      End
      Begin VB.Image Image12 
         Height          =   3345
         Left            =   1560
         Picture         =   "venfrm.frx":3FB60
         Top             =   1920
         Width           =   6570
      End
      Begin VB.Image Image11 
         Height          =   3090
         Left            =   1800
         Picture         =   "venfrm.frx":875FE
         Top             =   1920
         Width           =   7140
      End
      Begin VB.Image Image10 
         Height          =   6360
         Left            =   600
         Picture         =   "venfrm.frx":CF358
         Top             =   480
         Width           =   8115
      End
      Begin VB.Image Image9 
         Height          =   6270
         Left            =   720
         Picture         =   "venfrm.frx":17755A
         Top             =   600
         Width           =   8010
      End
      Begin VB.Image Image8 
         Height          =   6885
         Left            =   600
         Picture         =   "venfrm.frx":21B0A4
         Top             =   240
         Width           =   8145
      End
      Begin VB.Image Image7 
         Height          =   6675
         Left            =   600
         Picture         =   "venfrm.frx":2D1F06
         Top             =   360
         Width           =   7860
      End
      Begin VB.Image Image6 
         Height          =   5625
         Left            =   120
         Picture         =   "venfrm.frx":37CBDC
         Top             =   840
         Width           =   8865
      End
      Begin VB.Image Image5 
         Height          =   5730
         Left            =   480
         Picture         =   "venfrm.frx":41F5AE
         Top             =   840
         Width           =   8730
      End
      Begin VB.Image Image4 
         Height          =   5775
         Left            =   2640
         Picture         =   "venfrm.frx":4C2648
         Top             =   960
         Width           =   4260
      End
      Begin VB.Image Image3 
         Height          =   5730
         Left            =   840
         Picture         =   "venfrm.frx":5127DE
         Top             =   720
         Width           =   7905
      End
   End
   Begin VB.Frame Frame1 
      BackColor       =   &H00C0FFFF&
      Caption         =   "Select the required option :"
      ForeColor       =   &H000000FF&
      Height          =   7215
      Left            =   240
      TabIndex        =   0
      Top             =   2520
      Width           =   5535
      Begin VB.OptionButton Option11 
         BackColor       =   &H00C0FFFF&
         Caption         =   "De Morgan’s Laws - 4"
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
         Left            =   480
         TabIndex        =   11
         Top             =   6360
         Width           =   4695
      End
      Begin VB.OptionButton Option10 
         BackColor       =   &H00C0FFFF&
         Caption         =   "De Morgan’s Laws - 3"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   495
         Left            =   480
         TabIndex        =   10
         Top             =   5760
         Width           =   4695
      End
      Begin VB.OptionButton Option9 
         BackColor       =   &H00C0FFFF&
         Caption         =   "De Morgan’s Laws - 2"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   495
         Left            =   480
         TabIndex        =   9
         Top             =   5160
         Width           =   4695
      End
      Begin VB.OptionButton Option8 
         BackColor       =   &H00C0FFFF&
         Caption         =   "De Morgan’s Laws - 1"
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
         Left            =   480
         TabIndex        =   8
         Top             =   4680
         Width           =   4695
      End
      Begin VB.OptionButton Option7 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Distributive laws - 2"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   615
         Left            =   480
         TabIndex        =   7
         Top             =   4080
         Width           =   4695
      End
      Begin VB.OptionButton Option6 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Distributive laws - 1"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   495
         Left            =   480
         TabIndex        =   6
         Top             =   3600
         Width           =   4575
      End
      Begin VB.OptionButton Option5 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Associative law for intersection of sets"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   495
         Left            =   480
         TabIndex        =   5
         Top             =   3000
         Width           =   4695
      End
      Begin VB.OptionButton Option4 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Associative law for union sets"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   735
         Left            =   480
         TabIndex        =   4
         Top             =   2280
         Width           =   4095
      End
      Begin VB.OptionButton Option3 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Idempotency of Union and Intersection of two sets"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   735
         Left            =   480
         TabIndex        =   3
         Top             =   1680
         Width           =   4935
      End
      Begin VB.OptionButton Option2 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Intersection of two sets is commutative"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   495
         Left            =   480
         TabIndex        =   2
         Top             =   1200
         Width           =   4935
      End
      Begin VB.OptionButton Option1 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Union of two sets is commutative"
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
         Left            =   480
         TabIndex        =   1
         Top             =   720
         Width           =   3615
      End
   End
   Begin VB.Image Image2 
      Height          =   555
      Left            =   6840
      Picture         =   "venfrm.frx":5A63C0
      Top             =   1800
      Width           =   1080
   End
   Begin VB.Image Image1 
      Height          =   1710
      Left            =   0
      Picture         =   "venfrm.frx":5A833A
      Stretch         =   -1  'True
      Top             =   0
      Width           =   15360
   End
End
Attribute VB_Name = "venfrm"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Form_Load()
Me.WindowState = vbMaximized
Image3.Visible = False
Image4.Visible = False
Image5.Visible = False
Image6.Visible = False
Image7.Visible = False
Image8.Visible = False
Image9.Visible = False
Image10.Visible = False
Image11.Visible = False
Image12.Visible = False
Image13.Visible = False
End Sub

Private Sub Option1_Click()
Image3.Visible = False
Image4.Visible = False
Image5.Visible = False
Image6.Visible = False
Image7.Visible = False
Image8.Visible = False
Image9.Visible = False
Image10.Visible = False
Image11.Visible = True
Image12.Visible = False
Image13.Visible = False
End Sub
Private Sub Option2_Click()
Image3.Visible = False
Image4.Visible = False
Image5.Visible = False
Image6.Visible = False
Image7.Visible = False
Image8.Visible = False
Image9.Visible = False
Image10.Visible = False
Image11.Visible = False
Image12.Visible = False
Image13.Visible = True
End Sub
Private Sub Option3_Click()
Image3.Visible = False
Image4.Visible = False
Image5.Visible = False
Image6.Visible = False
Image7.Visible = False
Image8.Visible = False
Image9.Visible = False
Image10.Visible = False
Image11.Visible = False
Image12.Visible = True
Image13.Visible = False
End Sub
Private Sub Option4_Click()
Image3.Visible = True
Image4.Visible = False
Image5.Visible = False
Image6.Visible = False
Image7.Visible = False
Image8.Visible = False
Image9.Visible = False
Image10.Visible = False
Image11.Visible = False
Image12.Visible = False
Image13.Visible = False
End Sub
Private Sub Option5_Click()
Image3.Visible = False
Image4.Visible = True
Image5.Visible = False
Image6.Visible = False
Image7.Visible = False
Image8.Visible = False
Image9.Visible = False
Image10.Visible = False
Image11.Visible = False
Image12.Visible = False
Image13.Visible = False
End Sub
Private Sub Option6_Click()
Image3.Visible = False
Image4.Visible = False
Image5.Visible = False
Image6.Visible = False
Image7.Visible = False
Image8.Visible = False
Image9.Visible = False
Image10.Visible = True
Image11.Visible = False
Image12.Visible = False
Image13.Visible = False
End Sub
Private Sub Option7_Click()
Image3.Visible = False
Image4.Visible = False
Image5.Visible = False
Image6.Visible = False
Image7.Visible = False
Image8.Visible = False
Image9.Visible = True
Image10.Visible = False
Image11.Visible = False
Image12.Visible = False
Image13.Visible = False
End Sub
Private Sub Option8_Click()
Image3.Visible = False
Image4.Visible = False
Image5.Visible = False
Image6.Visible = False
Image7.Visible = True
Image8.Visible = False
Image9.Visible = False
Image10.Visible = False
Image11.Visible = False
Image12.Visible = False
Image13.Visible = False
End Sub
Private Sub Option9_Click()
Image3.Visible = False
Image4.Visible = False
Image5.Visible = False
Image6.Visible = False
Image7.Visible = False
Image8.Visible = True
Image9.Visible = False
Image10.Visible = False
Image11.Visible = False
Image12.Visible = False
Image13.Visible = False
End Sub
Private Sub Option10_Click()
Image3.Visible = False
Image4.Visible = False
Image5.Visible = True
Image6.Visible = False
Image7.Visible = False
Image8.Visible = False
Image9.Visible = False
Image10.Visible = False
Image11.Visible = False
Image12.Visible = False
Image13.Visible = False
End Sub
Private Sub Option11_Click()
Image3.Visible = False
Image4.Visible = False
Image5.Visible = False
Image6.Visible = True
Image7.Visible = False
Image8.Visible = False
Image9.Visible = False
Image10.Visible = False
Image11.Visible = False
Image12.Visible = False
Image13.Visible = False
End Sub
