VERSION 5.00
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "TABCTL32.OCX"
Begin VB.Form surfrm2 
   BackColor       =   &H00C0FFFF&
   Caption         =   "Mensuration"
   ClientHeight    =   10860
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   12015
   Icon            =   "surfrm2.frx":0000
   LinkTopic       =   "Form1"
   ScaleHeight     =   10860
   ScaleWidth      =   12015
   StartUpPosition =   3  'Windows Default
   Begin TabDlg.SSTab SSTab1 
      Height          =   8535
      Left            =   0
      TabIndex        =   0
      Top             =   2160
      Width           =   15375
      _ExtentX        =   27120
      _ExtentY        =   15055
      _Version        =   393216
      Tabs            =   8
      Tab             =   1
      TabsPerRow      =   4
      TabHeight       =   520
      BackColor       =   12648447
      TabCaption(0)   =   "Octagon Prism"
      TabPicture(0)   =   "surfrm2.frx":038A
      Tab(0).ControlEnabled=   0   'False
      Tab(0).Control(0)=   "Label70"
      Tab(0).Control(1)=   "Label69"
      Tab(0).Control(2)=   "Label68"
      Tab(0).Control(3)=   "Label67"
      Tab(0).Control(4)=   "Label66"
      Tab(0).Control(5)=   "Label65"
      Tab(0).Control(6)=   "Image1"
      Tab(0).Control(7)=   "Command24"
      Tab(0).Control(8)=   "ot2"
      Tab(0).Control(9)=   "ot1"
      Tab(0).Control(10)=   "tt4"
      Tab(0).Control(11)=   "tt3"
      Tab(0).Control(12)=   "tt2"
      Tab(0).Control(13)=   "tt1"
      Tab(0).Control(14)=   "ot4"
      Tab(0).Control(15)=   "Command23"
      Tab(0).Control(16)=   "in3"
      Tab(0).Control(17)=   "out3"
      Tab(0).Control(18)=   "ot5"
      Tab(0).Control(19)=   "ot6"
      Tab(0).ControlCount=   20
      TabCaption(1)   =   "Parallelogram"
      TabPicture(1)   =   "surfrm2.frx":03A6
      Tab(1).ControlEnabled=   -1  'True
      Tab(1).Control(0)=   "Label1"
      Tab(1).Control(0).Enabled=   0   'False
      Tab(1).Control(1)=   "Label2"
      Tab(1).Control(1).Enabled=   0   'False
      Tab(1).Control(2)=   "Label3"
      Tab(1).Control(2).Enabled=   0   'False
      Tab(1).Control(3)=   "Label4"
      Tab(1).Control(3).Enabled=   0   'False
      Tab(1).Control(4)=   "Label5"
      Tab(1).Control(4).Enabled=   0   'False
      Tab(1).Control(5)=   "Image2"
      Tab(1).Control(5).Enabled=   0   'False
      Tab(1).Control(6)=   "out1"
      Tab(1).Control(6).Enabled=   0   'False
      Tab(1).Control(7)=   "in1"
      Tab(1).Control(7).Enabled=   0   'False
      Tab(1).Control(8)=   "Command1"
      Tab(1).Control(8).Enabled=   0   'False
      Tab(1).Control(9)=   "O3"
      Tab(1).Control(9).Enabled=   0   'False
      Tab(1).Control(10)=   "T1"
      Tab(1).Control(10).Enabled=   0   'False
      Tab(1).Control(11)=   "T2"
      Tab(1).Control(11).Enabled=   0   'False
      Tab(1).Control(12)=   "T3"
      Tab(1).Control(12).Enabled=   0   'False
      Tab(1).Control(13)=   "O1"
      Tab(1).Control(13).Enabled=   0   'False
      Tab(1).Control(14)=   "O2"
      Tab(1).Control(14).Enabled=   0   'False
      Tab(1).Control(15)=   "Command2"
      Tab(1).Control(15).Enabled=   0   'False
      Tab(1).ControlCount=   16
      TabCaption(2)   =   "Rhombus"
      TabPicture(2)   =   "surfrm2.frx":03C2
      Tab(2).ControlEnabled=   0   'False
      Tab(2).Control(0)=   "Command4"
      Tab(2).Control(1)=   "n2"
      Tab(2).Control(2)=   "n1"
      Tab(2).Control(3)=   "x4"
      Tab(2).Control(4)=   "x3"
      Tab(2).Control(5)=   "x2"
      Tab(2).Control(6)=   "x1"
      Tab(2).Control(7)=   "n3"
      Tab(2).Control(8)=   "Command3"
      Tab(2).Control(9)=   "in2"
      Tab(2).Control(10)=   "out2"
      Tab(2).Control(11)=   "n4"
      Tab(2).Control(12)=   "Image3"
      Tab(2).Control(13)=   "Label11"
      Tab(2).Control(14)=   "Label10"
      Tab(2).Control(15)=   "Label9"
      Tab(2).Control(16)=   "Label8"
      Tab(2).Control(17)=   "Label7"
      Tab(2).Control(18)=   "Label6"
      Tab(2).ControlCount=   19
      TabCaption(3)   =   "Trapezoid"
      TabPicture(3)   =   "surfrm2.frx":03DE
      Tab(3).ControlEnabled=   0   'False
      Tab(3).Control(0)=   "out4"
      Tab(3).Control(1)=   "in4"
      Tab(3).Control(2)=   "Command6"
      Tab(3).Control(3)=   "p3"
      Tab(3).Control(4)=   "e1"
      Tab(3).Control(5)=   "e2"
      Tab(3).Control(6)=   "e3"
      Tab(3).Control(7)=   "e4"
      Tab(3).Control(8)=   "p1"
      Tab(3).Control(9)=   "p2"
      Tab(3).Control(10)=   "Command5"
      Tab(3).Control(11)=   "Image4"
      Tab(3).Control(12)=   "Label17"
      Tab(3).Control(13)=   "Label16"
      Tab(3).Control(14)=   "Label15"
      Tab(3).Control(15)=   "Label14"
      Tab(3).Control(16)=   "Label13"
      Tab(3).Control(17)=   "Label12"
      Tab(3).ControlCount=   18
      TabCaption(4)   =   "Equilateral Triangle"
      TabPicture(4)   =   "surfrm2.frx":03FA
      Tab(4).ControlEnabled=   0   'False
      Tab(4).Control(0)=   "i2"
      Tab(4).Control(1)=   "out5"
      Tab(4).Control(2)=   "in5"
      Tab(4).Control(3)=   "Command8"
      Tab(4).Control(4)=   "i4"
      Tab(4).Control(5)=   "s1"
      Tab(4).Control(6)=   "s2"
      Tab(4).Control(7)=   "s3"
      Tab(4).Control(8)=   "i1"
      Tab(4).Control(9)=   "i3"
      Tab(4).Control(10)=   "Command7"
      Tab(4).Control(11)=   "Image5"
      Tab(4).Control(12)=   "Label22"
      Tab(4).Control(13)=   "Label21"
      Tab(4).Control(14)=   "Label20"
      Tab(4).Control(15)=   "Label19"
      Tab(4).Control(16)=   "Label18"
      Tab(4).ControlCount=   17
      TabCaption(5)   =   "Triangle (Given SAS)"
      TabPicture(5)   =   "surfrm2.frx":0416
      Tab(5).ControlEnabled=   0   'False
      Tab(5).Control(0)=   "ex3"
      Tab(5).Control(1)=   "pt4"
      Tab(5).Control(2)=   "out6"
      Tab(5).Control(3)=   "in6"
      Tab(5).Control(4)=   "Command10"
      Tab(5).Control(5)=   "pt3"
      Tab(5).Control(6)=   "ex1"
      Tab(5).Control(7)=   "ex2"
      Tab(5).Control(8)=   "ex4"
      Tab(5).Control(9)=   "ex5"
      Tab(5).Control(10)=   "pt1"
      Tab(5).Control(11)=   "pt2"
      Tab(5).Control(12)=   "Command9"
      Tab(5).Control(13)=   "Image6"
      Tab(5).Control(14)=   "Label29"
      Tab(5).Control(15)=   "Label28"
      Tab(5).Control(16)=   "Label27"
      Tab(5).Control(17)=   "Label26"
      Tab(5).Control(18)=   "Label25"
      Tab(5).Control(19)=   "Label24"
      Tab(5).Control(20)=   "Label23"
      Tab(5).ControlCount=   21
      TabCaption(6)   =   "Triangle (Given SSS)"
      TabPicture(6)   =   "surfrm2.frx":0432
      Tab(6).ControlEnabled=   0   'False
      Tab(6).Control(0)=   "Command12"
      Tab(6).Control(1)=   "ti2"
      Tab(6).Control(2)=   "ti1"
      Tab(6).Control(3)=   "et5"
      Tab(6).Control(4)=   "et4"
      Tab(6).Control(5)=   "et2"
      Tab(6).Control(6)=   "et1"
      Tab(6).Control(7)=   "ti3"
      Tab(6).Control(8)=   "Command11"
      Tab(6).Control(9)=   "in7"
      Tab(6).Control(10)=   "out7"
      Tab(6).Control(11)=   "et3"
      Tab(6).Control(12)=   "Image7"
      Tab(6).Control(13)=   "Label36"
      Tab(6).Control(14)=   "Label35"
      Tab(6).Control(15)=   "Label34"
      Tab(6).Control(16)=   "Label33"
      Tab(6).Control(17)=   "Label32"
      Tab(6).Control(18)=   "Label31"
      Tab(6).Control(19)=   "Label30"
      Tab(6).ControlCount=   20
      TabCaption(7)   =   "Formula"
      TabPicture(7)   =   "surfrm2.frx":044E
      Tab(7).ControlEnabled=   0   'False
      Tab(7).ControlCount=   0
      Begin VB.CommandButton Command12 
         BackColor       =   &H00C0C0C0&
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
         Height          =   495
         Left            =   -70200
         Style           =   1  'Graphical
         TabIndex        =   117
         Top             =   6120
         Width           =   1695
      End
      Begin VB.OptionButton ti2 
         Caption         =   "Find Perimeter                  (Given three sides)"
         Height          =   615
         Left            =   -73920
         TabIndex        =   116
         Top             =   7200
         Width           =   2535
      End
      Begin VB.OptionButton ti1 
         Caption         =   "Find Area                              (Given three sides)"
         Height          =   735
         Left            =   -73920
         TabIndex        =   115
         Top             =   6000
         Width           =   2655
      End
      Begin VB.TextBox et5 
         Height          =   495
         Left            =   -72360
         TabIndex        =   114
         Top             =   4200
         Width           =   2895
      End
      Begin VB.TextBox et4 
         Height          =   495
         Left            =   -72360
         TabIndex        =   113
         Top             =   3480
         Width           =   2895
      End
      Begin VB.TextBox et2 
         Height          =   495
         Left            =   -72360
         TabIndex        =   112
         Top             =   2040
         Width           =   2895
      End
      Begin VB.TextBox et1 
         Height          =   495
         Left            =   -72360
         TabIndex        =   111
         Top             =   1320
         Width           =   2895
      End
      Begin VB.OptionButton ti3 
         Caption         =   "Find Side                                     (Given Perimeter and two sides)"
         Height          =   735
         Left            =   -73920
         TabIndex        =   110
         Top             =   6600
         Width           =   3015
      End
      Begin VB.CommandButton Command11 
         BackColor       =   &H00C0C0C0&
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
         Height          =   495
         Left            =   -70200
         Style           =   1  'Graphical
         TabIndex        =   109
         Top             =   6720
         Width           =   1695
      End
      Begin VB.ComboBox in7 
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   315
         Left            =   -73920
         TabIndex        =   108
         Text            =   "Millimeter"
         Top             =   5520
         Visible         =   0   'False
         Width           =   2055
      End
      Begin VB.ComboBox out7 
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   315
         Left            =   -71640
         TabIndex        =   107
         Text            =   "Millimeter"
         Top             =   5520
         Visible         =   0   'False
         Width           =   2055
      End
      Begin VB.TextBox et3 
         Height          =   495
         Left            =   -72360
         TabIndex        =   106
         Top             =   2760
         Width           =   2895
      End
      Begin VB.TextBox ex3 
         Height          =   495
         Left            =   -72360
         TabIndex        =   104
         Top             =   2520
         Width           =   2895
      End
      Begin VB.OptionButton pt4 
         Caption         =   "Find Side                                       (Given Area, Angle and another side)"
         Height          =   735
         Left            =   -70080
         TabIndex        =   97
         Top             =   6480
         Width           =   3135
      End
      Begin VB.ComboBox out6 
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   315
         Left            =   -71760
         TabIndex        =   96
         Text            =   "Millimeter"
         Top             =   5280
         Visible         =   0   'False
         Width           =   2055
      End
      Begin VB.ComboBox in6 
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   315
         Left            =   -74040
         TabIndex        =   95
         Text            =   "Millimeter"
         Top             =   5280
         Visible         =   0   'False
         Width           =   2055
      End
      Begin VB.CommandButton Command10 
         BackColor       =   &H00C0C0C0&
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
         Height          =   495
         Left            =   -67800
         Style           =   1  'Graphical
         TabIndex        =   94
         Top             =   7320
         Width           =   1695
      End
      Begin VB.OptionButton pt3 
         Caption         =   "Find Angle                                   (Given Area and two sides)"
         Height          =   735
         Left            =   -70080
         TabIndex        =   93
         Top             =   5880
         Width           =   3015
      End
      Begin VB.TextBox ex1 
         Height          =   495
         Left            =   -72360
         TabIndex        =   92
         Top             =   1080
         Width           =   2895
      End
      Begin VB.TextBox ex2 
         Height          =   495
         Left            =   -72360
         TabIndex        =   91
         Top             =   1800
         Width           =   2895
      End
      Begin VB.TextBox ex4 
         Height          =   495
         Left            =   -72360
         TabIndex        =   90
         Top             =   3240
         Width           =   2895
      End
      Begin VB.TextBox ex5 
         Height          =   495
         Left            =   -72360
         TabIndex        =   89
         Top             =   3960
         Width           =   2895
      End
      Begin VB.OptionButton pt1 
         Caption         =   "Find Area                         (Given two sides and angle)"
         Height          =   735
         Left            =   -73320
         TabIndex        =   88
         Top             =   5880
         Width           =   2535
      End
      Begin VB.OptionButton pt2 
         Caption         =   "Find Perimeter                  (Given two sides and angle)"
         Height          =   615
         Left            =   -73320
         TabIndex        =   87
         Top             =   6600
         Width           =   2535
      End
      Begin VB.CommandButton Command9 
         BackColor       =   &H00C0C0C0&
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
         Height          =   495
         Left            =   -69840
         Style           =   1  'Graphical
         TabIndex        =   86
         Top             =   7320
         Width           =   1695
      End
      Begin VB.OptionButton i2 
         Caption         =   "Find Perimeter         (Given Side)"
         Height          =   735
         Left            =   -74160
         TabIndex        =   85
         Top             =   6480
         Width           =   1695
      End
      Begin VB.ComboBox out5 
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   315
         Left            =   -71760
         TabIndex        =   79
         Text            =   "Millimeter"
         Top             =   4920
         Visible         =   0   'False
         Width           =   2055
      End
      Begin VB.ComboBox in5 
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   315
         Left            =   -74040
         TabIndex        =   78
         Text            =   "Millimeter"
         Top             =   4920
         Visible         =   0   'False
         Width           =   2055
      End
      Begin VB.CommandButton Command8 
         BackColor       =   &H00C0C0C0&
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
         Height          =   495
         Left            =   -69240
         Style           =   1  'Graphical
         TabIndex        =   77
         Top             =   7440
         Width           =   1695
      End
      Begin VB.OptionButton i4 
         Caption         =   "Find Side                         (Given Perimeter)"
         Height          =   735
         Left            =   -72120
         TabIndex        =   76
         Top             =   6480
         Width           =   2535
      End
      Begin VB.TextBox s1 
         Height          =   615
         Left            =   -72480
         TabIndex        =   75
         Top             =   1440
         Width           =   2895
      End
      Begin VB.TextBox s2 
         Height          =   615
         Left            =   -72480
         TabIndex        =   74
         Top             =   2280
         Width           =   2895
      End
      Begin VB.TextBox s3 
         Height          =   615
         Left            =   -72480
         TabIndex        =   73
         Top             =   3240
         Width           =   2895
      End
      Begin VB.OptionButton i1 
         Caption         =   "Find Area           (Given Side)"
         Height          =   735
         Left            =   -74160
         TabIndex        =   72
         Top             =   5760
         Width           =   1455
      End
      Begin VB.OptionButton i3 
         Caption         =   "Find Side                            (Given  Area)"
         Height          =   615
         Left            =   -72120
         TabIndex        =   71
         Top             =   5760
         Width           =   2535
      End
      Begin VB.CommandButton Command7 
         BackColor       =   &H00C0C0C0&
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
         Height          =   495
         Left            =   -71160
         Style           =   1  'Graphical
         TabIndex        =   70
         Top             =   7440
         Width           =   1695
      End
      Begin VB.ComboBox out4 
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   315
         Left            =   -71760
         TabIndex        =   63
         Text            =   "Millimeter"
         Top             =   5580
         Visible         =   0   'False
         Width           =   2055
      End
      Begin VB.ComboBox in4 
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   315
         Left            =   -74040
         TabIndex        =   62
         Text            =   "Millimeter"
         Top             =   5580
         Visible         =   0   'False
         Width           =   2055
      End
      Begin VB.CommandButton Command6 
         BackColor       =   &H00C0C0C0&
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
         Height          =   495
         Left            =   -68640
         Style           =   1  'Graphical
         TabIndex        =   61
         Top             =   7200
         Width           =   1695
      End
      Begin VB.OptionButton p3 
         Caption         =   "Find Base                                                 (Given Area, height and anotherher base)"
         Height          =   735
         Left            =   -70920
         TabIndex        =   60
         Top             =   6240
         Width           =   3615
      End
      Begin VB.TextBox e1 
         Height          =   615
         Left            =   -71400
         TabIndex        =   59
         Top             =   1380
         Width           =   2895
      End
      Begin VB.TextBox e2 
         Height          =   615
         Left            =   -71400
         TabIndex        =   58
         Top             =   2220
         Width           =   2895
      End
      Begin VB.TextBox e3 
         Height          =   615
         Left            =   -71400
         TabIndex        =   57
         Top             =   3180
         Width           =   2895
      End
      Begin VB.TextBox e4 
         Height          =   615
         Left            =   -71400
         TabIndex        =   56
         Top             =   4140
         Width           =   2895
      End
      Begin VB.OptionButton p1 
         Caption         =   "Find Area                         (Given two bases and height)"
         Height          =   735
         Left            =   -74040
         TabIndex        =   55
         Top             =   6360
         Width           =   2535
      End
      Begin VB.OptionButton p2 
         Caption         =   "Find Height                      (Given Area and two bases)"
         Height          =   615
         Left            =   -74040
         TabIndex        =   54
         Top             =   7080
         Width           =   2535
      End
      Begin VB.CommandButton Command5 
         BackColor       =   &H00C0C0C0&
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
         Height          =   495
         Left            =   -70560
         Style           =   1  'Graphical
         TabIndex        =   53
         Top             =   7200
         Width           =   1695
      End
      Begin VB.CommandButton Command4 
         BackColor       =   &H00C0C0C0&
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
         Height          =   495
         Left            =   -67680
         Style           =   1  'Graphical
         TabIndex        =   46
         Top             =   6600
         Width           =   1695
      End
      Begin VB.OptionButton n2 
         Caption         =   "Find Perimeter                  (Given two diagonals)"
         Height          =   615
         Left            =   -71280
         TabIndex        =   45
         Top             =   6360
         Width           =   2535
      End
      Begin VB.OptionButton n1 
         Caption         =   "Find Area                         (Given two diagonals)"
         Height          =   735
         Left            =   -74160
         TabIndex        =   44
         Top             =   6420
         Width           =   2535
      End
      Begin VB.TextBox x4 
         Height          =   615
         Left            =   -71520
         TabIndex        =   43
         Top             =   4260
         Width           =   2895
      End
      Begin VB.TextBox x3 
         Height          =   615
         Left            =   -71520
         TabIndex        =   42
         Top             =   3300
         Width           =   2895
      End
      Begin VB.TextBox x2 
         Height          =   615
         Left            =   -71520
         TabIndex        =   41
         Top             =   2340
         Width           =   2895
      End
      Begin VB.TextBox x1 
         Height          =   615
         Left            =   -71520
         TabIndex        =   40
         Top             =   1500
         Width           =   2895
      End
      Begin VB.OptionButton n3 
         Caption         =   "Find Diagonal                             (Given Area and another diagonal)"
         Height          =   735
         Left            =   -74160
         TabIndex        =   39
         Top             =   7080
         Width           =   2895
      End
      Begin VB.CommandButton Command3 
         BackColor       =   &H00C0C0C0&
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
         Height          =   495
         Left            =   -67680
         Style           =   1  'Graphical
         TabIndex        =   38
         Top             =   7200
         Width           =   1695
      End
      Begin VB.ComboBox in2 
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   315
         Left            =   -74160
         TabIndex        =   37
         Text            =   "Millimeter"
         Top             =   5700
         Visible         =   0   'False
         Width           =   2055
      End
      Begin VB.ComboBox out2 
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   315
         Left            =   -71880
         TabIndex        =   36
         Text            =   "Millimeter"
         Top             =   5700
         Visible         =   0   'False
         Width           =   2055
      End
      Begin VB.OptionButton n4 
         Caption         =   "Find Diagonal                                 (Given Perimeter and another diagonal)"
         Height          =   735
         Left            =   -71280
         TabIndex        =   35
         Top             =   7080
         Width           =   3135
      End
      Begin VB.CommandButton Command2 
         BackColor       =   &H00C0C0C0&
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
         Height          =   495
         Left            =   3840
         Style           =   1  'Graphical
         TabIndex        =   29
         Top             =   6240
         Width           =   1695
      End
      Begin VB.OptionButton O2 
         Caption         =   "Find Height                            (Given  breadth and Area)"
         Height          =   615
         Left            =   1080
         TabIndex        =   28
         Top             =   6240
         Width           =   2535
      End
      Begin VB.OptionButton O1 
         Caption         =   "Find  Area                        (Given height and breadth)"
         Height          =   735
         Left            =   1080
         TabIndex        =   27
         Top             =   5520
         Width           =   2535
      End
      Begin VB.TextBox T3 
         Height          =   615
         Left            =   2040
         TabIndex        =   26
         Top             =   3420
         Width           =   2895
      End
      Begin VB.TextBox T2 
         Height          =   615
         Left            =   2040
         TabIndex        =   25
         Top             =   2460
         Width           =   2895
      End
      Begin VB.TextBox T1 
         Height          =   615
         Left            =   2040
         TabIndex        =   24
         Top             =   1620
         Width           =   2895
      End
      Begin VB.OptionButton O3 
         Caption         =   "Find Breadth                    (Given Area and height)"
         Height          =   735
         Left            =   1080
         TabIndex        =   23
         Top             =   6840
         Width           =   2535
      End
      Begin VB.CommandButton Command1 
         BackColor       =   &H00C0C0C0&
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
         Height          =   495
         Left            =   3840
         Style           =   1  'Graphical
         TabIndex        =   22
         Top             =   6840
         Width           =   1695
      End
      Begin VB.ComboBox in1 
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   315
         Left            =   600
         TabIndex        =   21
         Text            =   "Millimeter"
         Top             =   4980
         Visible         =   0   'False
         Width           =   2055
      End
      Begin VB.ComboBox out1 
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   315
         Left            =   2880
         TabIndex        =   20
         Text            =   "Millimeter"
         Top             =   4980
         Visible         =   0   'False
         Width           =   2055
      End
      Begin VB.OptionButton ot6 
         Caption         =   "Find  Height                                 (Given  Volume and Base side)"
         Height          =   735
         Left            =   -74280
         TabIndex        =   19
         Top             =   6840
         Width           =   3015
      End
      Begin VB.OptionButton ot5 
         Caption         =   "Find  Height                                 (Given  Surface area and Base side)"
         Height          =   735
         Left            =   -71520
         TabIndex        =   12
         Top             =   6120
         Width           =   3015
      End
      Begin VB.ComboBox out3 
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   315
         Left            =   -72000
         TabIndex        =   11
         Text            =   "Millimeter"
         Top             =   4860
         Visible         =   0   'False
         Width           =   2055
      End
      Begin VB.ComboBox in3 
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   315
         Left            =   -74280
         TabIndex        =   10
         Text            =   "Millimeter"
         Top             =   4860
         Visible         =   0   'False
         Width           =   2055
      End
      Begin VB.CommandButton Command23 
         BackColor       =   &H00C0C0C0&
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
         Height          =   495
         Left            =   -68280
         Style           =   1  'Graphical
         TabIndex        =   9
         Top             =   6960
         Width           =   1695
      End
      Begin VB.OptionButton ot4 
         Caption         =   "Find Base Side                (Given Volume and height)"
         Height          =   735
         Left            =   -74280
         TabIndex        =   8
         Top             =   6120
         Width           =   2535
      End
      Begin VB.TextBox tt1 
         Height          =   615
         Left            =   -71640
         TabIndex        =   7
         Top             =   1140
         Width           =   2895
      End
      Begin VB.TextBox tt2 
         Height          =   615
         Left            =   -71640
         TabIndex        =   6
         Top             =   1920
         Width           =   2895
      End
      Begin VB.TextBox tt3 
         Height          =   615
         Left            =   -71640
         TabIndex        =   5
         Top             =   2640
         Width           =   2895
      End
      Begin VB.TextBox tt4 
         Height          =   615
         Left            =   -71640
         TabIndex        =   4
         Top             =   3360
         Width           =   2895
      End
      Begin VB.OptionButton ot1 
         Caption         =   "Find Surface Area                    (Given height and base side)"
         Height          =   735
         Left            =   -74280
         TabIndex        =   3
         Top             =   5340
         Width           =   2535
      End
      Begin VB.OptionButton ot2 
         Caption         =   "Find Volume                            (Given  base side and height)"
         Height          =   615
         Left            =   -71520
         TabIndex        =   2
         Top             =   5400
         Width           =   2535
      End
      Begin VB.CommandButton Command24 
         BackColor       =   &H00C0C0C0&
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
         Height          =   495
         Left            =   -70200
         Style           =   1  'Graphical
         TabIndex        =   1
         Top             =   6960
         Width           =   1695
      End
      Begin VB.Image Image7 
         Height          =   5400
         Left            =   -67320
         Picture         =   "surfrm2.frx":046A
         Top             =   1320
         Width           =   5205
      End
      Begin VB.Image Image6 
         Height          =   5325
         Left            =   -66000
         Picture         =   "surfrm2.frx":1535F
         Top             =   1080
         Width           =   4845
      End
      Begin VB.Image Image5 
         Height          =   5310
         Left            =   -69240
         Picture         =   "surfrm2.frx":29D89
         Top             =   1320
         Width           =   5325
      End
      Begin VB.Image Image4 
         Height          =   4950
         Left            =   -68160
         Picture         =   "surfrm2.frx":3F18B
         Top             =   1320
         Width           =   4410
      End
      Begin VB.Image Image3 
         Height          =   4890
         Left            =   -68400
         Picture         =   "surfrm2.frx":4E1A2
         Top             =   1440
         Width           =   4485
      End
      Begin VB.Image Image2 
         Height          =   4890
         Left            =   5880
         Picture         =   "surfrm2.frx":60568
         Top             =   1560
         Width           =   5160
      End
      Begin VB.Image Image1 
         Height          =   5580
         Left            =   -65640
         Picture         =   "surfrm2.frx":6E84A
         Top             =   1200
         Width           =   3930
      End
      Begin VB.Label Label36 
         Caption         =   "Area :"
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
         Left            =   -74040
         TabIndex        =   124
         Top             =   4200
         Width           =   1215
      End
      Begin VB.Label Label35 
         Caption         =   "Perimeter :"
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
         Left            =   -74040
         TabIndex        =   123
         Top             =   3600
         Width           =   1455
      End
      Begin VB.Label Label34 
         Caption         =   "Side-1 :"
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
         Left            =   -74040
         TabIndex        =   122
         Top             =   1440
         Width           =   1455
      End
      Begin VB.Label Label33 
         Caption         =   "Side-2 :"
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
         Left            =   -74040
         TabIndex        =   121
         Top             =   2160
         Width           =   2535
      End
      Begin VB.Label Label32 
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
         Height          =   255
         Left            =   -71640
         TabIndex        =   120
         Top             =   5160
         Visible         =   0   'False
         Width           =   1335
      End
      Begin VB.Label Label31 
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
         Left            =   -73920
         TabIndex        =   119
         Top             =   5160
         Visible         =   0   'False
         Width           =   855
      End
      Begin VB.Label Label30 
         Caption         =   "Side-3 :"
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
         Left            =   -74040
         TabIndex        =   118
         Top             =   2880
         Width           =   1215
      End
      Begin VB.Label Label29 
         Caption         =   "Angle :"
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
         Left            =   -74160
         TabIndex        =   105
         Top             =   2640
         Width           =   1215
      End
      Begin VB.Label Label28 
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
         Left            =   -74040
         TabIndex        =   103
         Top             =   4920
         Visible         =   0   'False
         Width           =   855
      End
      Begin VB.Label Label27 
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
         Height          =   255
         Left            =   -71760
         TabIndex        =   102
         Top             =   4920
         Visible         =   0   'False
         Width           =   1335
      End
      Begin VB.Label Label26 
         Caption         =   "Side-2 :"
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
         Left            =   -74160
         TabIndex        =   101
         Top             =   1920
         Width           =   2535
      End
      Begin VB.Label Label25 
         Caption         =   "Side-1 :"
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
         Left            =   -74160
         TabIndex        =   100
         Top             =   1200
         Width           =   1455
      End
      Begin VB.Label Label24 
         Caption         =   "Perimeter :"
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
         Left            =   -74160
         TabIndex        =   99
         Top             =   3360
         Width           =   1455
      End
      Begin VB.Label Label23 
         Caption         =   "Area :"
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
         Left            =   -74160
         TabIndex        =   98
         Top             =   3960
         Width           =   1215
      End
      Begin VB.Label Label22 
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
         Left            =   -74040
         TabIndex        =   84
         Top             =   4560
         Visible         =   0   'False
         Width           =   855
      End
      Begin VB.Label Label21 
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
         Height          =   255
         Left            =   -71760
         TabIndex        =   83
         Top             =   4560
         Visible         =   0   'False
         Width           =   1335
      End
      Begin VB.Label Label20 
         Caption         =   "Side :"
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
         Left            =   -74040
         TabIndex        =   82
         Top             =   1560
         Width           =   2535
      End
      Begin VB.Label Label19 
         Caption         =   "Perimeter :"
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
         Left            =   -74040
         TabIndex        =   81
         Top             =   2520
         Width           =   1455
      End
      Begin VB.Label Label18 
         Caption         =   "Area :"
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
         Left            =   -74040
         TabIndex        =   80
         Top             =   3360
         Width           =   1455
      End
      Begin VB.Label Label17 
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
         Left            =   -74040
         TabIndex        =   69
         Top             =   5220
         Visible         =   0   'False
         Width           =   855
      End
      Begin VB.Label Label16 
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
         Height          =   255
         Left            =   -71760
         TabIndex        =   68
         Top             =   5220
         Visible         =   0   'False
         Width           =   1335
      End
      Begin VB.Label Label15 
         Caption         =   "Base-2 :"
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
         Left            =   -74160
         TabIndex        =   67
         Top             =   2340
         Width           =   2535
      End
      Begin VB.Label Label14 
         Caption         =   "Base-1 :"
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
         Left            =   -74160
         TabIndex        =   66
         Top             =   1500
         Width           =   1455
      End
      Begin VB.Label Label13 
         Caption         =   "Height :"
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
         Left            =   -74160
         TabIndex        =   65
         Top             =   3180
         Width           =   1455
      End
      Begin VB.Label Label12 
         Caption         =   "Area :"
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
         Left            =   -74160
         TabIndex        =   64
         Top             =   4260
         Width           =   1215
      End
      Begin VB.Label Label11 
         Caption         =   "Area :"
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
         Left            =   -74280
         TabIndex        =   52
         Top             =   4380
         Width           =   1215
      End
      Begin VB.Label Label10 
         Caption         =   "Perimeter :"
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
         Left            =   -74280
         TabIndex        =   51
         Top             =   3300
         Width           =   1455
      End
      Begin VB.Label Label9 
         Caption         =   "Diagonal-1 :"
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
         Left            =   -74280
         TabIndex        =   50
         Top             =   1620
         Width           =   1455
      End
      Begin VB.Label Label8 
         Caption         =   "Diagonal-2 :"
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
         Left            =   -74280
         TabIndex        =   49
         Top             =   2460
         Width           =   2535
      End
      Begin VB.Label Label7 
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
         Height          =   255
         Left            =   -71880
         TabIndex        =   48
         Top             =   5340
         Visible         =   0   'False
         Width           =   1335
      End
      Begin VB.Label Label6 
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
         Left            =   -74160
         TabIndex        =   47
         Top             =   5340
         Visible         =   0   'False
         Width           =   855
      End
      Begin VB.Label Label5 
         Caption         =   "Area :"
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
         Left            =   600
         TabIndex        =   34
         Top             =   3540
         Width           =   1455
      End
      Begin VB.Label Label4 
         Caption         =   "Breadth :"
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
         Left            =   600
         TabIndex        =   33
         Top             =   2700
         Width           =   1455
      End
      Begin VB.Label Label3 
         Caption         =   "Height :"
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
         Left            =   600
         TabIndex        =   32
         Top             =   1740
         Width           =   2535
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
         Height          =   255
         Left            =   2880
         TabIndex        =   31
         Top             =   4620
         Visible         =   0   'False
         Width           =   1335
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
         Left            =   600
         TabIndex        =   30
         Top             =   4620
         Visible         =   0   'False
         Width           =   855
      End
      Begin VB.Label Label65 
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
         Left            =   -74280
         TabIndex        =   18
         Top             =   4500
         Visible         =   0   'False
         Width           =   855
      End
      Begin VB.Label Label66 
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
         Height          =   255
         Left            =   -72000
         TabIndex        =   17
         Top             =   4500
         Visible         =   0   'False
         Width           =   1335
      End
      Begin VB.Label Label67 
         Caption         =   "Height :"
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
         Left            =   -74400
         TabIndex        =   16
         Top             =   1920
         Width           =   2535
      End
      Begin VB.Label Label68 
         Caption         =   "Base Side :"
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
         Left            =   -74400
         TabIndex        =   15
         Top             =   1260
         Width           =   1455
      End
      Begin VB.Label Label69 
         Caption         =   "Surface Area :"
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
         Left            =   -74400
         TabIndex        =   14
         Top             =   2640
         Width           =   1455
      End
      Begin VB.Label Label70 
         Caption         =   "Volume :"
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
         Left            =   -74400
         TabIndex        =   13
         Top             =   3480
         Width           =   1215
      End
   End
   Begin VB.Image Image9 
      Height          =   720
      Left            =   5400
      Picture         =   "surfrm2.frx":7C6B9
      Top             =   1440
      Width           =   4290
   End
   Begin VB.Image Image8 
      Height          =   1710
      Left            =   0
      Picture         =   "surfrm2.frx":8470A
      Stretch         =   -1  'True
      Top             =   0
      Width           =   15360
   End
