VERSION 5.00
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "TABCTL32.OCX"
Begin VB.Form surface 
   BackColor       =   &H00C0FFFF&
   Caption         =   "Mensuration"
   ClientHeight    =   10245
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   12690
   Icon            =   "surface.frx":0000
   LinkTopic       =   "Form1"
   ScaleHeight     =   10245
   ScaleWidth      =   12690
   StartUpPosition =   3  'Windows Default
   Begin TabDlg.SSTab SSTab1 
      Height          =   8655
      Left            =   0
      TabIndex        =   0
      Top             =   2040
      Width           =   15255
      _ExtentX        =   26908
      _ExtentY        =   15266
      _Version        =   393216
      Tabs            =   12
      Tab             =   8
      TabsPerRow      =   6
      TabHeight       =   520
      BackColor       =   12648447
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      TabCaption(0)   =   "Square"
      TabPicture(0)   =   "surface.frx":038A
      Tab(0).ControlEnabled=   0   'False
      Tab(0).Control(0)=   "Image2"
      Tab(0).Control(1)=   "Label3"
      Tab(0).Control(2)=   "Label2"
      Tab(0).Control(3)=   "Label1"
      Tab(0).Control(4)=   "Image10"
      Tab(0).Control(5)=   "Label4"
      Tab(0).Control(6)=   "Label5"
      Tab(0).Control(7)=   "O41"
      Tab(0).Control(8)=   "Command1"
      Tab(0).Control(9)=   "O3"
      Tab(0).Control(10)=   "O2"
      Tab(0).Control(11)=   "O1"
      Tab(0).Control(12)=   "T3"
      Tab(0).Control(13)=   "T2"
      Tab(0).Control(14)=   "T1"
      Tab(0).Control(15)=   "Command11"
      Tab(0).Control(16)=   "Combo9"
      Tab(0).Control(17)=   "Combo10"
      Tab(0).ControlCount=   18
      TabCaption(1)   =   "Circle"
      TabPicture(1)   =   "surface.frx":03A6
      Tab(1).ControlEnabled=   0   'False
      Tab(1).Control(0)=   "Image1"
      Tab(1).Control(1)=   "Label10"
      Tab(1).Control(2)=   "Label9"
      Tab(1).Control(3)=   "Label8"
      Tab(1).Control(4)=   "Image11"
      Tab(1).Control(5)=   "Label6"
      Tab(1).Control(6)=   "Label7"
      Tab(1).Control(7)=   "O40"
      Tab(1).Control(8)=   "T6"
      Tab(1).Control(9)=   "T5"
      Tab(1).Control(10)=   "T4"
      Tab(1).Control(11)=   "O26"
      Tab(1).Control(12)=   "O25"
      Tab(1).Control(13)=   "O24"
      Tab(1).Control(14)=   "Command2"
      Tab(1).Control(15)=   "Command10"
      Tab(1).Control(16)=   "Combo11"
      Tab(1).Control(17)=   "Combo12"
      Tab(1).ControlCount=   18
      TabCaption(2)   =   "Rectangle"
      TabPicture(2)   =   "surface.frx":03C2
      Tab(2).ControlEnabled=   0   'False
      Tab(2).Control(0)=   "Command12"
      Tab(2).Control(1)=   "Combo14"
      Tab(2).Control(2)=   "Combo13"
      Tab(2).Control(3)=   "Command3"
      Tab(2).Control(4)=   "O37"
      Tab(2).Control(5)=   "O38"
      Tab(2).Control(6)=   "O39"
      Tab(2).Control(7)=   "T7"
      Tab(2).Control(8)=   "T8"
      Tab(2).Control(9)=   "T9"
      Tab(2).Control(10)=   "T10"
      Tab(2).Control(11)=   "O42"
      Tab(2).Control(12)=   "O43"
      Tab(2).Control(13)=   "O44"
      Tab(2).Control(14)=   "Label46"
      Tab(2).Control(15)=   "Label45"
      Tab(2).Control(16)=   "Image12"
      Tab(2).Control(17)=   "Label13"
      Tab(2).Control(18)=   "Label14"
      Tab(2).Control(19)=   "Label15"
      Tab(2).Control(20)=   "Label16"
      Tab(2).Control(21)=   "Image3"
      Tab(2).ControlCount=   22
      TabCaption(3)   =   "Cone"
      TabPicture(3)   =   "surface.frx":03DE
      Tab(3).ControlEnabled=   0   'False
      Tab(3).Control(0)=   "Label33"
      Tab(3).Control(1)=   "Label32"
      Tab(3).Control(2)=   "Label31"
      Tab(3).Control(3)=   "Label30"
      Tab(3).Control(4)=   "Label29"
      Tab(3).Control(5)=   "Label28"
      Tab(3).Control(6)=   "Image6"
      Tab(3).Control(7)=   "Image13"
      Tab(3).Control(8)=   "Label51"
      Tab(3).Control(9)=   "Label52"
      Tab(3).Control(10)=   "O85"
      Tab(3).Control(11)=   "O84"
      Tab(3).Control(12)=   "T21"
      Tab(3).Control(13)=   "T20"
      Tab(3).Control(14)=   "T19"
      Tab(3).Control(15)=   "T18"
      Tab(3).Control(16)=   "T17"
      Tab(3).Control(17)=   "T14"
      Tab(3).Control(18)=   "O83"
      Tab(3).Control(19)=   "O82"
      Tab(3).Control(20)=   "O81"
      Tab(3).Control(21)=   "O45"
      Tab(3).Control(22)=   "Command13"
      Tab(3).Control(23)=   "Combo15"
      Tab(3).Control(24)=   "Combo16"
      Tab(3).Control(25)=   "Command16"
      Tab(3).ControlCount=   26
      TabCaption(4)   =   "Cube"
      TabPicture(4)   =   "surface.frx":03FA
      Tab(4).ControlEnabled=   0   'False
      Tab(4).Control(0)=   "Label26"
      Tab(4).Control(1)=   "Label25"
      Tab(4).Control(2)=   "Image7"
      Tab(4).Control(3)=   "Image9"
      Tab(4).Control(4)=   "Label11"
      Tab(4).Control(5)=   "Label12"
      Tab(4).Control(6)=   "T16"
      Tab(4).Control(7)=   "T15"
      Tab(4).Control(8)=   "O72"
      Tab(4).Control(9)=   "O71"
      Tab(4).Control(10)=   "Command4"
      Tab(4).Control(11)=   "Command14"
      Tab(4).Control(12)=   "Combo17"
      Tab(4).Control(13)=   "Combo18"
      Tab(4).ControlCount=   14
      TabCaption(5)   =   "Triangle"
      TabPicture(5)   =   "surface.frx":0416
      Tab(5).ControlEnabled=   0   'False
      Tab(5).Control(0)=   "Label19"
      Tab(5).Control(1)=   "Label18"
      Tab(5).Control(2)=   "Label17"
      Tab(5).Control(3)=   "Image8"
      Tab(5).Control(4)=   "Image14"
      Tab(5).Control(5)=   "Label20"
      Tab(5).Control(6)=   "Label21"
      Tab(5).Control(7)=   "Command5"
      Tab(5).Control(8)=   "O50"
      Tab(5).Control(9)=   "O49"
      Tab(5).Control(10)=   "O48"
      Tab(5).Control(11)=   "T13"
      Tab(5).Control(12)=   "T12"
      Tab(5).Control(13)=   "T11"
      Tab(5).Control(14)=   "Command15"
      Tab(5).Control(15)=   "Combo3"
      Tab(5).Control(16)=   "Combo4"
      Tab(5).ControlCount=   17
      TabCaption(6)   =   "Sphere"
      TabPicture(6)   =   "surface.frx":0432
      Tab(6).ControlEnabled=   0   'False
      Tab(6).Control(0)=   "Label36"
      Tab(6).Control(1)=   "Label35"
      Tab(6).Control(2)=   "Label34"
      Tab(6).Control(3)=   "Image15"
      Tab(6).Control(4)=   "Label22"
      Tab(6).Control(5)=   "Label23"
      Tab(6).Control(6)=   "Image19"
      Tab(6).Control(7)=   "Command7"
      Tab(6).Control(8)=   "O89"
      Tab(6).Control(9)=   "O88"
      Tab(6).Control(10)=   "O87"
      Tab(6).Control(11)=   "T24"
      Tab(6).Control(12)=   "T23"
      Tab(6).Control(13)=   "T22"
      Tab(6).Control(14)=   "O86"
      Tab(6).Control(15)=   "Combo5"
      Tab(6).Control(16)=   "Combo6"
      Tab(6).Control(17)=   "Command6"
      Tab(6).ControlCount=   18
      TabCaption(7)   =   "Cylinder"
      TabPicture(7)   =   "surface.frx":044E
      Tab(7).ControlEnabled=   0   'False
      Tab(7).Control(0)=   "Label44"
      Tab(7).Control(1)=   "Label43"
      Tab(7).Control(2)=   "Label42"
      Tab(7).Control(3)=   "Label41"
      Tab(7).Control(4)=   "Label40"
      Tab(7).Control(5)=   "Label39"
      Tab(7).Control(6)=   "Image4"
      Tab(7).Control(7)=   "Image16"
      Tab(7).Control(8)=   "Label24"
      Tab(7).Control(9)=   "Label27"
      Tab(7).Control(10)=   "O115"
      Tab(7).Control(11)=   "Command8"
      Tab(7).Control(12)=   "O104"
      Tab(7).Control(13)=   "O103"
      Tab(7).Control(14)=   "O102"
      Tab(7).Control(15)=   "T30"
      Tab(7).Control(16)=   "T29"
      Tab(7).Control(17)=   "T28"
      Tab(7).Control(18)=   "T27"
      Tab(7).Control(19)=   "T26"
      Tab(7).Control(20)=   "T25"
      Tab(7).Control(21)=   "O101"
      Tab(7).Control(22)=   "O100"
      Tab(7).Control(23)=   "Command17"
      Tab(7).Control(24)=   "Combo7"
      Tab(7).Control(25)=   "Combo8"
      Tab(7).ControlCount=   26
      TabCaption(8)   =   "Cuboid"
      TabPicture(8)   =   "surface.frx":046A
      Tab(8).ControlEnabled=   -1  'True
      Tab(8).Control(0)=   "Label50"
      Tab(8).Control(0).Enabled=   0   'False
      Tab(8).Control(1)=   "Label49"
      Tab(8).Control(1).Enabled=   0   'False
      Tab(8).Control(2)=   "Label48"
      Tab(8).Control(2).Enabled=   0   'False
      Tab(8).Control(3)=   "Label47"
      Tab(8).Control(3).Enabled=   0   'False
      Tab(8).Control(4)=   "Image5"
      Tab(8).Control(4).Enabled=   0   'False
      Tab(8).Control(5)=   "Image17"
      Tab(8).Control(5).Enabled=   0   'False
      Tab(8).Control(6)=   "Label37"
      Tab(8).Control(6).Enabled=   0   'False
      Tab(8).Control(7)=   "Label38"
      Tab(8).Control(7).Enabled=   0   'False
      Tab(8).Control(8)=   "Command9"
      Tab(8).Control(8).Enabled=   0   'False
      Tab(8).Control(9)=   "O121"
      Tab(8).Control(9).Enabled=   0   'False
      Tab(8).Control(10)=   "O120"
      Tab(8).Control(10).Enabled=   0   'False
      Tab(8).Control(11)=   "O119"
      Tab(8).Control(11).Enabled=   0   'False
      Tab(8).Control(12)=   "T34"
      Tab(8).Control(12).Enabled=   0   'False
      Tab(8).Control(13)=   "T33"
      Tab(8).Control(13).Enabled=   0   'False
      Tab(8).Control(14)=   "T32"
      Tab(8).Control(14).Enabled=   0   'False
      Tab(8).Control(15)=   "T31"
      Tab(8).Control(15).Enabled=   0   'False
      Tab(8).Control(16)=   "O117"
      Tab(8).Control(16).Enabled=   0   'False
      Tab(8).Control(17)=   "Command18"
      Tab(8).Control(17).Enabled=   0   'False
      Tab(8).Control(18)=   "Combo1"
      Tab(8).Control(18).Enabled=   0   'False
      Tab(8).Control(19)=   "Combo2"
      Tab(8).Control(19).Enabled=   0   'False
      Tab(8).ControlCount=   20
      TabCaption(9)   =   "Hexagon"
      TabPicture(9)   =   "surface.frx":0486
      Tab(9).ControlEnabled=   0   'False
      Tab(9).Control(0)=   "Image18"
      Tab(9).Control(1)=   "Label53"
      Tab(9).Control(2)=   "Label54"
      Tab(9).Control(3)=   "Label55"
      Tab(9).Control(4)=   "Label56"
      Tab(9).Control(5)=   "Label57"
      Tab(9).Control(6)=   "Label58"
      Tab(9).Control(7)=   "Image20"
      Tab(9).Control(8)=   "out1"
      Tab(9).Control(9)=   "in1"
      Tab(9).Control(10)=   "Command19"
      Tab(9).Control(11)=   "oo4"
      Tab(9).Control(12)=   "f1"
      Tab(9).Control(13)=   "f2"
      Tab(9).Control(14)=   "f3"
      Tab(9).Control(15)=   "f4"
      Tab(9).Control(16)=   "oo1"
      Tab(9).Control(17)=   "oo2"
      Tab(9).Control(18)=   "oo3"
      Tab(9).Control(19)=   "Command20"
      Tab(9).ControlCount=   20
      TabCaption(10)  =   "Octagon"
      TabPicture(10)  =   "surface.frx":04A2
      Tab(10).ControlEnabled=   0   'False
      Tab(10).Control(0)=   "Label59"
      Tab(10).Control(1)=   "Label60"
      Tab(10).Control(2)=   "Label61"
      Tab(10).Control(3)=   "Label62"
      Tab(10).Control(4)=   "Label63"
      Tab(10).Control(5)=   "Label64"
      Tab(10).Control(6)=   "Image22"
      Tab(10).Control(7)=   "Image21"
      Tab(10).Control(8)=   "Command21"
      Tab(10).Control(9)=   "op3"
      Tab(10).Control(10)=   "op2"
      Tab(10).Control(11)=   "op1"
      Tab(10).Control(12)=   "te4"
      Tab(10).Control(13)=   "te3"
      Tab(10).Control(14)=   "te2"
      Tab(10).Control(15)=   "te1"
      Tab(10).Control(16)=   "op4"
      Tab(10).Control(17)=   "Command22"
      Tab(10).Control(18)=   "in2"
      Tab(10).Control(19)=   "out2"
      Tab(10).Control(20)=   "op5"
      Tab(10).ControlCount=   21
      TabCaption(11)  =   "Pentagon"
      TabPicture(11)  =   "surface.frx":04BE
      Tab(11).ControlEnabled=   0   'False
      Tab(11).Control(0)=   "Label65"
      Tab(11).Control(1)=   "Label66"
      Tab(11).Control(2)=   "Label67"
      Tab(11).Control(3)=   "Label68"
      Tab(11).Control(4)=   "Label69"
      Tab(11).Control(5)=   "Label70"
      Tab(11).Control(6)=   "Image23"
      Tab(11).Control(7)=   "ot5"
      Tab(11).Control(8)=   "out3"
      Tab(11).Control(9)=   "in3"
      Tab(11).Control(10)=   "Command23"
      Tab(11).Control(11)=   "ot4"
      Tab(11).Control(12)=   "tt1"
      Tab(11).Control(13)=   "tt2"
      Tab(11).Control(14)=   "tt3"
      Tab(11).Control(15)=   "tt4"
      Tab(11).Control(16)=   "ot1"
      Tab(11).Control(17)=   "ot2"
      Tab(11).Control(18)=   "ot3"
      Tab(11).Control(19)=   "Command24"
      Tab(11).ControlCount=   20
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
         Left            =   -70320
         Style           =   1  'Graphical
         TabIndex        =   211
         Top             =   7560
         Width           =   1695
      End
      Begin VB.OptionButton ot3 
         Caption         =   "Find Side                             (Given Center corner distance)"
         Height          =   735
         Left            =   -74280
         TabIndex        =   210
         Top             =   7380
         Width           =   2655
      End
      Begin VB.OptionButton ot2 
         Caption         =   "Find Perimeter                            (Given  side)"
         Height          =   615
         Left            =   -74280
         TabIndex        =   209
         Top             =   6780
         Width           =   2535
      End
      Begin VB.OptionButton ot1 
         Caption         =   "Find Area                    (Given Center corner distance)"
         Height          =   735
         Left            =   -74280
         TabIndex        =   208
         Top             =   5940
         Width           =   2295
      End
      Begin VB.TextBox tt4 
         Height          =   615
         Left            =   -71640
         TabIndex        =   207
         Top             =   3780
         Width           =   2895
      End
      Begin VB.TextBox tt3 
         Height          =   615
         Left            =   -71640
         TabIndex        =   206
         Top             =   2820
         Width           =   2895
      End
      Begin VB.TextBox tt2 
         Height          =   615
         Left            =   -71640
         TabIndex        =   205
         Top             =   1860
         Width           =   2895
      End
      Begin VB.TextBox tt1 
         Height          =   615
         Left            =   -71640
         TabIndex        =   204
         Top             =   1020
         Width           =   2895
      End
      Begin VB.OptionButton ot4 
         Caption         =   "Find Center corner distance       (Given  Area)"
         Height          =   735
         Left            =   -71520
         TabIndex        =   203
         Top             =   5940
         Width           =   2535
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
         Left            =   -68520
         Style           =   1  'Graphical
         TabIndex        =   202
         Top             =   7560
         Width           =   1695
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
         TabIndex        =   201
         Text            =   "Millimeter"
         Top             =   5220
         Visible         =   0   'False
         Width           =   2055
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
         TabIndex        =   200
         Text            =   "Millimeter"
         Top             =   5220
         Visible         =   0   'False
         Width           =   2055
      End
      Begin VB.OptionButton ot5 
         Caption         =   "Find Side                         (Given  Perimeter)"
         Height          =   735
         Left            =   -71520
         TabIndex        =   199
         Top             =   6660
         Width           =   2535
      End
      Begin VB.OptionButton op5 
         Caption         =   "Find Side                         (Given  Perimeter)"
         Height          =   735
         Left            =   -71760
         TabIndex        =   198
         Top             =   6480
         Width           =   2535
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
         Left            =   -72000
         TabIndex        =   191
         Text            =   "Millimeter"
         Top             =   5100
         Visible         =   0   'False
         Width           =   2055
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
         Left            =   -74280
         TabIndex        =   190
         Text            =   "Millimeter"
         Top             =   5100
         Visible         =   0   'False
         Width           =   2055
      End
      Begin VB.CommandButton Command22 
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
         Left            =   -69360
         Style           =   1  'Graphical
         TabIndex        =   189
         Top             =   7440
         Width           =   1695
      End
      Begin VB.OptionButton op4 
         Caption         =   "Find Center corner distance       (Given  Area)"
         Height          =   735
         Left            =   -71760
         TabIndex        =   188
         Top             =   5760
         Width           =   2535
      End
      Begin VB.TextBox te1 
         Height          =   615
         Left            =   -71640
         TabIndex        =   187
         Top             =   900
         Width           =   2895
      End
      Begin VB.TextBox te2 
         Height          =   615
         Left            =   -71640
         TabIndex        =   186
         Top             =   1740
         Width           =   2895
      End
      Begin VB.TextBox te3 
         Height          =   615
         Left            =   -71640
         TabIndex        =   185
         Top             =   2700
         Width           =   2895
      End
      Begin VB.TextBox te4 
         Height          =   615
         Left            =   -71640
         TabIndex        =   184
         Top             =   3660
         Width           =   2895
      End
      Begin VB.OptionButton op1 
         Caption         =   "Find Area                    (Given Center corner distance)"
         Height          =   735
         Left            =   -74160
         TabIndex        =   183
         Top             =   5700
         Width           =   2295
      End
      Begin VB.OptionButton op2 
         Caption         =   "Find Perimeter                            (Given  side)"
         Height          =   615
         Left            =   -74160
         TabIndex        =   182
         Top             =   6540
         Width           =   2535
      End
      Begin VB.OptionButton op3 
         Caption         =   "Find Side                             (Given Center corner distance)"
         Height          =   735
         Left            =   -74160
         TabIndex        =   181
         Top             =   7140
         Width           =   2655
      End
      Begin VB.CommandButton Command21 
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
         Left            =   -71280
         Style           =   1  'Graphical
         TabIndex        =   180
         Top             =   7440
         Width           =   1695
      End
      Begin VB.CommandButton Command20 
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
         TabIndex        =   173
         Top             =   6960
         Width           =   1695
      End
      Begin VB.OptionButton oo3 
         Caption         =   "Find Side                        (Given Perimeter)"
         Height          =   735
         Left            =   -73440
         TabIndex        =   172
         Top             =   7260
         Width           =   2415
      End
      Begin VB.OptionButton oo2 
         Caption         =   "Find Perimeter                            (Given  side)"
         Height          =   615
         Left            =   -73440
         TabIndex        =   171
         Top             =   6660
         Width           =   2535
      End
      Begin VB.OptionButton oo1 
         Caption         =   "Find Area                    (Given side or center corner distance)"
         Height          =   735
         Left            =   -73440
         TabIndex        =   170
         Top             =   5820
         Width           =   2295
      End
      Begin VB.TextBox f4 
         Height          =   615
         Left            =   -71520
         TabIndex        =   169
         Top             =   3660
         Width           =   2895
      End
      Begin VB.TextBox f3 
         Height          =   615
         Left            =   -71520
         TabIndex        =   168
         Top             =   2700
         Width           =   2895
      End
      Begin VB.TextBox f2 
         Height          =   615
         Left            =   -71520
         TabIndex        =   167
         Top             =   1740
         Width           =   2895
      End
      Begin VB.TextBox f1 
         Height          =   615
         Left            =   -71520
         TabIndex        =   166
         Top             =   900
         Width           =   2895
      End
      Begin VB.OptionButton oo4 
         Caption         =   "Find Side                         (Given  Area)"
         Height          =   735
         Left            =   -73440
         TabIndex        =   165
         Top             =   7860
         Width           =   2535
      End
      Begin VB.CommandButton Command19 
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
         Left            =   -70560
         Style           =   1  'Graphical
         TabIndex        =   164
         Top             =   7560
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
         Left            =   -74160
         TabIndex        =   163
         Text            =   "Millimeter"
         Top             =   5100
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
         Left            =   -71880
         TabIndex        =   162
         Text            =   "Millimeter"
         Top             =   5100
         Visible         =   0   'False
         Width           =   2055
      End
      Begin VB.CommandButton Command16 
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
         Left            =   -66600
         Style           =   1  'Graphical
         TabIndex        =   143
         Top             =   6840
         Width           =   1575
      End
      Begin VB.CommandButton Command12 
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
         Left            =   -67920
         Style           =   1  'Graphical
         TabIndex        =   142
         Top             =   6600
         Width           =   1695
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
         Left            =   -70920
         Style           =   1  'Graphical
         TabIndex        =   141
         Top             =   7020
         Width           =   1695
      End
      Begin VB.ComboBox Combo18 
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
         Left            =   -74400
         TabIndex        =   140
         Text            =   "Millimeter"
         Top             =   4260
         Visible         =   0   'False
         Width           =   2175
      End
      Begin VB.ComboBox Combo17 
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
         TabIndex        =   139
         Text            =   "Millimeter"
         Top             =   4260
         Visible         =   0   'False
         Width           =   2055
      End
      Begin VB.ComboBox Combo16 
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
         TabIndex        =   138
         Text            =   "Millimeter"
         Top             =   6180
         Visible         =   0   'False
         Width           =   2175
      End
      Begin VB.ComboBox Combo15 
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
         TabIndex        =   137
         Text            =   "Millimeter"
         Top             =   6180
         Visible         =   0   'False
         Width           =   2055
      End
      Begin VB.ComboBox Combo14 
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
         TabIndex        =   136
         Text            =   "Millimeter"
         Top             =   5100
         Visible         =   0   'False
         Width           =   2295
      End
      Begin VB.ComboBox Combo13 
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
         TabIndex        =   135
         Text            =   "Millimeter"
         Top             =   5100
         Visible         =   0   'False
         Width           =   2055
      End
      Begin VB.ComboBox Combo12 
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
         Left            =   -74400
         TabIndex        =   134
         Text            =   "Millimeter"
         Top             =   4740
         Visible         =   0   'False
         Width           =   2175
      End
      Begin VB.ComboBox Combo11 
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
         TabIndex        =   133
         Text            =   "Millimeter"
         Top             =   4740
         Visible         =   0   'False
         Width           =   2175
      End
      Begin VB.ComboBox Combo10 
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
         Left            =   -74400
         TabIndex        =   132
         Text            =   "Millimeter"
         Top             =   4740
         Visible         =   0   'False
         Width           =   2295
      End
      Begin VB.ComboBox Combo9 
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
         TabIndex        =   131
         Text            =   "Millimeter"
         Top             =   4740
         Visible         =   0   'False
         Width           =   2175
      End
      Begin VB.ComboBox Combo8 
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
         Left            =   -69000
         TabIndex        =   130
         Text            =   "Millimeter"
         Top             =   6180
         Visible         =   0   'False
         Width           =   1935
      End
      Begin VB.ComboBox Combo7 
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
         Left            =   -66960
         TabIndex        =   129
         Text            =   "Millimeter"
         Top             =   6180
         Visible         =   0   'False
         Width           =   1935
      End
      Begin VB.ComboBox Combo6 
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
         Left            =   -73800
         TabIndex        =   128
         Text            =   "Millimeter"
         Top             =   4740
         Visible         =   0   'False
         Width           =   2055
      End
      Begin VB.ComboBox Combo5 
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
         Left            =   -71400
         TabIndex        =   127
         Text            =   "Millimeter"
         Top             =   4740
         Visible         =   0   'False
         Width           =   2055
      End
      Begin VB.ComboBox Combo4 
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
         TabIndex        =   126
         Text            =   "Millimeter"
         Top             =   4260
         Visible         =   0   'False
         Width           =   2175
      End
      Begin VB.ComboBox Combo3 
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
         TabIndex        =   125
         Text            =   "Millimeter"
         Top             =   4260
         Visible         =   0   'False
         Width           =   2295
      End
      Begin VB.ComboBox Combo2 
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
         Left            =   3240
         TabIndex        =   124
         Text            =   "Millimeter"
         Top             =   4980
         Visible         =   0   'False
         Width           =   2055
      End
      Begin VB.ComboBox Combo1 
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
         Left            =   960
         TabIndex        =   123
         Text            =   "Millimeter"
         Top             =   4980
         Visible         =   0   'False
         Width           =   2055
      End
      Begin VB.CommandButton Command18 
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
         Left            =   5640
         Style           =   1  'Graphical
         TabIndex        =   122
         Top             =   7080
         Width           =   1695
      End
      Begin VB.CommandButton Command17 
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
         Left            =   -68040
         Style           =   1  'Graphical
         TabIndex        =   121
         Top             =   7560
         Width           =   1695
      End
      Begin VB.CommandButton Command15 
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
         Left            =   -71280
         Style           =   1  'Graphical
         TabIndex        =   120
         Top             =   7500
         Width           =   1455
      End
      Begin VB.CommandButton Command14 
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
         Left            =   -72000
         Style           =   1  'Graphical
         TabIndex        =   119
         Top             =   7020
         Width           =   1575
      End
      Begin VB.CommandButton Command13 
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
         Left            =   -66600
         Style           =   1  'Graphical
         TabIndex        =   118
         Top             =   7440
         Width           =   1575
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
         Left            =   -68160
         Style           =   1  'Graphical
         TabIndex        =   117
         Top             =   6780
         Width           =   1575
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
         Left            =   -68160
         Style           =   1  'Graphical
         TabIndex        =   116
         Top             =   7140
         Width           =   1695
      End
      Begin VB.TextBox T1 
         Height          =   615
         Left            =   -72600
         TabIndex        =   81
         Top             =   1260
         Width           =   2895
      End
      Begin VB.TextBox T2 
         Height          =   615
         Left            =   -72600
         TabIndex        =   80
         Top             =   2220
         Width           =   2895
      End
      Begin VB.TextBox T3 
         Height          =   615
         Left            =   -72600
         TabIndex        =   79
         Top             =   3300
         Width           =   2895
      End
      Begin VB.OptionButton O1 
         Caption         =   "Find Area"
         Height          =   495
         Left            =   -73440
         TabIndex        =   78
         Top             =   5340
         Width           =   2055
      End
      Begin VB.OptionButton O2 
         Caption         =   "Find side(Given Area)"
         Height          =   615
         Left            =   -73440
         TabIndex        =   77
         Top             =   6540
         Width           =   2175
      End
      Begin VB.OptionButton O3 
         Caption         =   "Find side(Given  Circumference)"
         Height          =   495
         Left            =   -73440
         TabIndex        =   76
         Top             =   7260
         Width           =   2655
      End
      Begin VB.CommandButton Command1 
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
         TabIndex        =   75
         Top             =   6780
         Width           =   1575
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
         Left            =   -70080
         Style           =   1  'Graphical
         TabIndex        =   74
         Top             =   7140
         Width           =   1695
      End
      Begin VB.OptionButton O24 
         Caption         =   "Find Radius                    (Given  Circumference)"
         Height          =   495
         Left            =   -73440
         TabIndex        =   73
         Top             =   7620
         Width           =   2415
      End
      Begin VB.OptionButton O25 
         Caption         =   "Find Radius(Given Area)"
         Height          =   615
         Left            =   -73440
         TabIndex        =   72
         Top             =   6780
         Width           =   2175
      End
      Begin VB.OptionButton O26 
         Caption         =   "Find Area"
         Height          =   495
         Left            =   -73440
         TabIndex        =   71
         Top             =   5460
         Width           =   2055
      End
      Begin VB.TextBox T4 
         Height          =   615
         Left            =   -72600
         TabIndex        =   70
         Top             =   1140
         Width           =   2895
      End
      Begin VB.TextBox T5 
         Height          =   615
         Left            =   -72600
         TabIndex        =   69
         Top             =   2100
         Width           =   2895
      End
      Begin VB.TextBox T6 
         Height          =   615
         Left            =   -72600
         TabIndex        =   68
         Top             =   3180
         Width           =   2895
      End
      Begin VB.CommandButton Command3 
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
         Left            =   -67920
         Style           =   1  'Graphical
         TabIndex        =   67
         Top             =   6000
         Width           =   1695
      End
      Begin VB.OptionButton O37 
         Caption         =   "Find breadth                                  (Given  Length and  Circumference)"
         Height          =   495
         Left            =   -71880
         TabIndex        =   66
         Top             =   5700
         Width           =   3015
      End
      Begin VB.OptionButton O38 
         Caption         =   "Find breadth                    (Given  Length and Area)"
         Height          =   615
         Left            =   -74280
         TabIndex        =   65
         Top             =   6780
         Width           =   2175
      End
      Begin VB.OptionButton O39 
         Caption         =   "Find Area"
         Height          =   495
         Left            =   -74280
         TabIndex        =   64
         Top             =   5700
         Width           =   2055
      End
      Begin VB.TextBox T7 
         Height          =   615
         Left            =   -72720
         TabIndex        =   63
         Top             =   780
         Width           =   2895
      End
      Begin VB.TextBox T8 
         Height          =   615
         Left            =   -72720
         TabIndex        =   62
         Top             =   1740
         Width           =   2895
      End
      Begin VB.TextBox T9 
         Height          =   615
         Left            =   -72720
         TabIndex        =   61
         Top             =   2700
         Width           =   2895
      End
      Begin VB.TextBox T10 
         Height          =   615
         Left            =   -72720
         TabIndex        =   60
         Top             =   3660
         Width           =   2895
      End
      Begin VB.OptionButton O40 
         Caption         =   "Find  Circumference"
         Height          =   615
         Left            =   -73440
         TabIndex        =   59
         Top             =   6060
         Width           =   2295
      End
      Begin VB.OptionButton O41 
         Caption         =   "Find Circumference"
         Height          =   615
         Left            =   -73440
         TabIndex        =   58
         Top             =   5940
         Width           =   2535
      End
      Begin VB.OptionButton O42 
         Caption         =   "Find  Circumference"
         Height          =   375
         Left            =   -74280
         TabIndex        =   57
         Top             =   6300
         Width           =   2175
      End
      Begin VB.OptionButton O43 
         Caption         =   "Find length                        (Given  Breadth and Area)"
         Height          =   495
         Left            =   -71880
         TabIndex        =   56
         Top             =   6300
         Width           =   2535
      End
      Begin VB.OptionButton O44 
         Caption         =   "Find length                                  (Given  Breadth and  Circumference)"
         Height          =   495
         Left            =   -71880
         TabIndex        =   55
         Top             =   6900
         Width           =   3015
      End
      Begin VB.TextBox T11 
         Height          =   615
         Left            =   -72360
         TabIndex        =   54
         Top             =   1140
         Width           =   2895
      End
      Begin VB.TextBox T12 
         Height          =   615
         Left            =   -72360
         TabIndex        =   53
         Top             =   1980
         Width           =   2895
      End
      Begin VB.TextBox T13 
         Height          =   615
         Left            =   -72360
         TabIndex        =   52
         Top             =   2820
         Width           =   2895
      End
      Begin VB.OptionButton O48 
         Caption         =   "Find Area"
         Height          =   495
         Left            =   -73080
         TabIndex        =   51
         Top             =   4860
         Width           =   2055
      End
      Begin VB.OptionButton O49 
         Caption         =   "Find breadth                    (Given  Height and Area)"
         Height          =   615
         Left            =   -73080
         TabIndex        =   50
         Top             =   5580
         Width           =   2175
      End
      Begin VB.OptionButton O50 
         Caption         =   "Find height                    (Given  Breadth and Surface)"
         Height          =   495
         Left            =   -73080
         TabIndex        =   49
         Top             =   6420
         Width           =   2415
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
         Left            =   -73680
         Style           =   1  'Graphical
         TabIndex        =   48
         Top             =   7020
         Width           =   1575
      End
      Begin VB.OptionButton O71 
         Caption         =   "Find side(Given Volume)"
         Height          =   615
         Left            =   -73560
         TabIndex        =   47
         Top             =   5820
         Width           =   2175
      End
      Begin VB.OptionButton O72 
         Caption         =   "Find Volume"
         Height          =   495
         Left            =   -73560
         TabIndex        =   46
         Top             =   5100
         Width           =   2055
      End
      Begin VB.TextBox T15 
         Height          =   615
         Left            =   -72720
         TabIndex        =   45
         Top             =   2460
         Width           =   2895
      End
      Begin VB.TextBox T16 
         Height          =   615
         Left            =   -72720
         TabIndex        =   44
         Top             =   1500
         Width           =   2895
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
         Left            =   -72960
         Style           =   1  'Graphical
         TabIndex        =   43
         Top             =   7500
         Width           =   1455
      End
      Begin VB.OptionButton O45 
         Caption         =   "Find Base Area"
         Height          =   495
         Left            =   -73680
         TabIndex        =   42
         Top             =   7500
         Width           =   1815
      End
      Begin VB.OptionButton O81 
         Caption         =   "Find Volume"
         Height          =   375
         Left            =   -73680
         TabIndex        =   41
         Top             =   8040
         Width           =   1935
      End
      Begin VB.OptionButton O82 
         Caption         =   "Find Radius              (Given Basearea)"
         Height          =   615
         Left            =   -68880
         TabIndex        =   40
         Top             =   7080
         Width           =   2175
      End
      Begin VB.OptionButton O83 
         Caption         =   "Find  Surface Area"
         Height          =   495
         Left            =   -73680
         TabIndex        =   39
         Top             =   7020
         Width           =   1815
      End
      Begin VB.TextBox T14 
         Height          =   615
         Left            =   -72360
         TabIndex        =   38
         Top             =   4140
         Width           =   2895
      End
      Begin VB.TextBox T17 
         Height          =   615
         Left            =   -72360
         TabIndex        =   37
         Top             =   3300
         Width           =   2895
      End
      Begin VB.TextBox T18 
         Height          =   615
         Left            =   -72360
         TabIndex        =   36
         Top             =   780
         Width           =   2895
      End
      Begin VB.TextBox T19 
         Height          =   615
         Left            =   -72360
         TabIndex        =   35
         Top             =   1620
         Width           =   2895
      End
      Begin VB.TextBox T20 
         Height          =   615
         Left            =   -72360
         TabIndex        =   34
         Top             =   2460
         Width           =   2895
      End
      Begin VB.TextBox T21 
         Height          =   615
         Left            =   -72360
         TabIndex        =   33
         Top             =   4980
         Width           =   2895
      End
      Begin VB.OptionButton O84 
         Caption         =   "Find Slanting Height (Given Radius And Height)"
         Height          =   435
         Left            =   -71520
         TabIndex        =   32
         Top             =   7140
         WhatsThisHelpID =   7471
         Width           =   2415
      End
      Begin VB.OptionButton O85 
         Caption         =   "Find Height                    (Given Radius and Slanting Height)"
         Height          =   735
         Left            =   -71520
         TabIndex        =   31
         Top             =   7740
         Width           =   2415
      End
      Begin VB.OptionButton O86 
         Caption         =   "Find Surface Area"
         Height          =   615
         Left            =   -73200
         TabIndex        =   30
         Top             =   5880
         Width           =   2295
      End
      Begin VB.TextBox T22 
         Height          =   615
         Left            =   -72240
         TabIndex        =   29
         Top             =   1140
         Width           =   2895
      End
      Begin VB.TextBox T23 
         Height          =   615
         Left            =   -72240
         TabIndex        =   28
         Top             =   2100
         Width           =   2895
      End
      Begin VB.TextBox T24 
         Height          =   615
         Left            =   -72240
         TabIndex        =   27
         Top             =   3180
         Width           =   2895
      End
      Begin VB.OptionButton O87 
         Caption         =   "Find Volume"
         Height          =   495
         Left            =   -73200
         TabIndex        =   26
         Top             =   5340
         Width           =   2055
      End
      Begin VB.OptionButton O88 
         Caption         =   "Find Radius             (Given Volume)"
         Height          =   615
         Left            =   -73200
         TabIndex        =   25
         Top             =   6600
         Width           =   2055
      End
      Begin VB.OptionButton O89 
         Caption         =   "Find Radius                    (Given Surface Area)"
         Height          =   495
         Left            =   -73200
         TabIndex        =   24
         Top             =   7320
         Width           =   1935
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
         Left            =   -70920
         Style           =   1  'Graphical
         TabIndex        =   23
         Top             =   6300
         Width           =   1695
      End
      Begin VB.OptionButton O100 
         Caption         =   "                                          Find Height                    (Given Radius and Surface Area)"
         Height          =   735
         Left            =   -72000
         TabIndex        =   22
         Top             =   6960
         Width           =   2415
      End
      Begin VB.OptionButton O101 
         Caption         =   "Find Radius                     (Given Base area)"
         Height          =   435
         Left            =   -72000
         TabIndex        =   21
         Top             =   6360
         Width           =   2415
      End
      Begin VB.TextBox T25 
         Height          =   615
         Left            =   -72720
         TabIndex        =   20
         Top             =   1020
         Width           =   2895
      End
      Begin VB.TextBox T26 
         Height          =   615
         Left            =   -72720
         TabIndex        =   19
         Top             =   1860
         Width           =   2895
      End
      Begin VB.TextBox T27 
         Height          =   615
         Left            =   -72720
         TabIndex        =   18
         Top             =   2700
         Width           =   2895
      End
      Begin VB.TextBox T28 
         Height          =   615
         Left            =   -72720
         TabIndex        =   17
         Top             =   3540
         Width           =   2895
      End
      Begin VB.TextBox T29 
         Height          =   615
         Left            =   -72720
         TabIndex        =   16
         Top             =   4380
         Width           =   2895
      End
      Begin VB.TextBox T30 
         Height          =   615
         Left            =   -72720
         TabIndex        =   15
         Top             =   5220
         Width           =   2895
      End
      Begin VB.OptionButton O102 
         Caption         =   "Find  Surface Area"
         Height          =   495
         Left            =   -74280
         TabIndex        =   14
         Top             =   6180
         Width           =   1815
      End
      Begin VB.OptionButton O103 
         Caption         =   "Find Total Surface Area"
         Height          =   615
         Left            =   -74280
         TabIndex        =   13
         Top             =   7740
         Width           =   2175
      End
      Begin VB.OptionButton O104 
         Caption         =   "Find Volume"
         Height          =   495
         Left            =   -74280
         TabIndex        =   12
         Top             =   7260
         Width           =   2175
      End
      Begin VB.CommandButton Command8 
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
         Left            =   -68040
         Style           =   1  'Graphical
         TabIndex        =   11
         Top             =   6960
         Width           =   1695
      End
      Begin VB.OptionButton O115 
         Caption         =   "Find Base Area"
         Height          =   615
         Left            =   -74280
         TabIndex        =   10
         Top             =   6660
         Width           =   1815
      End
      Begin VB.OptionButton O117 
         Caption         =   "Find Height                      (Given  Breath , length and Volume)"
         Height          =   735
         Left            =   1680
         TabIndex        =   9
         Top             =   7740
         Width           =   2535
      End
      Begin VB.TextBox T31 
         Height          =   615
         Left            =   2520
         TabIndex        =   8
         Top             =   1020
         Width           =   2895
      End
      Begin VB.TextBox T32 
         Height          =   615
         Left            =   2520
         TabIndex        =   7
         Top             =   1860
         Width           =   2895
      End
      Begin VB.TextBox T33 
         Height          =   615
         Left            =   2520
         TabIndex        =   6
         Top             =   2700
         Width           =   2895
      End
      Begin VB.TextBox T34 
         Height          =   615
         Left            =   2520
         TabIndex        =   5
         Top             =   3540
         Width           =   2895
      End
      Begin VB.OptionButton O119 
         Caption         =   "Find Volume"
         Height          =   495
         Left            =   1680
         TabIndex        =   4
         Top             =   5460
         Width           =   2055
      End
      Begin VB.OptionButton O120 
         Caption         =   "Find breath                             (Given  Length , Height and volume"
         Height          =   615
         Left            =   1680
         TabIndex        =   3
         Top             =   6180
         Width           =   2535
      End
      Begin VB.OptionButton O121 
         Caption         =   "Find length                    (Given Height , breath and volume)"
         Height          =   735
         Left            =   1680
         TabIndex        =   2
         Top             =   6900
         Width           =   2415
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
         Left            =   5640
         Style           =   1  'Graphical
         TabIndex        =   1
         Top             =   6480
         Width           =   1695
      End
      Begin VB.Image Image23 
         Height          =   5700
         Left            =   -68280
         Picture         =   "surface.frx":04DA
         Top             =   960
         Width           =   4785
      End
      Begin VB.Image Image21 
         Height          =   5700
         Left            =   -68400
         Picture         =   "surface.frx":196A1
         Top             =   960
         Width           =   5010
      End
      Begin VB.Label Label70 
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
         Left            =   -74400
         TabIndex        =   217
         Top             =   3900
         Width           =   1215
      End
      Begin VB.Label Label69 
         Caption         =   "       Perimeter :"
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
         TabIndex        =   216
         Top             =   2820
         Width           =   1215
      End
      Begin VB.Label Label68 
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
         Left            =   -74400
         TabIndex        =   215
         Top             =   1140
         Width           =   1455
      End
      Begin VB.Label Label67 
         Caption         =   "Center-corner Distance :"
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
         TabIndex        =   214
         Top             =   1980
         Width           =   2535
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
         TabIndex        =   213
         Top             =   4860
         Visible         =   0   'False
         Width           =   1335
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
         TabIndex        =   212
         Top             =   4860
         Visible         =   0   'False
         Width           =   855
      End
      Begin VB.Image Image22 
         Height          =   525
         Left            =   -61440
         Picture         =   "surface.frx":30B7E
         Top             =   7800
         Width           =   975
      End
      Begin VB.Label Label64 
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
         TabIndex        =   197
         Top             =   4740
         Visible         =   0   'False
         Width           =   855
      End
      Begin VB.Label Label63 
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
         TabIndex        =   196
         Top             =   4740
         Visible         =   0   'False
         Width           =   1335
      End
      Begin VB.Label Label62 
         Caption         =   "Center-corner Distance :"
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
         TabIndex        =   195
         Top             =   1860
         Width           =   2535
      End
      Begin VB.Label Label61 
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
         Left            =   -74400
         TabIndex        =   194
         Top             =   1020
         Width           =   1455
      End
      Begin VB.Label Label60 
         Caption         =   "       Perimeter :"
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
         TabIndex        =   193
         Top             =   2700
         Width           =   1215
      End
      Begin VB.Label Label59 
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
         Left            =   -74400
         TabIndex        =   192
         Top             =   3780
         Width           =   1215
      End
      Begin VB.Image Image20 
         Height          =   5715
         Left            =   -68160
         Picture         =   "surface.frx":310F5
         Top             =   1080
         Width           =   4635
      End
      Begin VB.Label Label58 
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
         TabIndex        =   179
         Top             =   3780
         Width           =   1215
      End
      Begin VB.Label Label57 
         Caption         =   "       Perimeter :"
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
         TabIndex        =   178
         Top             =   2700
         Width           =   1215
      End
      Begin VB.Label Label56 
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
         Left            =   -74280
         TabIndex        =   177
         Top             =   1020
         Width           =   1455
      End
      Begin VB.Label Label55 
         Caption         =   "Center-corner Distance :"
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
         TabIndex        =   176
         Top             =   1860
         Width           =   2535
      End
      Begin VB.Label Label54 
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
         TabIndex        =   175
         Top             =   4740
         Visible         =   0   'False
         Width           =   1335
      End
      Begin VB.Label Label53 
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
         TabIndex        =   174
         Top             =   4740
         Visible         =   0   'False
         Width           =   855
      End
      Begin VB.Image Image19 
         Height          =   3420
         Left            =   -68760
         Picture         =   "surface.frx":4754B
         Top             =   1260
         Width           =   2670
      End
      Begin VB.Label Label52 
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
         TabIndex        =   161
         Top             =   5940
         Visible         =   0   'False
         Width           =   855
      End
      Begin VB.Label Label51 
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
         TabIndex        =   160
         Top             =   5940
         Visible         =   0   'False
         Width           =   1335
      End
      Begin VB.Label Label46 
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
         TabIndex        =   159
         Top             =   4860
         Visible         =   0   'False
         Width           =   855
      End
      Begin VB.Label Label45 
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
         TabIndex        =   158
         Top             =   4860
         Visible         =   0   'False
         Width           =   1335
      End
      Begin VB.Label Label38 
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
         Left            =   960
         TabIndex        =   157
         Top             =   4620
         Visible         =   0   'False
         Width           =   855
      End
      Begin VB.Label Label37 
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
         Left            =   3240
         TabIndex        =   156
         Top             =   4620
         Visible         =   0   'False
         Width           =   1335
      End
      Begin VB.Label Label27 
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
         Left            =   -69000
         TabIndex        =   155
         Top             =   5820
         Visible         =   0   'False
         Width           =   855
      End
      Begin VB.Label Label24 
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
         Left            =   -66960
         TabIndex        =   154
         Top             =   5820
         Visible         =   0   'False
         Width           =   1335
      End
      Begin VB.Label Label23 
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
         Left            =   -73800
         TabIndex        =   153
         Top             =   4380
         Visible         =   0   'False
         Width           =   855
      End
      Begin VB.Label Label22 
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
         Left            =   -71400
         TabIndex        =   152
         Top             =   4380
         Visible         =   0   'False
         Width           =   1335
      End
      Begin VB.Label Label21 
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
         TabIndex        =   151
         Top             =   3900
         Visible         =   0   'False
         Width           =   855
      End
      Begin VB.Label Label20 
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
         TabIndex        =   150
         Top             =   3900
         Visible         =   0   'False
         Width           =   1335
      End
      Begin VB.Label Label12 
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
         Left            =   -74400
         TabIndex        =   149
         Top             =   4020
         Visible         =   0   'False
         Width           =   855
      End
      Begin VB.Label Label11 
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
         TabIndex        =   148
         Top             =   4020
         Visible         =   0   'False
         Width           =   1335
      End
      Begin VB.Label Label7 
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
         Left            =   -74400
         TabIndex        =   147
         Top             =   4380
         Visible         =   0   'False
         Width           =   855
      End
      Begin VB.Label Label6 
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
         TabIndex        =   146
         Top             =   4380
         Visible         =   0   'False
         Width           =   1335
      End
      Begin VB.Label Label5 
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
         TabIndex        =   145
         Top             =   4380
         Visible         =   0   'False
         Width           =   1335
      End
      Begin VB.Label Label4 
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
         Left            =   -74400
         TabIndex        =   144
         Top             =   4380
         Visible         =   0   'False
         Width           =   855
      End
      Begin VB.Image Image18 
         Height          =   525
         Left            =   -61320
         Picture         =   "surface.frx":48DFD
         Top             =   7800
         Width           =   975
      End
      Begin VB.Image Image17 
         Height          =   525
         Left            =   360
         Picture         =   "surface.frx":49374
         Top             =   9060
         Width           =   975
      End
      Begin VB.Image Image16 
         Height          =   525
         Left            =   -61320
         Picture         =   "surface.frx":498EB
         Top             =   7920
         Width           =   975
      End
      Begin VB.Image Image15 
         Height          =   525
         Left            =   -74640
         Picture         =   "surface.frx":49E62
         Top             =   9060
         Width           =   975
      End
      Begin VB.Image Image14 
         Height          =   525
         Left            =   -74640
         Picture         =   "surface.frx":4A3D9
         Top             =   9060
         Width           =   975
      End
      Begin VB.Image Image13 
         Height          =   525
         Left            =   -61560
         Picture         =   "surface.frx":4A950
         Top             =   7800
         Width           =   975
      End
      Begin VB.Image Image12 
         Height          =   525
         Left            =   -61680
         Picture         =   "surface.frx":4AEC7
         Top             =   7080
         Width           =   975
      End
      Begin VB.Image Image11 
         Height          =   525
         Left            =   -74760
         Picture         =   "surface.frx":4B43E
         Top             =   9300
         Width           =   975
      End
      Begin VB.Image Image10 
         Height          =   525
         Left            =   -74760
         Picture         =   "surface.frx":4B9B5
         Top             =   9300
         Width           =   975
      End
      Begin VB.Image Image9 
         Height          =   525
         Left            =   -74400
         Picture         =   "surface.frx":4BF2C
         Top             =   8940
         Width           =   975
      End
      Begin VB.Image Image8 
         Height          =   4890
         Left            =   -68640
         Picture         =   "surface.frx":4C4A3
         Top             =   1080
         Width           =   4275
      End
      Begin VB.Image Image7 
         Height          =   5250
         Left            =   -69000
         Picture         =   "surface.frx":906F5
         Top             =   1440
         Width           =   4110
      End
      Begin VB.Image Image6 
         Height          =   5100
         Left            =   -68640
         Picture         =   "surface.frx":9C315
         Top             =   1080
         Width           =   4095
      End
      Begin VB.Image Image5 
         Height          =   5250
         Left            =   5640
         Picture         =   "surface.frx":AB440
         Top             =   840
         Width           =   4710
      End
      Begin VB.Image Image4 
         Height          =   4500
         Left            =   -68400
         Picture         =   "surface.frx":B61AB
         Top             =   960
         Width           =   5250
      End
      Begin VB.Label Label1 
         Caption         =   "      Side:"
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
         Left            =   -74640
         TabIndex        =   115
         Top             =   1260
         Width           =   1935
      End
      Begin VB.Label Label2 
         Caption         =   "       Area:"
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
         TabIndex        =   114
         Top             =   2220
         Width           =   855
      End
      Begin VB.Label Label3 
         Caption         =   " Circumference:"
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
         TabIndex        =   113
         Top             =   3420
         Width           =   1335
      End
      Begin VB.Label Label8 
         Caption         =   " Circumference"
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
         TabIndex        =   112
         Top             =   3420
         Width           =   1335
      End
      Begin VB.Label Label9 
         Caption         =   "       Area:"
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
         TabIndex        =   111
         Top             =   2220
         Width           =   855
      End
      Begin VB.Label Label10 
         Caption         =   "     Radius:"
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
         Left            =   -74640
         TabIndex        =   110
         Top             =   1260
         Width           =   1935
      End
      Begin VB.Label Label13 
         Caption         =   "Circumference:"
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
         Left            =   -74400
         TabIndex        =   109
         Top             =   3900
         Width           =   1335
      End
      Begin VB.Label Label14 
         Caption         =   "       Area:"
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
         TabIndex        =   108
         Top             =   2580
         Width           =   615
      End
      Begin VB.Label Label15 
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
         Left            =   -74400
         TabIndex        =   107
         Top             =   1020
         Width           =   735
      End
      Begin VB.Label Label16 
         Caption         =   "Breadth:"
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
         TabIndex        =   106
         Top             =   1860
         Width           =   735
      End
      Begin VB.Label Label17 
         Caption         =   "Breadth:"
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
         TabIndex        =   105
         Top             =   2100
         Width           =   1455
      End
      Begin VB.Label Label18 
         Caption         =   "Height:"
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
         TabIndex        =   104
         Top             =   1260
         Width           =   1335
      End
      Begin VB.Label Label19 
         Caption         =   "       Area:"
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
         TabIndex        =   103
         Top             =   2820
         Width           =   855
      End
      Begin VB.Label Label25 
         Caption         =   "     Volume:"
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
         TabIndex        =   102
         Top             =   2460
         Width           =   855
      End
      Begin VB.Label Label26 
         Caption         =   "      Side:"
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
         Left            =   -74760
         TabIndex        =   101
         Top             =   1500
         Width           =   1935
      End
      Begin VB.Image Image2 
         Height          =   5025
         Left            =   -69240
         Picture         =   "surface.frx":C6187
         Top             =   1200
         Width           =   4215
      End
      Begin VB.Image Image1 
         Height          =   5475
         Left            =   -69120
         Picture         =   "surface.frx":D33E2
         Top             =   1080
         Width           =   4020
      End
      Begin VB.Image Image3 
         Height          =   4575
         Left            =   -69240
         Picture         =   "surface.frx":E5871
         Top             =   960
         Width           =   4815
      End
      Begin VB.Label Label28 
         Caption         =   "Surface Area:"
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
         Left            =   -74040
         TabIndex        =   100
         Top             =   4140
         Width           =   1335
      End
      Begin VB.Label Label29 
         Caption         =   "  Base Area:"
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
         Left            =   -74160
         TabIndex        =   99
         Top             =   3420
         Width           =   1095
      End
      Begin VB.Label Label30 
         Caption         =   "      Radius:"
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
         TabIndex        =   98
         Top             =   780
         Width           =   1935
      End
      Begin VB.Label Label31 
         Caption         =   "Height:"
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
         Left            =   -74040
         TabIndex        =   97
         Top             =   1740
         Width           =   1335
      End
      Begin VB.Label Label32 
         Caption         =   " Slanting Height:"
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
         Left            =   -74160
         TabIndex        =   96
         Top             =   2580
         Width           =   1575
      End
      Begin VB.Label Label33 
         Caption         =   " Volume:"
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
         TabIndex        =   95
         Top             =   4980
         Width           =   1335
      End
      Begin VB.Label Label34 
         Caption         =   "     Radius:"
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
         TabIndex        =   94
         Top             =   1140
         Width           =   1935
      End
      Begin VB.Label Label35 
         Caption         =   "       Volume:"
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
         Left            =   -73920
         TabIndex        =   93
         Top             =   2100
         Width           =   855
      End
      Begin VB.Label Label36 
         Caption         =   " Surface Area:"
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
         TabIndex        =   92
         Top             =   3300
         Width           =   1335
      End
      Begin VB.Label Label39 
         Caption         =   " Volume:"
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
         Left            =   -74520
         TabIndex        =   91
         Top             =   5460
         Width           =   1335
      End
      Begin VB.Label Label40 
         Caption         =   "Total Surface area"
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
         Left            =   -74640
         TabIndex        =   90
         Top             =   2940
         Width           =   1695
      End
      Begin VB.Label Label41 
         Caption         =   "Height:"
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
         Left            =   -74400
         TabIndex        =   89
         Top             =   1980
         Width           =   1335
      End
      Begin VB.Label Label42 
         Caption         =   "      Radius:"
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
         Left            =   -74760
         TabIndex        =   88
         Top             =   1260
         Width           =   1935
      End
      Begin VB.Label Label43 
         Caption         =   " Base Area:"
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
         Left            =   -74520
         TabIndex        =   87
         Top             =   3780
         Width           =   1095
      End
      Begin VB.Label Label44 
         Caption         =   "Surface Area:"
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
         Left            =   -74520
         TabIndex        =   86
         Top             =   4620
         Width           =   1335
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
         Left            =   840
         TabIndex        =   85
         Top             =   1980
         Width           =   1455
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
         Left            =   840
         TabIndex        =   84
         Top             =   1260
         Width           =   1455
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
         Left            =   840
         TabIndex        =   83
         Top             =   2700
         Width           =   855
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
         Left            =   720
         TabIndex        =   82
         Top             =   3660
         Width           =   1335
      End
   End
   Begin VB.Image Image25 
      Height          =   705
      Left            =   5400
      Picture         =   "surface.frx":F3DE9
      Stretch         =   -1  'True
      Top             =   1320
      Width           =   4290
   End
   Begin VB.Image Image24 
      Height          =   1455
      Left            =   0
      Picture         =   "surface.frx":FBE3A
      Stretch         =   -1  'True
      Top             =   0
      Width           =   15360
   End
End
Attribute VB_Name = "surface"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False




Private Sub Command1_Click()
On Error GoTo errhan:
If O1.value = False And O41.value = False And O2.value = False And O3.value = False Then
 MsgBox "Select Required Operation"
Else
If O1.value = True Then
 If T1.Text = "" Or Val(T1.Text) < 0 Then
  MsgBox "Invalid Value"
 Else
 A = Val(T1.Text) * Val(T1.Text)        ' find area
 End If
ElseIf O41.value = True Then
  If T1.Text = "" Or Val(T1.Text) < 0 Then
   MsgBox "Invalid Value"
  Else
   B = 4 * Val(T1.Text)             ' find circumference
  End If
ElseIf O2.value = True Then
  If T2.Text = "" Or Val(T2.Text) < 0 Then
   MsgBox "Invalid Value"
  Else
   C = Sqr(Val(T2.Text))         ' find side (given area)
  End If
ElseIf O3.value = True Then
 If T3.Text = "" Or Val(T3.Text) < 0 Then
  MsgBox "Invalid Value"
 Else
  D = Val(T3.Text) / 4        ' find side (given circumference)
 End If
End If

' display output
If O1.value = True Then

If Combo10.Text = "Millimeter" And Combo9.Text = "Millimeter" Then
T2.Text = Val(A)
ElseIf Combo10.Text = "Millimeter" And Combo9.Text = "Centimeter" Then
T2.Text = A / 10
ElseIf Combo10.Text = "Millimeter" And Combo9.Text = "Meter" Then
T2.Text = A / 1000
ElseIf Combo10.Text = "Centimeter" And Combo9.Text = "Millimeter" Then
T2.Text = A * 10
ElseIf Combo10.Text = "Centimeter" And Combo9.Text = "Centimeter" Then
T2.Text = A
ElseIf Combo10.Text = "Centimeter" And Combo9.Text = "Meter" Then
T2.Text = A / 100
ElseIf Combo10.Text = "Meter" And Combo9.Text = "Millimeter" Then
T2.Text = A * 1000
ElseIf Combo10.Text = "Meter" And Combo9.Text = "Centimeter" Then
T2.Text = A * 100
ElseIf Combo10.Text = "Meter" And Combo9.Text = "Meter" Then
T2.Text = A
End If