End
Attribute VB_Name = "surfrm2"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
T1.Text = ""
T2.Text = ""
T3.Text = ""

End Sub

Private Sub Command10_Click()
ex1.Text = ""
ex2.Text = ""
ex3.Text = ""
ex4.Text = ""
ex5.Text = ""
End Sub

Private Sub Command11_Click()
et1.Text = ""
et2.Text = ""
et3.Text = ""
et4.Text = ""
et5.Text = ""
End Sub

Private Sub Command12_Click()
On Error GoTo errhan:
If ti1.value = False And ti2.value = False And ti3.value = False Then
 MsgBox "Select Required Operation"
Else
If ti1.value = True Then
  If et1.Text = "" Or et2.Text = "" Or et3.Text = "" Then
   MsgBox "Invalid Input"
  Else
   ao1 = Val(et1.Text)
   bo1 = Val(et2.Text)
   co1 = Val(et3.Text)
    so = (Val(ao1) + Val(bo1) + Val(co1)) / 2
    so1 = Val(so) - Val(ao1)
    so2 = Val(so) - Val(bo1)
    so3 = Val(so) - Val(co1)
    
    A = Sqr((Val(so) * Val(so1) * Val(so2) * Val(so3))) 'find area
  End If
ElseIf ti2.value = True Then
  If et1.Text = "" Or et2.Text = "" Or et3.Text = "" Then
   MsgBox "Invalid Input"
  Else
    B = Val(et1.Text) + Val(et2.Text) + Val(et3.Text)
  End If
ElseIf ti3.value = True Then
  If et1.Text = "" Or et2.Text = "" Or et4.Text = "" Then
   MsgBox "Invalid Input"
  Else
    C = Val(et4.Text) - Val(et1.Text) - Val(et2.Text)
  End If
End If
End If

If ti1.value = True Then

If in7.Text = "Millimeter" And out7.Text = "Millimeter" Then
et5.Text = Val(A)
ElseIf in7.Text = "Millimeter" And out7.Text = "Centimeter" Then
et5.Text = A / 10
ElseIf in7.Text = "Millimeter" And out7.Text = "Meter" Then
et5.Text = A / 1000
ElseIf in7.Text = "Centimeter" And out7.Text = "Millimeter" Then
et5.Text = A * 10
ElseIf in7.Text = "Centimeter" And out7.Text = "Centimeter" Then
et5.Text = A
ElseIf in7.Text = "Centimeter" And out7.Text = "Meter" Then
et5.Text = A / 100
ElseIf in7.Text = "Meter" And out7.Text = "Millimeter" Then
et5.Text = A * 1000
ElseIf in7.Text = "Meter" And out7.Text = "Centimeter" Then
et5.Text = A * 100
ElseIf in7.Text = "Meter" And out7.Text = "Meter" Then
et5.Text = A
End If