ElseIf O41.value = True Then

If Combo10.Text = "Millimeter" And Combo9.Text = "Millimeter" Then
T3.Text = B
ElseIf Combo10.Text = "Millimeter" And Combo9.Text = "Centimeter" Then
T3.Text = B / 10
ElseIf Combo10.Text = "Millimeter" And Combo9.Text = "Meter" Then
T3.Text = B / 1000
ElseIf Combo10.Text = "Centimeter" And Combo9.Text = "Millimeter" Then
T3.Text = B * 10
ElseIf Combo10.Text = "Centimeter" And Combo9.Text = "Centimeter" Then
T3.Text = B
ElseIf Combo10.Text = "Centimeter" And Combo9.Text = "Meter" Then
T3.Text = B / 100
ElseIf Combo10.Text = "Meter" And Combo9.Text = "Millimeter" Then
T3.Text = B * 1000
ElseIf Combo10.Text = "Meter" And Combo9.Text = "Centimeter" Then
T3.Text = B * 100
ElseIf Combo10.Text = "Meter" And Combo9.Text = "Meter" Then
T3.Text = B
End If

ElseIf O2.value = True Then

If Combo10.Text = "Millimeter" And Combo9.Text = "Millimeter" Then
T1.Text = C
ElseIf Combo10.Text = "Millimeter" And Combo9.Text = "Centimeter" Then
T1.Text = C / 10
ElseIf Combo10.Text = "Millimeter" And Combo9.Text = "Meter" Then
T1.Text = C / 1000
ElseIf Combo10.Text = "Centimeter" And Combo9.Text = "Millimeter" Then
T1.Text = C * 10
ElseIf Combo10.Text = "Centimeter" And Combo9.Text = "Centimeter" Then
T1.Text = C
ElseIf Combo10.Text = "Centimeter" And Combo9.Text = "Meter" Then
T1.Text = C / 100
ElseIf Combo10.Text = "Meter" And Combo9.Text = "Millimeter" Then
T1.Text = C * 1000
ElseIf Combo10.Text = "Meter" And Combo9.Text = "Centimeter" Then
T1.Text = C * 100
ElseIf Combo10.Text = "Meter" And Combo9.Text = "Meter" Then
T1.Text = C
End If