ElseIf ti2.value = True Then

If in7.Text = "Millimeter" And out7.Text = "Millimeter" Then
et4.Text = B
ElseIf in7.Text = "Millimeter" And out7.Text = "Centimeter" Then
et4.Text = B / 10
ElseIf in7.Text = "Millimeter" And out7.Text = "Meter" Then
et4.Text = B / 1000
ElseIf in7.Text = "Centimeter" And out7.Text = "Millimeter" Then
et4.Text = B * 10
ElseIf in7.Text = "Centimeter" And out7.Text = "Centimeter" Then
et4.Text = B
ElseIf in7.Text = "Centimeter" And out7.Text = "Meter" Then
et4.Text = B / 100
ElseIf in7.Text = "Meter" And out7.Text = "Millimeter" Then
et4.Text = B * 1000
ElseIf in7.Text = "Meter" And out7.Text = "Centimeter" Then
et4.Text = B * 100
ElseIf in7.Text = "Meter" And out7.Text = "Meter" Then
et4.Text = B
End If

ElseIf ti3.value = True Then

If in7.Text = "Millimeter" And out7.Text = "Millimeter" Then
et3.Text = C
ElseIf in7.Text = "Millimeter" And out7.Text = "Centimeter" Then
et3.Text = C / 10
ElseIf in7.Text = "Millimeter" And out7.Text = "Meter" Then
et3.Text = C / 1000
ElseIf in7.Text = "Centimeter" And out7.Text = "Millimeter" Then
et3.Text = C * 10
ElseIf in7.Text = "Centimeter" And out7.Text = "Centimeter" Then
et3.Text = C
ElseIf in7.Text = "Centimeter" And out7.Text = "Meter" Then
et3.Text = C / 100
ElseIf in7.Text = "Meter" And out7.Text = "Millimeter" Then
et3.Text = C * 1000
ElseIf in7.Text = "Meter" And out7.Text = "Centimeter" Then
et3.Text = C * 100
ElseIf in7.Text = "Meter" And out7.Text = "Meter" Then
et3.Text = C
End If
End If
Exit Sub
errhan:
 MsgBox err.Description, vbInformation

End Sub

Private Sub Command2_Click()
On Error GoTo errhan:
If O1.value = False And O2.value = False And O3.value = False Then
 MsgBox "Select Required Operation"
Else
If O1.value = True Then
  If T2.Text = "" Or T1.Text = "" Then
   MsgBox "Invalid Input"
  Else
    A = Val(T2.Text) * Val(T1.Text)    'find area
  End If
ElseIf O2.value = True Then
  If T2.Text = "" Or T3.Text = "" Then
   MsgBox "Invalid Input"
  Else
    B = Val(T3.Text) / Val(T2.Text)
  End If
ElseIf O3.value = True Then
  If T1.Text = "" Or T3.Text = "" Then
   MsgBox "Invalid Input"
  Else
    C = Val(T3.Text) / Val(T1.Text)
  End If
End If
End If
' display output
If O1.value = True Then

If in1.Text = "Millimeter" And out1.Text = "Millimeter" Then
T3.Text = Val(A)
ElseIf in1.Text = "Millimeter" And out1.Text = "Centimeter" Then
T3.Text = A / 10
ElseIf in1.Text = "Millimeter" And out1.Text = "Meter" Then
T3.Text = A / 1000
ElseIf in1.Text = "Centimeter" And out1.Text = "Millimeter" Then
T3.Text = A * 10
ElseIf in1.Text = "Centimeter" And out1.Text = "Centimeter" Then
T3.Text = A
ElseIf in1.Text = "Centimeter" And out1.Text = "Meter" Then
T3.Text = A / 100
ElseIf in1.Text = "Meter" And out1.Text = "Millimeter" Then
T3.Text = A * 1000
ElseIf in1.Text = "Meter" And out1.Text = "Centimeter" Then
T3.Text = A * 100
ElseIf in1.Text = "Meter" And out1.Text = "Meter" Then
T3.Text = A
End If

ElseIf O2.value = True Then

If in1.Text = "Millimeter" And out1.Text = "Millimeter" Then
T1.Text = B
ElseIf in1.Text = "Millimeter" And out1.Text = "Centimeter" Then
T1.Text = B / 10
ElseIf in1.Text = "Millimeter" And out1.Text = "Meter" Then
T1.Text = B / 1000
ElseIf in1.Text = "Centimeter" And out1.Text = "Millimeter" Then
T1.Text = B * 10
ElseIf in1.Text = "Centimeter" And out1.Text = "Centimeter" Then
T1.Text = B
ElseIf in1.Text = "Centimeter" And out1.Text = "Meter" Then
T1.Text = B / 100
ElseIf in1.Text = "Meter" And out1.Text = "Millimeter" Then
T1.Text = B * 1000
ElseIf in1.Text = "Meter" And out1.Text = "Centimeter" Then
T1.Text = B * 100
ElseIf in1.Text = "Meter" And out1.Text = "Meter" Then
T1.Text = B
End If

ElseIf O3.value = True Then

If in1.Text = "Millimeter" And out1.Text = "Millimeter" Then
T2.Text = C
ElseIf in1.Text = "Millimeter" And out1.Text = "Centimeter" Then
T2.Text = C / 10
ElseIf in1.Text = "Millimeter" And out1.Text = "Meter" Then
T2.Text = C / 1000
ElseIf in1.Text = "Centimeter" And out1.Text = "Millimeter" Then
T2.Text = C * 10
ElseIf in1.Text = "Centimeter" And out1.Text = "Centimeter" Then
T2.Text = C
ElseIf in1.Text = "Centimeter" And out1.Text = "Meter" Then
T2.Text = C / 100
ElseIf in1.Text = "Meter" And out1.Text = "Millimeter" Then
T2.Text = C * 1000
ElseIf in1.Text = "Meter" And out1.Text = "Centimeter" Then
T2.Text = C * 100
ElseIf in1.Text = "Meter" And out1.Text = "Meter" Then
T2.Text = C
End If
End If
Exit Sub
errhan:
 MsgBox err.Description, vbInformation


End Sub

Private Sub Command23_Click()
tt1.Text = ""
tt2.Text = ""
tt3.Text = ""
tt4.Text = ""

End Sub

Private Sub Command24_Click()
On Error GoTo errhan:
If ot1.value = False And ot2.value = False And ot4.value = False And ot5.value = False And ot6.value = False Then
 MsgBox "Select Required Operation"
Else
If ot1.value = True Then
  If tt2.Text = "" Or tt1.Text = "" Then
   MsgBox "Invalid Input"
  Else
    A = (8 * Val(tt1.Text) * Val(tt2.Text)) + ((4 * Val(tt1.Text) * Val(tt1.Text)) / (Tan(3.14 / 8)))
  End If
ElseIf ot2.value = True Then
  If tt1.Text = "" Or tt2.Text = "" Then
   MsgBox "Invalid Input"
  Else
    B = (2 * Val(tt1.Text) * Val(tt1.Text) * Val(tt2.Text)) / (Tan(3.14 / 8))
  End If

ElseIf ot4.value = True Then
  If tt4.Text = "" Or tt2.Text = "" Then
   MsgBox "Invalid Input"
  Else
    D = Sqr((Val(tt4.Text) * (Tan(3.14 / 8))) / (2 * Val(tt2.Text)))
  End If
ElseIf ot5.value = True Then
  If tt3.Text = "" Or tt1.Text = "" Then
   MsgBox "Invalid Input"
  Else
    e = (Val(tt3.Text) - ((4 * Val(tt1.Text) * Val(tt1.Text)) / (Tan(3.14 / 8)))) / (8 * Val(tt1.Text))
End If
ElseIf ot6.value = True Then
  If tt1.Text = "" Or tt4.Text = "" Then
   MsgBox "Invalid Input"
  Else
    F = (Val(tt4.Text) * (Tan(3.14 / 8))) / (2 * Val(tt1.Text) * Val(tt1.Text))
  End If
End If
End If
' display output
If ot1.value = True Then

If in3.Text = "Millimeter" And out3.Text = "Millimeter" Then
tt3.Text = Val(A)
ElseIf in3.Text = "Millimeter" And out3.Text = "Centimeter" Then
tt3.Text = A / 10
ElseIf in3.Text = "Millimeter" And out3.Text = "Meter" Then
tt3.Text = A / 1000
ElseIf in3.Text = "Centimeter" And out3.Text = "Millimeter" Then
tt3.Text = A * 10
ElseIf in3.Text = "Centimeter" And out3.Text = "Centimeter" Then
tt3.Text = A
ElseIf in3.Text = "Centimeter" And out3.Text = "Meter" Then
tt3.Text = A / 100
ElseIf in3.Text = "Meter" And out3.Text = "Millimeter" Then
tt3.Text = A * 1000
ElseIf in3.Text = "Meter" And out3.Text = "Centimeter" Then
tt3.Text = A * 100
ElseIf in3.Text = "Meter" And out3.Text = "Meter" Then
tt3.Text = A
End If