ElseIf O3.value = True Then

If Combo10.Text = "Millimeter" And Combo9.Text = "Millimeter" Then
T1.Text = D
ElseIf Combo10.Text = "Millimeter" And Combo9.Text = "Centimeter" Then
T1.Text = D / 10
ElseIf Combo10.Text = "Millimeter" And Combo9.Text = "Meter" Then
T1.Text = D / 1000
ElseIf Combo10.Text = "Centimeter" And Combo9.Text = "Millimeter" Then
T1.Text = D * 10
ElseIf Combo10.Text = "Centimeter" And Combo9.Text = "Centimeter" Then
T1.Text = D
ElseIf Combo10.Text = "Centimeter" And Combo9.Text = "Meter" Then
T1.Text = D / 100
ElseIf Combo10.Text = "Meter" And Combo9.Text = "Millimeter" Then
T1.Text = D * 1000
ElseIf Combo10.Text = "Meter" And Combo9.Text = "Centimeter" Then
T1.Text = D * 100
ElseIf Combo10.Text = "Meter" And Combo9.Text = "Meter" Then
T1.Text = D
End If

End If

End If
Exit Sub
errhan:
 MsgBox err.Description, vbInformation

End Sub

Private Sub Command10_Click()
t4.Text = ""
t5.Text = ""
t6.Text = ""
End Sub

Private Sub Command11_Click()
T1 = "": T2 = "": T3 = ""
End Sub

Private Sub Command12_Click()
t7.Text = ""
t8.Text = ""
t9.Text = ""
T10.Text = ""
End Sub
Private Sub Command13_Click()
T18.Text = ""
T19.Text = ""
T20.Text = ""
T17.Text = ""
T14.Text = ""
T21.Text = ""
End Sub
Private Sub Command14_Click()
T16.Text = ""
T15.Text = ""
End Sub
Private Sub Command15_Click()
T11.Text = ""
T12.Text = ""
T13.Text = ""
End Sub

Private Sub Command16_Click()
On Error GoTo errhan:
If O83.value = False And O45.value = False And O81.value = False And O82.value = False And O84.value = False And O85.value = False Then
 MsgBox "Select Required Operation"
Else
If O83.value = True Then
 If T18.Text = "" Or Val(T18.Text) < 0 Or T20.Text = "" Or Val(T20.Text) < 0 Then
  MsgBox "Invalid Value"
 Else
 A = 3.14 * Val(T18.Text) * Val(T20.Text)  ' find  surface area
 End If
ElseIf O45.value = True Then
  If T18.Text = "" Or Val(T18.Text) < 0 Then
   MsgBox "Invalid Value"
  Else
   B = 3.14 * (Val(T18.Text) * Val(T18.Text))           ' find downarea
  End If
ElseIf O81.value = True Then
  If T18.Text = "" Or Val(T18.Text) < 0 Or T19.Text = "" Or Val(T19.Text) < 0 Then
   MsgBox "Invalid Value"
  Else
   C = (1 / 3) * Val(T18.Text) * Val(T18.Text) * Val(T19.Text) ' find volume
  End If
ElseIf O82.value = True Then
  If T17.Text = "" Or Val(T17.Text) < 0 Then
   MsgBox "Invalid Value"
  Else
   D = Sqr(Val(T17.Text) / 3.14) ' find radius(using downarea)
  End If
ElseIf O84.value = True Then
 If T18.Text = "" Or Val(T18.Text) < 0 Or T19.Text = "" Or Val(T19.Text) < 0 Then
  MsgBox "Invalid Value"
 Else
  e = Sqr((Val(T19.Text) * Val(T19.Text)) + (Val(T18.Text) * Val(T18.Text)))           ' find slanding height
  End If
ElseIf O85.value = True Then
 If T18.Text = "" Or Val(T18.Text) < 0 Or T20.Text = "" Or Val(T20.Text) < 0 Then
  MsgBox "Invalid Value"
 Else
  F = Sqr((Val(T20.Text) * Val(T20.Text)) + (Val(T18.Text) * Val(T18.Text)))          ' find height
  End If
End If



' display output
If O83.value = True Then

If Combo16.Text = "Millimeter" And Combo15.Text = "Millimeter" Then
T14.Text = Val(A)
ElseIf Combo16.Text = "Millimeter" And Combo15.Text = "Centimeter" Then
T14.Text = A / 10
ElseIf Combo16.Text = "Millimeter" And Combo15.Text = "Meter" Then
T14.Text = A / 1000
ElseIf Combo16.Text = "Centimeter" And Combo15.Text = "Millimeter" Then
T14.Text = A * 10
ElseIf Combo16.Text = "Centimeter" And Combo15.Text = "Centimeter" Then
T14.Text = A
ElseIf Combo16.Text = "Centimeter" And Combo15.Text = "Meter" Then
T14.Text = A / 100
ElseIf Combo16.Text = "Meter" And Combo15.Text = "Millimeter" Then
T14.Text = A * 1000
ElseIf Combo16.Text = "Meter" And Combo15.Text = "Centimeter" Then
T14.Text = A * 100
ElseIf Combo16.Text = "Meter" And Combo15.Text = "Meter" Then
T14.Text = A
End If

ElseIf O45.value = True Then

If Combo16.Text = "Millimeter" And Combo15.Text = "Millimeter" Then
T17.Text = B
ElseIf Combo16.Text = "Millimeter" And Combo15.Text = "Centimeter" Then
T17.Text = B / 10
ElseIf Combo16.Text = "Millimeter" And Combo15.Text = "Meter" Then
T17.Text = B / 1000
ElseIf Combo16.Text = "Centimeter" And Combo15.Text = "Millimeter" Then
T17.Text = B * 10
ElseIf Combo16.Text = "Centimeter" And Combo15.Text = "Centimeter" Then
T17.Text = B
ElseIf Combo16.Text = "Centimeter" And Combo15.Text = "Meter" Then
T17.Text = B / 100
ElseIf Combo16.Text = "Meter" And Combo15.Text = "Millimeter" Then
T17.Text = B * 1000
ElseIf Combo16.Text = "Meter" And Combo15.Text = "Centimeter" Then
T17.Text = B * 100
ElseIf Combo16.Text = "Meter" And Combo15.Text = "Meter" Then
T17.Text = B
End If

ElseIf O81.value = True Then

If Combo16.Text = "Millimeter" And Combo15.Text = "Millimeter" Then
T21.Text = C
ElseIf Combo16.Text = "Millimeter" And Combo15.Text = "Centimeter" Then
T21.Text = C / 10
ElseIf Combo16.Text = "Millimeter" And Combo15.Text = "Meter" Then
T21.Text = C / 1000
ElseIf Combo16.Text = "Centimeter" And Combo15.Text = "Millimeter" Then
T21.Text = C * 10
ElseIf Combo16.Text = "Centimeter" And Combo15.Text = "Centimeter" Then
T21.Text = C
ElseIf Combo16.Text = "Centimeter" And Combo15.Text = "Meter" Then
T21.Text = C / 100
ElseIf Combo16.Text = "Meter" And Combo15.Text = "Millimeter" Then
T21.Text = C * 1000
ElseIf Combo16.Text = "Meter" And Combo15.Text = "Centimeter" Then
T21.Text = C * 100
ElseIf Combo16.Text = "Meter" And Combo15.Text = "Meter" Then
T21.Text = C
End If

ElseIf O82.value = True Then

If Combo16.Text = "Millimeter" And Combo15.Text = "Millimeter" Then
T18.Text = D
ElseIf Combo16.Text = "Millimeter" And Combo15.Text = "Centimeter" Then
T18.Text = D / 10
ElseIf Combo16.Text = "Millimeter" And Combo15.Text = "Meter" Then
T18.Text = D / 1000
ElseIf Combo16.Text = "Centimeter" And Combo15.Text = "Millimeter" Then
T18.Text = D * 10
ElseIf Combo16.Text = "Centimeter" And Combo15.Text = "Centimeter" Then
T18.Text = D
ElseIf Combo16.Text = "Centimeter" And Combo15.Text = "Meter" Then
T18.Text = D / 100
ElseIf Combo16.Text = "Meter" And Combo15.Text = "Millimeter" Then
T18.Text = D * 1000
ElseIf Combo16.Text = "Meter" And Combo15.Text = "Centimeter" Then
T18.Text = D * 100
ElseIf Combo16.Text = "Meter" And Combo15.Text = "Meter" Then
T18.Text = D
End If

ElseIf O84.value = True Then

If Combo16.Text = "Millimeter" And Combo15.Text = "Millimeter" Then
T20.Text = e
ElseIf Combo16.Text = "Millimeter" And Combo15.Text = "Centimeter" Then
T20.Text = e / 10
ElseIf Combo16.Text = "Millimeter" And Combo15.Text = "Meter" Then
T20.Text = e / 1000
ElseIf Combo16.Text = "Centimeter" And Combo15.Text = "Millimeter" Then
T20.Text = e * 10
ElseIf Combo16.Text = "Centimeter" And Combo15.Text = "Centimeter" Then
T20.Text = e
ElseIf Combo16.Text = "Centimeter" And Combo15.Text = "Meter" Then
T20.Text = e / 100
ElseIf Combo16.Text = "Meter" And Combo15.Text = "Millimeter" Then
T20.Text = e * 1000
ElseIf Combo16.Text = "Meter" And Combo15.Text = "Centimeter" Then
T20.Text = e * 100
ElseIf Combo16.Text = "Meter" And Combo15.Text = "Meter" Then
T20.Text = e
End If

ElseIf O85.value = True Then