ElseIf ot2.value = True Then

If in3.Text = "Millimeter" And out3.Text = "Millimeter" Then
tt4.Text = B
ElseIf in3.Text = "Millimeter" And out3.Text = "Centimeter" Then
tt4.Text = B / 10
ElseIf in3.Text = "Millimeter" And out3.Text = "Meter" Then
tt4.Text = B / 1000
ElseIf in3.Text = "Centimeter" And out3.Text = "Millimeter" Then
tt4.Text = B * 10
ElseIf in3.Text = "Centimeter" And out3.Text = "Centimeter" Then
tt4.Text = B
ElseIf in3.Text = "Centimeter" And out3.Text = "Meter" Then
tt4.Text = B / 100
ElseIf in3.Text = "Meter" And out3.Text = "Millimeter" Then
tt4.Text = B * 1000
ElseIf in3.Text = "Meter" And out3.Text = "Centimeter" Then
tt4.Text = B * 100
ElseIf in3.Text = "Meter" And out3.Text = "Meter" Then
tt4.Text = B
End If



ElseIf ot4.value = True Then

If in3.Text = "Millimeter" And out3.Text = "Millimeter" Then
tt1.Text = D
ElseIf in3.Text = "Millimeter" And out3.Text = "Centimeter" Then
tt1.Text = D / 10
ElseIf in3.Text = "Millimeter" And out3.Text = "Meter" Then
tt1.Text = D / 1000
ElseIf in3.Text = "Centimeter" And out3.Text = "Millimeter" Then
tt1.Text = D * 10
ElseIf in3.Text = "Centimeter" And out3.Text = "Centimeter" Then
tt1.Text = D
ElseIf in3.Text = "Centimeter" And out3.Text = "Meter" Then
tt1.Text = D / 100
ElseIf in3.Text = "Meter" And out3.Text = "Millimeter" Then
tt1.Text = D * 1000
ElseIf in3.Text = "Meter" And out3.Text = "Centimeter" Then
tt1.Text = D * 100
ElseIf in3.Text = "Meter" And out3.Text = "Meter" Then
tt1.Text = D
End If

ElseIf ot5.value = True Then

If in3.Text = "Millimeter" And out3.Text = "Millimeter" Then
tt2.Text = e
ElseIf in3.Text = "Millimeter" And out3.Text = "Centimeter" Then
tt.Text = e / 10
ElseIf in3.Text = "Millimeter" And out3.Text = "Meter" Then
tt2.Text = e / 1000
ElseIf in3.Text = "Centimeter" And out3.Text = "Millimeter" Then
tt2.Text = e * 10
ElseIf in3.Text = "Centimeter" And out3.Text = "Centimeter" Then
tt2.Text = e
ElseIf in3.Text = "Centimeter" And out3.Text = "Meter" Then
tt2.Text = e / 100
ElseIf in3.Text = "Meter" And out3.Text = "Millimeter" Then
tt2.Text = e * 1000
ElseIf in3.Text = "Meter" And out3.Text = "Centimeter" Then
tt2.Text = e * 100
ElseIf in3.Text = "Meter" And out3.Text = "Meter" Then
tt2.Text = e
End If

ElseIf ot6.value = True Then

If in3.Text = "Millimeter" And out3.Text = "Millimeter" Then
tt2.Text = F
ElseIf in3.Text = "Millimeter" And out3.Text = "Centimeter" Then
tt2.Text = F / 10
ElseIf in3.Text = "Millimeter" And out3.Text = "Meter" Then
tt2.Text = F / 1000
ElseIf in3.Text = "Centimeter" And out3.Text = "Millimeter" Then
tt2.Text = F * 10
ElseIf in3.Text = "Centimeter" And out3.Text = "Centimeter" Then
tt2.Text = F
ElseIf in3.Text = "Centimeter" And out3.Text = "Meter" Then
tt2.Text = F / 100
ElseIf in3.Text = "Meter" And out3.Text = "Millimeter" Then
tt2.Text = F * 1000
ElseIf in3.Text = "Meter" And out3.Text = "Centimeter" Then
tt2.Text = F * 100
ElseIf in3.Text = "Meter" And out3.Text = "Meter" Then
tt2.Text = F
End If
End If
Exit Sub
errhan:
 MsgBox err.Description, vbInformation


End Sub

Private Sub Command3_Click()
x1.Text = ""
x2.Text = ""
x3.Text = ""
x4.Text = ""
End Sub

Private Sub Command4_Click()
On Error GoTo errhan:
If n1.value = False And n2.value = False And n3.value = False And n4.value = False Then
 MsgBox "Select Required Operation"
Else
If n1.value = True Then
  If x2.Text = "" Or x1.Text = "" Then
   MsgBox "Invalid Input"
  Else
    A = (Val(x2.Text) * Val(x1.Text)) / 2  'find area
  End If
ElseIf n2.value = True Then
  If x2.Text = "" Or x1.Text = "" Then
   MsgBox "Invalid Input"
  Else
    B = 2 * (Sqr((Val(x1.Text) * Val(x1.Text)) + (Val(x2.Text) * Val(x2.Text)))) 'find perimeter
  End If
ElseIf n3.value = True Then
  If x1.Text = "" Or x4.Text = "" Then
   MsgBox "Invalid Input"
  Else
    C = (2 * Val(x4.Text)) / Val(x1.Text) 'find side
  End If
ElseIf n4.value = True Then
  If x1.Text = "" Or x3.Text = "" Then
   MsgBox "Invalid Input"
  Else
    D = Sqr(((Val(x3.Text) / 2) * (Val(x3.Text) / 2)) - (Val(x1.Text) * Val(x1.Text))) 'find Center corner distance
  End If
End If
End If

If n1.value = True Then

If in2.Text = "Millimeter" And out2.Text = "Millimeter" Then
x4.Text = Val(A)
ElseIf in2.Text = "Millimeter" And out2.Text = "Centimeter" Then
x4.Text = A / 10
ElseIf in2.Text = "Millimeter" And out2.Text = "Meter" Then
x4.Text = A / 1000
ElseIf in2.Text = "Centimeter" And out2.Text = "Millimeter" Then
x4.Text = A * 10
ElseIf in2.Text = "Centimeter" And out2.Text = "Centimeter" Then
x4.Text = A
ElseIf in2.Text = "Centimeter" And out2.Text = "Meter" Then
x4.Text = A / 100
ElseIf in2.Text = "Meter" And out2.Text = "Millimeter" Then
x4.Text = A * 1000
ElseIf in2.Text = "Meter" And out2.Text = "Centimeter" Then
x4.Text = A * 100
ElseIf in2.Text = "Meter" And out2.Text = "Meter" Then
x4.Text = A
End If

ElseIf n2.value = True Then

If in2.Text = "Millimeter" And out2.Text = "Millimeter" Then
x3.Text = B
ElseIf in2.Text = "Millimeter" And out2.Text = "Centimeter" Then
x3.Text = B / 10
ElseIf in2.Text = "Millimeter" And out2.Text = "Meter" Then
x3.Text = B / 1000
ElseIf in2.Text = "Centimeter" And out2.Text = "Millimeter" Then
x3.Text = B * 10
ElseIf in2.Text = "Centimeter" And out2.Text = "Centimeter" Then
x3.Text = B
ElseIf in2.Text = "Centimeter" And out2.Text = "Meter" Then
x3.Text = B / 100
ElseIf in2.Text = "Meter" And out2.Text = "Millimeter" Then
x3.Text = B * 1000
ElseIf in2.Text = "Meter" And out2.Text = "Centimeter" Then
x3.Text = B * 100
ElseIf in2.Text = "Meter" And out2.Text = "Meter" Then
x3.Text = B
End If

ElseIf n3.value = True Then

If in2.Text = "Millimeter" And out2.Text = "Millimeter" Then
x2.Text = C
ElseIf in2.Text = "Millimeter" And out2.Text = "Centimeter" Then
x2.Text = C / 10
ElseIf in2.Text = "Millimeter" And out2.Text = "Meter" Then
x2.Text = C / 1000
ElseIf in2.Text = "Centimeter" And out2.Text = "Millimeter" Then
x2.Text = C * 10
ElseIf in2.Text = "Centimeter" And out2.Text = "Centimeter" Then
x2.Text = C
ElseIf in2.Text = "Centimeter" And out2.Text = "Meter" Then
x2.Text = C / 100
ElseIf in2.Text = "Meter" And out2.Text = "Millimeter" Then
x2.Text = C * 1000
ElseIf in2.Text = "Meter" And out2.Text = "Centimeter" Then
x2.Text = C * 100
ElseIf in2.Text = "Meter" And out2.Text = "Meter" Then
x2.Text = C
End If
ElseIf n4.value = True Then