If Combo16.Text = "Millimeter" And Combo15.Text = "Millimeter" Then
T19.Text = F
ElseIf Combo16.Text = "Millimeter" And Combo15.Text = "Centimeter" Then
T19.Text = F / 10
ElseIf Combo16.Text = "Millimeter" And Combo15.Text = "Meter" Then
T19.Text = F / 1000
ElseIf Combo16.Text = "Centimeter" And Combo15.Text = "Millimeter" Then
T19.Text = F * 10
ElseIf Combo16.Text = "Centimeter" And Combo15.Text = "Centimeter" Then
T19.Text = F
ElseIf Combo16.Text = "Centimeter" And Combo15.Text = "Meter" Then
T19.Text = F / 100
ElseIf Combo16.Text = "Meter" And Combo15.Text = "Millimeter" Then
T19.Text = F * 1000
ElseIf Combo16.Text = "Meter" And Combo15.Text = "Centimeter" Then
T19.Text = F * 100
ElseIf Combo16.Text = "Meter" And Combo15.Text = "Meter" Then
T19.Text = F
End If

End If


End If
Exit Sub
errhan:
 MsgBox err.Description, vbInformation


End Sub

Private Sub Command17_Click()
T25.Text = ""
T26.Text = ""
T27.Text = ""
T28.Text = ""
T29.Text = ""
T30.Text = ""
End Sub
Private Sub Command18_Click()
T31.Text = ""
T32.Text = ""
T33.Text = ""
T34.Text = ""
End Sub

Private Sub Command19_Click()
f1.Text = ""
f2.Text = ""
f3.Text = ""
f4.Text = ""
End Sub

Private Sub Command2_Click()
On Error GoTo errhan:
If O26.value = False And O40.value = False And O25.value = False And O24.value = False Then
 MsgBox "Select Required Operation"
Else
If O26.value = True Then
 If t4.Text = "" Or Val(t4.Text) < 0 Then
  MsgBox "Invalid Value"
 Else
 A = 3.14 * Val(t4.Text) * Val(t4.Text)      ' find area
 End If
ElseIf O40.value = True Then
  If t4.Text = "" Or Val(t4.Text) < 0 Then
   MsgBox "Invalid Value"
  Else
   B = 2 * 3.14 * Val(t4.Text)           ' find circumference
  End If
ElseIf O25.value = True Then
  If t5.Text = "" Or Val(t5.Text) < 0 Then
   MsgBox "Invalid Value"
  Else
   C = Sqr(Val(t5.Text) / 3.14)       ' find side (given area)
  End If
ElseIf O24.value = True Then
 If t6.Text = "" Or Val(t6.Text) < 0 Then
  MsgBox "Invalid Value"
 Else
  D = Val(t6.Text) / (2 * 3.14)      ' find side (given circumference)
 End If
End If

' display output
If O26.value = True Then

If Combo12.Text = "Millimeter" And Combo11.Text = "Millimeter" Then
t5.Text = Val(A)
ElseIf Combo12.Text = "Millimeter" And Combo11.Text = "Centimeter" Then
t5.Text = A / 10
ElseIf Combo12.Text = "Millimeter" And Combo11.Text = "Meter" Then
t5.Text = A / 1000
ElseIf Combo12.Text = "Centimeter" And Combo11.Text = "Millimeter" Then
t5.Text = A * 10
ElseIf Combo12.Text = "Centimeter" And Combo11.Text = "Centimeter" Then
t5.Text = A
ElseIf Combo12.Text = "Centimeter" And Combo11.Text = "Meter" Then
t5.Text = A / 100
ElseIf Combo12.Text = "Meter" And Combo11.Text = "Millimeter" Then
t5.Text = A * 1000
ElseIf Combo12.Text = "Meter" And Combo11.Text = "Centimeter" Then
t5.Text = A * 100
ElseIf Combo12.Text = "Meter" And Combo11.Text = "Meter" Then
t5.Text = A
End If

ElseIf O40.value = True Then

If Combo12.Text = "Millimeter" And Combo11.Text = "Millimeter" Then
t6.Text = B
ElseIf Combo12.Text = "Millimeter" And Combo11.Text = "Centimeter" Then
t6.Text = B / 10
ElseIf Combo12.Text = "Millimeter" And Combo11.Text = "Meter" Then
t6.Text = B / 1000
ElseIf Combo12.Text = "Centimeter" And Combo11.Text = "Millimeter" Then
t6.Text = B * 10
ElseIf Combo12.Text = "Centimeter" And Combo11.Text = "Centimeter" Then
t6.Text = B
ElseIf Combo12.Text = "Centimeter" And Combo11.Text = "Meter" Then
t6.Text = B / 100
ElseIf Combo12.Text = "Meter" And Combo11.Text = "Millimeter" Then
t6.Text = B * 1000
ElseIf Combo12.Text = "Meter" And Combo11.Text = "Centimeter" Then
t6.Text = B * 100
ElseIf Combo12.Text = "Meter" And Combo11.Text = "Meter" Then
t6.Text = B
End If

ElseIf O25.value = True Then

If Combo12.Text = "Millimeter" And Combo11.Text = "Millimeter" Then
t4.Text = C
ElseIf Combo12.Text = "Millimeter" And Combo11.Text = "Centimeter" Then
t4.Text = C / 10
ElseIf Combo12.Text = "Millimeter" And Combo11.Text = "Meter" Then
t4.Text = C / 1000
ElseIf Combo12.Text = "Centimeter" And Combo11.Text = "Millimeter" Then
t4.Text = C * 10
ElseIf Combo12.Text = "Centimeter" And Combo11.Text = "Centimeter" Then
t4.Text = C
ElseIf Combo12.Text = "Centimeter" And Combo11.Text = "Meter" Then
t4.Text = C / 100
ElseIf Combo12.Text = "Meter" And Combo11.Text = "Millimeter" Then
t4.Text = C * 1000
ElseIf Combo12.Text = "Meter" And Combo11.Text = "Centimeter" Then
t4.Text = C * 100
ElseIf Combo12.Text = "Meter" And Combo11.Text = "Meter" Then
t4.Text = C
End If

ElseIf O24.value = True Then

If Combo12.Text = "Millimeter" And Combo11.Text = "Millimeter" Then
t4.Text = D
ElseIf Combo12.Text = "Millimeter" And Combo11.Text = "Centimeter" Then
t4.Text = D / 10
ElseIf Combo12.Text = "Millimeter" And Combo11.Text = "Meter" Then
t4.Text = D / 1000
ElseIf Combo12.Text = "Centimeter" And Combo11.Text = "Millimeter" Then
t4.Text = D * 10
ElseIf Combo12.Text = "Centimeter" And Combo11.Text = "Centimeter" Then
t4.Text = D
ElseIf Combo12.Text = "Centimeter" And Combo11.Text = "Meter" Then
t4.Text = D / 100
ElseIf Combo12.Text = "Meter" And Combo11.Text = "Millimeter" Then
t4.Text = D * 1000
ElseIf Combo12.Text = "Meter" And Combo11.Text = "Centimeter" Then
t4.Text = D * 100
ElseIf Combo12.Text = "Meter" And Combo11.Text = "Meter" Then
t4.Text = D
End If

End If

End If

Exit Sub
errhan:
 MsgBox err.Description, vbInformation

End Sub



Private Sub Command20_Click()
On Error GoTo errhan:
If oo1.value = False And oo2.value = False And oo3.value = False And oo4.value = False Then
 MsgBox "Select Required Operation"
Else
If oo1.value = True Then
  If f1.Text = "" And f2.Text = "" Or f1.Text <> f2.Text And f1.Text <> "" And f2.Text <> "" Then
   MsgBox "Invalid Input"
  Else
    If f2.Text = "" Then
     A = (3 * Val(f1.Text) * Val(f1.Text) * 1.73205) / 2 'find area
    ElseIf f1.Text = "" Then
     A = (3 * Val(f2.Text) * Val(f2.Text) * 1.73205) / 2 'find area
    End If
  End If
ElseIf oo2.value = True Then
  If f1.Text = "" Then
   MsgBox "Invalid Input"
  Else
    B = 6 * Val(f1.Text) 'find perimeter
  End If
ElseIf oo3.value = True Then
  If f3.Text = "" Then
   MsgBox "Invalid Input"
  Else
    C = Val(f3.Text) / 6 'find side
  End If
ElseIf oo4.value = True Then
  If f4.Text = "" Then
   MsgBox "Invalid Input"
  Else
    D = Sqr((2 * Val(f4.Text)) / (3 * 1.73205)) 'find side (given area)
  End If
End If
End If
' display output
If oo1.value = True Then

If in1.Text = "Millimeter" And out1.Text = "Millimeter" Then
f4.Text = Val(A)
ElseIf in1.Text = "Millimeter" And out1.Text = "Centimeter" Then
f4.Text = A / 10
ElseIf in1.Text = "Millimeter" And out1.Text = "Meter" Then
f4.Text = A / 1000
ElseIf in1.Text = "Centimeter" And out1.Text = "Millimeter" Then
f4.Text = A * 10
ElseIf in1.Text = "Centimeter" And out1.Text = "Centimeter" Then
f4.Text = A
ElseIf in1.Text = "Centimeter" And out1.Text = "Meter" Then
f4.Text = A / 100
ElseIf in1.Text = "Meter" And out1.Text = "Millimeter" Then
f4.Text = A * 1000
ElseIf in1.Text = "Meter" And out1.Text = "Centimeter" Then
f4.Text = A * 100
ElseIf in1.Text = "Meter" And out1.Text = "Meter" Then
f4.Text = A
End If

ElseIf oo2.value = True Then

If in1.Text = "Millimeter" And out1.Text = "Millimeter" Then
f3.Text = B
ElseIf in1.Text = "Millimeter" And out1.Text = "Centimeter" Then
f3.Text = B / 10
ElseIf in1.Text = "Millimeter" And out1.Text = "Meter" Then
f3.Text = B / 1000
ElseIf in1.Text = "Centimeter" And out1.Text = "Millimeter" Then
f3.Text = B * 10
ElseIf in1.Text = "Centimeter" And out1.Text = "Centimeter" Then
f3.Text = B
ElseIf in1.Text = "Centimeter" And out1.Text = "Meter" Then
f3.Text = B / 100
ElseIf in1.Text = "Meter" And out1.Text = "Millimeter" Then
f3.Text = B * 1000
ElseIf in1.Text = "Meter" And out1.Text = "Centimeter" Then
f3.Text = B * 100
ElseIf in1.Text = "Meter" And out1.Text = "Meter" Then
f3.Text = B
End If

ElseIf oo3.value = True Then

If in1.Text = "Millimeter" And out1.Text = "Millimeter" Then
f1.Text = C
ElseIf in1.Text = "Millimeter" And out1.Text = "Centimeter" Then
f1.Text = C / 10
ElseIf in1.Text = "Millimeter" And out1.Text = "Meter" Then
f1.Text = C / 1000
ElseIf in1.Text = "Centimeter" And out1.Text = "Millimeter" Then
f1.Text = C * 10
ElseIf in1.Text = "Centimeter" And out1.Text = "Centimeter" Then
f1.Text = C
ElseIf in1.Text = "Centimeter" And out1.Text = "Meter" Then
f1.Text = C / 100
ElseIf in1.Text = "Meter" And out1.Text = "Millimeter" Then
f1.Text = C * 1000
ElseIf in1.Text = "Meter" And out1.Text = "Centimeter" Then
f1.Text = C * 100
ElseIf in1.Text = "Meter" And out1.Text = "Meter" Then
f1.Text = C
End If

ElseIf oo4.value = True Then

If in1.Text = "Millimeter" And out1.Text = "Millimeter" Then
f1.Text = D
ElseIf in1.Text = "Millimeter" And out1.Text = "Centimeter" Then
f1.Text = D / 10
ElseIf in1.Text = "Millimeter" And out1.Text = "Meter" Then
f1.Text = D / 1000
ElseIf in1.Text = "Centimeter" And out1.Text = "Millimeter" Then
f1.Text = D * 10
ElseIf in1.Text = "Centimeter" And out1.Text = "Centimeter" Then
f1.Text = D
ElseIf in1.Text = "Centimeter" And out1.Text = "Meter" Then
f1.Text = D / 100
ElseIf in1.Text = "Meter" And out1.Text = "Millimeter" Then
f1.Text = D * 1000
ElseIf in1.Text = "Meter" And out1.Text = "Centimeter" Then
f1.Text = D * 100
ElseIf in1.Text = "Meter" And out1.Text = "Meter" Then
f1.Text = D
End If
End If
Exit Sub

errhan:
 MsgBox err.Description, vbInformation

End Sub

Private Sub Command21_Click()
On Error GoTo errhan:
If op1.value = False And op2.value = False And op3.value = False And op4.value = False And op5.value = False Then
 MsgBox "Select Required Operation"
Else
If op1.value = True Then
  If te2.Text = "" Then
   MsgBox "Invalid Input"
  Else
    A = (2 * Val(te2.Text) * Val(te2.Text) * 1.414)  'find area
  End If
ElseIf op2.value = True Then
  If te1.Text = "" Then
   MsgBox "Invalid Input"
  Else
    B = 8 * Val(te1.Text) 'find perimeter
  End If
ElseIf op3.value = True Then
  If te2.Text = "" Then
   MsgBox "Invalid Input"
  Else
    C = 2 * Val(te2.Text) * Sin(3.14 / 8) 'find side
  End If
ElseIf op4.value = True Then
  If te4.Text = "" Then
   MsgBox "Invalid Input"
  Else
    D = Sqr((Val(te4.Text)) / (2 * 1.414)) 'find Center corner distance
  End If
ElseIf op5.value = True Then
  If te3.Text = "" Then
   MsgBox "Invalid Input"
  Else
    e = Val(te3.Text) / 8 'find side (given Perimeter)
  End If
End If
End If
' display output
If op1.value = True Then

If in2.Text = "Millimeter" And out2.Text = "Millimeter" Then
te4.Text = Val(A)
ElseIf in2.Text = "Millimeter" And out2.Text = "Centimeter" Then
te4.Text = A / 10
ElseIf in2.Text = "Millimeter" And out2.Text = "Meter" Then
te4.Text = A / 1000
ElseIf in2.Text = "Centimeter" And out2.Text = "Millimeter" Then
te4.Text = A * 10
ElseIf in2.Text = "Centimeter" And out2.Text = "Centimeter" Then
te4.Text = A
ElseIf in2.Text = "Centimeter" And out2.Text = "Meter" Then
te4.Text = A / 100
ElseIf in2.Text = "Meter" And out2.Text = "Millimeter" Then
te4.Text = A * 1000
ElseIf in2.Text = "Meter" And out2.Text = "Centimeter" Then
te4.Text = A * 100
ElseIf in2.Text = "Meter" And out2.Text = "Meter" Then
te4.Text = A
End If

ElseIf op2.value = True Then

If in2.Text = "Millimeter" And out2.Text = "Millimeter" Then
te3.Text = B
ElseIf in2.Text = "Millimeter" And out2.Text = "Centimeter" Then
te3.Text = B / 10
ElseIf in2.Text = "Millimeter" And out2.Text = "Meter" Then
te3.Text = B / 1000
ElseIf in2.Text = "Centimeter" And out2.Text = "Millimeter" Then
te3.Text = B * 10
ElseIf in2.Text = "Centimeter" And out2.Text = "Centimeter" Then
te3.Text = B
ElseIf in2.Text = "Centimeter" And out2.Text = "Meter" Then
te3.Text = B / 100
ElseIf in2.Text = "Meter" And out2.Text = "Millimeter" Then
te3.Text = B * 1000
ElseIf in2.Text = "Meter" And out2.Text = "Centimeter" Then
te3.Text = B * 100
ElseIf in2.Text = "Meter" And out2.Text = "Meter" Then
te3.Text = B
End If

ElseIf op3.value = True Then

If in2.Text = "Millimeter" And out2.Text = "Millimeter" Then
te1.Text = C
ElseIf in2.Text = "Millimeter" And out2.Text = "Centimeter" Then
te1.Text = C / 10
ElseIf in2.Text = "Millimeter" And out2.Text = "Meter" Then
te1.Text = C / 1000
ElseIf in2.Text = "Centimeter" And out2.Text = "Millimeter" Then
te1.Text = C * 10
ElseIf in2.Text = "Centimeter" And out2.Text = "Centimeter" Then
te1.Text = C
ElseIf in2.Text = "Centimeter" And out2.Text = "Meter" Then
te1.Text = C / 100
ElseIf in2.Text = "Meter" And out2.Text = "Millimeter" Then
te1.Text = C * 1000
ElseIf in2.Text = "Meter" And out2.Text = "Centimeter" Then
te1.Text = C * 100
ElseIf in2.Text = "Meter" And out2.Text = "Meter" Then
te1.Text = C
End If

ElseIf op4.value = True Then

If in2.Text = "Millimeter" And out2.Text = "Millimeter" Then
te2.Text = D
ElseIf in2.Text = "Millimeter" And out2.Text = "Centimeter" Then
te2.Text = D / 10
ElseIf in2.Text = "Millimeter" And out2.Text = "Meter" Then
te2.Text = D / 1000
ElseIf in2.Text = "Centimeter" And out2.Text = "Millimeter" Then
te2.Text = D * 10
ElseIf in2.Text = "Centimeter" And out2.Text = "Centimeter" Then
te2.Text = D
ElseIf in2.Text = "Centimeter" And out2.Text = "Meter" Then
te2.Text = D / 100
ElseIf in2.Text = "Meter" And out2.Text = "Millimeter" Then
te2.Text = D * 1000
ElseIf in2.Text = "Meter" And out2.Text = "Centimeter" Then
te2.Text = D * 100
ElseIf in2.Text = "Meter" And out2.Text = "Meter" Then
te2.Text = D
End If

ElseIf op5.value = True Then

If in2.Text = "Millimeter" And out2.Text = "Millimeter" Then
te1.Text = e
ElseIf in2.Text = "Millimeter" And out2.Text = "Centimeter" Then
te1.Text = e / 10
ElseIf in2.Text = "Millimeter" And out2.Text = "Meter" Then
te1.Text = e / 1000
ElseIf in2.Text = "Centimeter" And out2.Text = "Millimeter" Then
te1.Text = e * 10
ElseIf in2.Text = "Centimeter" And out2.Text = "Centimeter" Then
te1.Text = e
ElseIf in2.Text = "Centimeter" And out2.Text = "Meter" Then
te1.Text = e / 100
ElseIf in2.Text = "Meter" And out2.Text = "Millimeter" Then
te1.Text = e * 1000
ElseIf in2.Text = "Meter" And out2.Text = "Centimeter" Then
te1.Text = e * 100
ElseIf in2.Text = "Meter" And out2.Text = "Meter" Then
te1.Text = e
End If
End If
Exit Sub
errhan:
 MsgBox err.Description, vbInformation

End Sub

Private Sub Command22_Click()
te1.Text = ""
te2.Text = ""
te3.Text = ""
te4.Text = ""
End Sub

Private Sub Command23_Click()
tt1.Text = ""
tt2.Text = ""
tt3.Text = ""
tt4.Text = ""
End Sub

Private Sub Command24_Click()
On Error GoTo errhan:
If ot1.value = False And ot2.value = False And ot3.value = False And ot4.value = False And ot5.value = False Then
 MsgBox "Select Required Operation"
Else
If ot1.value = True Then
  If tt2.Text = "" Then
   MsgBox "Invalid Input"
  Else
    A = (5 * Val(tt2.Text) * Val(tt2.Text) * Sin((2 * 3.14) / 5)) / 2 'find area
  End If
ElseIf ot2.value = True Then
  If tt1.Text = "" Then
   MsgBox "Invalid Input"
  Else
    B = 5 * Val(tt1.Text) 'find perimeter
  End If
ElseIf ot3.value = True Then
  If tt2.Text = "" Then
   MsgBox "Invalid Input"
  Else
    C = 2 * Val(tt2.Text) * Sin(3.14 / 5) 'find side
  End If
ElseIf ot4.value = True Then
  If tt4.Text = "" Then
   MsgBox "Invalid Input"
  Else
    D = Sqr((Val(tt4.Text) * 2) / (5 * Sin((2 * 3.14) / 5))) 'find Center corner distance
  End If
ElseIf ot5.value = True Then
  If tt3.Text = "" Then
   MsgBox "Invalid Input"
  Else
    e = Val(tt3.Text) / 5 'find side (given Perimeter)
  End If
End If
End If
' display output
If ot1.value = True Then

If in3.Text = "Millimeter" And out3.Text = "Millimeter" Then
tt4.Text = Val(A)
ElseIf in3.Text = "Millimeter" And out3.Text = "Centimeter" Then
tt4.Text = A / 10
ElseIf in3.Text = "Millimeter" And out3.Text = "Meter" Then
tt4.Text = A / 1000
ElseIf in3.Text = "Centimeter" And out3.Text = "Millimeter" Then
tt4.Text = A * 10
ElseIf in3.Text = "Centimeter" And out3.Text = "Centimeter" Then
tt4.Text = A
ElseIf in3.Text = "Centimeter" And out3.Text = "Meter" Then
tt4.Text = A / 100
ElseIf in3.Text = "Meter" And out3.Text = "Millimeter" Then
tt4.Text = A * 1000
ElseIf in3.Text = "Meter" And out3.Text = "Centimeter" Then
tt4.Text = A * 100
ElseIf in3.Text = "Meter" And out3.Text = "Meter" Then
tt4.Text = A
End If

ElseIf ot2.value = True Then

If in3.Text = "Millimeter" And out3.Text = "Millimeter" Then
tt3.Text = B
ElseIf in3.Text = "Millimeter" And out3.Text = "Centimeter" Then
tt3.Text = B / 10
ElseIf in3.Text = "Millimeter" And out3.Text = "Meter" Then
tt3.Text = B / 1000
ElseIf in3.Text = "Centimeter" And out3.Text = "Millimeter" Then
tt3.Text = B * 10
ElseIf in3.Text = "Centimeter" And out3.Text = "Centimeter" Then
tt3.Text = B
ElseIf in3.Text = "Centimeter" And out3.Text = "Meter" Then
tt3.Text = B / 100
ElseIf in3.Text = "Meter" And out3.Text = "Millimeter" Then
tt3.Text = B * 1000
ElseIf in3.Text = "Meter" And out3.Text = "Centimeter" Then
tt3.Text = B * 100
ElseIf in3.Text = "Meter" And out3.Text = "Meter" Then
tt3.Text = B
End If

ElseIf ot3.value = True Then

If in3.Text = "Millimeter" And out3.Text = "Millimeter" Then
tt1.Text = C
ElseIf in3.Text = "Millimeter" And out3.Text = "Centimeter" Then
tt1.Text = C / 10
ElseIf in3.Text = "Millimeter" And out3.Text = "Meter" Then
tt1.Text = C / 1000
ElseIf in3.Text = "Centimeter" And out3.Text = "Millimeter" Then
tt1.Text = C * 10
ElseIf in3.Text = "Centimeter" And out3.Text = "Centimeter" Then
tt1.Text = C
ElseIf in3.Text = "Centimeter" And out3.Text = "Meter" Then
tt1.Text = C / 100
ElseIf in3.Text = "Meter" And out3.Text = "Millimeter" Then
tt1.Text = C * 1000
ElseIf in3.Text = "Meter" And out3.Text = "Centimeter" Then
tt1.Text = C * 100
ElseIf in3.Text = "Meter" And out3.Text = "Meter" Then
tt1.Text = C
End If

ElseIf ot4.value = True Then

If in3.Text = "Millimeter" And out3.Text = "Millimeter" Then
tt2.Text = D
ElseIf in3.Text = "Millimeter" And out3.Text = "Centimeter" Then
tt2.Text = D / 10
ElseIf in3.Text = "Millimeter" And out3.Text = "Meter" Then
tt2.Text = D / 1000
ElseIf in3.Text = "Centimeter" And out3.Text = "Millimeter" Then
tt2.Text = D * 10
ElseIf in3.Text = "Centimeter" And out3.Text = "Centimeter" Then
tt2.Text = D
ElseIf in3.Text = "Centimeter" And out3.Text = "Meter" Then
tt2.Text = D / 100
ElseIf in3.Text = "Meter" And out3.Text = "Millimeter" Then
tt2.Text = D * 1000
ElseIf in3.Text = "Meter" And out3.Text = "Centimeter" Then
tt2.Text = D * 100
ElseIf in3.Text = "Meter" And out3.Text = "Meter" Then
tt2.Text = D
End If

ElseIf ot5.value = True Then

If in3.Text = "Millimeter" And out3.Text = "Millimeter" Then
tt1.Text = e
ElseIf in3.Text = "Millimeter" And out3.Text = "Centimeter" Then
tt1.Text = e / 10
ElseIf in3.Text = "Millimeter" And out3.Text = "Meter" Then
tt1.Text = e / 1000
ElseIf in3.Text = "Centimeter" And out3.Text = "Millimeter" Then
tt1.Text = e * 10
ElseIf in3.Text = "Centimeter" And out3.Text = "Centimeter" Then
tt1.Text = e
ElseIf in3.Text = "Centimeter" And out3.Text = "Meter" Then
tt1.Text = e / 100
ElseIf in3.Text = "Meter" And out3.Text = "Millimeter" Then
tt1.Text = e * 1000
ElseIf in3.Text = "Meter" And out3.Text = "Centimeter" Then
tt1.Text = e * 100
ElseIf in3.Text = "Meter" And out3.Text = "Meter" Then
tt1.Text = e
End If
End If
Exit Sub
errhan:
 MsgBox err.Description, vbInformation


End Sub

Private Sub Command3_Click()
On Error GoTo errhan:
If O39.value = False And O42.value = False And O38.value = False And O37.value = False And O43.value = False And O44.value = False Then
 MsgBox "Select Required Operation"
Else
If O39.value = True Then
 If t7.Text = "" Or Val(t7.Text) < 0 Or t8.Text = "" Or Val(t8.Text) < 0 Then
  MsgBox "Invalid Value"
 Else
 A = Val(t7.Text) * Val(t8.Text)    ' find area
 End If
ElseIf O42.value = True Then
  If t7.Text = "" Or Val(t7.Text) < 0 Or t8.Text = "" Or Val(t8.Text) < 0 Then
   MsgBox "Invalid Value"
  Else
   B = 2 * (Val(t7.Text) + Val(t8.Text))           ' find circumference
  End If
ElseIf O38.value = True Then
  If t7.Text = "" Or Val(t7.Text) < 0 Or t9.Text = "" Or Val(t9.Text) < 0 Then
   MsgBox "Invalid Value"
  Else
   C = Val(t9.Text) / Val(t7.Text)  ' find breath(given area & length)
  End If
ElseIf O37.value = True Then
  If t7.Text = "" Or Val(t7.Text) < 0 Or T10.Text = "" Or Val(T10.Text) < 0 Then
   MsgBox "Invalid Value"
  Else
   D = (Val(T10.Text) / 2) - Val(t7.Text) ' find breath(given circumference & length)
  End If
ElseIf O43.value = True Then
 If t8.Text = "" Or Val(t8.Text) < 0 Or t9.Text = "" Or Val(t9.Text) < 0 Then
  MsgBox "Invalid Value"
 Else
  e = t9.Text / t8.Text               ' find length(area & breath)
  End If
ElseIf O44.value = True Then
 If t8.Text = "" Or Val(t8.Text) < 0 Or T10.Text = "" Or Val(T10.Text) < 0 Then
  MsgBox "Invalid Value"
 Else
  F = (T10.Text / 2) - t8.Text     ' find length(circumference & breath)
  End If
End If



' display output
If O39.value = True Then

If Combo14.Text = "Millimeter" And Combo13.Text = "Millimeter" Then
t9.Text = Val(A)
ElseIf Combo14.Text = "Millimeter" And Combo13.Text = "Centimeter" Then
t9.Text = A / 10
ElseIf Combo14.Text = "Millimeter" And Combo13.Text = "Meter" Then
t9.Text = A / 1000
ElseIf Combo14.Text = "Centimeter" And Combo13.Text = "Millimeter" Then
t9.Text = A * 10
ElseIf Combo14.Text = "Centimeter" And Combo13.Text = "Centimeter" Then
t9.Text = A
ElseIf Combo14.Text = "Centimeter" And Combo13.Text = "Meter" Then
t9.Text = A / 100
ElseIf Combo14.Text = "Meter" And Combo13.Text = "Millimeter" Then
t9.Text = A * 1000
ElseIf Combo14.Text = "Meter" And Combo13.Text = "Centimeter" Then
t9.Text = A * 100
ElseIf Combo14.Text = "Meter" And Combo13.Text = "Meter" Then
t9.Text = A
End If

ElseIf O42.value = True Then

If Combo14.Text = "Millimeter" And Combo13.Text = "Millimeter" Then
T10.Text = B
ElseIf Combo14.Text = "Millimeter" And Combo13.Text = "Centimeter" Then
T10.Text = B / 10
ElseIf Combo14.Text = "Millimeter" And Combo13.Text = "Meter" Then
T10.Text = B / 1000
ElseIf Combo14.Text = "Centimeter" And Combo13.Text = "Millimeter" Then
T10.Text = B * 10
ElseIf Combo14.Text = "Centimeter" And Combo13.Text = "Centimeter" Then
T10.Text = B
ElseIf Combo14.Text = "Centimeter" And Combo13.Text = "Meter" Then
T10.Text = B / 100
ElseIf Combo14.Text = "Meter" And Combo13.Text = "Millimeter" Then
T10.Text = B * 1000
ElseIf Combo14.Text = "Meter" And Combo13.Text = "Centimeter" Then
T10.Text = B * 100
ElseIf Combo14.Text = "Meter" And Combo13.Text = "Meter" Then
T10.Text = B
End If

ElseIf O38.value = True Then

If Combo14.Text = "Millimeter" And Combo13.Text = "Millimeter" Then
t8.Text = C
ElseIf Combo14.Text = "Millimeter" And Combo13.Text = "Centimeter" Then
t8.Text = C / 10
ElseIf Combo14.Text = "Millimeter" And Combo13.Text = "Meter" Then
t8.Text = C / 1000
ElseIf Combo14.Text = "Centimeter" And Combo13.Text = "Millimeter" Then
t8.Text = C * 10
ElseIf Combo14.Text = "Centimeter" And Combo13.Text = "Centimeter" Then
t8.Text = C
ElseIf Combo14.Text = "Centimeter" And Combo13.Text = "Meter" Then
t8.Text = C / 100
ElseIf Combo14.Text = "Meter" And Combo13.Text = "Millimeter" Then
t8.Text = C * 1000
ElseIf Combo14.Text = "Meter" And Combo13.Text = "Centimeter" Then
t8.Text = C * 100
ElseIf Combo14.Text = "Meter" And Combo13.Text = "Meter" Then
t8.Text = C
End If

ElseIf O37.value = True Then

If Combo14.Text = "Millimeter" And Combo13.Text = "Millimeter" Then
t8.Text = D
ElseIf Combo14.Text = "Millimeter" And Combo13.Text = "Centimeter" Then
t8.Text = D / 10
ElseIf Combo14.Text = "Millimeter" And Combo13.Text = "Meter" Then
t8.Text = D / 1000
ElseIf Combo14.Text = "Centimeter" And Combo13.Text = "Millimeter" Then
t8.Text = D * 10
ElseIf Combo14.Text = "Centimeter" And Combo13.Text = "Centimeter" Then
t8.Text = D
ElseIf Combo14.Text = "Centimeter" And Combo13.Text = "Meter" Then
t8.Text = D / 100
ElseIf Combo14.Text = "Meter" And Combo13.Text = "Millimeter" Then
t8.Text = D * 1000
ElseIf Combo14.Text = "Meter" And Combo13.Text = "Centimeter" Then
t8.Text = D * 100
ElseIf Combo14.Text = "Meter" And Combo13.Text = "Meter" Then
t8.Text = D
End If

ElseIf O43.value = True Then

If Combo14.Text = "Millimeter" And Combo13.Text = "Millimeter" Then
t7.Text = e
ElseIf Combo14.Text = "Millimeter" And Combo13.Text = "Centimeter" Then
t7.Text = e / 10
ElseIf Combo14.Text = "Millimeter" And Combo13.Text = "Meter" Then
t7.Text = e / 1000
ElseIf Combo14.Text = "Centimeter" And Combo13.Text = "Millimeter" Then
t7.Text = e * 10
ElseIf Combo14.Text = "Centimeter" And Combo13.Text = "Centimeter" Then
t7.Text = e
ElseIf Combo14.Text = "Centimeter" And Combo13.Text = "Meter" Then
t7.Text = e / 100
ElseIf Combo14.Text = "Meter" And Combo13.Text = "Millimeter" Then
t7.Text = e * 1000
ElseIf Combo14.Text = "Meter" And Combo13.Text = "Centimeter" Then
t7.Text = e * 100
ElseIf Combo14.Text = "Meter" And Combo13.Text = "Meter" Then
t7.Text = e
End If

ElseIf O44.value = True Then

If Combo14.Text = "Millimeter" And Combo13.Text = "Millimeter" Then
t7.Text = F
ElseIf Combo14.Text = "Millimeter" And Combo13.Text = "Centimeter" Then
t7.Text = F / 10
ElseIf Combo14.Text = "Millimeter" And Combo13.Text = "Meter" Then
t7.Text = F / 1000
ElseIf Combo14.Text = "Centimeter" And Combo13.Text = "Millimeter" Then
t7.Text = F * 10
ElseIf Combo14.Text = "Centimeter" And Combo13.Text = "Centimeter" Then
t7.Text = F
ElseIf Combo14.Text = "Centimeter" And Combo13.Text = "Meter" Then
t7.Text = F / 100
ElseIf Combo14.Text = "Meter" And Combo13.Text = "Millimeter" Then
t7.Text = F * 1000
ElseIf Combo14.Text = "Meter" And Combo13.Text = "Centimeter" Then
t7.Text = F * 100
ElseIf Combo14.Text = "Meter" And Combo13.Text = "Meter" Then
t7.Text = F
End If

End If


End If
Exit Sub
errhan:
 MsgBox err.Description, vbInformation


End Sub

Private Sub Command4_Click()
On Error GoTo errhan:
If O72.value = False And O71.value = False Then
 MsgBox "Select Required Operation"
Else
If O72.value = True Then
 If T16.Text = "" Or Val(T16.Text) < 0 Then
  MsgBox "Invalid Value"
 Else
 A = Val(T16.Text) * Val(T16.Text) * Val(T16.Text)  ' find area
 End If
ElseIf O71.value = True Then
  If T15.Text = "" Or Val(T15.Text) < 0 Then
   MsgBox "Invalid Value"
  Else
   B = (Val(T15.Text)) ^ (1 / 3)      ' find circumference
  End If
End If

' display output
If O72.value = True Then

If Combo18.Text = "Millimeter" And Combo17.Text = "Millimeter" Then
T15.Text = Val(A)
ElseIf Combo18.Text = "Millimeter" And Combo17.Text = "Centimeter" Then
T15.Text = A / 10
ElseIf Combo18.Text = "Millimeter" And Combo17.Text = "Meter" Then
T15.Text = A / 1000
ElseIf Combo18.Text = "Centimeter" And Combo17.Text = "Millimeter" Then
T15.Text = A * 10
ElseIf Combo18.Text = "Centimeter" And Combo17.Text = "Centimeter" Then
T15.Text = A
ElseIf Combo18.Text = "Centimeter" And Combo17.Text = "Meter" Then
T15.Text = A / 100
ElseIf Combo18.Text = "Meter" And Combo17.Text = "Millimeter" Then
T15.Text = A * 1000
ElseIf Combo18.Text = "Meter" And Combo17.Text = "Centimeter" Then
T15.Text = A * 100
ElseIf Combo18.Text = "Meter" And Combo17.Text = "Meter" Then
T15.Text = A
End If