If in2.Text = "Millimeter" And out2.Text = "Millimeter" Then
x2.Text = D
ElseIf in2.Text = "Millimeter" And out2.Text = "Centimeter" Then
x2.Text = D / 10
ElseIf in2.Text = "Millimeter" And out2.Text = "Meter" Then
x2.Text = D / 1000
ElseIf in2.Text = "Centimeter" And out2.Text = "Millimeter" Then
x2.Text = D * 10
ElseIf in2.Text = "Centimeter" And out2.Text = "Centimeter" Then
x2.Text = D
ElseIf in2.Text = "Centimeter" And out2.Text = "Meter" Then
x2.Text = D / 100
ElseIf in2.Text = "Meter" And out2.Text = "Millimeter" Then
x2.Text = D * 1000
ElseIf in2.Text = "Meter" And out2.Text = "Centimeter" Then
x2.Text = D * 100
ElseIf in2.Text = "Meter" And out2.Text = "Meter" Then
x2.Text = D
End If
End If
Exit Sub
errhan:
 MsgBox err.Description, vbInformation

End Sub

Private Sub Command5_Click()
On Error GoTo errhan:
If p1.value = False And p2.value = False And p3.value = False Then
 MsgBox "Select Required Operation"
Else
If p1.value = True Then
  If e2.Text = "" Or e1.Text = "" Or e1.Text = "" Then
   MsgBox "Invalid Input"
  Else
    A = (Val(e3.Text) * (Val(e2.Text) + Val(e1.Text))) / 2 'find area
  End If
ElseIf p2.value = True Then
  If e1.Text = "" Or e2.Text = "" Or e4.Text = "" Then
   MsgBox "Invalid Input"
  Else
    B = (2 * Val(e4.Text)) / (Val(e1.Text) + Val(e2.Text))
  End If
ElseIf p3.value = True Then
  If e1.Text = "" Or e3.Text = "" Or e4.Text = "" Then
   MsgBox "Invalid Input"
  Else
    C = ((2 * Val(e4.Text)) / Val(e3.Text)) - Val(e1.Text)
  End If
End If
End If
' display output
If p1.value = True Then

If in4.Text = "Millimeter" And out4.Text = "Millimeter" Then
e4.Text = Val(A)
ElseIf in4.Text = "Millimeter" And out4.Text = "Centimeter" Then
e4.Text = A / 10
ElseIf in4.Text = "Millimeter" And out4.Text = "Meter" Then
e4.Text = A / 1000
ElseIf in4.Text = "Centimeter" And out4.Text = "Millimeter" Then
e4.Text = A * 10
ElseIf in4.Text = "Centimeter" And out4.Text = "Centimeter" Then
e4.Text = A
ElseIf in4.Text = "Centimeter" And out4.Text = "Meter" Then
e4.Text = A / 100
ElseIf in4.Text = "Meter" And out4.Text = "Millimeter" Then
e4.Text = A * 1000
ElseIf in4.Text = "Meter" And out4.Text = "Centimeter" Then
e4.Text = A * 100
ElseIf in4.Text = "Meter" And out4.Text = "Meter" Then
e4.Text = A
End If

ElseIf p2.value = True Then

If in4.Text = "Millimeter" And out4.Text = "Millimeter" Then
e3.Text = B
ElseIf in4.Text = "Millimeter" And out4.Text = "Centimeter" Then
e3.Text = B / 10
ElseIf in4.Text = "Millimeter" And out4.Text = "Meter" Then
e3.Text = B / 1000
ElseIf in4.Text = "Centimeter" And out4.Text = "Millimeter" Then
e3.Text = B * 10
ElseIf in4.Text = "Centimeter" And out4.Text = "Centimeter" Then
e3.Text = B
ElseIf in4.Text = "Centimeter" And out4.Text = "Meter" Then
e3.Text = B / 100
ElseIf in4.Text = "Meter" And out4.Text = "Millimeter" Then
e3.Text = B * 1000
ElseIf in4.Text = "Meter" And out4.Text = "Centimeter" Then
e3.Text = B * 100
ElseIf in4.Text = "Meter" And out4.Text = "Meter" Then
e3.Text = B
End If

ElseIf p3.value = True Then

If in4.Text = "Millimeter" And out4.Text = "Millimeter" Then
e2.Text = C
ElseIf in4.Text = "Millimeter" And out4.Text = "Centimeter" Then
e2.Text = C / 10
ElseIf in4.Text = "Millimeter" And out4.Text = "Meter" Then
e2.Text = C / 1000
ElseIf in4.Text = "Centimeter" And out4.Text = "Millimeter" Then
e2.Text = C * 10
ElseIf in4.Text = "Centimeter" And out4.Text = "Centimeter" Then
e2.Text = C
ElseIf in4.Text = "Centimeter" And out4.Text = "Meter" Then
e2.Text = C / 100
ElseIf in4.Text = "Meter" And out4.Text = "Millimeter" Then
e2.Text = C * 1000
ElseIf in4.Text = "Meter" And out4.Text = "Centimeter" Then
e2.Text = C * 100
ElseIf in4.Text = "Meter" And out4.Text = "Meter" Then
e2.Text = C
End If
End If
Exit Sub
errhan:
 MsgBox err.Description, vbInformation


End Sub

Private Sub Command6_Click()
e1.Text = ""
e2.Text = ""
e3.Text = ""
e4.Text = ""
End Sub

Private Sub Command7_Click()
On Error GoTo errhan:
If i1.value = False And i2.value = False And i3.value = False And i4.value = False Then
 MsgBox "Select Required Operation"
Else
If i1.value = True Then
  If s1.Text = "" Then
   MsgBox "Invalid Input"
  Else
    A = (1.732 * Val(s1.Text) * Val(s1.Text)) / 4 'find area
  End If
ElseIf i2.value = True Then
  If s1.Text = "" Then
   MsgBox "Invalid Input"
  Else
    B = 3 * Val(s1.Text) 'find perimeter
  End If
ElseIf i3.value = True Then
  If s3.Text = "" Then
   MsgBox "Invalid Input"
  Else
    C = Sqr((4 * Val(s3.Text)) / 1.732) 'find side
  End If
ElseIf i4.value = True Then
  If s2.Text = "" Then
   MsgBox "Invalid Input"
  Else
    D = Val(s2.Text) / 3
  End If
End If
End If
If i1.value = True Then

If in5.Text = "Millimeter" And out5.Text = "Millimeter" Then
s3.Text = Val(A)
ElseIf in5.Text = "Millimeter" And out5.Text = "Centimeter" Then
s3.Text = A / 10
ElseIf in5.Text = "Millimeter" And out5.Text = "Meter" Then
s3.Text = A / 1000
ElseIf in5.Text = "Centimeter" And out5.Text = "Millimeter" Then
s3.Text = A * 10
ElseIf in5.Text = "Centimeter" And out5.Text = "Centimeter" Then
s3.Text = A
ElseIf in5.Text = "Centimeter" And out5.Text = "Meter" Then
s3.Text = A / 100
ElseIf in5.Text = "Meter" And out5.Text = "Millimeter" Then
s3.Text = A * 1000
ElseIf in5.Text = "Meter" And out5.Text = "Centimeter" Then
s3.Text = A * 100
ElseIf in5.Text = "Meter" And out5.Text = "Meter" Then
s3.Text = A
End If

ElseIf i2.value = True Then

If in5.Text = "Millimeter" And out5.Text = "Millimeter" Then
s2.Text = B
ElseIf in5.Text = "Millimeter" And out5.Text = "Centimeter" Then
s2.Text = B / 10
ElseIf in5.Text = "Millimeter" And out5.Text = "Meter" Then
s2.Text = B / 1000
ElseIf in5.Text = "Centimeter" And out5.Text = "Millimeter" Then
s2.Text = B * 10
ElseIf in5.Text = "Centimeter" And out5.Text = "Centimeter" Then
s2.Text = B
ElseIf in5.Text = "Centimeter" And out5.Text = "Meter" Then
s2.Text = B / 100
ElseIf in5.Text = "Meter" And out5.Text = "Millimeter" Then
s2.Text = B * 1000
ElseIf in5.Text = "Meter" And out5.Text = "Centimeter" Then
s2.Text = B * 100
ElseIf in5.Text = "Meter" And out5.Text = "Meter" Then
s2.Text = B
End If

ElseIf i3.value = True Then

If in5.Text = "Millimeter" And out5.Text = "Millimeter" Then
s1.Text = C
ElseIf in5.Text = "Millimeter" And out5.Text = "Centimeter" Then
s1.Text = C / 10
ElseIf in5.Text = "Millimeter" And out5.Text = "Meter" Then
s1.Text = C / 1000
ElseIf in5.Text = "Centimeter" And out5.Text = "Millimeter" Then
s1.Text = C * 10
ElseIf in5.Text = "Centimeter" And out5.Text = "Centimeter" Then
s1.Text = C
ElseIf in5.Text = "Centimeter" And out5.Text = "Meter" Then
s1.Text = C / 100
ElseIf in5.Text = "Meter" And out5.Text = "Millimeter" Then
s1.Text = C * 1000
ElseIf in5.Text = "Meter" And out5.Text = "Centimeter" Then
s1.Text = C * 100
ElseIf in5.Text = "Meter" And out5.Text = "Meter" Then
s1.Text = C
End If
ElseIf i4.value = True Then

If in5.Text = "Millimeter" And out5.Text = "Millimeter" Then
s1.Text = D
ElseIf in5.Text = "Millimeter" And out5.Text = "Centimeter" Then
s1.Text = D / 10
ElseIf in5.Text = "Millimeter" And out5.Text = "Meter" Then
s1.Text = D / 1000
ElseIf in5.Text = "Centimeter" And out5.Text = "Millimeter" Then
s1.Text = D * 10
ElseIf in5.Text = "Centimeter" And out5.Text = "Centimeter" Then
s1.Text = D
ElseIf in5.Text = "Centimeter" And out5.Text = "Meter" Then
s1.Text = D / 100
ElseIf in5.Text = "Meter" And out5.Text = "Millimeter" Then
s1.Text = D * 1000
ElseIf in5.Text = "Meter" And out5.Text = "Centimeter" Then
s1.Text = D * 100
ElseIf in5.Text = "Meter" And out5.Text = "Meter" Then
s1.Text = D
End If
End If
Exit Sub
errhan:
 MsgBox err.Description, vbInformation