ElseIf O71.value = True Then

If Combo18.Text = "Millimeter" And Combo17.Text = "Millimeter" Then
T16.Text = Val(B)
ElseIf Combo18.Text = "Millimeter" And Combo17.Text = "Centimeter" Then
T16.Text = B / 10
ElseIf Combo18.Text = "Millimeter" And Combo17.Text = "Meter" Then
T16.Text = B / 1000
ElseIf Combo18.Text = "Centimeter" And Combo17.Text = "Millimeter" Then
T16.Text = B * 10
ElseIf Combo18.Text = "Centimeter" And Combo17.Text = "Centimeter" Then
T16.Text = B
ElseIf Combo18.Text = "Centimeter" And Combo17.Text = "Meter" Then
T16.Text = B / 100
ElseIf Combo18.Text = "Meter" And Combo17.Text = "Millimeter" Then
T16.Text = B * 1000
ElseIf Combo18.Text = "Meter" And Combo17.Text = "Centimeter" Then
T16.Text = B * 100
ElseIf Combo18.Text = "Meter" And Combo17.Text = "Meter" Then
T16.Text = B
End If

End If

End If

Exit Sub
errhan:
 MsgBox err.Description, vbInformation

End Sub

Private Sub Command5_Click()
On Error GoTo errhan:
If O48.value = False And O49.value = False And O50.value = False Then
 MsgBox "Select Required Operation"
Else
If O48.value = True Then
 If T11.Text = "" Or Val(T11.Text) < 0 Or T12.Text = "" Or Val(T12.Text) < 0 Then
  MsgBox "Invalid Value"
 Else
 A = (1 / 2) * Val(T11.Text) * Val(T12.Text)    ' find area
 End If
ElseIf O49.value = True Then
  If T11.Text = "" Or Val(T11.Text) < 0 Or T13.Text = "" Or Val(T13.Text) < 0 Then
   MsgBox "Invalid Value"
  Else
   B = (2 * Val(T13.Text)) / Val(T11.Text)          ' find breath
  End If
ElseIf O50.value = True Then
  If T12.Text = "" Or Val(T12.Text) < 0 Or T13.Text = "" Or Val(T13.Text) < 0 Then
   MsgBox "Invalid Value"
  Else
   C = (2 * Val(T13.Text)) / Val(T12.Text)     ' find height
  End If
End If

' display output
If O48.value = True Then

If Combo3.Text = "Millimeter" And Combo4.Text = "Millimeter" Then
T13.Text = Val(A)
ElseIf Combo3.Text = "Millimeter" And Combo4.Text = "Centimeter" Then
T13.Text = A / 10
ElseIf Combo3.Text = "Millimeter" And Combo4.Text = "Meter" Then
T13.Text = A / 1000
ElseIf Combo3.Text = "Centimeter" And Combo4.Text = "Millimeter" Then
T13.Text = A * 10
ElseIf Combo3.Text = "Centimeter" And Combo4.Text = "Centimeter" Then
T13.Text = A
ElseIf Combo3.Text = "Centimeter" And Combo4.Text = "Meter" Then
T13.Text = A / 100
ElseIf Combo3.Text = "Meter" And Combo4.Text = "Millimeter" Then
T13.Text = A * 1000
ElseIf Combo3.Text = "Meter" And Combo4.Text = "Centimeter" Then
T13.Text = A * 100
ElseIf Combo3.Text = "Meter" And Combo4.Text = "Meter" Then
T13.Text = A
End If

ElseIf O49.value = True Then

If Combo3.Text = "Millimeter" And Combo4.Text = "Millimeter" Then
T12.Text = B
ElseIf Combo3.Text = "Millimeter" And Combo4.Text = "Centimeter" Then
T12.Text = B / 10
ElseIf Combo3.Text = "Millimeter" And Combo4.Text = "Meter" Then
T12.Text = B / 1000
ElseIf Combo3.Text = "Centimeter" And Combo4.Text = "Millimeter" Then
T12.Text = B * 10
ElseIf Combo3.Text = "Centimeter" And Combo4.Text = "Centimeter" Then
T12.Text = B
ElseIf Combo3.Text = "Centimeter" And Combo4.Text = "Meter" Then
T12.Text = B / 100
ElseIf Combo3.Text = "Meter" And Combo4.Text = "Millimeter" Then
T12.Text = B * 1000
ElseIf Combo3.Text = "Meter" And Combo4.Text = "Centimeter" Then
T12.Text = B * 100
ElseIf Combo3.Text = "Meter" And Combo4.Text = "Meter" Then
T12.Text = B
End If

ElseIf O50.value = True Then

If Combo3.Text = "Millimeter" And Combo4.Text = "Millimeter" Then
T11.Text = C
ElseIf Combo3.Text = "Millimeter" And Combo4.Text = "Centimeter" Then
T11.Text = C / 10
ElseIf Combo3.Text = "Millimeter" And Combo4.Text = "Meter" Then
T11.Text = C / 1000
ElseIf Combo3.Text = "Centimeter" And Combo4.Text = "Millimeter" Then
T11.Text = C * 10
ElseIf Combo3.Text = "Centimeter" And Combo4.Text = "Centimeter" Then
T11.Text = C
ElseIf Combo3.Text = "Centimeter" And Combo4.Text = "Meter" Then
T11.Text = C / 100
ElseIf Combo3.Text = "Meter" And Combo4.Text = "Millimeter" Then
T11.Text = C * 1000
ElseIf Combo3.Text = "Meter" And Combo4.Text = "Centimeter" Then
T11.Text = C * 100
ElseIf Combo3.Text = "Meter" And Combo4.Text = "Meter" Then
T11.Text = C
End If

End If

End If
Exit Sub
errhan:
 MsgBox err.Description, vbInformation

End Sub

Private Sub Command6_Click()
T22.Text = ""
T23.Text = ""
T24.Text = ""
End Sub

Private Sub Command7_Click()
On Error GoTo errhan:
If O87.value = False And O88.value = False And O89.value = False And O86.value = False Then
 MsgBox "Select Required Operation"
Else
If O87.value = True Then
 If T22.Text = "" Or Val(T22.Text) < 0 Then
  MsgBox "Invalid Value"
 Else
 A = (2 / 3) * 3.14 * Val(T22.Text) * Val(T22.Text) * Val(T22.Text) ' find volume
 End If
ElseIf O86.value = True Then
  If T22.Text = "" Or Val(T22.Text) < 0 Then
   MsgBox "Invalid Value"
  Else
   B = 4 * 3.14 * Val(T22.Text) * Val(T22.Text)           ' find surface area
  End If
ElseIf O88.value = True Then
  If T23.Text = "" Or Val(T23.Text) < 0 Then
   MsgBox "Invalid Value"
  Else
   C = ((3 / (4 * 3.14)) * Val(T23.Text)) ^ (1 / 3) ' find radius (given volume)
  End If
ElseIf O89.value = True Then
 If T24.Text = "" Or Val(T24.Text) < 0 Then
  MsgBox "Invalid Value"
 Else
  D = Sqr(Val(T24.Text) / (4 * 3.14))      ' find radius (given surface area)
 End If
End If

' display output
If O87.value = True Then

If Combo6.Text = "Millimeter" And Combo5.Text = "Millimeter" Then
T23.Text = Val(A)
ElseIf Combo6.Text = "Millimeter" And Combo5.Text = "Centimeter" Then
T23.Text = A / 10
ElseIf Combo6.Text = "Millimeter" And Combo5.Text = "Meter" Then
T23.Text = A / 1000
ElseIf Combo6.Text = "Centimeter" And Combo5.Text = "Millimeter" Then
T23.Text = A * 10
ElseIf Combo6.Text = "Centimeter" And Combo5.Text = "Centimeter" Then
T23.Text = A
ElseIf Combo6.Text = "Centimeter" And Combo5.Text = "Meter" Then
T23.Text = A / 100
ElseIf Combo6.Text = "Meter" And Combo5.Text = "Millimeter" Then
T23.Text = A * 1000
ElseIf Combo6.Text = "Meter" And Combo5.Text = "Centimeter" Then
T23.Text = A * 100
ElseIf Combo6.Text = "Meter" And Combo5.Text = "Meter" Then
T23.Text = A
End If

ElseIf O86.value = True Then

If Combo6.Text = "Millimeter" And Combo5.Text = "Millimeter" Then
T24.Text = B
ElseIf Combo6.Text = "Millimeter" And Combo5.Text = "Centimeter" Then
T24.Text = B / 10
ElseIf Combo6.Text = "Millimeter" And Combo5.Text = "Meter" Then
T24.Text = B / 1000
ElseIf Combo6.Text = "Centimeter" And Combo5.Text = "Millimeter" Then
T24.Text = B * 10
ElseIf Combo6.Text = "Centimeter" And Combo5.Text = "Centimeter" Then
T24.Text = B
ElseIf Combo6.Text = "Centimeter" And Combo5.Text = "Meter" Then
T24.Text = B / 100
ElseIf Combo6.Text = "Meter" And Combo5.Text = "Millimeter" Then
T24.Text = B * 1000
ElseIf Combo6.Text = "Meter" And Combo5.Text = "Centimeter" Then
T24.Text = B * 100
ElseIf Combo6.Text = "Meter" And Combo5.Text = "Meter" Then
T24.Text = B
End If

ElseIf O88.value = True Then

If Combo6.Text = "Millimeter" And Combo5.Text = "Millimeter" Then
T22.Text = C
ElseIf Combo6.Text = "Millimeter" And Combo5.Text = "Centimeter" Then
T22.Text = C / 10
ElseIf Combo6.Text = "Millimeter" And Combo5.Text = "Meter" Then
T22.Text = C / 1000
ElseIf Combo6.Text = "Centimeter" And Combo5.Text = "Millimeter" Then
T22.Text = C * 10
ElseIf Combo6.Text = "Centimeter" And Combo5.Text = "Centimeter" Then
T22.Text = C
ElseIf Combo6.Text = "Centimeter" And Combo5.Text = "Meter" Then
T22.Text = C / 100
ElseIf Combo6.Text = "Meter" And Combo5.Text = "Millimeter" Then
T22.Text = C * 1000
ElseIf Combo6.Text = "Meter" And Combo5.Text = "Centimeter" Then
T22.Text = C * 100
ElseIf Combo6.Text = "Meter" And Combo5.Text = "Meter" Then
T22.Text = C
End If

ElseIf O89.value = True Then

If Combo6.Text = "Millimeter" And Combo5.Text = "Millimeter" Then
T22.Text = D
ElseIf Combo6.Text = "Millimeter" And Combo5.Text = "Centimeter" Then
T22.Text = D / 10
ElseIf Combo6.Text = "Millimeter" And Combo5.Text = "Meter" Then
T22.Text = D / 1000
ElseIf Combo6.Text = "Centimeter" And Combo5.Text = "Millimeter" Then
T22.Text = D * 10
ElseIf Combo6.Text = "Centimeter" And Combo5.Text = "Centimeter" Then
T22.Text = D
ElseIf Combo6.Text = "Centimeter" And Combo5.Text = "Meter" Then
T22.Text = D / 100
ElseIf Combo6.Text = "Meter" And Combo5.Text = "Millimeter" Then
T22.Text = D * 1000
ElseIf Combo6.Text = "Meter" And Combo5.Text = "Centimeter" Then
T22.Text = D * 100
ElseIf Combo6.Text = "Meter" And Combo5.Text = "Meter" Then
T22.Text = D
End If

End If

End If
Exit Sub
errhan:
 MsgBox err.Description, vbInformation

End Sub

Private Sub Command8_Click()
On Error GoTo errhan:
If O102.value = False And O115.value = False And O104.value = False And O103.value = False And O101.value = False And O100.value = False Then
 MsgBox "Select Required Operation"
Else
If O102.value = True Then
 If T25.Text = "" Or Val(T25.Text) < 0 And T26.Text = "" Or Val(T26.Text) < 0 Then
  MsgBox "Invalid Value"
 Else
 A = 2 * 3.14 * Val(T25.Text) * Val(T26.Text)    ' find surfacearea
 End If
ElseIf O115.value = True Then
  If T25.Text = "" Or Val(T25.Text) < 0 Then
   MsgBox "Invalid Value"
  Else
   B = 3.14 * Val(T25.Text) * Val(T25.Text)           ' find down area
  End If
ElseIf O104.value = True Then
  If T25.Text = "" Or Val(T25.Text) < 0 And T26.Text = "" Or Val(T26.Text) < 0 Then
   MsgBox "Invalid Value"
  Else
   C = Val(T26.Text) * Val(T25.Text) * Val(T25.Text) * 3.14  ' find volume
  End If
ElseIf O103.value = True Then
 If T25.Text = "" Or Val(T25.Text) < 0 And T26.Text = "" Or Val(T26.Text) < 0 Then
  MsgBox "Invalid Value"
 Else
  D = 2 * 3.14 * Val(T25.Text) * (Val(T25.Text) + Val(T26.Text))   'total surface
  End If
ElseIf O101.value = True Then
 If T28.Text = "" Or Val(T28.Text) < 0 Then
  MsgBox "Invalid Value"
 Else
  e = Sqr(T28.Text / 3.14)               ' find radius
  End If
ElseIf O100.value = True Then
 If T29.Text = "" Or Val(T29.Text) < 0 And T25.Text = "" Or Val(T25.Text) < 0 Then
  MsgBox "Invalid Value"
 Else
  F = T29.Text / (2 * 3.14 * Val(T25.Text))          ' find height
  End If
End If



' display output
If O102.value = True Then

If Combo8.Text = "Millimeter" And Combo7.Text = "Millimeter" Then
T29.Text = Val(A)
ElseIf Combo8.Text = "Millimeter" And Combo7.Text = "Centimeter" Then
T29.Text = A / 10
ElseIf Combo8.Text = "Millimeter" And Combo7.Text = "Meter" Then
T29.Text = A / 1000
ElseIf Combo8.Text = "Centimeter" And Combo7.Text = "Millimeter" Then
T29.Text = A * 10
ElseIf Combo8.Text = "Centimeter" And Combo7.Text = "Centimeter" Then
T29.Text = A
ElseIf Combo8.Text = "Centimeter" And Combo7.Text = "Meter" Then
T29.Text = A / 100
ElseIf Combo8.Text = "Meter" And Combo7.Text = "Millimeter" Then
T29.Text = A * 1000
ElseIf Combo8.Text = "Meter" And Combo7.Text = "Centimeter" Then
T29.Text = A * 100
ElseIf Combo8.Text = "Meter" And Combo7.Text = "Meter" Then
T29.Text = A
End If

ElseIf O115.value = True Then

If Combo8.Text = "Millimeter" And Combo7.Text = "Millimeter" Then
T28.Text = B
ElseIf Combo8.Text = "Millimeter" And Combo7.Text = "Centimeter" Then
T28.Text = B / 10
ElseIf Combo8.Text = "Millimeter" And Combo7.Text = "Meter" Then
T28.Text = B / 1000
ElseIf Combo8.Text = "Centimeter" And Combo7.Text = "Millimeter" Then
T28.Text = B * 10
ElseIf Combo8.Text = "Centimeter" And Combo7.Text = "Centimeter" Then
T28.Text = B
ElseIf Combo8.Text = "Centimeter" And Combo7.Text = "Meter" Then
T28.Text = B / 100
ElseIf Combo8.Text = "Meter" And Combo7.Text = "Millimeter" Then
T28.Text = B * 1000
ElseIf Combo8.Text = "Meter" And Combo7.Text = "Centimeter" Then
T28.Text = B * 100
ElseIf Combo8.Text = "Meter" And Combo7.Text = "Meter" Then
T28.Text = B
End If

ElseIf O104.value = True Then

If Combo8.Text = "Millimeter" And Combo7.Text = "Millimeter" Then
T30.Text = C
ElseIf Combo8.Text = "Millimeter" And Combo7.Text = "Centimeter" Then
T30.Text = C / 10
ElseIf Combo8.Text = "Millimeter" And Combo7.Text = "Meter" Then
T30.Text = C / 1000
ElseIf Combo8.Text = "Centimeter" And Combo7.Text = "Millimeter" Then
T30.Text = C * 10
ElseIf Combo8.Text = "Centimeter" And Combo7.Text = "Centimeter" Then
T30.Text = C
ElseIf Combo8.Text = "Centimeter" And Combo7.Text = "Meter" Then
T30.Text = C / 100
ElseIf Combo8.Text = "Meter" And Combo7.Text = "Millimeter" Then
T30.Text = C * 1000
ElseIf Combo8.Text = "Meter" And Combo7.Text = "Centimeter" Then
T30.Text = C * 100
ElseIf Combo8.Text = "Meter" And Combo7.Text = "Meter" Then
T30.Text = C
End If

ElseIf O103.value = True Then

If Combo8.Text = "Millimeter" And Combo7.Text = "Millimeter" Then
T27.Text = D
ElseIf Combo8.Text = "Millimeter" And Combo7.Text = "Centimeter" Then
T27.Text = D / 10
ElseIf Combo8.Text = "Millimeter" And Combo7.Text = "Meter" Then
T27.Text = D / 1000
ElseIf Combo8.Text = "Centimeter" And Combo7.Text = "Millimeter" Then
T27.Text = D * 10
ElseIf Combo8.Text = "Centimeter" And Combo7.Text = "Centimeter" Then
T27.Text = D
ElseIf Combo8.Text = "Centimeter" And Combo7.Text = "Meter" Then
T27.Text = D / 100
ElseIf Combo8.Text = "Meter" And Combo7.Text = "Millimeter" Then
T27.Text = D * 1000
ElseIf Combo8.Text = "Meter" And Combo7.Text = "Centimeter" Then
T27.Text = D * 100
ElseIf Combo8.Text = "Meter" And Combo7.Text = "Meter" Then
T27.Text = D
End If

ElseIf O101.value = True Then