End Sub

Private Sub Command8_Click()
s1.Text = ""
s2.Text = ""
s3.Text = ""

End Sub

Private Sub Command9_Click()
On Error GoTo errhan:
If pt1.value = False And pt2.value = False And pt3.value = False And pt4.value = False Then
 MsgBox "Select Required Operation"
Else
If pt1.value = True Then
  If ex1.Text = "" Or ex2.Text = "" Or ex3.Text = "" Then
   MsgBox "Invalid Input"
  Else
    A = (Val(ex1.Text) * Val(ex2.Text) * (Sin(Val(ex3.Text)) * 180 / 3.14)) / 2 'find area
  End If
  
ElseIf pt2.value = True Then
  If ex1.Text = "" Or ex2.Text = "" Or ex3.Text = "" Then
   MsgBox "Invalid Input"
  Else
    sol1 = (Val(ex1.Text) * Sin(Val(ex3.Text)) * 180 / 3.14) * (Val(ex1.Text) * Sin(Val(ex3.Text)) * 180 / 3.14)
    sol2 = (Val(ex2.Text) - (Val(ex1.Text) * Cos(Val(ex3.Text)) * 180 / 3.14)) * (Val(ex2.Text) - (Val(ex1.Text) * Cos(Val(ex3.Text)) * 180 / 3.14))
    sol3 = Sqr(sol1 + sol2)
    B = Val(ex1.Text) + Val(ex2.Text) + Val(sol3) 'find perimeter
  End If
  
ElseIf pt3.value = True Then
  If ex1.Text = "" Or ex2.Text = "" Or ex5.Text = "" Then
   MsgBox "Invalid Input"
  Else
    solu1 = (2 * Val(ex5.Text)) / (Val(ex1.Text) * Val(ex2.Text))
   
    C = Atn(Val(solu1) / Sqr(-(Val(solu1)) * (Val(solu1)) + 1)) 'find side
  End If
  
ElseIf pt4.value = True Then
  If ex1.Text = "" Or ex3.Text = "" Or ex5.Text = "" Then
   MsgBox "Invalid Input"
  Else
    D = (2 * Val(ex5.Text)) / (Val(ex1.Text) * Sin(Val(ex3.Text)) * 180 / 3.14)
  End If
End If

End If
If pt1.value = True Then

If in6.Text = "Millimeter" And out6.Text = "Millimeter" Then
ex5.Text = Val(A)
ElseIf in6.Text = "Millimeter" And out6.Text = "Centimeter" Then
ex5.Text = A / 10
ElseIf in6.Text = "Millimeter" And out6.Text = "Meter" Then
ex5.Text = A / 1000
ElseIf in6.Text = "Centimeter" And out6.Text = "Millimeter" Then
ex5.Text = A * 10
ElseIf in6.Text = "Centimeter" And out6.Text = "Centimeter" Then
ex5.Text = A
ElseIf in6.Text = "Centimeter" And out6.Text = "Meter" Then
ex5.Text = A / 100
ElseIf in6.Text = "Meter" And out6.Text = "Millimeter" Then
ex5.Text = A * 1000
ElseIf in6.Text = "Meter" And out6.Text = "Centimeter" Then
ex5.Text = A * 100
ElseIf in6.Text = "Meter" And out6.Text = "Meter" Then
ex5.Text = A
End If

ElseIf pt2.value = True Then

If in6.Text = "Millimeter" And out6.Text = "Millimeter" Then
ex4.Text = B
ElseIf in6.Text = "Millimeter" And out6.Text = "Centimeter" Then
ex4.Text = B / 10
ElseIf in6.Text = "Millimeter" And out6.Text = "Meter" Then
ex4.Text = B / 1000
ElseIf in6.Text = "Centimeter" And out6.Text = "Millimeter" Then
ex4.Text = B * 10
ElseIf in6.Text = "Centimeter" And out6.Text = "Centimeter" Then
ex4.Text = B
ElseIf in6.Text = "Centimeter" And out6.Text = "Meter" Then
ex4.Text = B / 100
ElseIf in6.Text = "Meter" And out6.Text = "Millimeter" Then
ex4.Text = B * 1000
ElseIf in6.Text = "Meter" And out6.Text = "Centimeter" Then
ex4.Text = B * 100
ElseIf in6.Text = "Meter" And out6.Text = "Meter" Then
ex4.Text = B
End If

ElseIf pt3.value = True Then

If in6.Text = "Millimeter" And out6.Text = "Millimeter" Then
ex3.Text = C
ElseIf in6.Text = "Millimeter" And out6.Text = "Centimeter" Then
ex3.Text = C / 10
ElseIf in6.Text = "Millimeter" And out6.Text = "Meter" Then
ex3.Text = C / 1000
ElseIf in6.Text = "Centimeter" And out6.Text = "Millimeter" Then
ex3.Text = C * 10
ElseIf in6.Text = "Centimeter" And out6.Text = "Centimeter" Then
ex3.Text = C
ElseIf in6.Text = "Centimeter" And out6.Text = "Meter" Then
ex3.Text = C / 100
ElseIf in6.Text = "Meter" And out6.Text = "Millimeter" Then
ex3.Text = C * 1000
ElseIf in6.Text = "Meter" And out6.Text = "Centimeter" Then
ex3.Text = C * 100
ElseIf in6.Text = "Meter" And out6.Text = "Meter" Then
ex3.Text = C
End If
ElseIf pt4.value = True Then

If in6.Text = "Millimeter" And out6.Text = "Millimeter" Then
ex2.Text = D
ElseIf in6.Text = "Millimeter" And out6.Text = "Centimeter" Then
ex2.Text = D / 10
ElseIf in6.Text = "Millimeter" And out6.Text = "Meter" Then
ex2.Text = D / 1000
ElseIf in6.Text = "Centimeter" And out6.Text = "Millimeter" Then
ex2.Text = D * 10
ElseIf in6.Text = "Centimeter" And out6.Text = "Centimeter" Then
ex2.Text = D
ElseIf in6.Text = "Centimeter" And out6.Text = "Meter" Then
ex2.Text = D / 100
ElseIf in6.Text = "Meter" And out6.Text = "Millimeter" Then
ex2.Text = D * 1000
ElseIf in6.Text = "Meter" And out6.Text = "Centimeter" Then
ex2.Text = D * 100
ElseIf in6.Text = "Meter" And out6.Text = "Meter" Then
ex2.Text = D
End If
End If
Exit Sub
errhan:
 MsgBox err.Description, vbInformation


End Sub

Private Sub Form_Load()
Me.WindowState = vbMaximized
in3.AddItem "Millimeter"
in3.AddItem "Centimeter"
in3.AddItem "Meter"
in3.AddItem "Decimeter"
in3.AddItem "Hectare"

out3.AddItem "Millimeter"
out3.AddItem "Centimeter"
out3.AddItem "Meter"
out3.AddItem "Decimeter"
out3.AddItem "Hectare"

in1.AddItem "Millimeter"
in1.AddItem "Centimeter"
in1.AddItem "Meter"
in1.AddItem "Decimeter"
in1.AddItem "Hectare"

out1.AddItem "Millimeter"
out1.AddItem "Centimeter"
out1.AddItem "Meter"
out1.AddItem "Decimeter"
out1.AddItem "Hectare"

in2.AddItem "Millimeter"
in2.AddItem "Centimeter"
in2.AddItem "Meter"
in2.AddItem "Decimeter"
in2.AddItem "Hectare"

out2.AddItem "Millimeter"
out2.AddItem "Centimeter"
out2.AddItem "Meter"
out2.AddItem "Decimeter"
out2.AddItem "Hectare"

in4.AddItem "Millimeter"
in4.AddItem "Centimeter"
in4.AddItem "Meter"
in4.AddItem "Decimeter"
in4.AddItem "Hectare"

out4.AddItem "Millimeter"
out4.AddItem "Centimeter"
out4.AddItem "Meter"
out4.AddItem "Decimeter"
out4.AddItem "Hectare"

in5.AddItem "Millimeter"
in5.AddItem "Centimeter"
in5.AddItem "Meter"
in5.AddItem "Decimeter"
in5.AddItem "Hectare"

out5.AddItem "Millimeter"
out5.AddItem "Centimeter"
out5.AddItem "Meter"
out5.AddItem "Decimeter"
out5.AddItem "Hectare"


in6.AddItem "Millimeter"
in6.AddItem "Centimeter"
in6.AddItem "Meter"
in6.AddItem "Decimeter"
in6.AddItem "Hectare"

out6.AddItem "Millimeter"
out6.AddItem "Centimeter"
out6.AddItem "Meter"
out6.AddItem "Decimeter"
out6.AddItem "Hectare"

in7.AddItem "Millimeter"
in7.AddItem "Centimeter"
in7.AddItem "Meter"
in7.AddItem "Decimeter"
in7.AddItem "Hectare"

out7.AddItem "Millimeter"
out7.AddItem "Centimeter"
out7.AddItem "Meter"
out7.AddItem "Decimeter"
out7.AddItem "Hectare"
End Sub