If Combo8.Text = "Millimeter" And Combo7.Text = "Millimeter" Then
T25.Text = e
ElseIf Combo8.Text = "Millimeter" And Combo7.Text = "Centimeter" Then
T25.Text = e / 10
ElseIf Combo8.Text = "Millimeter" And Combo7.Text = "Meter" Then
T25.Text = e / 1000
ElseIf Combo8.Text = "Centimeter" And Combo7.Text = "Millimeter" Then
T25.Text = e * 10
ElseIf Combo8.Text = "Centimeter" And Combo7.Text = "Centimeter" Then
T25.Text = e
ElseIf Combo8.Text = "Centimeter" And Combo7.Text = "Meter" Then
T25.Text = e / 100
ElseIf Combo8.Text = "Meter" And Combo7.Text = "Millimeter" Then
T25.Text = e * 1000
ElseIf Combo8.Text = "Meter" And Combo7.Text = "Centimeter" Then
T25.Text = e * 100
ElseIf Combo8.Text = "Meter" And Combo7.Text = "Meter" Then
T25.Text = e
End If

ElseIf O100.value = True Then

If Combo8.Text = "Millimeter" And Combo7.Text = "Millimeter" Then
T26.Text = F
ElseIf Combo8.Text = "Millimeter" And Combo7.Text = "Centimeter" Then
T26.Text = F / 10
ElseIf Combo8.Text = "Millimeter" And Combo7.Text = "Meter" Then
T26.Text = F / 1000
ElseIf Combo8.Text = "Centimeter" And Combo7.Text = "Millimeter" Then
T26.Text = F * 10
ElseIf Combo8.Text = "Centimeter" And Combo7.Text = "Centimeter" Then
T26.Text = F
ElseIf Combo8.Text = "Centimeter" And Combo7.Text = "Meter" Then
T26.Text = F / 100
ElseIf Combo8.Text = "Meter" And Combo7.Text = "Millimeter" Then
T26.Text = F * 1000
ElseIf Combo8.Text = "Meter" And Combo7.Text = "Centimeter" Then
T26.Text = F * 100
ElseIf Combo8.Text = "Meter" And Combo7.Text = "Meter" Then
T26.Text = F
End If

End If


End If
Exit Sub
errhan:
 MsgBox err.Description, vbInformation

End Sub

Private Sub Command9_Click()
On Error GoTo errhan:
If O119.value = False And O120.value = False And O121.value = False And O117.value = False Then
 MsgBox "Select Required Operation"
Else
If O119.value = True Then
 If T31.Text = "" Or Val(T31.Text) < 0 Or T32.Text = "" Or Val(T32.Text) < 0 Or T33.Text = "" Or Val(T33.Text) < 0 Then
  MsgBox "Invalid Value"
 Else
 A = Val(T31.Text) * Val(T32.Text) * Val(T33.Text)      ' find volume
 End If
ElseIf O117.value = True Then
  If T34.Text = "" Or Val(T34.Text) < 0 Or T32.Text = "" Or Val(T32.Text) < 0 Or T31.Text = "" Or Val(T31.Text) < 0 Then
   MsgBox "Invalid Value"
  Else
   B = Val(T34.Text) / (Val(T31.Text) * Val(T32.Text))          ' find length
  End If
ElseIf O120.value = True Then
  If T34.Text = "" Or Val(T34.Text) < 0 Or T31.Text = "" Or Val(T31.Text) < 0 Or T33.Text = "" Or Val(T33.Text) < 0 Then
   MsgBox "Invalid Value"
  Else
   C = Val(T34.Text) / (Val(T31.Text) * Val(T33.Text))         ' find breath
  End If
ElseIf O121.value = True Then
  If T34.Text = "" Or Val(T34.Text) < 0 Or T32.Text = "" Or Val(T32.Text) < 0 Or T33.Text = "" Or Val(T33.Text) < 0 Then
 Else
     D = Val(T34.Text) / (Val(T32.Text) * Val(T33.Text))         ' find  length
End If
End If

' display output
If O119.value = True Then

If Combo1.Text = "Millimeter" And Combo2.Text = "Millimeter" Then
T34.Text = Val(A)
ElseIf Combo1.Text = "Millimeter" And Combo2.Text = "Centimeter" Then
T34.Text = A / 10
ElseIf Combo1.Text = "Millimeter" And Combo2.Text = "Meter" Then
T34.Text = A / 1000
ElseIf Combo1.Text = "Centimeter" And Combo2.Text = "Millimeter" Then
T34.Text = A * 10
ElseIf Combo1.Text = "Centimeter" And Combo2.Text = "Centimeter" Then
T34.Text = A
ElseIf Combo1.Text = "Centimeter" And Combo2.Text = "Meter" Then
T34.Text = A / 100
ElseIf Combo1.Text = "Meter" And Combo2.Text = "Millimeter" Then
T34.Text = A * 1000
ElseIf Combo1.Text = "Meter" And Combo2.Text = "Centimeter" Then
T34.Text = A * 100
ElseIf Combo1.Text = "Meter" And Combo2.Text = "Meter" Then
T34.Text = A
End If

ElseIf O117.value = True Then

If Combo1.Text = "Millimeter" And Combo2.Text = "Millimeter" Then
T33.Text = B
ElseIf Combo1.Text = "Millimeter" And Combo2.Text = "Centimeter" Then
T33.Text = B / 10
ElseIf Combo1.Text = "Millimeter" And Combo2.Text = "Meter" Then
T33.Text = B / 1000
ElseIf Combo1.Text = "Centimeter" And Combo2.Text = "Millimeter" Then
T33.Text = B * 10
ElseIf Combo1.Text = "Centimeter" And Combo2.Text = "Centimeter" Then
T33.Text = B
ElseIf Combo1.Text = "Centimeter" And Combo2.Text = "Meter" Then
T33.Text = B / 100
ElseIf Combo1.Text = "Meter" And Combo2.Text = "Millimeter" Then
T33.Text = B * 1000
ElseIf Combo1.Text = "Meter" And Combo2.Text = "Centimeter" Then
T33.Text = B * 100
ElseIf Combo1.Text = "Meter" And Combo2.Text = "Meter" Then
T33.Text = B
End If

ElseIf O120.value = True Then

If Combo1.Text = "Millimeter" And Combo2.Text = "Millimeter" Then
T32.Text = C
ElseIf Combo1.Text = "Millimeter" And Combo2.Text = "Centimeter" Then
T32.Text = C / 10
ElseIf Combo1.Text = "Millimeter" And Combo2.Text = "Meter" Then
T32.Text = C / 1000
ElseIf Combo1.Text = "Centimeter" And Combo2.Text = "Millimeter" Then
T32.Text = C * 10
ElseIf Combo1.Text = "Centimeter" And Combo2.Text = "Centimeter" Then
T32.Text = C
ElseIf Combo1.Text = "Centimeter" And Combo2.Text = "Meter" Then
T32.Text = C / 100
ElseIf Combo1.Text = "Meter" And Combo2.Text = "Millimeter" Then
T32.Text = C * 1000
ElseIf Combo1.Text = "Meter" And Combo2.Text = "Centimeter" Then
T32.Text = C * 100
ElseIf Combo1.Text = "Meter" And Combo2.Text = "Meter" Then
T32.Text = C
End If

ElseIf O121.value = True Then

If Combo1.Text = "Millimeter" And Combo2.Text = "Millimeter" Then
T31.Text = D
ElseIf Combo1.Text = "Millimeter" And Combo2.Text = "Centimeter" Then
T31.Text = D / 10
ElseIf Combo1.Text = "Millimeter" And Combo2.Text = "Meter" Then
T31.Text = D / 1000
ElseIf Combo1.Text = "Centimeter" And Combo2.Text = "Millimeter" Then
T31.Text = D * 10
ElseIf Combo1.Text = "Centimeter" And Combo2.Text = "Centimeter" Then
T31.Text = D
ElseIf Combo1.Text = "Centimeter" And Combo2.Text = "Meter" Then
T31.Text = D / 100
ElseIf Combo1.Text = "Meter" And Combo2.Text = "Millimeter" Then
T31.Text = D * 1000
ElseIf Combo1.Text = "Meter" And Combo2.Text = "Centimeter" Then
T31.Text = D * 100
ElseIf Combo1.Text = "Meter" And Combo2.Text = "Meter" Then
T31.Text = D
End If

End If

End If
Exit Sub
errhan:
 MsgBox err.Description, vbInformation


End Sub



Private Sub Form_Load()
Me.WindowState = vbMaximized
Combo1.AddItem "Millimeter"
Combo1.AddItem "Centimeter"
Combo1.AddItem "Meter"
Combo1.AddItem "Decimeter"
Combo1.AddItem "Hectare"

Combo2.AddItem "Millimeter"
Combo2.AddItem "Centimeter"
Combo2.AddItem "Meter"
Combo2.AddItem "Decimeter"
Combo2.AddItem "Hectare"

Combo3.AddItem "Millimeter"
Combo3.AddItem "Centimeter"
Combo3.AddItem "Meter"
Combo3.AddItem "Decimeter"
Combo3.AddItem "Hectare"

Combo4.AddItem "Millimeter"
Combo4.AddItem "Centimeter"
Combo4.AddItem "Meter"
Combo4.AddItem "Decimeter"
Combo4.AddItem "Hectare"

Combo5.AddItem "Millimeter"
Combo5.AddItem "Centimeter"
Combo5.AddItem "Meter"
Combo5.AddItem "Decimeter"
Combo5.AddItem "Hectare"

Combo6.AddItem "Millimeter"
Combo6.AddItem "Centimeter"
Combo6.AddItem "Meter"
Combo6.AddItem "Decimeter"
Combo6.AddItem "Hectare"

Combo7.AddItem "Millimeter"
Combo7.AddItem "Centimeter"
Combo7.AddItem "Meter"
Combo7.AddItem "Decimeter"
Combo7.AddItem "Hectare"

Combo8.AddItem "Millimeter"
Combo8.AddItem "Centimeter"
Combo8.AddItem "Meter"
Combo8.AddItem "Decimeter"
Combo8.AddItem "Hectare"

Combo9.AddItem "Millimeter"
Combo9.AddItem "Centimeter"
Combo9.AddItem "Meter"
Combo9.AddItem "Decimeter"
Combo9.AddItem "Hectare"

Combo10.AddItem "Millimeter"
Combo10.AddItem "Centimeter"
Combo10.AddItem "Meter"
Combo10.AddItem "Decimeter"
Combo10.AddItem "Hectare"

Combo11.AddItem "Millimeter"
Combo11.AddItem "Centimeter"
Combo11.AddItem "Meter"
Combo11.AddItem "Decimeter"
Combo11.AddItem "Hectare"

Combo12.AddItem "Millimeter"
Combo12.AddItem "Centimeter"
Combo12.AddItem "Meter"
Combo12.AddItem "Decimeter"
Combo12.AddItem "Hectare"

Combo13.AddItem "Millimeter"
Combo13.AddItem "Centimeter"
Combo13.AddItem "Meter"
Combo13.AddItem "Decimeter"
Combo13.AddItem "Hectare"

Combo14.AddItem "Millimeter"
Combo14.AddItem "Centimeter"
Combo14.AddItem "Meter"
Combo14.AddItem "Decimeter"
Combo14.AddItem "Hectare"

Combo15.AddItem "Millimeter"
Combo15.AddItem "Centimeter"
Combo15.AddItem "Meter"
Combo15.AddItem "Decimeter"
Combo15.AddItem "Hectare"

Combo16.AddItem "Millimeter"
Combo16.AddItem "Centimeter"
Combo16.AddItem "Meter"
Combo16.AddItem "Decimeter"
Combo16.AddItem "Hectare"

Combo17.AddItem "Millimeter"
Combo17.AddItem "Centimeter"
Combo17.AddItem "Meter"
Combo17.AddItem "Decimeter"
Combo17.AddItem "Hectare"

Combo18.AddItem "Millimeter"
Combo18.AddItem "Centimeter"
Combo18.AddItem "Meter"
Combo18.AddItem "Decimeter"
Combo18.AddItem "Hectare"

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
'Me.WindowState = vbMaximized
T1 = "": T2 = "": T3 = ""
End Sub

Private Sub Image10_Click()
Me.Hide
main.Show
End Sub

Private Sub Image11_Click()
Me.Hide
main.Show
End Sub

Private Sub Image12_Click()
Me.Hide
main.Show
End Sub

Private Sub Image13_Click()
Me.Hide
main.Show
End Sub

Private Sub Image14_Click()
Me.Hide
main.Show
End Sub

Private Sub Image15_Click()
Me.Hide
main.Show
End Sub

Private Sub Image16_Click()
Me.Hide
main.Show
End Sub

Private Sub Image17_Click()
Me.Hide
main.Show
End Sub

Private Sub Image18_Click()
Me.Hide
main.Show
End Sub



Private Sub Image9_Click()
Me.Hide
main.Show
End Sub









Private Sub T1_Validate(Cancel As Boolean)
If Not IsNumeric(T1.Text) Then
T1.SelStart = 0
T1.SelLength = Len(T1)
MsgBox "Numeric Required ", , "Validation"
Cancel = True
End If
End Sub
Private Sub T2_Validate(Cancel As Boolean)
If Not IsNumeric(T2.Text) Then
T2.SelStart = 0
T2.SelLength = Len(T2)
MsgBox "Numeric Required ", , "Validation"
Cancel = True
End If
End Sub

Private Sub T3_Validate(Cancel As Boolean)
If Not IsNumeric(T3.Text) Then
T3.SelStart = 0
T3.SelLength = Len(T3)
MsgBox "Numeric Required ", , "Validation"
Cancel = True
End If
End Sub
Private Sub T4_Validate(Cancel As Boolean)
If Not IsNumeric(t4.Text) Then
t4.SelStart = 0
t4.SelLength = Len(t4)
MsgBox "Numeric Required ", , "Validation"
Cancel = True
End If
End Sub
Private Sub T5_Validate(Cancel As Boolean)
If Not IsNumeric(t5.Text) Then
t5.SelStart = 0
t5.SelLength = Len(t5)
MsgBox "Numeric Required ", , "Validation"
Cancel = True
End If
End Sub
Private Sub T6_Validate(Cancel As Boolean)
If Not IsNumeric(t6.Text) Then
t6.SelStart = 0
t6.SelLength = Len(t6)
MsgBox "Numeric Required ", , "Validation"
Cancel = True
End If
End Sub
Private Sub T7_Validate(Cancel As Boolean)
If Not IsNumeric(t7.Text) Then
t7.SelStart = 0
t7.SelLength = Len(t7)
MsgBox "Numeric Required ", , "Validation"
Cancel = True
End If
End Sub
Private Sub T8_Validate(Cancel As Boolean)
If Not IsNumeric(t8.Text) Then
t8.SelStart = 0
t8.SelLength = Len(t8)
MsgBox "Numeric Required ", , "Validation"
Cancel = True
End If
End Sub
Private Sub T9_Validate(Cancel As Boolean)
If Not IsNumeric(t9.Text) Then
t9.SelStart = 0
t9.SelLength = Len(t9)
MsgBox "Numeric Required ", , "Validation"
Cancel = True
End If
End Sub

Private Sub T10_Validate(Cancel As Boolean)
If Not IsNumeric(T10.Text) Then
T10.SelStart = 0
T10.SelLength = Len(T10)
MsgBox "Numeric Required ", , "Validation"
Cancel = True
End If
End Sub
Private Sub T11_Validate(Cancel As Boolean)
If Not IsNumeric(T11.Text) Then
T11.SelStart = 0
T11.SelLength = Len(T11)
MsgBox "Numeric Required ", , "Validation"
Cancel = True
End If
End Sub
Private Sub T12_Validate(Cancel As Boolean)
If Not IsNumeric(T12.Text) Then
T12.SelStart = 0
T12.SelLength = Len(T12)
MsgBox "Numeric Required ", , "Validation"
Cancel = True
End If
End Sub
Private Sub T13_Validate(Cancel As Boolean)
If Not IsNumeric(T13.Text) Then
T13.SelStart = 0
T13.SelLength = Len(T13)
MsgBox "Numeric Required ", , "Validation"
Cancel = True
End If
End Sub
Private Sub T14_Validate(Cancel As Boolean)
If Not IsNumeric(T14.Text) Then
T14.SelStart = 0
T14.SelLength = Len(T14)
MsgBox "Numeric Required ", , "Validation"
Cancel = True
End If
End Sub
Private Sub T15_Validate(Cancel As Boolean)
If Not IsNumeric(T15.Text) Then
T15.SelStart = 0
T15.SelLength = Len(T15)
MsgBox "Numeric Required ", , "Validation"
Cancel = True
End If
End Sub

Private Sub T16_Validate(Cancel As Boolean)
If Not IsNumeric(T16.Text) Then
T16.SelStart = 0
T16.SelLength = Len(T16)
MsgBox "Numeric Required ", , "Validation"
Cancel = True
End If
End Sub
Private Sub T17_Validate(Cancel As Boolean)
If Not IsNumeric(T17.Text) Then
T17.SelStart = 0
T17.SelLength = Len(T17)
MsgBox "Numeric Required ", , "Validation"
Cancel = True
End If
End Sub
Private Sub T18_Validate(Cancel As Boolean)
If Not IsNumeric(T18.Text) Then
T18.SelStart = 0
T18.SelLength = Len(T18)
MsgBox "Numeric Required ", , "Validation"
Cancel = True
End If
End Sub
Private Sub T19_Validate(Cancel As Boolean)
If Not IsNumeric(T19.Text) Then
T19.SelStart = 0
T19.SelLength = Len(T19)
MsgBox "Numeric Required ", , "Validation"
Cancel = True
End If
End Sub
Private Sub T20_Validate(Cancel As Boolean)
If Not IsNumeric(T20.Text) Then
T20.SelStart = 0
T20.SelLength = Len(T20)
MsgBox "Numeric Required ", , "Validation"
Cancel = True
End If
End Sub
Private Sub T21_Validate(Cancel As Boolean)
If Not IsNumeric(T21.Text) Then
T21.SelStart = 0
T21.SelLength = Len(T21)
MsgBox "Numeric Required ", , "Validation"
Cancel = True
End If
End Sub

