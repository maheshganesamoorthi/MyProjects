VERSION 5.00
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "comdlg32.ocx"
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCTL.OCX"
Object = "{38911DA0-E448-11D0-84A3-00DD01104159}#1.1#0"; "COMCT332.OCX"
Object = "{3B7C8863-D78F-101B-B9B5-04021C009402}#1.2#0"; "RichTx32.ocx"
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "TABCTL32.OCX"
Object = "{C1A8AF28-1257-101B-8FB0-0020AF039CA3}#1.1#0"; "MCI32.OCX"
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCT2.OCX"
Object = "{EAB22AC0-30C1-11CF-A7EB-0000C05BAE0B}#1.1#0"; "shdocvw.dll"
Begin VB.Form frmMain1 
   BackColor       =   &H00C0C0C0&
   Caption         =   "Text writer 1.0"
   ClientHeight    =   7200
   ClientLeft      =   60
   ClientTop       =   1020
   ClientWidth     =   12345
   BeginProperty Font 
      Name            =   "Arial"
      Size            =   9
      Charset         =   0
      Weight          =   400
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   Icon            =   "frmMain.frx":0000
   LinkTopic       =   "Form1"
   ScaleHeight     =   7200
   ScaleWidth      =   12345
   Begin VB.TextBox ref 
      Height          =   495
      Left            =   2760
      TabIndex        =   40
      Top             =   9600
      Visible         =   0   'False
      Width           =   2775
   End
   Begin MSComDlg.CommonDialog CmDlg 
      Left            =   6840
      Top             =   6000
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
   End
   Begin MSComctlLib.ImageList ImageList1 
      Left            =   1560
      Top             =   9480
      _ExtentX        =   1005
      _ExtentY        =   1005
      BackColor       =   -2147483643
      ImageWidth      =   16
      ImageHeight     =   16
      MaskColor       =   12632256
      _Version        =   393216
      BeginProperty Images {2C247F25-8591-11D1-B16A-00C0F0283628} 
         NumListImages   =   14
         BeginProperty ListImage1 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmMain.frx":0CCA
            Key             =   ""
         EndProperty
         BeginProperty ListImage2 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmMain.frx":101C
            Key             =   ""
         EndProperty
         BeginProperty ListImage3 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmMain.frx":136E
            Key             =   ""
         EndProperty
         BeginProperty ListImage4 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmMain.frx":1480
            Key             =   ""
         EndProperty
         BeginProperty ListImage5 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmMain.frx":19D2
            Key             =   ""
         EndProperty
         BeginProperty ListImage6 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmMain.frx":1D24
            Key             =   ""
         EndProperty
         BeginProperty ListImage7 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmMain.frx":2076
            Key             =   ""
         EndProperty
         BeginProperty ListImage8 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmMain.frx":23C8
            Key             =   ""
         EndProperty
         BeginProperty ListImage9 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmMain.frx":271A
            Key             =   ""
         EndProperty
         BeginProperty ListImage10 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmMain.frx":2A6C
            Key             =   ""
         EndProperty
         BeginProperty ListImage11 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmMain.frx":2DBE
            Key             =   ""
         EndProperty
         BeginProperty ListImage12 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmMain.frx":3110
            Key             =   ""
         EndProperty
         BeginProperty ListImage13 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmMain.frx":3462
            Key             =   ""
         EndProperty
         BeginProperty ListImage14 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmMain.frx":37B4
            Key             =   ""
         EndProperty
      EndProperty
   End
   Begin VB.CommandButton Command8 
      BackColor       =   &H000000FF&
      Caption         =   "x"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   480
      MaskColor       =   &H00E0E0E0&
      Style           =   1  'Graphical
      TabIndex        =   38
      Top             =   9600
      Width           =   375
   End
   Begin VB.Timer Timer2 
      Left            =   8520
      Top             =   9960
   End
   Begin VB.CommandButton cmdOpen 
      Caption         =   """"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   6000
      TabIndex        =   32
      Top             =   9120
      Visible         =   0   'False
      Width           =   735
   End
   Begin VB.CommandButton Command3 
      Caption         =   "Close"
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
      Left            =   9960
      TabIndex        =   22
      TabStop         =   0   'False
      Top             =   9720
      Width           =   1095
   End
   Begin TabDlg.SSTab SSTab1 
      Height          =   8895
      Left            =   11280
      TabIndex        =   7
      TabStop         =   0   'False
      Top             =   1320
      Width           =   3975
      _ExtentX        =   7011
      _ExtentY        =   15690
      _Version        =   393216
      Style           =   1
      Tabs            =   5
      TabsPerRow      =   5
      TabHeight       =   520
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      TabCaption(0)   =   "Audio "
      TabPicture(0)   =   "frmMain.frx":3B7A
      Tab(0).ControlEnabled=   -1  'True
      Tab(0).Control(0)=   "MediaPlayer1000"
      Tab(0).Control(0).Enabled=   0   'False
      Tab(0).Control(1)=   "Frame2"
      Tab(0).Control(1).Enabled=   0   'False
      Tab(0).Control(2)=   "Command4"
      Tab(0).Control(2).Enabled=   0   'False
      Tab(0).Control(3)=   "Command5"
      Tab(0).Control(3).Enabled=   0   'False
      Tab(0).Control(4)=   "Command7"
      Tab(0).Control(4).Enabled=   0   'False
      Tab(0).Control(5)=   "play"
      Tab(0).Control(5).Enabled=   0   'False
      Tab(0).Control(6)=   "MediaPlayer1"
      Tab(0).Control(6).Enabled=   0   'False
      Tab(0).ControlCount=   7
      TabCaption(1)   =   "Calculator"
      TabPicture(1)   =   "frmMain.frx":3B96
      Tab(1).ControlEnabled=   0   'False
      Tab(1).Control(0)=   "cmd(0)"
      Tab(1).Control(1)=   "Command1"
      Tab(1).Control(2)=   "Cmdcos(11)"
      Tab(1).Control(3)=   "Cmdcos(6)"
      Tab(1).Control(4)=   "Cmdcos(10)"
      Tab(1).Control(5)=   "Cmdcos(3)"
      Tab(1).Control(6)=   "Cmdcos(9)"
      Tab(1).Control(7)=   "Cmdcos(5)"
      Tab(1).Control(8)=   "Cmdcos(4)"
      Tab(1).Control(9)=   "Opt2"
      Tab(1).Control(10)=   "Opt1"
      Tab(1).Control(11)=   "Cmdcos(8)"
      Tab(1).Control(12)=   "Cmdcos(7)"
      Tab(1).Control(13)=   "Cmdop(4)"
      Tab(1).Control(14)=   "Cmdcos(2)"
      Tab(1).Control(15)=   "Cmdcos(1)"
      Tab(1).Control(16)=   "Cmdcos(0)"
      Tab(1).Control(17)=   "cmd(10)"
      Tab(1).Control(18)=   "cmdc"
      Tab(1).Control(19)=   "Cmdop(3)"
      Tab(1).Control(20)=   "Cmdop(2)"
      Tab(1).Control(21)=   "Cmdop(1)"
      Tab(1).Control(22)=   "Cmdop(0)"
      Tab(1).Control(23)=   "cmde"
      Tab(1).Control(24)=   "cmd(9)"
      Tab(1).Control(25)=   "cmd(8)"
      Tab(1).Control(26)=   "cmd(7)"
      Tab(1).Control(27)=   "cmd(6)"
      Tab(1).Control(28)=   "cmd(5)"
      Tab(1).Control(29)=   "cmd(4)"
      Tab(1).Control(30)=   "cmd(3)"
      Tab(1).Control(31)=   "cmd(2)"
      Tab(1).Control(32)=   "cmd(1)"
      Tab(1).Control(33)=   "txt"
      Tab(1).ControlCount=   34
      TabCaption(2)   =   "Image "
      TabPicture(2)   =   "frmMain.frx":3BB2
      Tab(2).ControlEnabled=   0   'False
      Tab(2).Control(0)=   "Image2"
      Tab(2).Control(1)=   "Command2"
      Tab(2).Control(1).Enabled=   0   'False
      Tab(2).Control(2)=   "Frame6"
      Tab(2).Control(3)=   "Frame5"
      Tab(2).ControlCount=   4
      TabCaption(3)   =   "Clock"
      TabPicture(3)   =   "frmMain.frx":3BCE
      Tab(3).ControlEnabled=   0   'False
      Tab(3).Control(0)=   "Label2"
      Tab(3).Control(1)=   "Label1"
      Tab(3).Control(2)=   "Label4"
      Tab(3).Control(3)=   "Label5"
      Tab(3).Control(4)=   "Frame1"
      Tab(3).Control(5)=   "Timer1"
      Tab(3).Control(6)=   "MonthView1"
      Tab(3).ControlCount=   7
      TabCaption(4)   =   "Html Editor"
      TabPicture(4)   =   "frmMain.frx":3BEA
      Tab(4).ControlEnabled=   0   'False
      Tab(4).Control(0)=   "list"
      Tab(4).Control(0).Enabled=   0   'False
      Tab(4).Control(1)=   "Command6"
      Tab(4).ControlCount=   2
      Begin MCI.MMControl MediaPlayer1 
         Height          =   330
         Left            =   240
         TabIndex        =   75
         Top             =   6840
         Width           =   3540
         _ExtentX        =   6244
         _ExtentY        =   582
         _Version        =   393216
         DeviceType      =   ""
         FileName        =   ""
      End
      Begin VB.CommandButton cmd 
         Caption         =   "1"
         Height          =   495
         Index           =   0
         Left            =   -74640
         MaskColor       =   &H00C0FFFF&
         TabIndex        =   74
         Top             =   5160
         Width           =   855
      End
      Begin VB.CommandButton Command1 
         Caption         =   "ADD  RESULT  TO  TEXT WRITER"
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
         Left            =   -74640
         TabIndex        =   73
         Top             =   7560
         Width           =   3375
      End
      Begin VB.CommandButton Cmdcos 
         BackColor       =   &H0080C0FF&
         Caption         =   "MS"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   495
         Index           =   11
         Left            =   -72960
         TabIndex        =   72
         Top             =   2520
         UseMaskColor    =   -1  'True
         Width           =   1695
      End
      Begin VB.CommandButton Cmdcos 
         BackColor       =   &H0080C0FF&
         Caption         =   "MR"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   495
         Index           =   6
         Left            =   -74640
         TabIndex        =   71
         Top             =   2520
         UseMaskColor    =   -1  'True
         Width           =   1695
      End
      Begin VB.CommandButton Cmdcos 
         Caption         =   "sqrt"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   495
         Index           =   10
         Left            =   -73560
         TabIndex        =   70
         Top             =   3960
         UseMaskColor    =   -1  'True
         Width           =   1095
      End
      Begin VB.CommandButton Cmdcos 
         Caption         =   "n!"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   495
         Index           =   3
         Left            =   -73560
         TabIndex        =   69
         Top             =   4440
         UseMaskColor    =   -1  'True
         Width           =   1095
      End
      Begin VB.CommandButton Cmdcos 
         Caption         =   "Exp"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   495
         Index           =   9
         Left            =   -74640
         TabIndex        =   68
         Top             =   3960
         UseMaskColor    =   -1  'True
         Width           =   1095
      End
      Begin VB.CommandButton Cmdcos 
         Caption         =   "1/x"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   975
         Index           =   5
         Left            =   -72480
         TabIndex        =   67
         Top             =   3960
         UseMaskColor    =   -1  'True
         Width           =   1215
      End
      Begin VB.CommandButton Cmdcos 
         Caption         =   "ln"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   495
         Index           =   4
         Left            =   -74640
         TabIndex        =   66
         Top             =   4440
         UseMaskColor    =   -1  'True
         Width           =   1095
      End
      Begin VB.OptionButton Opt2 
         Caption         =   "Radian"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   255
         Left            =   -73320
         TabIndex        =   65
         Top             =   2040
         Width           =   1095
      End
      Begin VB.OptionButton Opt1 
         Caption         =   "Degree"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   255
         Left            =   -74640
         TabIndex        =   64
         Top             =   2040
         Width           =   1215
      End
      Begin VB.CommandButton Cmdcos 
         Caption         =   "x^2"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   495
         Index           =   8
         Left            =   -73560
         TabIndex        =   63
         Top             =   3480
         Width           =   1095
      End
      Begin VB.CommandButton Cmdcos 
         Caption         =   "x^3"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   495
         Index           =   7
         Left            =   -74640
         TabIndex        =   62
         Top             =   3480
         Width           =   1095
      End
      Begin VB.CommandButton Cmdop 
         Caption         =   "x^y"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   495
         Index           =   4
         Left            =   -72480
         TabIndex        =   61
         Top             =   3480
         Width           =   1215
      End
      Begin VB.CommandButton Cmdcos 
         Caption         =   "sin"
         Enabled         =   0   'False
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   495
         Index           =   2
         Left            =   -74640
         TabIndex        =   60
         Top             =   3000
         UseMaskColor    =   -1  'True
         Width           =   1095
      End
      Begin VB.CommandButton Cmdcos 
         Caption         =   "tan"
         Enabled         =   0   'False
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   495
         Index           =   1
         Left            =   -73560
         TabIndex        =   59
         Top             =   3000
         UseMaskColor    =   -1  'True
         Width           =   1095
      End
      Begin VB.CommandButton Cmdcos 
         Caption         =   "cos"
         Enabled         =   0   'False
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   495
         Index           =   0
         Left            =   -72480
         TabIndex        =   58
         Top             =   3000
         UseMaskColor    =   -1  'True
         Width           =   1215
      End
      Begin VB.CommandButton cmd 
         Caption         =   "."
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   495
         Index           =   10
         Left            =   -74640
         TabIndex        =   57
         Top             =   6600
         Width           =   855
      End
      Begin VB.CommandButton cmdc 
         Caption         =   "Clear"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   495
         Left            =   -74640
         Style           =   1  'Graphical
         TabIndex        =   56
         Top             =   7080
         Width           =   3375
      End
      Begin VB.CommandButton Cmdop 
         Caption         =   "-"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   495
         Index           =   3
         Left            =   -72120
         TabIndex        =   55
         Top             =   6600
         Width           =   855
      End
      Begin VB.CommandButton Cmdop 
         Caption         =   "*"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   495
         Index           =   2
         Left            =   -72120
         TabIndex        =   54
         Top             =   6120
         Width           =   855
      End
      Begin VB.CommandButton Cmdop 
         Caption         =   "/"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   495
         Index           =   1
         Left            =   -72120
         TabIndex        =   53
         Top             =   5160
         Width           =   855
      End
      Begin VB.CommandButton Cmdop 
         Caption         =   "+"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   495
         Index           =   0
         Left            =   -72120
         TabIndex        =   52
         Top             =   5640
         Width           =   855
      End
      Begin VB.CommandButton cmde 
         Caption         =   "="
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   495
         Left            =   -72960
         TabIndex        =   51
         Top             =   6600
         Width           =   855
      End
      Begin VB.CommandButton cmd 
         Caption         =   "2"
         Height          =   495
         Index           =   9
         Left            =   -73800
         TabIndex        =   50
         Top             =   5160
         Width           =   855
      End
      Begin VB.CommandButton cmd 
         Caption         =   "3"
         Height          =   495
         Index           =   8
         Left            =   -72960
         TabIndex        =   49
         Top             =   5160
         Width           =   855
      End
      Begin VB.CommandButton cmd 
         Caption         =   "4"
         Height          =   495
         Index           =   7
         Left            =   -74640
         TabIndex        =   48
         Top             =   5640
         Width           =   855
      End
      Begin VB.CommandButton cmd 
         Caption         =   "5"
         Height          =   495
         Index           =   6
         Left            =   -73800
         TabIndex        =   47
         Top             =   5640
         Width           =   855
      End
      Begin VB.CommandButton cmd 
         Caption         =   "6"
         Height          =   495
         Index           =   5
         Left            =   -72960
         TabIndex        =   46
         Top             =   5640
         Width           =   855
      End
      Begin VB.CommandButton cmd 
         Caption         =   "7"
         Height          =   495
         Index           =   4
         Left            =   -74640
         TabIndex        =   45
         Top             =   6120
         Width           =   855
      End
      Begin VB.CommandButton cmd 
         Caption         =   "8"
         Height          =   495
         Index           =   3
         Left            =   -73800
         TabIndex        =   44
         Top             =   6120
         Width           =   855
      End
      Begin VB.CommandButton cmd 
         Caption         =   "9"
         Height          =   495
         Index           =   2
         Left            =   -72960
         TabIndex        =   43
         Top             =   6120
         Width           =   855
      End
      Begin VB.CommandButton cmd 
         Caption         =   "0"
         Height          =   495
         Index           =   1
         Left            =   -73800
         TabIndex        =   42
         Top             =   6600
         Width           =   855
      End
      Begin VB.TextBox txt 
         Alignment       =   1  'Right Justify
         Height          =   525
         Left            =   -74640
         ScrollBars      =   1  'Horizontal
         TabIndex        =   41
         Text            =   "0"
         Top             =   1080
         Width           =   3375
      End
      Begin VB.CommandButton play 
         Caption         =   "Play"
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
         Left            =   360
         TabIndex        =   36
         Top             =   7680
         Width           =   735
      End
      Begin VB.CommandButton Command7 
         Caption         =   "Back"
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
         Left            =   2040
         TabIndex        =   35
         Top             =   7680
         Width           =   735
      End
      Begin VB.CommandButton Command5 
         Caption         =   "Next"
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
         Left            =   2880
         TabIndex        =   34
         Top             =   7680
         Width           =   735
      End
      Begin VB.CommandButton Command4 
         Caption         =   "Stop"
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
         Left            =   1200
         TabIndex        =   33
         Top             =   7680
         Width           =   735
      End
      Begin VB.Frame Frame2 
         Caption         =   "Select song"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   5535
         Left            =   120
         TabIndex        =   27
         Top             =   480
         Width           =   3735
         Begin VB.TextBox Text1 
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   375
            Left            =   120
            TabIndex        =   31
            Top             =   4920
            Width           =   3495
         End
         Begin VB.DriveListBox Drive1 
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   315
            Left            =   120
            TabIndex        =   30
            Top             =   360
            Width           =   3495
         End
         Begin VB.FileListBox File1 
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   1845
            Left            =   120
            TabIndex        =   29
            Top             =   2880
            Width           =   3495
         End
         Begin VB.DirListBox Dir1 
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   1890
            Left            =   120
            TabIndex        =   28
            Top             =   840
            Width           =   3495
         End
      End
      Begin VB.CommandButton Command6 
         Caption         =   "OK"
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
         Left            =   -73560
         TabIndex        =   26
         Top             =   8640
         Width           =   1335
      End
      Begin VB.ListBox list 
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   7470
         Left            =   -74760
         TabIndex        =   25
         TabStop         =   0   'False
         Top             =   600
         Width           =   3495
      End
      Begin MSComCtl2.MonthView MonthView1 
         Height          =   2610
         Left            =   -74640
         TabIndex        =   24
         TabStop         =   0   'False
         Top             =   6360
         Width           =   2880
         _ExtentX        =   5080
         _ExtentY        =   4604
         _Version        =   393216
         ForeColor       =   0
         BackColor       =   12632319
         BorderStyle     =   1
         Appearance      =   0
         StartOfWeek     =   21954561
         TitleBackColor  =   16761024
         TitleForeColor  =   255
         CurrentDate     =   40334
      End
      Begin VB.Frame Frame5 
         BackColor       =   &H00C0E0FF&
         Caption         =   "Select Picture"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   2775
         Left            =   -74880
         TabIndex        =   14
         Top             =   420
         Width           =   3735
         Begin VB.FileListBox File2 
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   2040
            Left            =   1920
            TabIndex        =   17
            TabStop         =   0   'False
            Top             =   480
            Width           =   1575
         End
         Begin VB.DirListBox Dir2 
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   1890
            Left            =   120
            TabIndex        =   16
            TabStop         =   0   'False
            Top             =   600
            Width           =   1695
         End
         Begin VB.DriveListBox Drive2 
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   315
            Left            =   120
            TabIndex        =   15
            TabStop         =   0   'False
            Top             =   240
            Width           =   1695
         End
         Begin VB.Label Label3 
            Caption         =   "JPG && BMP FILES"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   375
            Left            =   1920
            TabIndex        =   18
            Top             =   240
            Width           =   1455
         End
      End
      Begin VB.Frame Frame6 
         BackColor       =   &H00C0E0FF&
         Caption         =   "Picture Format"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   855
         Left            =   -74880
         TabIndex        =   12
         Top             =   3180
         Width           =   3735
         Begin VB.ComboBox Combo2 
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   315
            Left            =   240
            TabIndex        =   13
            TabStop         =   0   'False
            Text            =   "Picture Format"
            Top             =   360
            Width           =   2295
         End
      End
      Begin VB.CommandButton Command2 
         Caption         =   "Viwe the Large size"
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
         Left            =   -74040
         TabIndex        =   11
         TabStop         =   0   'False
         Top             =   8640
         Width           =   1935
      End
      Begin VB.Timer Timer1 
         Interval        =   1000
         Left            =   -74760
         Top             =   5220
      End
      Begin VB.Frame Frame1 
         BorderStyle     =   0  'None
         Caption         =   "Frame1"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   4695
         Left            =   -74880
         TabIndex        =   8
         Top             =   540
         Width           =   3615
         Begin VB.Line LineHour 
            BorderColor     =   &H00000000&
            BorderWidth     =   5
            X1              =   1920
            X2              =   3120
            Y1              =   2280
            Y2              =   1440
         End
         Begin VB.Line LineMinute 
            BorderColor     =   &H00000000&
            BorderWidth     =   3
            X1              =   1905
            X2              =   1200
            Y1              =   2280
            Y2              =   1680
         End
         Begin VB.Line LineSecond 
            BorderColor     =   &H00000000&
            X1              =   1920
            X2              =   600
            Y1              =   2280
            Y2              =   3360
         End
         Begin VB.Image Image1 
            Height          =   4470
            Left            =   120
            Picture         =   "frmMain.frx":3C06
            Top             =   120
            Width           =   3540
         End
      End
      Begin VB.PictureBox MediaPlayer1000 
         Height          =   255
         Left            =   240
         ScaleHeight     =   195
         ScaleWidth      =   3390
         TabIndex        =   37
         Top             =   6240
         Width           =   3450
      End
      Begin VB.Label Label5 
         Caption         =   " Date:"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FF0000&
         Height          =   255
         Left            =   -74760
         TabIndex        =   20
         Top             =   5880
         Width           =   735
      End
      Begin VB.Label Label4 
         Caption         =   "Time:"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FF0000&
         Height          =   255
         Left            =   -74760
         TabIndex        =   19
         Top             =   5340
         Width           =   735
      End
      Begin VB.Image Image2 
         BorderStyle     =   1  'Fixed Single
         Height          =   4215
         Left            =   -74760
         Stretch         =   -1  'True
         Top             =   4140
         Width           =   3495
      End
      Begin VB.Label Label1 
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
         ForeColor       =   &H00000000&
         Height          =   375
         Left            =   -73920
         TabIndex        =   10
         Top             =   5340
         Width           =   2655
      End
      Begin VB.Label Label2 
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
         ForeColor       =   &H00000000&
         Height          =   975
         Left            =   -73920
         TabIndex        =   9
         Top             =   5880
         Width           =   1935
      End
   End
   Begin MSComctlLib.StatusBar StatusBar1 
      Align           =   2  'Align Bottom
      Height          =   255
      Left            =   0
      TabIndex        =   6
      Top             =   6945
      Width           =   12345
      _ExtentX        =   21775
      _ExtentY        =   450
      _Version        =   393216
      BeginProperty Panels {8E3867A5-8586-11D1-B16A-00C0F0283628} 
         NumPanels       =   9
         BeginProperty Panel1 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            AutoSize        =   1
            Object.Width           =   2999
            MinWidth        =   2999
         EndProperty
         BeginProperty Panel2 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
         EndProperty
         BeginProperty Panel3 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Object.Width           =   2206
            MinWidth        =   2206
         EndProperty
         BeginProperty Panel4 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Object.Width           =   2999
            MinWidth        =   2999
         EndProperty
         BeginProperty Panel5 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Alignment       =   1
         EndProperty
         BeginProperty Panel6 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Style           =   1
            Alignment       =   1
            Enabled         =   0   'False
            TextSave        =   "CAPS"
            Key             =   "CAPS"
         EndProperty
         BeginProperty Panel7 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Style           =   2
            TextSave        =   "NUM"
            Key             =   "NUM"
         EndProperty
         BeginProperty Panel8 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Style           =   6
            TextSave        =   "1/26/2011"
         EndProperty
         BeginProperty Panel9 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Style           =   5
            TextSave        =   "9:40 PM"
         EndProperty
      EndProperty
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
   Begin MSComDlg.CommonDialog dlgCommonDialog1 
      Left            =   720
      Top             =   8280
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
   End
   Begin RichTextLib.RichTextBox RTBox 
      Height          =   4095
      Left            =   0
      TabIndex        =   5
      Top             =   1320
      Width           =   14775
      _ExtentX        =   26061
      _ExtentY        =   7223
      _Version        =   393217
      Enabled         =   -1  'True
      ScrollBars      =   3
      TextRTF         =   $"frmMain.frx":5240
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
   Begin ComCtl3.CoolBar CoolBar1 
      Height          =   555
      Left            =   0
      TabIndex        =   1
      Top             =   360
      Width           =   15375
      _ExtentX        =   27120
      _ExtentY        =   979
      BandCount       =   2
      _CBWidth        =   15375
      _CBHeight       =   555
      _Version        =   "6.0.8169"
      BandBackColor1  =   16777158
      MinWidth1       =   2535
      MinHeight1      =   495
      NewRow1         =   0   'False
      MinHeight2      =   360
      NewRow2         =   0   'False
      Begin MSComCtl2.DTPicker DTPicker1 
         Height          =   315
         Left            =   8040
         TabIndex        =   23
         TabStop         =   0   'False
         Top             =   120
         Width           =   1455
         _ExtentX        =   2566
         _ExtentY        =   556
         _Version        =   393216
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         CalendarBackColor=   16777215
         CalendarTitleBackColor=   16761087
         CalendarTitleForeColor=   16711680
         Format          =   21954561
         CurrentDate     =   40270
      End
      Begin VB.ComboBox Combo3 
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   315
         Left            =   6000
         TabIndex        =   21
         TabStop         =   0   'False
         Text            =   "Insert  Table"
         Top             =   120
         Width           =   1815
      End
      Begin VB.ComboBox wordstyle 
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   315
         Left            =   4320
         TabIndex        =   4
         TabStop         =   0   'False
         Text            =   "Normal"
         Top             =   120
         Width           =   1455
      End
      Begin VB.ComboBox fontsizecombo 
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   315
         Left            =   2880
         TabIndex        =   3
         TabStop         =   0   'False
         Text            =   "8"
         Top             =   120
         Width           =   1215
      End
      Begin VB.ComboBox fontstylecombo 
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   315
         Left            =   240
         TabIndex        =   2
         TabStop         =   0   'False
         Text            =   "Arial"
         Top             =   120
         Width           =   2415
      End
   End
   Begin MSComctlLib.Toolbar tbToolBar 
      Align           =   1  'Align Top
      Height          =   360
      Left            =   0
      TabIndex        =   0
      Top             =   0
      Width           =   12345
      _ExtentX        =   21775
      _ExtentY        =   635
      ButtonWidth     =   609
      ButtonHeight    =   582
      Style           =   1
      ImageList       =   "imlToolbarIcons"
      _Version        =   393216
      BeginProperty Buttons {66833FE8-8583-11D1-B16A-00C0F0283628} 
         NumButtons      =   35
         BeginProperty Button1 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Key             =   "New"
            Object.ToolTipText     =   "New"
            ImageKey        =   "New"
         EndProperty
         BeginProperty Button2 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Key             =   "Open"
            Object.ToolTipText     =   "Open"
            ImageKey        =   "Open"
         EndProperty
         BeginProperty Button3 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Key             =   "Save"
            Object.ToolTipText     =   "Save"
            ImageKey        =   "Save"
         EndProperty
         BeginProperty Button4 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Style           =   3
         EndProperty
         BeginProperty Button5 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Key             =   "Print"
            Object.ToolTipText     =   "Print"
            ImageKey        =   "Print"
         EndProperty
         BeginProperty Button6 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Key             =   "Print Preview"
            Object.ToolTipText     =   "Print Preview"
            ImageKey        =   "preview"
         EndProperty
         BeginProperty Button7 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Style           =   3
         EndProperty
         BeginProperty Button8 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Key             =   "Undo"
            Object.ToolTipText     =   "Undo"
            ImageKey        =   "Undo"
         EndProperty
         BeginProperty Button9 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Key             =   "Redo"
            Object.ToolTipText     =   "Redo"
            ImageKey        =   "Redo"
         EndProperty
         BeginProperty Button10 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Style           =   3
         EndProperty
         BeginProperty Button11 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Key             =   "Cut"
            Object.ToolTipText     =   "Cut"
            ImageKey        =   "Cut"
         EndProperty
         BeginProperty Button12 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Key             =   "Copy"
            Object.ToolTipText     =   "Copy"
            ImageKey        =   "Copy"
         EndProperty
         BeginProperty Button13 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Key             =   "Paste"
            Object.ToolTipText     =   "Paste"
            ImageKey        =   "Paste"
         EndProperty
         BeginProperty Button14 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Key             =   "Find"
            Object.ToolTipText     =   "Find"
            ImageKey        =   "Find"
         EndProperty
         BeginProperty Button15 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Key             =   "Delete"
            Object.ToolTipText     =   "Delete"
            ImageKey        =   "Delete"
         EndProperty
         BeginProperty Button16 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Style           =   3
         EndProperty
         BeginProperty Button17 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Key             =   "Bold"
            Object.ToolTipText     =   "Bold"
            ImageKey        =   "Bold"
         EndProperty
         BeginProperty Button18 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Key             =   "Italic"
            Object.ToolTipText     =   "Italic"
            ImageKey        =   "Italic"
         EndProperty
         BeginProperty Button19 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Key             =   "Underline"
            Object.ToolTipText     =   "Underline"
            ImageKey        =   "Underline"
         EndProperty
         BeginProperty Button20 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Key             =   "Strike Through"
            Object.ToolTipText     =   "Strike Through"
            ImageKey        =   "Strike Through"
         EndProperty
         BeginProperty Button21 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Style           =   3
         EndProperty
         BeginProperty Button22 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Key             =   "Align Left"
            Object.ToolTipText     =   "Align Left"
            ImageKey        =   "Align Left"
            Style           =   2
         EndProperty
         BeginProperty Button23 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Key             =   "Center"
            Object.ToolTipText     =   "Center"
            ImageKey        =   "Center"
            Style           =   2
         EndProperty
         BeginProperty Button24 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Key             =   "Align Right"
            Object.ToolTipText     =   "Align Right"
            ImageKey        =   "Align Right"
            Style           =   2
         EndProperty
         BeginProperty Button25 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Style           =   3
         EndProperty
         BeginProperty Button26 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Key             =   "Font color"
            Object.ToolTipText     =   "Font color"
            ImageKey        =   "color"
         EndProperty
         BeginProperty Button27 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Key             =   "Bullet"
            Object.ToolTipText     =   "Bullet"
            ImageKey        =   "Bullet"
         EndProperty
         BeginProperty Button28 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Key             =   "Date & Time"
            Object.ToolTipText     =   "Date & Time"
            ImageKey        =   "date"
         EndProperty
         BeginProperty Button29 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Key             =   "Insert Picture"
            Object.ToolTipText     =   "Insert Picture"
            ImageKey        =   "picture"
         EndProperty
         BeginProperty Button30 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Style           =   3
         EndProperty
         BeginProperty Button31 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Key             =   "Upper Case"
            Object.ToolTipText     =   "Upper Case"
            ImageKey        =   "cap"
         EndProperty
         BeginProperty Button32 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Key             =   "Lower Case"
            Object.ToolTipText     =   "Lower Case"
            ImageKey        =   "small"
         EndProperty
         BeginProperty Button33 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Style           =   3
         EndProperty
         BeginProperty Button34 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Key             =   "Increase font size"
            Object.ToolTipText     =   "Increase font size"
            ImageIndex      =   30
         EndProperty
         BeginProperty Button35 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Key             =   "Decrease font size"
            Object.ToolTipText     =   "Decrease font size"
            ImageIndex      =   32
         EndProperty
      EndProperty
      BorderStyle     =   1
   End
   Begin MSComDlg.CommonDialog dlgCommonDialog 
      Left            =   600
      Top             =   5760
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
   End
   Begin MSComctlLib.ImageList imlToolbarIcons 
      Left            =   1200
      Top             =   5640
      _ExtentX        =   1005
      _ExtentY        =   1005
      BackColor       =   -2147483643
      ImageWidth      =   16
      ImageHeight     =   16
      MaskColor       =   12632256
      _Version        =   393216
      BeginProperty Images {2C247F25-8591-11D1-B16A-00C0F0283628} 
         NumListImages   =   32
         BeginProperty ListImage1 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmMain.frx":52B7
            Key             =   "New"
         EndProperty
         BeginProperty ListImage2 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmMain.frx":53C9
            Key             =   "Open"
         EndProperty
         BeginProperty ListImage3 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmMain.frx":54DB
            Key             =   "Save"
         EndProperty
         BeginProperty ListImage4 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmMain.frx":55ED
            Key             =   "Print"
         EndProperty
         BeginProperty ListImage5 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmMain.frx":56FF
            Key             =   "Undo"
         EndProperty
         BeginProperty ListImage6 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmMain.frx":5811
            Key             =   "Redo"
         EndProperty
         BeginProperty ListImage7 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmMain.frx":5923
            Key             =   "Cut"
         EndProperty
         BeginProperty ListImage8 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmMain.frx":5A35
            Key             =   "Copy"
         EndProperty
         BeginProperty ListImage9 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmMain.frx":5B47
            Key             =   "Paste"
         EndProperty
         BeginProperty ListImage10 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmMain.frx":5C59
            Key             =   "Find"
         EndProperty
         BeginProperty ListImage11 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmMain.frx":5D6B
            Key             =   "Delete"
         EndProperty
         BeginProperty ListImage12 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmMain.frx":5E7D
            Key             =   "Bold"
         EndProperty
         BeginProperty ListImage13 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmMain.frx":5F8F
            Key             =   "Italic"
         EndProperty
         BeginProperty ListImage14 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmMain.frx":60A1
            Key             =   "Underline"
         EndProperty
         BeginProperty ListImage15 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmMain.frx":61B3
            Key             =   "Double Underline"
         EndProperty
         BeginProperty ListImage16 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmMain.frx":62C5
            Key             =   "Strike Through"
         EndProperty
         BeginProperty ListImage17 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmMain.frx":63D7
            Key             =   "Justify"
         EndProperty
         BeginProperty ListImage18 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmMain.frx":64E9
            Key             =   "Align Left"
         EndProperty
         BeginProperty ListImage19 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmMain.frx":65FB
            Key             =   "Center"
         EndProperty
         BeginProperty ListImage20 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmMain.frx":670D
            Key             =   "Align Right"
         EndProperty
         BeginProperty ListImage21 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmMain.frx":681F
            Key             =   "color"
         EndProperty
         BeginProperty ListImage22 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmMain.frx":6B38
            Key             =   "Bullet"
         EndProperty
         BeginProperty ListImage23 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmMain.frx":6E47
            Key             =   "date"
         EndProperty
         BeginProperty ListImage24 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmMain.frx":717B
            Key             =   "picture"
         EndProperty
         BeginProperty ListImage25 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmMain.frx":7497
            Key             =   "preview"
         EndProperty
         BeginProperty ListImage26 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmMain.frx":778B
            Key             =   "small"
         EndProperty
         BeginProperty ListImage27 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmMain.frx":C553
            Key             =   "cap"
         EndProperty
         BeginProperty ListImage28 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmMain.frx":11381
            Key             =   "Increase font size"
         EndProperty
         BeginProperty ListImage29 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmMain.frx":117D3
            Key             =   "Decrease font size"
         EndProperty
         BeginProperty ListImage30 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmMain.frx":11BE5
            Key             =   "Increase"
         EndProperty
         BeginProperty ListImage31 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmMain.frx":11F09
            Key             =   "Decrease"
         EndProperty
         BeginProperty ListImage32 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmMain.frx":1210D
            Key             =   "Decreasefont"
         EndProperty
      EndProperty
   End
   Begin SHDocVwCtl.WebBrowser Web 
      Height          =   7455
      Left            =   0
      TabIndex        =   39
      Top             =   1320
      Width           =   10695
      ExtentX         =   18865
      ExtentY         =   13150
      ViewMode        =   0
      Offline         =   0
      Silent          =   0
      RegisterAsBrowser=   0
      RegisterAsDropTarget=   1
      AutoArrange     =   0   'False
      NoClientEdge    =   0   'False
      AlignLeft       =   0   'False
      NoWebView       =   0   'False
      HideFileNames   =   0   'False
      SingleClick     =   0   'False
      SingleSelection =   0   'False
      NoFolders       =   0   'False
      Transparent     =   0   'False
      ViewID          =   "{0057D0E0-3573-11CF-AE69-08002B2E1262}"
      Location        =   "http:///"
   End
   Begin VB.Image Image6 
      Height          =   315
      Left            =   0
      Picture         =   "frmMain.frx":12431
      Top             =   960
      Width           =   10815
   End
   Begin VB.Image Image4 
      Height          =   315
      Left            =   0
      Picture         =   "frmMain.frx":1D5F7
      Top             =   960
      Width           =   14910
   End
   Begin VB.Image Image3 
      BorderStyle     =   1  'Fixed Single
      Height          =   6735
      Left            =   0
      Stretch         =   -1  'True
      Top             =   1320
      Width           =   10575
   End
   Begin VB.Menu mnuFile 
      Caption         =   "File"
      Begin VB.Menu mnunew 
         Caption         =   "New"
         Begin VB.Menu mnutextnew 
            Caption         =   "Text Document"
            Shortcut        =   ^N
         End
         Begin VB.Menu mnuhtmlnew 
            Caption         =   "HTML Document"
            Shortcut        =   ^H
         End
      End
      Begin VB.Menu mnuFileOpen 
         Caption         =   "Open ..."
         Shortcut        =   ^O
      End
      Begin VB.Menu mnuFileSave 
         Caption         =   "Save"
         Shortcut        =   ^S
      End
      Begin VB.Menu mnuFileSaveAs 
         Caption         =   "Save As ..."
      End
      Begin VB.Menu sep1 
         Caption         =   "-"
      End
      Begin VB.Menu mnuFilePageSetup 
         Caption         =   "Page Setup ..."
      End
      Begin VB.Menu mnuFilePrintPreview 
         Caption         =   "Print Preview"
      End
      Begin VB.Menu mnubrowser 
         Caption         =   "In Browser"
      End
      Begin VB.Menu mnuFilePrint 
         Caption         =   "Print ..."
         Shortcut        =   ^P
      End
      Begin VB.Menu sep2 
         Caption         =   "-"
      End
      Begin VB.Menu mnuclose 
         Caption         =   "Close"
      End
      Begin VB.Menu mnuFileexit 
         Caption         =   "Exit"
      End
   End
   Begin VB.Menu mnuEdit 
      Caption         =   "Edit"
      Begin VB.Menu mnuEditundo 
         Caption         =   "Undo"
         Shortcut        =   ^Z
      End
      Begin VB.Menu mnuredo 
         Caption         =   "Redo"
         Shortcut        =   ^Y
      End
      Begin VB.Menu sep3 
         Caption         =   "-"
      End
      Begin VB.Menu mnuselectall 
         Caption         =   "Select All"
         Shortcut        =   ^A
      End
      Begin VB.Menu mnuEditCut 
         Caption         =   "Cut"
         Shortcut        =   ^X
      End
      Begin VB.Menu mnuEditCopy 
         Caption         =   "Copy"
         Shortcut        =   ^C
      End
      Begin VB.Menu mnuEditPaste 
         Caption         =   "Paste"
      End
      Begin VB.Menu mnusep1 
         Caption         =   "-"
      End
      Begin VB.Menu mnufind 
         Caption         =   "Find"
         Shortcut        =   ^F
      End
      Begin VB.Menu mnufindnext 
         Caption         =   "Find Next ..."
      End
      Begin VB.Menu mnuReplace 
         Caption         =   "Replace"
      End
      Begin VB.Menu mnugoto 
         Caption         =   "Go To ..."
         Shortcut        =   ^G
      End
      Begin VB.Menu mnusep2 
         Caption         =   "-"
      End
      Begin VB.Menu mnuclear 
         Caption         =   "Clear"
      End
      Begin VB.Menu mnudelete 
         Caption         =   "Delete"
      End
   End
   Begin VB.Menu mnustyle 
      Caption         =   "Style"
      Begin VB.Menu mnufonts 
         Caption         =   "Font Style"
      End
      Begin VB.Menu mnusep4 
         Caption         =   "-"
      End
      Begin VB.Menu mnuwordeffects 
         Caption         =   "Word Effects"
         Begin VB.Menu mnuregular 
            Caption         =   "Regular"
         End
         Begin VB.Menu mnubold 
            Caption         =   "Bold"
            Shortcut        =   ^B
         End
         Begin VB.Menu mnuitlalic 
            Caption         =   "Italic"
            Shortcut        =   ^I
         End
         Begin VB.Menu mnuunderline 
            Caption         =   "Underline"
            Shortcut        =   ^U
         End
         Begin VB.Menu mnustrikethru 
            Caption         =   "Strikethru"
         End
      End
      Begin VB.Menu mnuchangecases 
         Caption         =   "Change cases"
         Begin VB.Menu mnuupper 
            Caption         =   "Uppercase"
            Shortcut        =   ^W
         End
         Begin VB.Menu mnulower 
            Caption         =   "Lowercase"
            Shortcut        =   ^L
         End
         Begin VB.Menu mnuinitcap 
            Caption         =   "InitialCaps"
            Shortcut        =   ^M
         End
      End
      Begin VB.Menu mnusep5 
         Caption         =   "-"
      End
      Begin VB.Menu mnufontclolor 
         Caption         =   "Font Color"
         Begin VB.Menu mnutextdocument 
            Caption         =   "Text Color"
         End
         Begin VB.Menu mnuhtmldocument 
            Caption         =   "HTML FontColor Code"
            Begin VB.Menu mnuhblack 
               Caption         =   "Black"
            End
            Begin VB.Menu mnuhblue 
               Caption         =   "Blue"
            End
            Begin VB.Menu mnuhblueviolet 
               Caption         =   "Blue violet"
            End
            Begin VB.Menu mnuhbrown 
               Caption         =   "Brown"
            End
            Begin VB.Menu mnuhcyan 
               Caption         =   "Cyan"
            End
            Begin VB.Menu mnuhdarkbrown 
               Caption         =   "Dark Brown"
            End
            Begin VB.Menu mnuhdarkgreen 
               Caption         =   "Dark Green"
            End
            Begin VB.Menu mnuhgold 
               Caption         =   "Gold"
            End
            Begin VB.Menu mnuhgreen 
               Caption         =   "Green"
            End
            Begin VB.Menu mnuhmagenta 
               Caption         =   "Magenta"
            End
            Begin VB.Menu mnuhorange 
               Caption         =   "Orange"
            End
            Begin VB.Menu mnuhred 
               Caption         =   "Red"
            End
            Begin VB.Menu mnuhwhite 
               Caption         =   "White"
            End
            Begin VB.Menu mnuhyellow 
               Caption         =   "Yellow"
            End
         End
      End
      Begin VB.Menu mnubackcolor 
         Caption         =   "Back Color"
         Begin VB.Menu mnutextback 
            Caption         =   "Text Back Color"
         End
         Begin VB.Menu mnuhtmlback 
            Caption         =   "HTML BackColor Code"
            Begin VB.Menu mnubblack 
               Caption         =   "Black"
            End
            Begin VB.Menu mnubblue 
               Caption         =   "Blue"
            End
            Begin VB.Menu mnubcyan 
               Caption         =   "Cyan"
            End
            Begin VB.Menu mnubgreen 
               Caption         =   "Green"
            End
            Begin VB.Menu mnu53 
               Caption         =   "Dark Blue"
            End
            Begin VB.Menu mnu54 
               Caption         =   "Dark Green"
            End
            Begin VB.Menu mnu55 
               Caption         =   "Dark Yellow"
            End
            Begin VB.Menu mnubred 
               Caption         =   "Red"
            End
            Begin VB.Menu mnubyellow 
               Caption         =   "Yellow"
            End
            Begin VB.Menu mnubwhite 
               Caption         =   "White"
            End
         End
      End
   End
   Begin VB.Menu mnuformat 
      Caption         =   "Format"
      Begin VB.Menu mnubullet 
         Caption         =   "Bullet"
      End
      Begin VB.Menu mnuallignment 
         Caption         =   "Allignment"
         Begin VB.Menu mnuleft 
            Caption         =   "Left"
         End
         Begin VB.Menu mnucenter 
            Caption         =   "Center"
         End
         Begin VB.Menu mnuright 
            Caption         =   "Right"
         End
      End
      Begin VB.Menu mnusep6 
         Caption         =   "-"
      End
      Begin VB.Menu mnuincreaseindent 
         Caption         =   "Increase Indent"
      End
      Begin VB.Menu mnureduceindent 
         Caption         =   "Reduce Indent"
      End
      Begin VB.Menu mnusep7 
         Caption         =   "-"
      End
      Begin VB.Menu mnususcript 
         Caption         =   "Super Script"
         Checked         =   -1  'True
         Shortcut        =   ^{F1}
      End
      Begin VB.Menu mnusubscript 
         Caption         =   "Sub Script"
         Checked         =   -1  'True
         Shortcut        =   ^{F2}
      End
      Begin VB.Menu mnunoscript 
         Caption         =   "No script"
         Checked         =   -1  'True
      End
   End
   Begin VB.Menu mnuinsert 
      Caption         =   "Insert"
      Begin VB.Menu mnutime 
         Caption         =   "Time"
         Begin VB.Menu mnultformat 
            Caption         =   "Long Format"
            Shortcut        =   {F4}
         End
         Begin VB.Menu mnustformat 
            Caption         =   "Short Format"
         End
      End
      Begin VB.Menu mnudate 
         Caption         =   "Date"
         Begin VB.Menu mnuldformat 
            Caption         =   "Long Format"
            Shortcut        =   {F5}
         End
         Begin VB.Menu mnusdformat 
            Caption         =   "Short Format"
         End
      End
      Begin VB.Menu mnudatetime 
         Caption         =   "Date/Time"
         Begin VB.Menu mnudtlong 
            Caption         =   "Long Format"
            Shortcut        =   {F6}
         End
         Begin VB.Menu mnudtshort 
            Caption         =   "Short Format"
         End
         Begin VB.Menu mnudmore 
            Caption         =   "More ..."
         End
      End
      Begin VB.Menu mnutableinsert 
         Caption         =   "Table"
      End
      Begin VB.Menu mnuday 
         Caption         =   "Day"
      End
      Begin VB.Menu mnusep10 
         Caption         =   "-"
      End
      Begin VB.Menu mnupic 
         Caption         =   "Picture"
      End
      Begin VB.Menu mnucliparts 
         Caption         =   "Clip arts"
      End
      Begin VB.Menu mnusymbols 
         Caption         =   "Symbol"
      End
      Begin VB.Menu mnusep11 
         Caption         =   "-"
      End
      Begin VB.Menu mnutextfile 
         Caption         =   "Text File"
      End
   End
   Begin VB.Menu mnutools 
      Caption         =   "Tools"
      Begin VB.Menu mnucalc 
         Caption         =   "Calculator"
      End
      Begin VB.Menu mnucalender 
         Caption         =   "Calender"
      End
      Begin VB.Menu mnuclock 
         Caption         =   "Clock"
      End
      Begin VB.Menu mnusep12 
         Caption         =   "-"
      End
      Begin VB.Menu mnuimageviewer 
         Caption         =   "Image Viewer"
      End
      Begin VB.Menu mnuplayer 
         Caption         =   "Audio Player"
      End
      Begin VB.Menu mnusep13 
         Caption         =   "-"
      End
      Begin VB.Menu mnuendecry 
         Caption         =   "Encrypt / Decrypt Text"
      End
      Begin VB.Menu mnusep1000 
         Caption         =   "-"
      End
      Begin VB.Menu mnuconverter 
         Caption         =   "Converter"
      End
      Begin VB.Menu mnusep14 
         Caption         =   "-"
      End
      Begin VB.Menu mnuwebbrowser 
         Caption         =   "Web Browser"
      End
      Begin VB.Menu sep100 
         Caption         =   "-"
      End
      Begin VB.Menu mnuToolsOptions 
         Caption         =   "Options"
         Begin VB.Menu mnuadd 
            Caption         =   "Add Tools"
            Shortcut        =   ^T
         End
         Begin VB.Menu mnuremove 
            Caption         =   "Remove Tools"
         End
      End
   End
   Begin VB.Menu mnuView 
      Caption         =   "View"
      Begin VB.Menu mnuwordcount 
         Caption         =   "Word Count"
      End
      Begin VB.Menu mnulinecount 
         Caption         =   "Line Count"
      End
      Begin VB.Menu mnusep15 
         Caption         =   "-"
      End
      Begin VB.Menu mnuViewToolBar 
         Caption         =   "Tool Bar"
         Checked         =   -1  'True
      End
      Begin VB.Menu mnuViewStatusBar 
         Caption         =   "Status Bar"
         Checked         =   -1  'True
      End
      Begin VB.Menu mnuformatbar 
         Caption         =   "Format Bar"
         Checked         =   -1  'True
      End
      Begin VB.Menu mnusep17 
         Caption         =   "-"
      End
      Begin VB.Menu mnudocpro 
         Caption         =   "Document Properties"
      End
   End
   Begin VB.Menu mnuscreen 
      Caption         =   "Screen"
      Begin VB.Menu mnunormal 
         Caption         =   "Normal"
         Shortcut        =   {F7}
      End
      Begin VB.Menu mnuminimized 
         Caption         =   "Minimized"
         Shortcut        =   {F8}
      End
      Begin VB.Menu mnumaximized 
         Caption         =   "Maximized"
         Shortcut        =   {F9}
      End
   End
   Begin VB.Menu mnuhelp 
      Caption         =   "Help"
      Begin VB.Menu mnutip 
         Caption         =   "Tip of the Day"
      End
      Begin VB.Menu mnuhelpcontents 
         Caption         =   "Contents"
         Shortcut        =   {F1}
      End
      Begin VB.Menu mnuabout 
         Caption         =   "About ..."
      End
   End
End
Attribute VB_Name = "frmMain1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Declare Function OSWinHelp% Lib "user32" Alias "WinHelpA" (ByVal hwnd&, ByVal HelpFile$, ByVal wCommand%, dwData As Any)
Public SwitchVal As Boolean
Dim GenresTypes
Dim Min As Integer
Dim Sec As Integer
Dim cmclick
Dim FileName As String
Dim FileOpen As Boolean
Dim CurrentTag As TagInfo
Private Declare Function SendMessage& Lib "user32" Alias "SendMessageA" (ByVal hwnd&, ByVal wMsg&, ByVal wParam&, lParam As Any)
Private Declare Function ReleaseCapture Lib "user32" () As Long
Const WM_NCLBUTTONDOWN = &HA1
Const HTCAPTION = 2
'Declare all needed variables
Dim BitD As Boolean, StartA%, StartB%, StartC%, StartD%, StartE%, StartF%, abc%, Abort As Boolean
Private Type TagInfo
    Tag As String * 3
    Songname As String * 30
    artist As String * 30
    album As String * 30
    year As String * 4
    comment As String * 30
    genre As String * 1
End Type

Dim savecheck
Dim nnn
Dim kkk
Dim lll
Dim a1 As String
Dim FLAGS
Dim unsaveddocument
Const PI = 3.14159
Dim saveddocument
Dim z1
Dim z2
Dim i As Double
Dim no1 As Double, ans As Double, no2 As Double, NO3 As Double, cnt As Double, cv As Double, cnt1 As Double
Dim op As String, op1 As String, flag As Double, A As Double, X As Double, nos As Double
Dim ah
Dim bh
Dim ch

Private Declare Function ShellExecute Lib _
   "shell32.dll" Alias "ShellExecuteA" _
   (ByVal hwnd As Long, _
   ByVal lpOperation As String, _
   ByVal lpFile As String, _
   ByVal lpParameters As String, _
   ByVal lpDirectory As String, _
   ByVal nShowCmd As Long) As Long
   Private SW_SHOWNORMAL
 
Private Sub mnuFileNew_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
StatusBar1.Panels(1).text = "New Blank TEXT Document....."
End Sub
Private Sub mnuFileOpen_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
StatusBar1.Panels(1).text = "Open TEXT Document....."
End Sub











'/*************************************** HTML Editoe (Insert Table) ***********************************
'/***************** Row * Column ************************
Private Sub Combo3_Click()
Select Case Combo3.list(Combo3.ListIndex)
Case "1 * 1"
 RTBox.SelText = RTBox.SelText + Chr(13) + Chr(10) + "<TABLE BORDER=1 bgcolor= Write the color-code for all cells  CELLPADDING=Enter Value  CELLSPACING=Enter Value HEIGHT=Enter Value in % WIDTH=Enter Value in % HSPACE=Enter value VSPACE=Enter Value>" + Chr(13) + Chr(10) + "<TR>" + Chr(13) + Chr(10) + "<TD bgcolor=Write the code of the cell's background>" + Chr(13) + Chr(10) + "<P>Write your Text here (FIRST COLUMN AND FIRST ROW)" + Chr(13) + Chr(10) + "</TD>" + "</TABLE>"

Case "1 * 2"
  RTBox.SelText = RTBox.SelText + "<TABLE BORDER=1 bgcolor=Write the color-code for all cells CELLPADDING=Enter Value  CELLSPACING=Enter Value HEIGHT=Enter Value in % WIDTH=Enter Value in % HSPACE=Enter value VSPACE=Enter Value>" + Chr(13) + Chr(10) + "<TR>" + Chr(13) + Chr(10) + "<TD bgcolor=Write the backgroung color of cell or leave it blank>" + Chr(13) + Chr(10) + "<P>Write your Text here (FIRST COLUMN)" + Chr(13) + Chr(10) + "</TD><TD bgcolor=Write the backgroung color of cell or leave it blank>" + Chr(13) + Chr(10) + "<P>Write your Text here (SECOND COLUMN)" + Chr(13) + Chr(10) + "</TD></TR>" + Chr(13) + Chr(10) + "</TABLE>"

Case "1 * 3"
  RTBox.SelText = RTBox.SelText + "<TABLE BORDER=1 bgcolor=Write the color-code for all cells CELLPADDING=Enter Value  CELLSPACING=Enter Value HEIGHT=Enter Value in % WIDTH=Enter Value in % HSPACE=Enter value VSPACE=Enter Value>" + Chr(13) + Chr(10) + "<TR>" + Chr(13) + Chr(10) + "<TD bgcolor=Write the backgroung color of cell or leave it blank>" + Chr(13) + Chr(10) + "<P>Write your Text here (FIRST COLUMN)" + Chr(13) + Chr(10) + "</TD><TD bgcolor=Write the backgroung color of cell or leave it blank>" + Chr(13) + Chr(10) + "<P>Write your Text here (SECOND COLUMN)" + Chr(13) + Chr(10) + "</TD><TD bgcolor=Write the backgroung color of cell or leave it blank>" + Chr(13) + Chr(10) + "<P>Write your Text here (THIRD COLUMN)" + Chr(13) + Chr(10) + "</TD></TR>" + Chr(13) + Chr(10) + "</TABLE>"

Case "1 * 4"
  RTBox.SelText = RTBox.SelText + "<TABLE BORDER=1 bgcolor=Write the color-code for all cells CELLPADDING=Enter Value  CELLSPACING=Enter Value HEIGHT=Enter Value in % WIDTH=Enter Value in % HSPACE=Enter value VSPACE=Enter Value>" + Chr(13) + Chr(10) + "<TR>" + Chr(13) + Chr(10) + "<TD bgcolor=Write the backgroung color of cell or leave it blank>" + Chr(13) + Chr(10) + "<P>Write your Text here (FIRST COLUMN)" + Chr(13) + Chr(10) + "</TD><TD bgcolor=Write the backgroung color of cell or leave it blank>" + Chr(13) + Chr(10) + "<P>Write your Text here (SECOND COLUMN)" + Chr(13) + Chr(10) + "</TD><TD bgcolor=Write the backgroung color of cell or leave it blank>" + Chr(13) + Chr(10) + "<P>Write your Text here (THIRD COLUMN)" + Chr(13) + Chr(10) + "</TD><TD bgcolor=Write the backgroung color of cell or leave it blank>" _
  + Chr(13) + Chr(10) + "<P>Write your Text here (FOURTH COLUMN)" + Chr(13) + Chr(10) + "</TD></TR>" + Chr(13) + Chr(10) + "</TABLE>"

Case "1 * 5"
  RTBox.SelText = RTBox.SelText + "<TABLE BORDER=1 bgcolor=Write the color-code for all cells CELLPADDING=Enter Value  CELLSPACING=Enter Value HEIGHT=Enter Value in % WIDTH=Enter Value in % HSPACE=Enter value VSPACE=Enter Value>" + Chr(13) + Chr(10) + "<TR>" + Chr(13) + Chr(10) + "<TD bgcolor=Write the backgroung color of cell or leave it blank>" + Chr(13) + Chr(10) + "<P>Write your Text here (FIRST COLUMN)" + Chr(13) + Chr(10) + "</TD><TD bgcolor=Write the backgroung color of cell or leave it blank>" + Chr(13) + Chr(10) + "<P>Write your Text here (SECOND COLUMN)" + Chr(13) + Chr(10) + "</TD><TD bgcolor=Write the backgroung color of cell or leave it blank>" + Chr(13) + Chr(10) + "<P>Write your Text here (THIRD COLUMN)" + Chr(13) + Chr(10) + "</TD><TD bgcolor=Write the backgroung color of cell or leave it blank>" _
  + Chr(13) + Chr(10) + "<P>Write your Text here (FOURTH COLUMN)" + Chr(13) + Chr(10) + "</TD><TD bgcolor=Write the backgroung color of cell or leave it blank>" + Chr(13) + Chr(10) + "<P>Write your Text here (FIFTH COLUMN)" + Chr(13) + Chr(10) + "</TD></TR>" + Chr(13) + Chr(10) + "</TABLE>"

Case "2 * 1"
  RTBox.SelText = RTBox.SelText + "<TABLE BORDER=1 bgcolor=Write the color-code for all cells CELLPADDING=Enter Value  CELLSPACING=Enter Value HEIGHT=Enter Value in % WIDTH=Enter Value in % HSPACE=Enter value VSPACE=Enter Value>" + Chr(13) + Chr(10) + "<TD bgcolor=Write the backgroung color of cell or leave it blank>" + Chr(13) + Chr(10) + "<P>Write your Text here (FIRST COLUMN)" + Chr(13) + Chr(10) + "</TD>" + Chr(13) + Chr(10) + "<TR></TR>" + Chr(13) + Chr(10) + "<TD bgcolor=Write the backgroung color of cell or leave it blank>" + Chr(13) + Chr(10) + "<P>Write your Text here (FIRST COLUMN)" + Chr(13) + Chr(10) + "</TD>" + Chr(13) + Chr(10) + "</TABLE>"

Case "2 * 2"
   RTBox.SelText = RTBox.SelText + "<TABLE BORDER=1 bgcolor=Write the color-code for all cells CELLPADDING=Enter Value  CELLSPACING=Enter Value HEIGHT=Enter Value in % WIDTH=Enter Value in % HSPACE=Enter value VSPACE=Enter Value>" + Chr(13) + Chr(10) + "<TR>" + Chr(13) + Chr(10) + "<TD bgcolor=Write the backgroung color of cell or leave it blank>" + Chr(13) + Chr(10) + "<P>Write your Text here (FIRST COLUMN)" + Chr(13) + Chr(10) + "</TD><TD bgcolor=Write the backgroung color of cell or leave it blank>" + Chr(13) + Chr(10) + "<P>Write your Text here (SECOND COLUMN)" + Chr(13) + Chr(10) + "</TD></TR>" + Chr(13) + Chr(10) _
+ "<TR>" + Chr(13) + Chr(10) + "<TD bgcolor=Write the backgroung color of cell or leave it blank>" + Chr(13) + Chr(10) + "<P>Write your Text here (FIRST COLUMN)" + Chr(13) + Chr(10) + "</TD><TD bgcolor=Write the backgroung color of cell or leave it blank>" + Chr(13) + Chr(10) + "<P>Write your Text here (SECOND COLUMN)" + Chr(13) + Chr(10) + "</TD></TR>" + Chr(13) + Chr(10) + "</TABLE>"

Case "2 * 3"
  RTBox.SelText = RTBox.SelText + "<TABLE BORDER=1 bgcolor=Write the color-code for all cells CELLPADDING=Enter Value  CELLSPACING=Enter Value HEIGHT=Enter Value in % WIDTH=Enter Value in % HSPACE=Enter value VSPACE=Enter Value>" + Chr(13) + Chr(10) + "<TR>" + Chr(13) + Chr(10) + "<TD bgcolor=Write the backgroung color of cell or leave it blank>" + Chr(13) + Chr(10) + "<P>Write your Text here (FIRST COLUMN)" + Chr(13) + Chr(10) + "</TD><TD bgcolor=Write the backgroung color of cell or leave it blank>" + Chr(13) + Chr(10) + "<P>Write your Text here (SECOND COLUMN)" + Chr(13) + Chr(10) + "</TD><TD bgcolor=Write the backgroung color of cell or leave it blank>" + Chr(13) + Chr(10) + "<P>Write your Text here (THIRD COLUMN)" + Chr(13) + Chr(10) + "</TD></TR>" + Chr(13) + Chr(10) + _
"<TR>" + Chr(13) + Chr(10) + "<TD bgcolor=Write the backgroung color of cell or leave it blank>" + Chr(13) + Chr(10) + "<P>Write your Text here (FIRST COLUMN)" + Chr(13) + Chr(10) + "</TD><TD bgcolor=Write the backgroung color of cell or leave it blank>" + Chr(13) + Chr(10) + "<P>Write your Text here (SECOND COLUMN)" + Chr(13) + Chr(10) + "</TD><TD bgcolor=Write the backgroung color of cell or leave it blank>" + Chr(13) + Chr(10) + "<P>Write your Text here (THIRD COLUMN)" + Chr(13) + Chr(10) + "</TD></TR>" + Chr(13) + Chr(10) + "</TABLE>"

Case "2 * 4"
  RTBox.SelText = RTBox.SelText + "<TABLE BORDER=1 bgcolor=Write the color-code for all cells CELLPADDING=Enter Value  CELLSPACING=Enter Value HEIGHT=Enter Value in % WIDTH=Enter Value in % HSPACE=Enter value VSPACE=Enter Value>" + Chr(13) + Chr(10) + "<TR>" + Chr(13) + Chr(10) + "<TD bgcolor=Write the backgroung color of cell or leave it blank>" + Chr(13) + Chr(10) + "<P>Write your Text here (FIRST COLUMN)" + Chr(13) + Chr(10) + "</TD><TD bgcolor=Write the backgroung color of cell or leave it blank>" + Chr(13) + Chr(10) + "<P>Write your Text here (SECOND COLUMN)" + Chr(13) + Chr(10) + "</TD><TD bgcolor=Write the backgroung color of cell or leave it blank>" + Chr(13) + Chr(10) + "<P>Write your Text here (THIRD COLUMN)" + Chr(13) + Chr(10) + "</TD><TD bgcolor=Write the backgroung color of cell or leave it blank>" _
  + Chr(13) + Chr(10) + "<P>Write your Text here (FOURTH COLUMN)" + Chr(13) + Chr(10) + "</TD></TR>" + Chr(13) + Chr(10) + "<TR>" + Chr(13) + Chr(10) + "<TD bgcolor=Write the backgroung color of cell or leave it blank>" + Chr(13) + Chr(10) + "<P>Write your Text here (FIRST COLUMN)" + Chr(13) + Chr(10) + "</TD><TD bgcolor=Write the backgroung color of cell or leave it blank>" + Chr(13) + Chr(10) + "<P>Write your Text here (SECOND COLUMN)" + Chr(13) + Chr(10) + "</TD><TD bgcolor=Write the backgroung color of cell or leave it blank>" + Chr(13) + Chr(10) + "<P>Write your Text here (THIRD COLUMN)" + Chr(13) + Chr(10) + "</TD><TD bgcolor=Write the backgroung color of cell or leave it blank>" _
  + Chr(13) + Chr(10) + "<P>Write your Text here (FOURTH COLUMN)" + Chr(13) + Chr(10) + "</TD></TR>" + Chr(13) + Chr(10) + "</TABLE>"

Case "2 * 5"
   RTBox.SelText = RTBox.SelText + "<TABLE BORDER=1 bgcolor=Write the color-code for all cells CELLPADDING=Enter Value  CELLSPACING=Enter Value HEIGHT=Enter Value in % WIDTH=Enter Value in % HSPACE=Enter value VSPACE=Enter Value>" + Chr(13) + Chr(10) + "<TR>" + Chr(13) + Chr(10) + "<TD bgcolor=Write the backgroung color of cell or leave it blank>" + Chr(13) + Chr(10) + "<P>Write your Text here (FIRST COLUMN)" + Chr(13) + Chr(10) + "</TD><TD bgcolor=Write the backgroung color of cell or leave it blank>" + Chr(13) + Chr(10) + "<P>Write your Text here (SECOND COLUMN)" + Chr(13) + Chr(10) + "</TD><TD bgcolor=Write the backgroung color of cell or leave it blank>" + Chr(13) + Chr(10) + "<P>Write your Text here (THIRD COLUMN)" + Chr(13) + Chr(10) + "</TD><TD bgcolor=Write the backgroung color of cell or leave it blank>" _
  + Chr(13) + Chr(10) + "<P>Write your Text here (FOURTH COLUMN)" + Chr(13) + Chr(10) + "</TD><TD bgcolor=Write the backgroung color of cell or leave it blank>" + Chr(13) + Chr(10) + "<P>Write your Text here (FIFTH COLUMN)" + Chr(13) + Chr(10) + "</TD></TR>" + Chr(13) + Chr(10) + "<TR>" + Chr(13) + Chr(10) + "<TD bgcolor=Write the backgroung color of cell or leave it blank>" + Chr(13) + Chr(10) + "<P>Write your Text here (FIRST COLUMN)" + Chr(13) + Chr(10) + "</TD><TD bgcolor=Write the backgroung color of cell or leave it blank>" + Chr(13) + Chr(10) + "<P>Write your Text here (SECOND COLUMN)" + Chr(13) + Chr(10) + "</TD><TD bgcolor=Write the backgroung color of cell or leave it blank>" + Chr(13) + Chr(10) + "<P>Write your Text here (THIRD COLUMN)" + Chr(13) + Chr(10) + "</TD><TD bgcolor=Write the backgroung color of cell or leave it blank>" _
  + Chr(13) + Chr(10) + "<P>Write your Text here (FOURTH COLUMN)" + Chr(13) + Chr(10) + "</TD><TD bgcolor=Write the backgroung color of cell or leave it blank>" + Chr(13) + Chr(10) + "<P>Write your Text here (FIFTH COLUMN)" + Chr(13) + Chr(10) + "</TD></TR>" + Chr(13) + Chr(10) + _
"</TABLE>"

Case "3 * 1"
  RTBox.SelText = RTBox.SelText + "<TABLE BORDER=1 bgcolor=Write the color-code for all cells CELLPADDING=Enter Value  CELLSPACING=Enter Value HEIGHT=Enter Value in % WIDTH=Enter Value in % HSPACE=Enter value VSPACE=Enter Value>" + Chr(13) + Chr(10) + "<TD bgcolor=Write the backgroung color of cell or leave it blank>" + Chr(13) + Chr(10) + "<P>Write your Text here ( FIRST COLUMN)" + Chr(13) + Chr(10) + "</TD>" + Chr(13) + Chr(10) + "<TR></TR>" + Chr(13) + Chr(10) + "<TD bgcolor=Write the backgroung color of cell or leave it blank>" + Chr(13) + Chr(10) + "<P>Write your Text here (FIRST COLUMN)" + Chr(13) + Chr(10) + "</TD>" + Chr(13) + Chr(10) + "<TR></TR>" + Chr(13) + Chr(10) + "<TD bgcolor=Write the backgroung color of cell or leave it blank>" + Chr(13) + Chr(10) + "<P>Write your Text here (FIRST COLUMN)" + Chr(13) + Chr(10) + "</TD>" + Chr(13) + Chr(10) + "</TABLE>"

Case "3 * 2"
  RTBox.SelText = RTBox.SelText + "<TABLE BORDER=1 bgcolor=Write the color-code for all cells CELLPADDING=Enter Value  CELLSPACING=Enter Value HEIGHT=Enter Value in % WIDTH=Enter Value in % HSPACE=Enter value VSPACE=Enter Value>" + Chr(13) + Chr(10) + "<TR>" + Chr(13) + Chr(10) + "<TD bgcolor=Write the backgroung color of cell or leave it blank>" + Chr(13) + Chr(10) + "<P>Write your Text here (FIRST COLUMN)" + Chr(13) + Chr(10) + "</TD><TD bgcolor=Write the backgroung color of cell or leave it blank>" + Chr(13) + Chr(10) + "<P>Write your Text here (SECOND COLUMN)" + Chr(13) + Chr(10) + "</TD></TR>" + Chr(13) + Chr(10) _
+ "<TR>" + Chr(13) + Chr(10) + "<TD bgcolor=Write the backgroung color of cell or leave it blank>" + Chr(13) + Chr(10) + "<P>Write your Text here (FIRST COLUMN)" + Chr(13) + Chr(10) + "</TD><TD bgcolor=Write the backgroung color of cell or leave it blank>" + Chr(13) + Chr(10) + "<P>Write your Text here (SECOND COLUMN)" + Chr(13) + Chr(10) + "</TD></TR>" + Chr(13) + Chr(10) + "<TR>" + Chr(13) + Chr(10) + "<TD bgcolor=Write the backgroung color of cell or leave it blank>" + Chr(13) + Chr(10) + "<P>Write your Text here (FIRST COLUMN)" + Chr(13) + Chr(10) + "</TD><TD bgcolor=Write the backgroung color of cell or leave it blank>" + Chr(13) + Chr(10) + "<P>Write your Text here (SECOND COLUMN)" + Chr(13) + Chr(10) + "</TD></TR>" + Chr(13) + Chr(10) + "</TABLE>"

Case "3 * 3"
  RTBox.SelText = RTBox.SelText + "<TABLE BORDER=1 bgcolor=Write the color-code for all cells CELLPADDING=Enter Value  CELLSPACING=Enter Value HEIGHT=Enter Value in % WIDTH=Enter Value in % HSPACE=Enter value VSPACE=Enter Value>" + Chr(13) + Chr(10) + "<TR>" + Chr(13) + Chr(10) + "<TD bgcolor=Write the backgroung color of cell or leave it blank>" + Chr(13) + Chr(10) + "<P>Write your Text here (FIRST COLUMN)" + Chr(13) + Chr(10) + "</TD><TD bgcolor=Write the backgroung color of cell or leave it blank>" + Chr(13) + Chr(10) + "<P>Write your Text here (SECOND COLUMN)" + Chr(13) + Chr(10) + "</TD><TD bgcolor=Write the backgroung color of cell or leave it blank>" + Chr(13) + Chr(10) + "<P>Write your Text here (THIRD COLUMN)" + Chr(13) + Chr(10) + "</TD></TR>" + Chr(13) + Chr(10) + _
"<TR>" + Chr(13) + Chr(10) + "<TD bgcolor=Write the backgroung color of cell or leave it blank>" + Chr(13) + Chr(10) + "<P>Write your Text here (FIRST COLUMN)" + Chr(13) + Chr(10) + "</TD><TD bgcolor=Write the backgroung color of cell or leave it blank>" + Chr(13) + Chr(10) + "<P>Write your Text here (SECOND COLUMN)" + Chr(13) + Chr(10) + "</TD><TD bgcolor=Write the backgroung color of cell or leave it blank>" + Chr(13) + Chr(10) + "<P>Write your Text here (THIRD COLUMN)" + Chr(13) + Chr(10) + "</TD></TR>" + Chr(13) + Chr(10) + _
"<TR>" + Chr(13) + Chr(10) + "<TD bgcolor=Write the backgroung color of cell or leave it blank>" + Chr(13) + Chr(10) + "<P>Write your Text here (FIRST COLUMN)" + Chr(13) + Chr(10) + "</TD><TD bgcolor=Write the backgroung color of cell or leave it blank>" + Chr(13) + Chr(10) + "<P>Write your Text here (SECOND  COLUMN)" + Chr(13) + Chr(10) + "</TD><TD bgcolor=Write the backgroung color of cell or leave it blank>" + Chr(13) + Chr(10) + "<P>Write your Text here (THIRD COLUMN)" + Chr(13) + Chr(10) + "</TD></TR>" + Chr(13) + Chr(10) + "</TABLE>"

Case "3 * 4"
  RTBox.SelText = RTBox.SelText + "<TABLE BORDER=1 bgcolor=Write the color-code for all cells CELLPADDING=Enter Value  CELLSPACING=Enter Value HEIGHT=Enter Value in % WIDTH=Enter Value in % HSPACE=Enter value VSPACE=Enter Value>" + Chr(13) + Chr(10) + "<TR>" + Chr(13) + Chr(10) + "<TD bgcolor=Write the backgroung color of cell or leave it blank>" + Chr(13) + Chr(10) + "<P>Write your Text here (FIRST COLUMN)" + Chr(13) + Chr(10) + "</TD><TD bgcolor=Write the backgroung color of cell or leave it blank>" + Chr(13) + Chr(10) + "<P>Write your Text here (SECOND COLUMN)" + Chr(13) + Chr(10) + "</TD><TD bgcolor=Write the backgroung color of cell or leave it blank>" + Chr(13) + Chr(10) + "<P>Write your Text here (THIRD COLUMN)" + Chr(13) + Chr(10) + "</TD><TD bgcolor=Write the backgroung color of cell or leave it blank>" _
  + Chr(13) + Chr(10) + "<P>Write your Text here (FOURTH COLUMN)" + Chr(13) + Chr(10) + "</TD></TR>" + Chr(13) + Chr(10) + "<TR>" + Chr(13) + Chr(10) + "<TD bgcolor=Write the backgroung color of cell or leave it blank>" + Chr(13) + Chr(10) + "<P>Write your Text here (FIRST COLUMN)" + Chr(13) + Chr(10) + "</TD><TD bgcolor=Write the backgroung color of cell or leave it blank>" + Chr(13) + Chr(10) + "<P>Write your Text here (SECOND COLUMN)" + Chr(13) + Chr(10) + "</TD><TD bgcolor=Write the backgroung color of cell or leave it blank>" + Chr(13) + Chr(10) + "<P>Write your Text here (THIRD COLUMN)" + Chr(13) + Chr(10) + "</TD><TD bgcolor=Write the backgroung color of cell or leave it blank>" _
  + Chr(13) + Chr(10) + "<P>Write your Text here (FOURTH COLUMN)" + Chr(13) + Chr(10) + "</TD></TR>" + Chr(13) + Chr(10) + "<TR>" + Chr(13) + Chr(10) + "<TD bgcolor=Write the backgroung color of cell or leave it blank>" + Chr(13) + Chr(10) + "<P>Write your Text here ( FIRST COLUMN)" + Chr(13) + Chr(10) + "</TD><TD bgcolor=Write the backgroung color of cell or leave it blank>" + Chr(13) + Chr(10) + "<P>Write your Text here (SECOND COLUMN)" + Chr(13) + Chr(10) + "</TD><TD bgcolor=Write the backgroung color of cell or leave it blank>" + Chr(13) + Chr(10) + "<P>Write your Text here (THIRD  COLUMN)" + Chr(13) + Chr(10) + "</TD><TD bgcolor=Write the backgroung color of cell or leave it blank>" _
  + Chr(13) + Chr(10) + "<P>Write your Text here (FOURTH COLUMN)" + Chr(13) + Chr(10) + "</TD></TR>" + Chr(13) + Chr(10) + _
"</TABLE>"

Case "3 * 5"
    RTBox.SelText = RTBox.SelText + "<TABLE BORDER=1 bgcolor=Write the color-code for all cells CELLPADDING=Enter Value  CELLSPACING=Enter Value HEIGHT=Enter Value in % WIDTH=Enter Value in % HSPACE=Enter value VSPACE=Enter Value>" + Chr(13) + Chr(10) + "<TR>" + Chr(13) + Chr(10) + "<TD bgcolor=Write the backgroung color of cell or leave it blank>" + Chr(13) + Chr(10) + "<P>Write your Text here (FIRST COLUMN)" + Chr(13) + Chr(10) + "</TD><TD bgcolor=Write the backgroung color of cell or leave it blank>" + Chr(13) + Chr(10) + "<P>Write your Text here (SECOND COLUMN)" + Chr(13) + Chr(10) + "</TD><TD bgcolor=Write the backgroung color of cell or leave it blank>" + Chr(13) + Chr(10) + "<P>Write your Text here (THIRD COLUMN)" + Chr(13) + Chr(10) + "</TD><TD bgcolor=Write the backgroung color of cell or leave it blank>" _
  + Chr(13) + Chr(10) + "<P>Write your Text here (FOURTH COLUMN)" + Chr(13) + Chr(10) + "</TD><TD bgcolor=Write the backgroung color of cell or leave it blank>" + Chr(13) + Chr(10) + "<P>Write your Text here (FIFTH COLUMN)" + Chr(13) + Chr(10) + "</TD></TR>" + Chr(13) + Chr(10) + "<TR>" + Chr(13) + Chr(10) + "<TD bgcolor=Write the backgroung color of cell or leave it blank>" + Chr(13) + Chr(10) + "<P>Write your Text here (FIRST COLUMN)" + Chr(13) + Chr(10) + "</TD><TD bgcolor=Write the backgroung color of cell or leave it blank>" + Chr(13) + Chr(10) + "<P>Write your Text here (SECOND COLUMN)" + Chr(13) + Chr(10) + "</TD><TD bgcolor=Write the backgroung color of cell or leave it blank>" + Chr(13) + Chr(10) + "<P>Write your Text here (THIRD COLUMN)" + Chr(13) + Chr(10) + "</TD><TD bgcolor=Write the backgroung color of cell or leave it blank>" _
  + Chr(13) + Chr(10) + "<P>Write your Text here (FOURTH COLUMN)" + Chr(13) + Chr(10) + "</TD><TD bgcolor=Write the backgroung color of cell or leave it blank>" + Chr(13) + Chr(10) + "<P>Write your Text here (FIFTH COLUMN)" + Chr(13) + Chr(10) + "</TD></TR>" + Chr(13) + Chr(10) + _
  "<TR>" + Chr(13) + Chr(10) + "<TD bgcolor=Write the backgroung color of cell or leave it blank>" + Chr(13) + Chr(10) + "<P>Write your Text here (FIRST COLUMN)" + Chr(13) + Chr(10) + "</TD><TD bgcolor=Write the backgroung color of cell or leave it blank>" + Chr(13) + Chr(10) + "<P>Write your Text here (SECOND COLUMN)" + Chr(13) + Chr(10) + "</TD><TD bgcolor=Write the backgroung color of cell or leave it blank>" + Chr(13) + Chr(10) + "<P>Write your Text here (THIRD COLUMN)" + Chr(13) + Chr(10) + "</TD><TD bgcolor=Write the backgroung color of cell or leave it blank>" _
  + Chr(13) + Chr(10) + "<P>Write your Text here (FOURTH COLUMN)" + Chr(13) + Chr(10) + "</TD><TD bgcolor=Write the backgroung color of cell or leave it blank>" + Chr(13) + Chr(10) + "<P>Write your Text here (FIFTH COLUMN)" + Chr(13) + Chr(10) + "</TD></TR>" + Chr(13) + Chr(10) + _
  "</TABLE>"
  
Case "4 * 1"
  RTBox.SelText = RTBox.SelText + "<TABLE BORDER=1 bgcolor=Write the color-code for all cells CELLPADDING=Enter Value  CELLSPACING=Enter Value HEIGHT=Enter Value in % WIDTH=Enter Value in % HSPACE=Enter value VSPACE=Enter Value>" + Chr(13) + Chr(10) + "<TD bgcolor=Write the backgroung color of cell or leave it blank>" + Chr(13) + Chr(10) + "<P>Write your Text here ( FIRST ROW)" + Chr(13) + Chr(10) + "</TD>" + Chr(13) + Chr(10) + "<TR></TR>" + Chr(13) + Chr(10) + _
  "<TD bgcolor=Write the backgroung color of cell or leave it blank>" + Chr(13) + Chr(10) + "<P>Write your Text here (SECOND ROW)" + Chr(13) + Chr(10) + "</TD>" + Chr(13) + Chr(10) + "<TR></TR>" + Chr(13) + Chr(10) + "<TD bgcolor=Write the backgroung color of cell or leave it blank>" + Chr(13) + Chr(10) + "<P>Write your Text here ( THIRD ROW)" + Chr(13) + Chr(10) + "</TD>" + Chr(13) + Chr(10) + "<TR></TR>" + Chr(13) + Chr(10) + "<TD bgcolor=Write the backgroung color of cell or leave it blank>" + Chr(13) + Chr(10) + "<P>Write your Text here (FOURTH ROW)" + Chr(13) + Chr(10) + "</TD>" + Chr(13) + Chr(10) + "</TABLE>"

Case "4 * 2"
  RTBox.SelText = RTBox.SelText + "<TABLE BORDER=1 bgcolor=Write the color-code for all cells CELLPADDING=Enter Value  CELLSPACING=Enter Value HEIGHT=Enter Value in % WIDTH=Enter Value in % HSPACE=Enter value VSPACE=Enter Value>" + Chr(13) + Chr(10) + "<TR>" + Chr(13) + Chr(10) + "<TD bgcolor=Write the backgroung color of cell or leave it blank>" + Chr(13) + Chr(10) + "<P>Write your Text here (FIRST COLUMN)" + Chr(13) + Chr(10) + "</TD><TD bgcolor=Write the backgroung color of cell or leave it blank>" + Chr(13) + Chr(10) + "<P>Write your Text here (SECOND COLUMN)" + Chr(13) + Chr(10) + "</TD></TR>" + Chr(13) + Chr(10) _
+ "<TR>" + Chr(13) + Chr(10) + "<TD bgcolor=Write the backgroung color of cell or leave it blank>" + Chr(13) + Chr(10) + "<P>Write your Text here (FIRST COLUMN)" + Chr(13) + Chr(10) + "</TD><TD bgcolor=Write the backgroung color of cell or leave it blank>" + Chr(13) + Chr(10) + "<P>Write your Text here (SECOND COLUMN)" + Chr(13) + Chr(10) + "</TD></TR>" + Chr(13) + Chr(10) + "<TR>" + Chr(13) + Chr(10) + "<TD bgcolor=Write the backgroung color of cell or leave it blank>" + Chr(13) + Chr(10) + "<P>Write your Text here (FIRST COLUMN)" + Chr(13) + Chr(10) + "</TD><TD bgcolor=Write the backgroung color of cell or leave it blank>" + Chr(13) + Chr(10) + "<P>Write your Text here (SECOND COLUMN)" + Chr(13) + Chr(10) + "</TD></TR>" + Chr(13) + Chr(10) + _
 "<TR>" + Chr(13) + Chr(10) + "<TD bgcolor=Write the backgroung color of cell or leave it blank>" + Chr(13) + Chr(10) + "<P>Write your Text here (FIRST COLUMN)" + Chr(13) + Chr(10) + "</TD><TD bgcolor=Write the backgroung color of cell or leave it blank>" + Chr(13) + Chr(10) + "<P>Write your Text here (SECOND COLUMN)" + Chr(13) + Chr(10) + "</TD></TR>" + Chr(13) + Chr(10) + "</TABLE>"

Case "4 * 3"
RTBox.SelText = RTBox.SelText + "<TABLE BORDER=1 bgcolor=Write the color-code for all cells CELLPADDING=Enter Value  CELLSPACING=Enter Value HEIGHT=Enter Value in % WIDTH=Enter Value in % HSPACE=Enter value VSPACE=Enter Value>" + Chr(13) + Chr(10) + "<TR>" + Chr(13) + Chr(10) + "<TD bgcolor=Write the backgroung color of cell or leave it blank>" + Chr(13) + Chr(10) + "<P>Write your Text here (FIRST COLUMN)" + Chr(13) + Chr(10) + "</TD><TD bgcolor=Write the backgroung color of cell or leave it blank>" + Chr(13) + Chr(10) + "<P>Write your Text here (SECOND COLUMN)" + Chr(13) + Chr(10) + "</TD><TD bgcolor=Write the backgroung color of cell or leave it blank>" + Chr(13) + Chr(10) + "<P>Write your Text here (THIRD COLUMN)" + Chr(13) + Chr(10) + "</TD></TR>" + Chr(13) + Chr(10) + _
"<TR>" + Chr(13) + Chr(10) + "<TD bgcolor=Write the backgroung color of cell or leave it blank>" + Chr(13) + Chr(10) + "<P>Write your Text here (FIRST COLUMN)" + Chr(13) + Chr(10) + "</TD><TD bgcolor=Write the backgroung color of cell or leave it blank>" + Chr(13) + Chr(10) + "<P>Write your Text here (SECOND COLUMN)" + Chr(13) + Chr(10) + "</TD><TD bgcolor=Write the backgroung color of cell or leave it blank>" + Chr(13) + Chr(10) + "<P>Write your Text here (THIRD COLUMN)" + Chr(13) + Chr(10) + "</TD></TR>" + Chr(13) + Chr(10) + _
"<TR>" + Chr(13) + Chr(10) + "<TD bgcolor=Write the backgroung color of cell or leave it blank>" + Chr(13) + Chr(10) + "<P>Write your Text here (FIRST COLUMN)" + Chr(13) + Chr(10) + "</TD><TD bgcolor=Write the backgroung color of cell or leave it blank>" + Chr(13) + Chr(10) + "<P>Write your Text here (SECOND  COLUMN)" + Chr(13) + Chr(10) + "</TD><TD bgcolor=Write the backgroung color of cell or leave it blank>" + Chr(13) + Chr(10) + "<P>Write your Text here (THIRD COLUMN)" + Chr(13) + Chr(10) + "</TD></TR>" + Chr(13) + Chr(10) + _
"<TR>" + Chr(13) + Chr(10) + "<TD bgcolor=Write the backgroung color of cell or leave it blank>" + Chr(13) + Chr(10) + "<P>Write your Text here (FIRST COLUMN)" + Chr(13) + Chr(10) + "</TD><TD bgcolor=Write the backgroung color of cell or leave it blank>" + Chr(13) + Chr(10) + "<P>Write your Text here (SECOND  COLUMN)" + Chr(13) + Chr(10) + "</TD><TD bgcolor=Write the backgroung color of cell or leave it blank>" + Chr(13) + Chr(10) + "<P>Write your Text here (THIRD COLUMN)" + Chr(13) + Chr(10) + "</TD></TR>" + Chr(13) + Chr(10) + "</TABLE>"

Case "4 * 4"
  RTBox.SelText = RTBox.SelText + "<TABLE BORDER=1 bgcolor=Write the color-code for all cells CELLPADDING=Enter Value  CELLSPACING=Enter Value HEIGHT=Enter Value in % WIDTH=Enter Value in % HSPACE=Enter value VSPACE=Enter Value>" + Chr(13) + Chr(10) + "<TR>" + Chr(13) + Chr(10) + "<TD bgcolor=Write the backgroung color of cell or leave it blank>" + Chr(13) + Chr(10) + "<P>Write your Text here (FIRST COLUMN)" + Chr(13) + Chr(10) + "</TD><TD bgcolor=Write the backgroung color of cell or leave it blank>" + Chr(13) + Chr(10) + "<P>Write your Text here (SECOND COLUMN)" + Chr(13) + Chr(10) + "</TD><TD bgcolor=Write the backgroung color of cell or leave it blank>" + Chr(13) + Chr(10) + "<P>Write your Text here (THIRD COLUMN)" + Chr(13) + Chr(10) + "</TD><TD bgcolor=Write the backgroung color of cell or leave it blank>" _
  + Chr(13) + Chr(10) + "<P>Write your Text here (FOURTH COLUMN)" + Chr(13) + Chr(10) + "</TD></TR>" + Chr(13) + Chr(10) + "<TR>" + Chr(13) + Chr(10) + "<TD bgcolor=Write the backgroung color of cell or leave it blank>" + Chr(13) + Chr(10) + "<P>Write your Text here (FIRST COLUMN)" + Chr(13) + Chr(10) + "</TD><TD bgcolor=Write the backgroung color of cell or leave it blank>" + Chr(13) + Chr(10) + "<P>Write your Text here (SECOND COLUMN)" + Chr(13) + Chr(10) + "</TD><TD bgcolor=Write the backgroung color of cell or leave it blank>" + Chr(13) + Chr(10) + "<P>Write your Text here (THIRD COLUMN)" + Chr(13) + Chr(10) + "</TD><TD bgcolor=Write the backgroung color of cell or leave it blank>" _
  + Chr(13) + Chr(10) + "<P>Write your Text here (FOURTH COLUMN)" + Chr(13) + Chr(10) + "</TD></TR>" + Chr(13) + Chr(10) + "<TR>" + Chr(13) + Chr(10) + "<TD bgcolor=Write the backgroung color of cell or leave it blank>" + Chr(13) + Chr(10) + "<P>Write your Text here ( FIRST COLUMN)" + Chr(13) + Chr(10) + "</TD><TD bgcolor=Write the backgroung color of cell or leave it blank>" + Chr(13) + Chr(10) + "<P>Write your Text here (SECOND COLUMN)" + Chr(13) + Chr(10) + "</TD><TD bgcolor=Write the backgroung color of cell or leave it blank>" + Chr(13) + Chr(10) + "<P>Write your Text here (THIRD  COLUMN)" + Chr(13) + Chr(10) + "</TD><TD bgcolor=Write the backgroung color of cell or leave it blank>" _
  + Chr(13) + Chr(10) + "<P>Write your Text here (FOURTH COLUMN)" + Chr(13) + Chr(10) + "</TD></TR>" + Chr(13) + Chr(10) + _
  "<TR>" + Chr(13) + Chr(10) + "<TD bgcolor=Write the backgroung color of cell or leave it blank>" + Chr(13) + Chr(10) + "<P>Write your Text here ( FIRST COLUMN)" + Chr(13) + Chr(10) + "</TD><TD bgcolor=Write the backgroung color of cell or leave it blank>" + Chr(13) + Chr(10) + "<P>Write your Text here (SECOND COLUMN)" + Chr(13) + Chr(10) + "</TD><TD bgcolor=Write the backgroung color of cell or leave it blank>" + Chr(13) + Chr(10) + "<P>Write your Text here (THIRD  COLUMN)" + Chr(13) + Chr(10) + "</TD><TD bgcolor=Write the backgroung color of cell or leave it blank>" _
  + Chr(13) + Chr(10) + "<P>Write your Text here (FOURTH COLUMN)" + Chr(13) + Chr(10) + "</TD></TR>" + Chr(13) + Chr(10) + _
  "</TABLE>"

Case "4 * 5"
      RTBox.SelText = RTBox.SelText + "<TABLE BORDER=1 bgcolor=Write the color-code for all cells CELLPADDING=Enter Value  CELLSPACING=Enter Value HEIGHT=Enter Value in % WIDTH=Enter Value in % HSPACE=Enter value VSPACE=Enter Value>" + Chr(13) + Chr(10) + "<TR>" + Chr(13) + Chr(10) + "<TD bgcolor=Write the backgroung color of cell or leave it blank>" + Chr(13) + Chr(10) + "<P>Write your Text here (FIRST COLUMN)" + Chr(13) + Chr(10) + "</TD><TD bgcolor=Write the backgroung color of cell or leave it blank>" + Chr(13) + Chr(10) + "<P>Write your Text here (SECOND COLUMN)" + Chr(13) + Chr(10) + "</TD><TD bgcolor=Write the backgroung color of cell or leave it blank>" + Chr(13) + Chr(10) + "<P>Write your Text here (THIRD COLUMN)" + Chr(13) + Chr(10) + "</TD><TD bgcolor=Write the backgroung color of cell or leave it blank>" _
  + Chr(13) + Chr(10) + "<P>Write your Text here (FOURTH COLUMN)" + Chr(13) + Chr(10) + "</TD><TD bgcolor=Write the backgroung color of cell or leave it blank>" + Chr(13) + Chr(10) + "<P>Write your Text here (FIFTH COLUMN)" + Chr(13) + Chr(10) + "</TD></TR>" + Chr(13) + Chr(10) + "<TR>" + Chr(13) + Chr(10) + "<TD bgcolor=Write the backgroung color of cell or leave it blank>" + Chr(13) + Chr(10) + "<P>Write your Text here (FIRST COLUMN)" + Chr(13) + Chr(10) + "</TD><TD bgcolor=Write the backgroung color of cell or leave it blank>" + Chr(13) + Chr(10) + "<P>Write your Text here (SECOND COLUMN)" + Chr(13) + Chr(10) + "</TD><TD bgcolor=Write the backgroung color of cell or leave it blank>" + Chr(13) + Chr(10) + "<P>Write your Text here (THIRD COLUMN)" + Chr(13) + Chr(10) + "</TD><TD bgcolor=Write the backgroung color of cell or leave it blank>" _
  + Chr(13) + Chr(10) + "<P>Write your Text here (FOURTH COLUMN)" + Chr(13) + Chr(10) + "</TD><TD bgcolor=Write the backgroung color of cell or leave it blank>" + Chr(13) + Chr(10) + "<P>Write your Text here (FIFTH COLUMN)" + Chr(13) + Chr(10) + "</TD></TR>" + Chr(13) + Chr(10) + _
  "<TR>" + Chr(13) + Chr(10) + "<TD bgcolor=Write the backgroung color of cell or leave it blank>" + Chr(13) + Chr(10) + "<P>Write your Text here (FIRST COLUMN)" + Chr(13) + Chr(10) + "</TD><TD bgcolor=Write the backgroung color of cell or leave it blank>" + Chr(13) + Chr(10) + "<P>Write your Text here (SECOND COLUMN)" + Chr(13) + Chr(10) + "</TD><TD bgcolor=Write the backgroung color of cell or leave it blank>" + Chr(13) + Chr(10) + "<P>Write your Text here (THIRD COLUMN)" + Chr(13) + Chr(10) + "</TD><TD bgcolor=Write the backgroung color of cell or leave it blank>" _
  + Chr(13) + Chr(10) + "<P>Write your Text here (FOURTH COLUMN)" + Chr(13) + Chr(10) + "</TD><TD bgcolor=Write the backgroung color of cell or leave it blank>" + Chr(13) + Chr(10) + "<P>Write your Text here (FIFTH COLUMN)" + Chr(13) + Chr(10) + "</TD></TR>" + Chr(13) + Chr(10) + _
  "<TR>" + Chr(13) + Chr(10) + "<TD bgcolor=Write the backgroung color of cell or leave it blank>" + Chr(13) + Chr(10) + "<P>Write your Text here (FIRST COLUMN)" + Chr(13) + Chr(10) + "</TD><TD bgcolor=Write the backgroung color of cell or leave it blank>" + Chr(13) + Chr(10) + "<P>Write your Text here (SECOND COLUMN)" + Chr(13) + Chr(10) + "</TD><TD bgcolor=Write the backgroung color of cell or leave it blank>" + Chr(13) + Chr(10) + "<P>Write your Text here (THIRD COLUMN)" + Chr(13) + Chr(10) + "</TD><TD bgcolor=Write the backgroung color of cell or leave it blank>" _
  + Chr(13) + Chr(10) + "<P>Write your Text here (FOURTH COLUMN)" + Chr(13) + Chr(10) + "</TD><TD bgcolor=Write the backgroung color of cell or leave it blank>" + Chr(13) + Chr(10) + "<P>Write your Text here (FIFTH COLUMN)" + Chr(13) + Chr(10) + "</TD></TR>" + Chr(13) + Chr(10) + _
  "</TABLE>"
  
Case "5 * 1"
  RTBox.SelText = RTBox.SelText + "<TABLE BORDER=1 bgcolor=Write the color-code for all cells CELLPADDING=Enter Value  CELLSPACING=Enter Value HEIGHT=Enter Value in % WIDTH=Enter Value in % HSPACE=Enter value VSPACE=Enter Value>" + Chr(13) + Chr(10) + "<TD bgcolor=Write the backgroung color of cell or leave it blank>" + Chr(13) + Chr(10) + "<P>Write your Text here ( FIRST ROW)" + Chr(13) + Chr(10) + "</TD>" + Chr(13) + Chr(10) + "<TR></TR>" + Chr(13) + Chr(10) + "<TD bgcolor=Write the backgroung color of cell or leave it blank>" + Chr(13) + Chr(10) + "<P>Write your Text here (SECOND ROW)" + Chr(13) + Chr(10) + "</TD>" + Chr(13) + Chr(10) + "<TR></TR>" + Chr(13) + Chr(10) + "<TD bgcolor=Write the backgroung color of cell or leave it blank>" + Chr(13) + Chr(10) + "<P>Write your Text here ( THIRD ROW)" + Chr(13) + Chr(10) _
+ "</TD>" + Chr(13) + Chr(10) + "<TR></TR>" + Chr(13) + Chr(10) + "<TD bgcolor=Write the backgroung color of cell or leave it blank>" + Chr(13) + Chr(10) + "<P>Write your Text here (FOURTH ROW)" + Chr(13) + Chr(10) + "</TD>" _
+ Chr(13) + Chr(10) + "<TR></TR>" + Chr(13) + Chr(10) + "<TD bgcolor=Write the backgroung color of cell or leave it blank>" + Chr(13) + Chr(10) + "<P>Write your Text here (FIFTH ROW)" + Chr(13) + Chr(10) + "</TD>" + Chr(13) + Chr(10) + "</TABLE>"

Case "5 * 2"
  RTBox.SelText = RTBox.SelText + "<TABLE BORDER=1 bgcolor=Write the color-code for all cells CELLPADDING=Enter Value  CELLSPACING=Enter Value HEIGHT=Enter Value in % WIDTH=Enter Value in % HSPACE=Enter value VSPACE=Enter Value>" + Chr(13) + Chr(10) + "<TR>" + Chr(13) + Chr(10) + "<TD bgcolor=Write the backgroung color of cell or leave it blank>" + Chr(13) + Chr(10) + "<P>Write your Text here (FIRST COLUMN)" + Chr(13) + Chr(10) + "</TD><TD bgcolor=Write the backgroung color of cell or leave it blank>" + Chr(13) + Chr(10) + "<P>Write your Text here (SECOND COLUMN)" + Chr(13) + Chr(10) + "</TD></TR>" + Chr(13) + Chr(10) _
+ "<TR>" + Chr(13) + Chr(10) + "<TD bgcolor=Write the backgroung color of cell or leave it blank>" + Chr(13) + Chr(10) + "<P>Write your Text here (FIRST COLUMN)" + Chr(13) + Chr(10) + "</TD><TD bgcolor=Write the backgroung color of cell or leave it blank>" + Chr(13) + Chr(10) + "<P>Write your Text here (SECOND COLUMN)" + Chr(13) + Chr(10) + "</TD></TR>" + Chr(13) + Chr(10) + "<TR>" + Chr(13) + Chr(10) + "<TD bgcolor=Write the backgroung color of cell or leave it blank>" + Chr(13) + Chr(10) + "<P>Write your Text here (FIRST COLUMN)" + Chr(13) + Chr(10) + "</TD><TD bgcolor=Write the backgroung color of cell or leave it blank>" + Chr(13) + Chr(10) + "<P>Write your Text here (SECOND COLUMN)" + Chr(13) + Chr(10) + "</TD></TR>" + Chr(13) + Chr(10) + _
 "<TR>" + Chr(13) + Chr(10) + "<TD bgcolor=Write the backgroung color of cell or leave it blank>" + Chr(13) + Chr(10) + "<P>Write your Text here (FIRST COLUMN)" + Chr(13) + Chr(10) + "</TD><TD bgcolor=Write the backgroung color of cell or leave it blank>" + Chr(13) + Chr(10) + "<P>Write your Text here (SECOND COLUMN)" + Chr(13) + Chr(10) + "</TD></TR>" + Chr(13) + Chr(10) + "<TR>" + Chr(13) + Chr(10) + "<TD bgcolor=Write the backgroung color of cell or leave it blank>" + Chr(13) + Chr(10) + "<P>Write your Text here ( FIRST COLUMN)" + Chr(13) + Chr(10) + "</TD><TD bgcolor=Write the backgroung color of cell or leave it blank>" + Chr(13) + Chr(10) + "<P>Write your Text here (SECOND COLUMN)" + Chr(13) + Chr(10) + "</TD></TR>" + Chr(13) + Chr(10) + "</TABLE>"

Case "5 * 3"
  RTBox.SelText = RTBox.SelText + "<TABLE BORDER=1 bgcolor=Write the color-code for all cells CELLPADDING=Enter Value  CELLSPACING=Enter Value HEIGHT=Enter Value in % WIDTH=Enter Value in % HSPACE=Enter value VSPACE=Enter Value>" + Chr(13) + Chr(10) + "<TR>" + Chr(13) + Chr(10) + "<TD bgcolor=Write the backgroung color of cell or leave it blank>" + Chr(13) + Chr(10) + "<P>Write your Text here (FIRST COLUMN)" + Chr(13) + Chr(10) + "</TD><TD bgcolor=Write the backgroung color of cell or leave it blank>" + Chr(13) + Chr(10) + "<P>Write your Text here (SECOND COLUMN)" + Chr(13) + Chr(10) + "</TD><TD bgcolor=Write the backgroung color of cell or leave it blank>" + Chr(13) + Chr(10) + "<P>Write your Text here (THIRD COLUMN)" + Chr(13) + Chr(10) + "</TD></TR>" + Chr(13) + Chr(10) + _
"<TR>" + Chr(13) + Chr(10) + "<TD bgcolor=Write the backgroung color of cell or leave it blank>" + Chr(13) + Chr(10) + "<P>Write your Text here (FIRST COLUMN)" + Chr(13) + Chr(10) + "</TD><TD bgcolor=Write the backgroung color of cell or leave it blank>" + Chr(13) + Chr(10) + "<P>Write your Text here (SECOND COLUMN)" + Chr(13) + Chr(10) + "</TD><TD bgcolor=Write the backgroung color of cell or leave it blank>" + Chr(13) + Chr(10) + "<P>Write your Text here (THIRD COLUMN)" + Chr(13) + Chr(10) + "</TD></TR>" + Chr(13) + Chr(10) + _
"<TR>" + Chr(13) + Chr(10) + "<TD bgcolor=Write the backgroung color of cell or leave it blank>" + Chr(13) + Chr(10) + "<P>Write your Text here (FIRST COLUMN)" + Chr(13) + Chr(10) + "</TD><TD bgcolor=Write the backgroung color of cell or leave it blank>" + Chr(13) + Chr(10) + "<P>Write your Text here (SECOND  COLUMN)" + Chr(13) + Chr(10) + "</TD><TD bgcolor=Write the backgroung color of cell or leave it blank>" + Chr(13) + Chr(10) + "<P>Write your Text here (THIRD COLUMN)" + Chr(13) + Chr(10) + "</TD></TR>" + Chr(13) + Chr(10) + _
"<TR>" + Chr(13) + Chr(10) + "<TD bgcolor=Write the backgroung color of cell or leave it blank>" + Chr(13) + Chr(10) + "<P>Write your Text here (FIRST COLUMN)" + Chr(13) + Chr(10) + "</TD><TD bgcolor=Write the backgroung color of cell or leave it blank>" + Chr(13) + Chr(10) + "<P>Write your Text here (SECOND  COLUMN)" + Chr(13) + Chr(10) + "</TD><TD bgcolor=Write the backgroung color of cell or leave it blank>" + Chr(13) + Chr(10) + "<P>Write your Text here (THIRD COLUMN)" + Chr(13) + Chr(10) + "</TD></TR>" + Chr(13) + Chr(10) + _
"<TR>" + Chr(13) + Chr(10) + "<TD bgcolor=Write the backgroung color of cell or leave it blank>" + Chr(13) + Chr(10) + "<P>Write your Text here (FIRST COLUMN)" + Chr(13) + Chr(10) + "</TD><TD bgcolor=Write the backgroung color of cell or leave it blank>" + Chr(13) + Chr(10) + "<P>Write your Text here (SECOND  COLUMN)" + Chr(13) + Chr(10) + "</TD><TD bgcolor=Write the backgroung color of cell or leave it blank>" + Chr(13) + Chr(10) + "<P>Write your Text here (THIRD COLUMN)" + Chr(13) + Chr(10) + "</TD></TR>" + Chr(13) + Chr(10) + "</TABLE>"

Case "5 * 4"
    RTBox.SelText = RTBox.SelText + "<TABLE BORDER=1 bgcolor=Write the color-code for all cells CELLPADDING=Enter Value  CELLSPACING=Enter Value HEIGHT=Enter Value in % WIDTH=Enter Value in % HSPACE=Enter value VSPACE=Enter Value>" + Chr(13) + Chr(10) + "<TR>" + Chr(13) + Chr(10) + "<TD bgcolor=Write the backgroung color of cell or leave it blank>" + Chr(13) + Chr(10) + "<P>Write your Text here (FIRST COLUMN)" + Chr(13) + Chr(10) + "</TD><TD bgcolor=Write the backgroung color of cell or leave it blank>" + Chr(13) + Chr(10) + "<P>Write your Text here (SECOND COLUMN)" + Chr(13) + Chr(10) + "</TD><TD bgcolor=Write the backgroung color of cell or leave it blank>" + Chr(13) + Chr(10) + "<P>Write your Text here (THIRD COLUMN)" + Chr(13) + Chr(10) + "</TD><TD bgcolor=Write the backgroung color of cell or leave it blank>" _
  + Chr(13) + Chr(10) + "<P>Write your Text here (FOURTH COLUMN)" + Chr(13) + Chr(10) + "</TD></TR>" + Chr(13) + Chr(10) + "<TR>" + Chr(13) + Chr(10) + "<TD bgcolor=Write the backgroung color of cell or leave it blank>" + Chr(13) + Chr(10) + "<P>Write your Text here (FIRST COLUMN)" + Chr(13) + Chr(10) + "</TD><TD bgcolor=Write the backgroung color of cell or leave it blank>" + Chr(13) + Chr(10) + "<P>Write your Text here (SECOND COLUMN)" + Chr(13) + Chr(10) + "</TD><TD bgcolor=Write the backgroung color of cell or leave it blank>" + Chr(13) + Chr(10) + "<P>Write your Text here (THIRD COLUMN)" + Chr(13) + Chr(10) + "</TD><TD bgcolor=Write the backgroung color of cell or leave it blank>" _
  + Chr(13) + Chr(10) + "<P>Write your Text here (FOURTH COLUMN)" + Chr(13) + Chr(10) + "</TD></TR>" + Chr(13) + Chr(10) + "<TR>" + Chr(13) + Chr(10) + "<TD bgcolor=Write the backgroung color of cell or leave it blank>" + Chr(13) + Chr(10) + "<P>Write your Text here ( FIRST COLUMN)" + Chr(13) + Chr(10) + "</TD><TD bgcolor=Write the backgroung color of cell or leave it blank>" + Chr(13) + Chr(10) + "<P>Write your Text here (SECOND COLUMN)" + Chr(13) + Chr(10) + "</TD><TD bgcolor=Write the backgroung color of cell or leave it blank>" + Chr(13) + Chr(10) + "<P>Write your Text here (THIRD  COLUMN)" + Chr(13) + Chr(10) + "</TD><TD bgcolor=Write the backgroung color of cell or leave it blank>" _
  + Chr(13) + Chr(10) + "<P>Write your Text here (FOURTH COLUMN)" + Chr(13) + Chr(10) + "</TD></TR>" + Chr(13) + Chr(10) + _
  "<TR>" + Chr(13) + Chr(10) + "<TD bgcolor=Write the backgroung color of cell or leave it blank>" + Chr(13) + Chr(10) + "<P>Write your Text here ( FIRST COLUMN)" + Chr(13) + Chr(10) + "</TD><TD bgcolor=Write the backgroung color of cell or leave it blank>" + Chr(13) + Chr(10) + "<P>Write your Text here (SECOND COLUMN)" + Chr(13) + Chr(10) + "</TD><TD bgcolor=Write the backgroung color of cell or leave it blank>" + Chr(13) + Chr(10) + "<P>Write your Text here (THIRD  COLUMN)" + Chr(13) + Chr(10) + "</TD><TD bgcolor=Write the backgroung color of cell or leave it blank>" _
  + Chr(13) + Chr(10) + "<P>Write your Text here (FOURTH COLUMN)" + Chr(13) + Chr(10) + "</TD></TR>" + Chr(13) + Chr(10) + _
  "<TR>" + Chr(13) + Chr(10) + "<TD bgcolor=Write the backgroung color of cell or leave it blank>" + Chr(13) + Chr(10) + "<P>Write your Text here ( FIRST COLUMN)" + Chr(13) + Chr(10) + "</TD><TD bgcolor=Write the backgroung color of cell or leave it blank>" + Chr(13) + Chr(10) + "<P>Write your Text here (SECOND COLUMN)" + Chr(13) + Chr(10) + "</TD><TD bgcolor=Write the backgroung color of cell or leave it blank>" + Chr(13) + Chr(10) + "<P>Write your Text here (THIRD  COLUMN)" + Chr(13) + Chr(10) + "</TD><TD bgcolor=Write the backgroung color of cell or leave it blank>" _
  + Chr(13) + Chr(10) + "<P>Write your Text here (FOURTH COLUMN)" + Chr(13) + Chr(10) + "</TD></TR>" + Chr(13) + Chr(10) + _
"</TABLE>"

Case "5 * 5"
       RTBox.SelText = RTBox.SelText + "<TABLE BORDER=1 bgcolor=Write the color-code for all cells CELLPADDING=Enter Value  CELLSPACING=Enter Value HEIGHT=Enter Value in % WIDTH=Enter Value in % HSPACE=Enter value VSPACE=Enter Value>" + Chr(13) + Chr(10) + "<TR>" + Chr(13) + Chr(10) + "<TD bgcolor=Write the backgroung color of cell or leave it blank>" + Chr(13) + Chr(10) + "<P>Write your Text here (FIRST COLUMN)" + Chr(13) + Chr(10) + "</TD><TD bgcolor=Write the backgroung color of cell or leave it blank>" + Chr(13) + Chr(10) + "<P>Write your Text here (SECOND COLUMN)" + Chr(13) + Chr(10) + "</TD><TD bgcolor=Write the backgroung color of cell or leave it blank>" + Chr(13) + Chr(10) + "<P>Write your Text here (THIRD COLUMN)" + Chr(13) + Chr(10) + "</TD><TD bgcolor=Write the backgroung color of cell or leave it blank>" _
  + Chr(13) + Chr(10) + "<P>Write your Text here (FOURTH COLUMN)" + Chr(13) + Chr(10) + "</TD><TD bgcolor=Write the backgroung color of cell or leave it blank>" + Chr(13) + Chr(10) + "<P>Write your Text here (FIFTH COLUMN)" + Chr(13) + Chr(10) + "</TD></TR>" + Chr(13) + Chr(10) + "<TR>" + Chr(13) + Chr(10) + "<TD bgcolor=Write the backgroung color of cell or leave it blank>" + Chr(13) + Chr(10) + "<P>Write your Text here (FIRST COLUMN)" + Chr(13) + Chr(10) + "</TD><TD bgcolor=Write the backgroung color of cell or leave it blank>" + Chr(13) + Chr(10) + "<P>Write your Text here (SECOND COLUMN)" + Chr(13) + Chr(10) + "</TD><TD bgcolor=Write the backgroung color of cell or leave it blank>" + Chr(13) + Chr(10) + "<P>Write your Text here (THIRD COLUMN)" + Chr(13) + Chr(10) + "</TD><TD bgcolor=Write the backgroung color of cell or leave it blank>" _
  + Chr(13) + Chr(10) + "<P>Write your Text here (FOURTH COLUMN)" + Chr(13) + Chr(10) + "</TD><TD bgcolor=Write the backgroung color of cell or leave it blank>" + Chr(13) + Chr(10) + "<P>Write your Text here (FIFTH COLUMN)" + Chr(13) + Chr(10) + "</TD></TR>" + Chr(13) + Chr(10) + _
  "<TR>" + Chr(13) + Chr(10) + "<TD bgcolor=Write the backgroung color of cell or leave it blank>" + Chr(13) + Chr(10) + "<P>Write your Text here (FIRST COLUMN)" + Chr(13) + Chr(10) + "</TD><TD bgcolor=Write the backgroung color of cell or leave it blank>" + Chr(13) + Chr(10) + "<P>Write your Text here (SECOND COLUMN)" + Chr(13) + Chr(10) + "</TD><TD bgcolor=Write the backgroung color of cell or leave it blank>" + Chr(13) + Chr(10) + "<P>Write your Text here (THIRD COLUMN)" + Chr(13) + Chr(10) + "</TD><TD bgcolor=Write the backgroung color of cell or leave it blank>" _
  + Chr(13) + Chr(10) + "<P>Write your Text here (FOURTH COLUMN)" + Chr(13) + Chr(10) + "</TD><TD bgcolor=Write the backgroung color of cell or leave it blank>" + Chr(13) + Chr(10) + "<P>Write your Text here (FIFTH COLUMN)" + Chr(13) + Chr(10) + "</TD></TR>" + Chr(13) + Chr(10) + _
  "<TR>" + Chr(13) + Chr(10) + "<TD bgcolor=Write the backgroung color of cell or leave it blank>" + Chr(13) + Chr(10) + "<P>Write your Text here (FIRST COLUMN)" + Chr(13) + Chr(10) + "</TD><TD bgcolor=Write the backgroung color of cell or leave it blank>" + Chr(13) + Chr(10) + "<P>Write your Text here (SECOND COLUMN)" + Chr(13) + Chr(10) + "</TD><TD bgcolor=Write the backgroung color of cell or leave it blank>" + Chr(13) + Chr(10) + "<P>Write your Text here (THIRD COLUMN)" + Chr(13) + Chr(10) + "</TD><TD bgcolor=Write the backgroung color of cell or leave it blank>" _
  + Chr(13) + Chr(10) + "<P>Write your Text here (FOURTH COLUMN)" + Chr(13) + Chr(10) + "</TD><TD bgcolor=Write the backgroung color of cell or leave it blank>" + Chr(13) + Chr(10) + "<P>Write your Text here (FIFTH COLUMN)" + Chr(13) + Chr(10) + "</TD></TR>" + Chr(13) + Chr(10) + _
  "<TR>" + Chr(13) + Chr(10) + "<TD bgcolor=Write the backgroung color of cell or leave it blank>" + Chr(13) + Chr(10) + "<P>Write your Text here (FIRST COLUMN)" + Chr(13) + Chr(10) + "</TD><TD bgcolor=Write the backgroung color of cell or leave it blank>" + Chr(13) + Chr(10) + "<P>Write your Text here (SECOND COLUMN)" + Chr(13) + Chr(10) + "</TD><TD bgcolor=Write the backgroung color of cell or leave it blank>" + Chr(13) + Chr(10) + "<P>Write your Text here (THIRD COLUMN)" + Chr(13) + Chr(10) + "</TD><TD bgcolor=Write the backgroung color of cell or leave it blank>" _
  + Chr(13) + Chr(10) + "<P>Write your Text here (FOURTH COLUMN)" + Chr(13) + Chr(10) + "</TD><TD bgcolor=Write the backgroung color of cell or leave it blank>" + Chr(13) + Chr(10) + "<P>Write your Text here (FIFTH COLUMN)" + Chr(13) + Chr(10) + "</TD></TR>" + Chr(13) + Chr(10) + _
  "</TABLE>"
End Select
End Sub

'/*************** image viewer (full screen view) *************
Private Sub Command2_Click()
RTBox.Visible = False
Image3.Visible = True
Command3.Visible = True
Image3.Picture = Image2.Picture
End Sub
'/ ************** close fullscreen image view *****************
Private Sub Command3_Click()
Image3.Visible = False
Command3.Visible = False
RTBox.Visible = True
End Sub




Private Sub Command4_Click()
cmclick = 1
MediaPlayer1.Command = "Close"
MediaPlayer1.Refresh
End Sub

Private Sub Command5_Click()
On Error GoTo errhan:
'a = File1.ListIndex
'a = Count(file.ListIndex)
'File1.ListIndex = File1.ListIndex + 1
A = File1.ListCount
b = A - 1
c = A - b

If File1.ListIndex = b Then
GoTo errhan
Else
File1.ListIndex = File1.ListIndex + 1
If Right(File1.Path, 1) <> "\" Then
FileName = File1.Path + "\" + File1.FileName
Else
FileName = File1.Path + File1.FileName
End If
Text1.text = FileName
'spev = File1.ListIndex
'Text1.Text = spev
'With MediaPlayer1

 '       .FileName = FileName
  '      .autoStart = True
   '     cmdopen.Caption = "Close"
'End With
MediaPlayer1.Command = "Close"
MediaPlayer1.Refresh
ftp = Text1.text
MediaPlayer1.FileName = ftp
MediaPlayer1.Command = "open"
'MMControl1.hWndDisplay = Picture1.hWnd
MediaPlayer1.Command = "play"
'AudioPlayer.Command = "Stop"
'AudioPlayer.Command = "Close"
'AudioPlayer.FileName = Text1.Text
'AudioPlayer.Command = "Open"
'AudioPlayer.Command = "Play"

End If
Exit Sub

errhan:
    'AudioPlayer.FileName = spev
    'AudioPlayer.Command = "play"

End Sub

Private Sub Command6_Click()
list_dblClick
End Sub

Private Sub Command7_Click()
On Error GoTo errhan:
'If Text1.Text = "" Then
'GoTo err
'Else
If File1.ListIndex = 0 Then
'MsgBox "Not song"
GoTo errhan
Else
'MediaPlayer1.AutoStart = False
File1.ListIndex = File1.ListIndex - 1
If Right(File1.Path, 1) <> "\" Then
FileName = File1.Path + "\" + File1.FileName
Else
FileName = File1.Path + File1.FileName
End If
Text1.text = FileName
'spev = File1.ListIndex
'Text1.Text = spev
'AudioPlayer.Command = "Stop"
'AudioPlayer.Command = "Close"
'AudioPlayer.FileName = Text1.Text
'AudioPlayer.Command = "Open"
'AudioPlayer.Command = "Play"
MediaPlayer1.Command = "Close"
MediaPlayer1.Refresh
ftp = Text1.text
MediaPlayer1.FileName = ftp
MediaPlayer1.Command = "open"
'MMControl1.hWndDisplay = Picture1.hWnd
MediaPlayer1.Command = "play"
'With MediaPlayer1
'
 '       .FileName = FileName
  '      .autoStart = True
   '     cmdopen.Caption = "Close"
'End With
End If

errhan:    'AudioPlayer.FileName = spev
    'AudioPlayer.Command = "play"

End Sub

Private Sub Command8_Click()
'Open App.Path & "example.html"
'Close App.Path & "example.html"
RTBox.Visible = True
Command8.Visible = False
Web.Visible = False
End Sub

Private Sub Dir1_Change()
File1.FileName = Dir1.Path
End Sub

Private Sub Dir2_Change()
File2.Path = Dir2.Path
If Combo2.ListIndex = 0 Then
File2.Pattern = ("*.jpg")
ElseIf Combo2.ListIndex = 1 Then
File2.Pattern = ("*.bmp")
ElseIf Combo2.ListIndex = 2 Then
File2.Pattern = ("*.JPG")
End If
End Sub

Private Sub Drive1_Change()
On Error GoTo errDrive
Dir1.Path = Drive1.Drive
errDrive:
    If err.Number = 68 Then 'this means that the drive isnt accessable!
        MsgBox "Drive Not Ready!", vbOKOnly
        Exit Sub
                                                                                                                                Else
        Exit Sub
    End If

End Sub

Private Sub Drive2_Change()
Dir2.Path = Drive2.Drive
End Sub






Private Sub File1_Click()
Dim temp As String
On Error Resume Next
EraseTXTBoxes

If Right(Dir1.Path, 1) = "\" Then
    FileName = Dir1.Path & File1.FileName
Else
    FileName = Dir1.Path & "\" & File1.FileName
End If
    
Open FileName For Binary As #1
With CurrentTag
    Get #1, FileLen(FileName) - 127, .Tag
    If Not .Tag = "TAG" Then
        lblMsg.Caption = "No tag"
        Close #1
        Exit Sub
    End If
    Get #1, , .Songname
    Get #1, , .artist
    Get #1, , .album
    Get #1, , .year
    Get #1, , .comment
    Get #1, , .genre
    Close #1

    txtTitle = RTrim(.Songname)
    txtArtist = RTrim(.artist)
    txtAlbum = RTrim(.album)
    txtYear = RTrim(.year)
    txtComment = RTrim(.comment)
    
    temp = RTrim(.genre)
    txtGenreCode = Asc(temp)
    Text1.text = FileName
End With
End Sub
Private Sub EraseTXTBoxes()
lblMsg.Caption = ""
txtTitle = ""
txtArtist = ""
txtAlbum = ""
txtYear = ""
txtComment = ""
txtGenreCode = ""

End Sub


Private Sub File1_DblClick()
'With MediaPlayer1
'
 '       .FileName = FileName
  '      .autoStart = True
   '     cmdopen.Caption = "Close"
'
'End With
On Error GoTo errh
MediaPlayer1.Command = "Close"
MediaPlayer1.Refresh
ftp = Dir1.Path & "\" & File1.FileName
MediaPlayer1.FileName = ftp
MediaPlayer1.Command = "open"
'MMControl1.hWndDisplay = Picture1.hWnd
MediaPlayer1.Command = "play"
'File1.Enabled = False
Exit Sub
errh:
End Sub



Private Sub File2_Click()
Dim A2 As String
Dim b As String
If Combo2.ListIndex = 0 Then
File2.Pattern = ("*.jpg")
ElseIf Combo2.ListIndex = 1 Then
File2.Pattern = ("*.bmp")
ElseIf Combo2.ListIndex = 2 Then
File2.Pattern = ("*.JPG")
End If
If Right(File2.Path, 1) <> "\" Then
filenam = File2.Path + "\" + File2.FileName
Else
filenam = File2.Path + File2.FileName
End If
 If Right(filenam, 1) <> "g" Then
 GoTo errhan1
 Else
Image2.Picture = LoadPicture(filenam)
Image3.Picture = Image2.Picture
End If
errhan1:
If Right(filenam, 1) <> "G" Then
GoTo errhan
Else
Image2.Picture = LoadPicture(filenam)
Image3.Picture = Image2.Picture
End If
errhan:
End Sub
Private Sub list_dblClick()
If FLAGS = 1 Then
Select Case list.list(list.ListIndex)
Case Chr(187) & " " & "Acronym"
    mnuAcronym_Click
Case Chr(187) & " " & "Address"
    mnuaddress_Click
Case Chr(187) & " " & "Add list Item"
     RTBox.SelText = "<LI>" + RTBox.SelText + "</LI>"
Case Chr(187) & " " & "Align Center"
     RTBox.SelText = "<P" + "  " + "ALIGN=" + cmdopen.Caption + "center" + cmdopen.Caption + ">" + "</P>"
Case Chr(187) & " " & "Align Justify"
    RTBox.SelText = "<P" + "  " + "ALIGN=" + cmdopen.Caption + "justify" + cmdopen.Caption + ">" + "</P>"
Case Chr(187) & " " & "Align Left"
    RTBox.SelText = "<P" + "  " + "ALIGN=" + cmdopen.Caption + "left" + cmdopen.Caption + ">" + "</P>"
Case Chr(187) & " " & "Align Right"
    RTBox.SelText = "<P" + "  " + "ALIGN=" + cmdopen.Caption + "right" + cmdopen.Caption + ">" + "</P>"
Case Chr(187) & " " & "Base font"
    basefonthtml.Show
Case Chr(187) & " " & "Big text"
    mnubig_Click
Case Chr(187) & " " & "Blinking"
    mnublinking_Click
Case Chr(187) & " " & "Block Quote"
    mnublock_Click
Case Chr(187) & " " & "Body"
     Body.Show
Case Chr(187) & " " & "Bold"
     mnuhtmlbold_Click
Case Chr(187) & " " & "Book mark"
     Bookmark.Show
Case Chr(187) & " " & "Caption"
     mnucaption_Click
Case Chr(187) & " " & "Center"
     RTBox.SelText = "<CENTER>" + RTBox.SelText + "</CENTER>"
Case Chr(187) & " " & "Citation"
    mnucite_Click
Case Chr(187) & " " & "Code"
    mnucode_Click
Case Chr(187) & " " & "Comment"
    RTBox.SelText = "<!--" + RTBox.SelText + "  " + "-->"
Case Chr(187) & " " & "Definition list"
    mnuDefinitionLists_Click
Case Chr(187) & " " & "Div"
     div.Show
Case Chr(187) & " " & "Emphasis"
     mnuemphasis_Click
Case Chr(187) & " " & "Extended Quotations"
     mnuExtendedQuotations_Click
Case Chr(187) & " " & "Font"
     htmlfont.Show
Case Chr(187) & " " & "Form"
    htmlfrfrm.Show
Case Chr(187) & " " & "H1"
     RTBox.SelText = "<H1>" + RTBox.SelText + "</H1>"
Case Chr(187) & " " & "H2"
     RTBox.SelText = "<H2>" + RTBox.SelText + "</H2>"
Case Chr(187) & " " & "H3"
     RTBox.SelText = "<H3>" + RTBox.SelText + "</H3>"
Case Chr(187) & " " & "H4"
     RTBox.SelText = "<H4>" + RTBox.SelText + "</H4>"
Case Chr(187) & " " & "H5"
     MRTBox.SelText = "<H5>" + RTBox.SelText + "</H5>"
Case Chr(187) & " " & "H6"
     RTBox.SelText = "<H6>" + RTBox.SelText + "</H6>"
Case Chr(187) & " " & "Horizontal Rules"
     mnuHorizontalRules_Click
Case Chr(187) & " " & "HTML end"
    RTBox.SelText = "</HTML>"
Case Chr(187) & " " & "HTML start"
  frmhtmlbegin.Show
Case Chr(187) & " " & "Image link"
   imagelink.Show
Case Chr(187) & " " & "Image"
    Htmlimage.Show
Case Chr(187) & " " & "Input Button"
    inputbutton.Show
Case Chr(187) & " " & "Input checkbox"
     ipcheckbox.Show
Case Chr(187) & " " & "Input Ratio Button"
     ipratiobox.Show
Case Chr(187) & " " & "Input Submit"
     ipsubmit.Show
Case Chr(187) & " " & "Input"
    input1.Show
Case Chr(187) & " " & "Italic"
     mnuhtmlitalic_Click
Case Chr(187) & " " & "Keyboard"
    mnukeyboard_Click
Case Chr(187) & " " & "Last Updated"
    RTBox.SelText = "Last updated on <B>" + Format$(Date, "d mmmm,yyyy") + "</B>"
Case Chr(187) & " " & "line break"
    mnuLineBreaks_Click
Case Chr(187) & " " & "Link to bookmark"
    linktobookmark.Show
Case Chr(187) & " " & "Link with image"
      linkimage.Show
Case Chr(187) & " " & "Link"
      link.Show
Case Chr(187) & " " & "Maarquee"
    mnumarquee_Click
Case Chr(187) & " " & "Mail to"
    mailto.Show
Case Chr(187) & " " & "Meta"
     meta.Show
Case Chr(187) & " " & "Multi-line Input"
     frmmultihtml.Show
Case Chr(187) & " " & "Nested list"
    mnuNestedLists_Click
Case Chr(187) & " " & "New HTML Page"
    nhtmlpagefrm.Show
Case Chr(187) & " " & "No script"
   RTBox.SelText = "<NOSCRIPT>" + RTBox.SelText + "</NOSCRIPT>"
Case Chr(187) & " " & "Non breaking space"
   RTBox.SelText = "&nbsp;" + RTBox.SelText
Case Chr(187) & " " & "Numbered list"
    mnuNumberedLists_Click
Case Chr(187) & " " & "Option"
   option1.Show
Case Chr(187) & " " & "Paragraph Block"
      parablock.Show
Case Chr(187) & " " & "Preformatted Text"
     mnuTypewriter_Click
Case Chr(187) & " " & "Reset"
    RTBox.SelText = "<INPUT  TYPE=" + cmdopen.Caption + "Reset" + cmdopen.Caption + "   " + "NAME=" + cmdopen.Caption + cmdopen.Caption + "   " + "VALUE=" + cmdopen.Caption + "Reset" + cmdopen.Caption + ">"
Case Chr(187) & " " & "Select"
     select1.Show
Case Chr(187) & " " & "Small text"
    mnusmalltext_Click
Case Chr(187) & " " & "Strikethru"
    mnuhtmlstrikethru_Click
Case Chr(187) & " " & "Strong"
    mnustrong_Click
Case Chr(187) & " " & "Submit"
   frmMain1.RTBox.SelText = "<INPUT  TYPE=" + cmdopen.Caption + "Submit" + cmdopen.Caption + "   " + "NAME=" + cmdopen.Caption + cmdopen.Caption + "   " + "VALUE=" + cmdopen.Caption + "Submit" + cmdopen.Caption + ">"
Case Chr(187) & " " & "Sub script"
    mnuhtmlSubscript_Click
Case Chr(187) & " " & "Super script"
    mnuhtmlsuperscript_Click
Case Chr(187) & " " & "Table"
     table.Show
Case Chr(187) & " " & "Table Wizard"
     tablewizard.Show
Case Chr(187) & " " & "Text Box"
     frmtexthtml.Show
Case Chr(187) & " " & "Title"
     RTBox.SelText = "<TITLE>" + RTBox.SelText + "</TITLE>"
Case Chr(187) & " " & "Type writer"
    mnuTypewriter_Click
Case Chr(187) & " " & "Underline"
    mnuhtmlunderline_Click
Case Chr(187) & " " & "Unnumbered list"
    mnuUnnumberesLists_Click
Case Chr(187) & " " & "Variable"
     mnuvariable_Click
Case Chr(187) & " " & "White space"
     mnuWhitespace_Click
End Select
Else
MsgBox "Please open the HTML Document ( File -> New -> HTML Document )", vbInformation, "Textwriter 1.0"
End If
End Sub













Private Sub MMControl1_Done(NotifyCode As Integer)

End Sub

Private Sub mnuAbout_Click()
frmAbout.Show
End Sub

Private Sub mnuAcronym_Click()
RTBox.SelText = "<ACRONYM>" + RTBox.SelText + "</ACRONYM>"
End Sub

'/********************************** Add tools  ********************************
Private Sub mnuadd_Click()
'If SSTab1.Visible = False Then
SSTab1.Visible = True
    RTBox.Left = 0
    RTBox.Top = 1320
    RTBox.Height = 8755
    RTBox.Width = 11175
    'RTBox.Width = 11175
'RTBox.Height = 9200
'RTBox.Top = 960
SSTab1.Height = 9200
SSTab1.Width = 4095
SSTab1.Top = 960
SSTab1.Left = 11180
Image3.Top = RTBox.Top
Image3.Left = RTBox.Left
Image3.Height = RTBox.Height
Image3.Width = RTBox.Width
Web.Top = RTBox.Top
      Web.Left = RTBox.Left
    Web.Height = RTBox.Height
    Web.Width = RTBox.Width
    mnuadd.Enabled = False
    mnuremove.Enabled = True
    Image4.Visible = True
    'Image5.Visible = True
   ' Image6.Visible = True
'Else
'MsgBox "Already tools are added", vbInformation, "Text writer1.0"
'End If
End Sub

Private Sub mnuaddress_Click()
RTBox.SelText = "<ADDRESS>" + RTBox.SelText + "</ADDRESS>"
End Sub



Private Sub mnubblack_Click()
RTBox.SelText = "<BODY BGCOLOR=#000000>" + RTBox.SelText
End Sub

Private Sub mnubblue_Click()
RTBox.SelText = "<BODY BGCOLOR=#0000FF>" + RTBox.SelText
End Sub

Private Sub mnubcyan_Click()
RTBox.SelText = "<BODY BGCOLOR=#00FFFF>" + RTBox.SelText
End Sub

Private Sub mnubgreen_Click()
RTBox.SelText = "<BODY BGCOLOR=#2F4F2F>" + RTBox.SelText
End Sub

Private Sub mnubig_Click()
RTBox.SelText = "<BIG>" + RTBox.SelText + "</BIG>"
End Sub

Private Sub mnublblue_Click()
RTBox.SelText = "<BODY BGCOLOR=#871F78>" + RTBox.SelText
End Sub

Private Sub mnublcyan_Click()
RTBox.SelText = "<BODY BGCOLOR=#2F4F2F>" + RTBox.SelText
End Sub

Private Sub mnublock_Click()
RTBox.SelText = "<BLOCKQUOTE>" + RTBox.SelText + "</BLOCKQUOTE>"
End Sub

Private Sub mnubred_Click()
RTBox.SelText = "<BODY BGCOLOR=#FF0000>" + RTBox.SelText
End Sub

Private Sub mnubrowser_Click()
RTBox.Visible = False
Web.Visible = True
Command8.Visible = True
Open App.Path & "example.html" For Output As #1
    Print #1, RTBox.text
Close #1
Web.Navigate App.Path & "example.html"
End Sub

Private Sub mnubwhite_Click()
RTBox.SelText = "<BODY BGCOLOR=#FFFFFF>" + RTBox.SelText
End Sub

Private Sub mnubyellow_Click()
RTBox.SelText = "<BODY BGCOLOR=#FFFF00>" + RTBox.SelText
End Sub

Private Sub mnucalc_Click()
calculator.Show
End Sub

Private Sub mnucaption_Click()
RTBox.SelText = "<CAPTION>" + RTBox.SelText + "</CAPTION>"
End Sub

Private Sub mnucite_Click()
RTBox.SelText = "<CITE>" + RTBox.SelText + "</CITE>"
End Sub

Private Sub mnucliparts_Click()
inscfrm.Show
End Sub

Private Sub mnuclose_Click()
RTBox.Visible = False
End Sub

Private Sub mnucode_Click()
RTBox.SelText = "<CODE>" + RTBox.SelText + "</CODE>"
End Sub





Private Sub mnudmore_Click()
Form1.Show
End Sub

Private Sub mnuconverter_Click()
convert.Show
End Sub

Private Sub mnudocpro_Click()
Docpro.Show
End Sub

Private Sub mnudtmore_Click()
Form1.Show
End Sub

Private Sub mnuEditUndo_Click()
'Call SendMessage(RTBox.hwnd, WM_UNDO, 0&, 0&)
CountUndo = CountUndo + 1
    Undoing = True
    If undoStage <= 1 Then
        undoStage = 0
        mnuEditundo.Enabled = False
    Else
        undoStage = undoStage - 1
    End If
    RTBox.text = undoStack(undoStage)
    Undoing = False
    
mnuredo.Enabled = True
tbToolBar.Buttons(9).Enabled = True
End Sub

Private Sub mnuemphasis_Click()
RTBox.SelText = "<EM>" + RTBox.SelText + "</EM>"
End Sub

Private Sub mnuendecry_Click()
RTBox.text = Encrypt(RTBox.text)
End Sub
Public Function Encrypt(text As String) As String
Dim charSet1 As String, charSet2 As String, i As Long
Dim pos As Long, encryptedChar, encryptedText
charSet1 = " ?!@#$%^&*()_+|0123456789abcdefghijklmnopqrstuvwxyz.,~ABCDEFGHIJKLMNOPQRSTUVWXYZ¿¡²³ÀÁÂÃÄÅÒÓÔÕÖÙÛÜàáâãäåØ¶§Ú¥"
charSet2 = " ¿¡@#$%^&*()_+|01²³456789ÀbÁdÂÃghÄjklmÅÒÓqÔÕÖÙvwÛÜz.,~AàáâãFGHäJKåMNØ¶QR§TÚVWX¥Z?!23acefinoprstuxyBCDEILOPSUY"
For i = 1 To Len(text)
pos = InStr(charSet1, Mid(text, i, 1))
If pos > 0 Then
encryptedChar = Mid(charSet2, pos, 1)
encryptedText = encryptedText + encryptedChar
Else
encryptedText = encryptedText + Mid(text, i, 1)
End If
Next
Encrypt = encryptedText
End Function
Private Sub mnuFileExit_Click()
On Error GoTo err
If MsgBox("Do you want to Exit the Text Writer 1.0?", vbYesNo + vbInformation, "Exit") = vbYes Then
'If RTBox.Text <> "" And unsaveddocument = 0 Then
'If MsgBox("Do you want to save your current project?", vbYesNoCancel + vbInformation, "Save") = vbYes Then
'mnuFileSave_Click
'Unload Me
'Else
'Unload Mes
'End If
'ElseIf RTBox.Text = "" Then
Unload Me
'End If
'Else
'GoTo err:
End If
err:
End Sub

Private Sub mnuFindNext_Click()
find.Show
End Sub

Private Sub mnufive_Click()
RTBox.SelText = RTBox.SelText + "<TABLE BORDER=1 bgcolor=Write the color-code for all cells CELLPADDING=Enter Value  CELLSPACING=Enter Value HEIGHT=Enter Value in % WIDTH=Enter Value in % HSPACE=Enter value VSPACE=Enter Value>" + Chr(13) + Chr(10) + "<TR>" + Chr(13) + Chr(10) + "<TD bgcolor=Write the backgroung color of cell or leave it blank>" + Chr(13) + Chr(10) + "<P>Write your Text here (1st cell of the FIRST COLUMN)" + Chr(13) + Chr(10) + "</TD><TD bgcolor=Write the backgroung color of cell or leave it blank>" + Chr(13) + Chr(10) + "<P>Write your Text here (2st cell of the FIRST COLUMN)" + Chr(13) + Chr(10) + "</TD><TD bgcolor=Write the backgroung color of cell or leave it blank>" + Chr(13) + Chr(10) + "<P>Write your Text here (3rd cell of the FIRST COLUMN)" + Chr(13) + Chr(10) + "</TD><TD bgcolor=Write the backgroung color of cell or leave it blank>" _
+ Chr(13) + Chr(10) + "<P>Write your Text here (4th cell of the FIRST COLUMN)" + Chr(13) + Chr(10) + "</TD><TD bgcolor=Write the backgroung color of cell or leave it blank>" + Chr(13) + Chr(10) + "<P>Write your Text here (5th cell of the FIRST COLUMN)" + Chr(13) + Chr(10) + "</TD><TD bgcolor=Write the backgroung color of cell or leave it blank>" + Chr(13) + Chr(10) + "</TD></TR>" + Chr(13) + Chr(10) + "</TABLE>"
End Sub

Private Sub mnufiverow_Click()
RTBox.SelText = RTBox.SelText + "<TABLE BORDER=1 bgcolor=Write the color-code for all cells CELLPADDING=Enter Value  CELLSPACING=Enter Value HEIGHT=Enter Value in % WIDTH=Enter Value in % HSPACE=Enter value VSPACE=Enter Value>" + Chr(13) + Chr(10) + "<TD bgcolor=Write the backgroung color of cell or leave it blank>" + Chr(13) + Chr(10) + "<P>Write your Text here ( FIRST ROW)" + Chr(13) + Chr(10) + "</TD>" + Chr(13) + Chr(10) + "<TR></TR>" + Chr(13) + Chr(10) + "<TD bgcolor=Write the backgroung color of cell or leave it blank>" + Chr(13) + Chr(10) + "<P>Write your Text here (SECOND ROW)" + Chr(13) + Chr(10) + "</TD>" + Chr(13) + Chr(10) + "<TR></TR>" + Chr(13) + Chr(10) + "<TD bgcolor=Write the backgroung color of cell or leave it blank>" + Chr(13) + Chr(10) + "<P>Write your Text here ( THIRD ROW)" + Chr(13) + Chr(10) _
+ "</TD>" + Chr(13) + Chr(10) + "<TR></TR>" + Chr(13) + Chr(10) + "<TD bgcolor=Write the backgroung color of cell or leave it blank>" + Chr(13) + Chr(10) + "<P>Write your Text here (FOURTH ROW)" + Chr(13) + Chr(10) + "</TD>" _
+ Chr(13) + Chr(10) + "<TR></TR>" + Chr(13) + Chr(10) + "<TD bgcolor=Write the backgroung color of cell or leave it blank>" + Chr(13) + Chr(10) + "<P>Write your Text here (FIFTH ROW)" + Chr(13) + Chr(10) + "</TD>" + Chr(13) + Chr(10) + "</TABLE>"
End Sub

Private Sub mnufour_Click()
RTBox.SelText = RTBox.SelText + "<TABLE BORDER=1 bgcolor=Write the color-code for all cells CELLPADDING=Enter Value  CELLSPACING=Enter Value HEIGHT=Enter Value in % WIDTH=Enter Value in % HSPACE=Enter value VSPACE=Enter Value>" + Chr(13) + Chr(10) + "<TR>" + Chr(13) + Chr(10) + "<TD bgcolor=Write the backgroung color of cell or leave it blank>" + Chr(13) + Chr(10) + "<P>Write your Text here (1st cell of the FIRST COLUMN)" + Chr(13) + Chr(10) + "</TD><TD bgcolor=Write the backgroung color of cell or leave it blank>" + Chr(13) + Chr(10) + "<P>Write your Text here (2st cell of the FIRST COLUMN)" + Chr(13) + Chr(10) + "</TD><TD bgcolor=Write the backgroung color of cell or leave it blank>" + Chr(13) + Chr(10) + "<P>Write your Text here (3rd cell of the FIRST COLUMN)" + Chr(13) + Chr(10) + "</TD><TD bgcolor=Write the backgroung color of cell or leave it blank>" _
+ Chr(13) + Chr(10) + "<P>Write your Text here (4th cell of the FIRST COLUMN)" + Chr(13) + Chr(10) + "</TD><TD bgcolor=Write the backgroung color of cell or leave it blank>" + Chr(13) + Chr(10) + "</TD></TR>" + Chr(13) + Chr(10) + "</TABLE>"
End Sub

Private Sub mnufourrow_Click()
RTBox.SelText = RTBox.SelText + "<TABLE BORDER=1 bgcolor=Write the color-code for all cells CELLPADDING=Enter Value  CELLSPACING=Enter Value HEIGHT=Enter Value in % WIDTH=Enter Value in % HSPACE=Enter value VSPACE=Enter Value>" + Chr(13) + Chr(10) + "<TD bgcolor=Write the backgroung color of cell or leave it blank>" + Chr(13) + Chr(10) + "<P>Write your Text here ( FIRST ROW)" + Chr(13) + Chr(10) + "</TD>" + Chr(13) + Chr(10) + "<TR></TR>" + Chr(13) + Chr(10) + _
"<TD bgcolor=Write the backgroung color of cell or leave it blank>" + Chr(13) + Chr(10) + "<P>Write your Text here (SECOND ROW)" + Chr(13) + Chr(10) + "</TD>" + Chr(13) + Chr(10) + "<TR></TR>" + Chr(13) + Chr(10) + "<TD bgcolor=Write the backgroung color of cell or leave it blank>" + Chr(13) + Chr(10) + "<P>Write your Text here ( THIRD ROW)" + Chr(13) + Chr(10) + "</TD>" + Chr(13) + Chr(10) + "<TR></TR>" + Chr(13) + Chr(10) + "<TD bgcolor=Write the backgroung color of cell or leave it blank>" + Chr(13) + Chr(10) + "<P>Write your Text here (FOURTH ROW)" + Chr(13) + Chr(10) + "</TD>" + Chr(13) + Chr(10) + "</TABLE>"
End Sub

Private Sub mnugoto_Click()
Gotofrm.Show
End Sub

Private Sub mnuhdarkgreen_Click()
RTBox.SelText = "<FONT COLOR=#2F4F2F>" + RTBox.SelText + "</FONT>"
End Sub

Private Sub mnuhtmlbold_Click()
RTBox.SelText = "<B>" + RTBox.SelText + "</B>"
End Sub

Private Sub mnuhtmlitalic_Click()
RTBox.SelText = "<I>" + RTBox.SelText + "</I>"
End Sub

Private Sub mnuhtmlmore_Click()
mnuadd_Click
End Sub

Private Sub mnuhtmlstrikethru_Click()
RTBox.SelText = "<STRIKE>" + RTBox.SelText + "</STRIKE>"
End Sub

Private Sub mnuhtmlSubscript_Click()
RTBox.SelText = "<SUB>" + RTBox.SelText + "</SUB>"
End Sub

Private Sub mnuhtmlsuperscript_Click()
RTBox.SelText = "<SUP>" + RTBox.SelText + "</SUP>"
End Sub

Private Sub mnuhtmlunderline_Click()
RTBox.SelText = "<U>" + RTBox.SelText + "</U>"
End Sub

Private Sub mnuimageviewer_Click()
Imagepic.Show
End Sub

Private Sub mnuincreaseindent_Click()
    frmMain1.ScaleMode = vbMillimeters
    'Change the indent
    frmMain1.RTBox.SelIndent = frmMain1.RTBox.SelIndent + 12.5
    'Return form scale mode to Twips
    frmMain1.ScaleMode = vbTwips
End Sub

Private Sub mnukeyboard_Click()
RTBox.SelText = "<KBD>" + RTBox.SelText + "</KBD>"
End Sub

Private Sub mnumarquee_Click()
RTBox.SelText = "<MARQUEE BGCOLOR=Enter the color value DIRECTION=Enter RIGHT or LEFT>" + "<FONT COLOR=Enter the color value>" + RTBox.SelText + "</FONT>" + "</MARQUEE>"
End Sub



Private Sub mnunormal_Click()
Me.WindowState = vbNormal
'frmMain1.Width = 7170
End Sub



Private Sub mnuone_Click()
RTBox.SelText = RTBox.SelText + Chr(13) + Chr(10) + "<TABLE BORDER=1 bgcolor= Write the color-code for all cells  CELLPADDING=Enter Value  CELLSPACING=Enter Value HEIGHT=Enter Value in % WIDTH=Enter Value in % HSPACE=Enter value VSPACE=Enter Value>" + Chr(13) + Chr(10) + "<TR>" + Chr(13) + Chr(10) + "<TD bgcolor=Write the code of the cell's background>" + Chr(13) + Chr(10) + "<P>Your your text in the first cell" + Chr(13) + Chr(10) + "</TD>" + Chr(13) + Chr(10) + "</TABLE>"
End Sub

Private Sub mnuonerow_Click()
RTBox.SelText = RTBox.SelText + Chr(13) + Chr(10) + "<TABLE BORDER=1 bgcolor= Write the color-code for all cells  CELLPADDING=Enter Value  CELLSPACING=Enter Value HEIGHT=Enter Value in % WIDTH=Enter Value in % HSPACE=Enter value VSPACE=Enter Value>" + Chr(13) + Chr(10) + "<TR>" + Chr(13) + Chr(10) + "<TD bgcolor=Write the code of the cell's background>" + Chr(13) + Chr(10) + "<P>Your text in the first ROW" + Chr(13) + Chr(10) + "</TD>" + "</TABLE>"
End Sub

Private Sub mnuOtherFormat_Click()
Date.Show
End Sub

Private Sub mnunoscript_Click()
' RTBox.SelCharOffset = 0
RTBox.SelCharOffset = 0
If (mnunoscript.Checked = False) Then
  mnunoscript.Checked = True
  End If
If (mnunoscript.Checked = True) Then
    mnusubscript.Checked = False
    mnususcript.Checked = False
        End If
   
End Sub

Private Sub mnuplayer_Click()
player.Show
End Sub





Private Sub mnuredo_Click()
'Call SendMessage(RTBox.hwnd, WM_REDO, 0&, 0&)
CountUndo = CountUndo - 1
    Undoing = True

    undoStage = undoStage + 1

    RTBox.text = undoStack(undoStage)
    Undoing = False
End Sub

Private Sub mnureduceindent_Click()
frmMain1.ScaleMode = vbMillimeters
    'Change the indent
    frmMain1.RTBox.SelIndent = frmMain1.RTBox.SelIndent - 12.5
    'Return form scale mode to Twips
    frmMain1.ScaleMode = vbTwips
End Sub

Private Sub mnuremove_Click()
'If SSTab1.Visible = True Then
SSTab1.Visible = False
    RTBox.Left = 0
    RTBox.Top = 1320
    RTBox.Width = 15330
    RTBox.Height = 8755
    
  'RTBox.Width = 15255
  'RTBox.Height = 9200
  'RTBox.Top = 960
  'RTBox.Left = 0
  'Left = 0
    Web.Top = RTBox.Top
    Web.Left = RTBox.Left
    Web.Height = RTBox.Height
    Web.Width = RTBox.Width
     mnuadd.Enabled = True
    mnuremove.Enabled = False
     Image4.Visible = True
   ' Image5.Visible = True
    Image6.Visible = False
'Else
'MsgBox "Tools are Not added", vbInformation, "Text writer1.0"
'Left = 0
'End If
End Sub

Private Sub mnuReplace_Click()
find.Show
End Sub

Private Sub mnusmalltext_Click()
RTBox.SelText = "<SMALL>" + RTBox.SelText + "</SMALL>"
End Sub

Private Sub mnustrong_Click()
RTBox.SelText = "<STRONG>" + RTBox.SelText + "</STRONG>"
End Sub



Private Sub mnusubscript_Click()
RTBox.SelCharOffset = -72
If (mnusubscript.Checked = False) Then
    mnusubscript.Checked = True
End If
If (mnusubscript.Checked = True) Then
   mnususcript.Checked = False
   mnunoscript.Checked = False
End If
'Else
   ' mnusubscript.Checked = False
   ' RTBox.SelCharOffset = 0
'End If
End Sub



Private Sub mnususcript_Click()

RTBox.SelCharOffset = 60

If (mnususcript.Checked = False) Then
  mnususcript.Checked = True
  End If
If (mnususcript.Checked = True) Then
    mnusubscript.Checked = False
    mnunoscript.Checked = False
End If
'Else
 ' mnususcript.Checked = False
  ' RTBox.SelCharOffset = 0
'End If
End Sub









Private Sub mnutableinsert_Click()
tablefrm.Show
End Sub

Private Sub mnutextback_Click()
dlgCommonDialog1.FLAGS = &H2
dlgCommonDialog1.ShowColor
RTBox.BackColor = dlgCommonDialog1.Color
End Sub

Private Sub mnutextfile_Click()
Dim sFile As String
Dim s As String
Dim t As String

   ' If ActiveForm Is Nothing Then LoadNewDoc
    

    With CmDlg
        .DialogTitle = "Select File to Insert"
        .CancelError = False
        'ToDo: set the flags and attributes of the common dialog control
        .Filter = "Text Files (*.txt)|*.txt|HTM Files (*.htm)|*.htm)|HTML Files (*.html)|*.html)"
        .ShowOpen
        If Len(.FileName) = 0 Then
            Exit Sub
        End If
        sFile = .FileName
    End With
    s = RTBox.text
    frmMain1.RTBox.LoadFile sFile
    t = RTBox.text
    RTBox.text = ""
    RTBox.text = s + t
    frmMain1.Caption = "TextEditor 1.0 - " & sFile
End Sub

Private Sub mnuthree_Click()
RTBox.SelText = RTBox.SelText + "<TABLE BORDER=1 bgcolor=Write the color-code for all cells CELLPADDING=Enter Value  CELLSPACING=Enter Value HEIGHT=Enter Value in % WIDTH=Enter Value in % HSPACE=Enter value VSPACE=Enter Value>" + Chr(13) + Chr(10) + "<TR>" + Chr(13) + Chr(10) + "<TD bgcolor=Write the backgroung color of cell or leave it blank>" + Chr(13) + Chr(10) + "<P>Write your Text here (1st cell of the FIRST COLUMN)" + Chr(13) + Chr(10) + "</TD><TD bgcolor=Write the backgroung color of cell or leave it blank>" + Chr(13) + Chr(10) + "<P>Write your Text here (2st cell of the FIRST COLUMN)" + Chr(13) + Chr(10) + "</TD><TD bgcolor=Write the backgroung color of cell or leave it blank>" + Chr(13) + Chr(10) + "<P>Write your Text here (3rd cell of the FIRST COLUMN)" + Chr(13) + Chr(10) + "</TD></TR>" + Chr(13) + Chr(10) + "</TABLE>"
End Sub

Private Sub mnuthreerow_Click()
RTBox.SelText = RTBox.SelText + "<TABLE BORDER=1 bgcolor=Write the color-code for all cells CELLPADDING=Enter Value  CELLSPACING=Enter Value HEIGHT=Enter Value in % WIDTH=Enter Value in % HSPACE=Enter value VSPACE=Enter Value>" + Chr(13) + Chr(10) + "<TD bgcolor=Write the backgroung color of cell or leave it blank>" + Chr(13) + Chr(10) + "<P>Write your Text here ( FIRST ROW)" + Chr(13) + Chr(10) + "</TD>" + Chr(13) + Chr(10) + "<TR></TR>" + Chr(13) + Chr(10) + "<TD bgcolor=Write the backgroung color of cell or leave it blank>" + Chr(13) + Chr(10) + "<P>Write your Text here (SECOND ROW)" + Chr(13) + Chr(10) + "</TD>" + Chr(13) + Chr(10) + "<TR></TR>" + Chr(13) + Chr(10) + "<TD bgcolor=Write the backgroung color of cell or leave it blank>" + Chr(13) + Chr(10) + "<P>Write your Text here ( THIRD ROW)" + Chr(13) + Chr(10) + "</TD>" + Chr(13) + Chr(10) + "</TABLE>"
End Sub

Private Sub mnutimeformat_Click()
Date.Show
End Sub

Private Sub mnutip_Click()
tip.Show
End Sub

Private Sub mnutmore_Click()
Form1.Show
End Sub

Private Sub mnutwo_Click()
RTBox.SelText = RTBox.SelText + "<TABLE BORDER=1 bgcolor=Write the color-code for all cells CELLPADDING=Enter Value  CELLSPACING=Enter Value HEIGHT=Enter Value in % WIDTH=Enter Value in % HSPACE=Enter value VSPACE=Enter Value>" + Chr(13) + Chr(10) + "<TR>" + Chr(13) + Chr(10) + "<TD bgcolor=Write the backgroung color of cell or leave it blank>" + Chr(13) + Chr(10) + "<P>Write your Text here (1st cell of the FIRST COLUMN)" + Chr(13) + Chr(10) + "</TD><TD bgcolor=Write the backgroung color of cell or leave it blank>" + Chr(13) + Chr(10) + "<P>Write your Text here (2st cell of the FIRST COLUMN)" + Chr(13) + Chr(10) + "</TD></TR>" + Chr(13) + Chr(10) + "</TABLE>"
End Sub

Private Sub mnutworow_Click()
RTBox.SelText = RTBox.SelText + "<TABLE BORDER=1 bgcolor=Write the color-code for all cells CELLPADDING=Enter Value  CELLSPACING=Enter Value HEIGHT=Enter Value in % WIDTH=Enter Value in % HSPACE=Enter value VSPACE=Enter Value>" + Chr(13) + Chr(10) + "<TD bgcolor=Write the backgroung color of cell or leave it blank>" + Chr(13) + Chr(10) + "<P>Write your Text here (1st cell of the FIRST ROW)" + Chr(13) + Chr(10) + "</TD>" + Chr(13) + Chr(10) + "<TR></TR>" + Chr(13) + Chr(10) + "<TD bgcolor=Write the backgroung color of cell or leave it blank>" + Chr(13) + Chr(10) + "<P>Write your Text here (2st cell of the FIRST ROW)" + Chr(13) + Chr(10) + "</TD>" + Chr(13) + Chr(10) + "</TABLE>"
End Sub

Private Sub mnuvariable_Click()
RTBox.SelText = "<VAR>" + RTBox.SelText + "</VAR>"
End Sub


Private Sub mnuwebbrowser_Click()
webbrowserfrm.Show
End Sub

Private Sub stop_Click()

End Sub

Private Sub play_Click()
If cmclick = 1 Then
File1_DblClick
File1_DblClick
cmclick = 0
Else
File1_DblClick
cmclick = 0
End If

End Sub



Private Sub Timer1_Timer()
Dim Hours As Single, Minutes As Single, Seconds As Single
Dim TrueHours As Single

Label1.Caption = Time & "  " & "(" & " " & Format$(Now, "short time") & " " & ")"
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

Private Sub fontsizecombo_Click()
RTBox.SelFontSize = Val(fontsizecombo.text)
End Sub

Private Sub fontstylecombo_Click()
RTBox.SelFontName = fontstylecombo.list(fontstylecombo.ListIndex)
End Sub

Private Sub Form_Load()
RTBox.SelAlignment = 0
frmMain1.tbToolBar.Buttons("Align Left").Value = tbrPressed
frmMain1.tbToolBar.Buttons("Center").Value = tbrUnpressed
frmMain1.tbToolBar.Buttons("Align Right").Value = tbrUnpressed
Cmdcos(6).Enabled = False
Cmdcos(11).Enabled = False
cmclick = 0
savecheck = False
ref.text = "Unsaved Document"
    Web.Visible = False
    Command8.Visible = False
    AddMenuBitmap Me, 0, 0, imlToolbarIcons, 1
    AddMenuBitmap Me, 0, 1, imlToolbarIcons, 2
    AddMenuBitmap Me, 0, 2, imlToolbarIcons, 3
   
    AddMenuBitmap Me, 0, 6, imlToolbarIcons, 25
    AddMenuBitmap Me, 0, 8, imlToolbarIcons, 4
    AddMenuBitmap Me, 1, 0, imlToolbarIcons, 5
    AddMenuBitmap Me, 1, 1, imlToolbarIcons, 6
    AddMenuBitmap Me, 1, 4, imlToolbarIcons, 7
    AddMenuBitmap Me, 1, 5, imlToolbarIcons, 8
    AddMenuBitmap Me, 1, 6, imlToolbarIcons, 9
    AddMenuBitmap Me, 1, 12, imlToolbarIcons, 11
   
    AddMenuBitmap Me, 1, 8, imlToolbarIcons, 10
    AddMenuBitmap Me, 3, 0, imlToolbarIcons, 22
    
    AddMenuBitmap Me, 4, 5, imlToolbarIcons, 24
    
    AddMenuBitmap Me, 2, 0, ImageList1, 9
    AddMenuBitmap Me, 5, 0, ImageList1, 1
    AddMenuBitmap Me, 5, 1, ImageList1, 10
    AddMenuBitmap Me, 5, 5, ImageList1, 4
    AddMenuBitmap Me, 5, 6, ImageList1, 7
    AddMenuBitmap Me, 5, 4, imlToolbarIcons, 24
    AddMenuBitmap Me, 5, 2, ImageList1, 2
    
    
    AddMenuBitmap Me, 0, 7, ImageList1, 6
    AddMenuBitmap Me, 7, 1, ImageList1, 12
    AddMenuBitmap Me, 7, 2, ImageList1, 11
    AddMenuBitmap Me, 8, 0, ImageList1, 3
    AddMenuBitmap Me, 8, 1, ImageList1, 5
    AddMenuBitmap Me, 8, 2, ImageList1, 8
    Left = 1
    
    
DTPicker1.Value = Format$(Now, "Short Date")
DTPicker1.Left = 6000
Command3.Visible = False
Image3.Visible = False
'StatusBar1.Panels(2).Text = Format$(Now, "SHORT DATE")
Combo3.AddItem "Row * Column"
Combo3.AddItem "1 * 1"
Combo3.AddItem "1 * 2"
Combo3.AddItem "1 * 3"
Combo3.AddItem "1 * 4"
Combo3.AddItem "1 * 5"
Combo3.AddItem "2 * 1"
Combo3.AddItem "2 * 2"
Combo3.AddItem "2 * 3"
Combo3.AddItem "2 * 4"
Combo3.AddItem "2 * 5"
Combo3.AddItem "3 * 1"
Combo3.AddItem "3 * 2"
Combo3.AddItem "3 * 3"
Combo3.AddItem "3 * 4"
Combo3.AddItem "3 * 5"
Combo3.AddItem "4 * 1"
Combo3.AddItem "4 * 2"
Combo3.AddItem "4 * 3"
Combo3.AddItem "4 * 4"
Combo3.AddItem "4 * 5"
Combo3.AddItem "5 * 1"
Combo3.AddItem "5 * 2"
Combo3.AddItem "5 * 3"
Combo3.AddItem "5 * 4"
Combo3.AddItem "5 * 5"
Combo3.Visible = False

list.AddItem "****************************************************"
list.AddItem "                       HTML Quick tags              "
list.AddItem "****************************************************"
list.AddItem Chr(187) & " " & "Acronym"
list.AddItem Chr(187) & " " & "Address"
list.AddItem Chr(187) & " " & "Add list Item"
list.AddItem Chr(187) & " " & "Align Center"
list.AddItem Chr(187) & " " & "Align Justify"
list.AddItem Chr(187) & " " & "Align Left"
list.AddItem Chr(187) & " " & "Align Right"
list.AddItem "---------------------------------------------------------------------"
list.AddItem Chr(187) & " " & "Base font"
list.AddItem Chr(187) & " " & "Big text"
list.AddItem Chr(187) & " " & "Blinking"
list.AddItem Chr(187) & " " & "Block Quote"
list.AddItem Chr(187) & " " & "Body"
list.AddItem Chr(187) & " " & "Bold"
list.AddItem Chr(187) & " " & "Book mark"
list.AddItem "---------------------------------------------------------------------"
list.AddItem Chr(187) & " " & "Caption"
list.AddItem Chr(187) & " " & "Center"
list.AddItem Chr(187) & " " & "Citation"
list.AddItem Chr(187) & " " & "Code"
list.AddItem Chr(187) & " " & "Comment"
list.AddItem "---------------------------------------------------------------------"
list.AddItem Chr(187) & " " & "Definition list"
list.AddItem Chr(187) & " " & "Div"
list.AddItem "---------------------------------------------------------------------"
list.AddItem Chr(187) & " " & "Emphasis"
list.AddItem Chr(187) & " " & "Extended Quotations"
list.AddItem "---------------------------------------------------------------------"
list.AddItem Chr(187) & " " & "Font"
list.AddItem Chr(187) & " " & "Form"
list.AddItem "---------------------------------------------------------------------"
list.AddItem Chr(187) & " " & "H1"
list.AddItem Chr(187) & " " & "H2"
list.AddItem Chr(187) & " " & "H3"
list.AddItem Chr(187) & " " & "H4"
list.AddItem Chr(187) & " " & "H5"
list.AddItem Chr(187) & " " & "H6"
list.AddItem Chr(187) & " " & "Horizontal Rules"
list.AddItem Chr(187) & " " & "HTML end"
list.AddItem Chr(187) & " " & "HTML start"
list.AddItem "---------------------------------------------------------------------"
list.AddItem Chr(187) & " " & "Image link"
list.AddItem Chr(187) & " " & "Image"
list.AddItem Chr(187) & " " & "Input Button"
list.AddItem Chr(187) & " " & "Input checkbox"
list.AddItem Chr(187) & " " & "Input Ratio Button"
list.AddItem Chr(187) & " " & "Input Submit"
list.AddItem Chr(187) & " " & "Input"
list.AddItem Chr(187) & " " & "Italic"
list.AddItem "---------------------------------------------------------------------"
list.AddItem Chr(187) & " " & "Keyboard"
list.AddItem "---------------------------------------------------------------------"
list.AddItem Chr(187) & " " & "Last Updated"
list.AddItem Chr(187) & " " & "line break"
list.AddItem Chr(187) & " " & "Link to bookmark"
list.AddItem Chr(187) & " " & "Link with image"
list.AddItem Chr(187) & " " & "Link"
list.AddItem "---------------------------------------------------------------------"
list.AddItem Chr(187) & " " & "Maarquee"
list.AddItem Chr(187) & " " & "Mail to"
list.AddItem Chr(187) & " " & "Meta"
list.AddItem Chr(187) & " " & "Multi-line Input"
list.AddItem "---------------------------------------------------------------------"
list.AddItem Chr(187) & " " & "Nested list"
list.AddItem Chr(187) & " " & "New HTML Page"
list.AddItem Chr(187) & " " & "No script"
list.AddItem Chr(187) & " " & "Non breaking space"
list.AddItem Chr(187) & " " & "Numbered list"
list.AddItem "---------------------------------------------------------------------"
list.AddItem Chr(187) & " " & "Option"
list.AddItem "---------------------------------------------------------------------"
list.AddItem Chr(187) & " " & "Paragraph Block"
list.AddItem Chr(187) & " " & "Preformatted Text"
list.AddItem "---------------------------------------------------------------------"
list.AddItem Chr(187) & " " & "Reset"
list.AddItem "---------------------------------------------------------------------"
list.AddItem Chr(187) & " " & "Select"
list.AddItem Chr(187) & " " & "Small text"
list.AddItem Chr(187) & " " & "Strikethru"
list.AddItem Chr(187) & " " & "Strong"
list.AddItem Chr(187) & " " & "Submit"
list.AddItem Chr(187) & " " & "Sub script"
list.AddItem Chr(187) & " " & "Super script"
list.AddItem "---------------------------------------------------------------------"
list.AddItem Chr(187) & " " & "Table"
list.AddItem Chr(187) & " " & "Table Wizard"
list.AddItem Chr(187) & " " & "Text Box"
list.AddItem Chr(187) & " " & "Title"
list.AddItem Chr(187) & " " & "Type writer"
list.AddItem "---------------------------------------------------------------------"
list.AddItem Chr(187) & " " & "Underline"
list.AddItem Chr(187) & " " & "Unnumbered list"
list.AddItem "---------------------------------------------------------------------"
list.AddItem Chr(187) & " " & "Variable"
list.AddItem "---------------------------------------------------------------------"
list.AddItem Chr(187) & " " & "White space"


unsaveddocument = 0
mnusubscript.Checked = False
mnususcript.Checked = False
mnutextback.Visible = True
mnuhtmlback.Visible = False
mnuhtmldocument.Visible = False
'mnutable.Visible = False
'mnuothers.Visible = False
mnuEditundo.Enabled = False
mnuredo.Enabled = False
mnuselectall.Enabled = False
mnuEditCut.Enabled = False
mnuEditCopy.Enabled = False
'mnuEditPaste.Enabled = False
 If Clipboard.GetFormat(vbCFText) Then
            tbToolBar.Buttons(13).Enabled = True
            mnuEditPaste.Enabled = True
        Else
            tbToolBar.Buttons(13).Enabled = False
            mnuEditPaste.Enabled = False
            End If
mnufind.Enabled = False
mnufindnext.Enabled = False
mnuReplace.Enabled = False
mnuclear.Enabled = False
mnudelete.Enabled = False
mnugoto.Enabled = False
mnuremove.Enabled = False
  'Command1.Enabled = False
'For i = 0 To 13
 ' Cmdcos(i).Enabled = False
 ' Next
'For i = 0 To 10
 'cmd(i).Enabled = False
 'Next
'For i = 0 To 4
 'Cmdop(i).Enabled = False
 'Next
  'cmde.Enabled = False
flag = 1
txt.text = ""
cnt = 0
j = 0
i = 1
'cmdc.Enabled = False
Label2.Caption = Format$(Now, "Long date")
Call Timer1_Timer
SSTab1.Visible = False
StatusBar1.Panels(1).text = "For Help Press F1"
    FLAGS = 0
    frmMain1.Caption = "Text writer1.0 (Unsaved Document)"
    Me.Left = GetSetting(App.Title, "Settings", "MainLeft", 1000)
    Me.Top = GetSetting(App.Title, "Settings", "MainTop", 1000)
    Me.Width = GetSetting(App.Title, "Settings", "MainWidth", 6500)
    Me.Height = GetSetting(App.Title, "Settings", "MainHeight", 6500)
    wordstyle.AddItem "Normal"
    wordstyle.AddItem "Bold"
    wordstyle.AddItem "Italic"
    wordstyle.AddItem "BoldItalic"
    wordstyle.AddItem "Underline"
    wordstyle.AddItem "Strikethru"
    wordstyle.AddItem "Uppercase"
    wordstyle.AddItem "Lowercase"
    wordstyle.AddItem "Initialcap"
    For i = 8 To 80 Step 1
    fontsizecombo.AddItem i
    Next i
    
    'For i = 1 To Printer.FontCount
    'fontstylecombo.AddItem Printer.Fonts(i)
    'Next i
    
    For X = 1 To Screen.FontCount
        fontstylecombo.AddItem Screen.Fonts(X)
    Next
    
     Image3.Width = 11175
     Image3.Height = 9200
     Image3.Top = 960
     Image3.Left = 0
    'RTBox.Width = 15255
    'RTBox.Height = 9200
    'RTBox.Top = 960
    'RTBox.Left = 0
    RTBox.Left = 0
    RTBox.Top = 1320
    RTBox.Width = 15330
    RTBox.Height = 8755
    Image4.Visible = True
    'Image5.Visible = True
    Image6.Visible = False
    
    Web.Top = RTBox.Top
      Web.Left = RTBox.Left
    Web.Height = RTBox.Height
    Web.Width = RTBox.Width
    'tbToolBar.Buttons(8).Enabled = False
    tbToolBar.Buttons(8).Enabled = False
    tbToolBar.Buttons(9).Enabled = False
    'tbToolBar.Buttons(10).Enabled = False
    tbToolBar.Buttons(11).Enabled = False
    tbToolBar.Buttons(12).Enabled = False
    'tbToolBar.Buttons(13).Enabled = False
    tbToolBar.Buttons(14).Enabled = False
    tbToolBar.Buttons(15).Enabled = False
    'tbToolBar.Buttons(17).Enabled = False
    'tbToolBar.Buttons(18).Enabled = False
    'tbToolBar.Buttons(19).Enabled = False
    'tbToolBar.Buttons(20).Enabled = False
    'tbToolBar.Buttons(22).Enabled = False
    'tbToolBar.Buttons(23).Enabled = False
 FLAGS = 0

Combo2.AddItem "*.jpg"
Combo2.AddItem "*.bmp"
Combo2.AddItem "*.JPG"
   frmMain1.StatusBar1.Panels(4).text = " Words : 0"
  frmMain1.StatusBar1.Panels(2).text = " Lines : 0"
  frmMain1.StatusBar1.Panels(5).text = " Characters : 0"
Me.WindowState = vbMaximized
If GetSetting(App.Title, "StartUp", "ShowTip", 1) = 1 Then
        Me.Show
        Me.WindowState = vbMaximized
        Load tip
        tip.Show 1
         ' Me makes the window minimized with the main form
End If

End Sub


Private Sub Form_unLoad(Cancel As Integer)
cmclick = 1
Command8.Visible = False
Web.Visible = False
MediaPlayer1.Command = "Close"
MediaPlayer1.Refresh
Unload Me

  
    Command3.Visible = False
    Image3.Visible = False
    RTBox.Visible = True
    Dim i As Integer
    If Unsaved = 3 And saveddocument <> 2 Then
    GoTo way
    End If
    If unsaveddocument = 1 And saveddocument <> 2 Then
    GoTo way
    End If
   
    
    If RTBox.text <> "" And unsaveddocument = 0 Or Unsaved = 3 And unsavedchanges = True Then 'Or unsaveddocument = 1 And UnsavedChanges = True Then    'saveddocument = 2 Then
    If MsgBox("Do you want to save the current Document?", vbYesNoCancel + vbInformation, "Save") = vbYes Then
    mnuFileSave_Click
    'cc_click
   GoTo way
    Else
   GoTo way
    End If
    ElseIf RTBox.text = "" Then
   GoTo way
    End If
    unsaveddocument = 2

way:    'close all sub forms
    For i = Forms.Count - 1 To 1 Step -1
        Unload Forms(i)
    Next
    If Me.WindowState <> vbMinimized Then
        SaveSetting App.Title, "Settings", "MainLeft", Me.Left
        SaveSetting App.Title, "Settings", "MainTop", Me.Top
        SaveSetting App.Title, "Settings", "MainWidth", Me.Width
        SaveSetting App.Title, "Settings", "MainHeight", Me.Height
    End If
    RTBox.text = ""
End Sub
Private Sub mnublack_Click()
RTBox.BackColor = RGB(0, 0, 0)
End Sub
Private Sub mnublinking_Click()
RTBox.SelText = "<BLINK>" + RTBox.SelText + "</BLINK>"
End Sub

Private Sub mnublue_Click()
RTBox.BackColor = RGB(0, 0, 255)
End Sub
Private Sub mnubold_Click()
         If frmMain1.RTBox Is Nothing Then Exit Sub
         With frmMain1
         If .RTBox.SelBold = True Then 'If it is bold
            .RTBox.SelBold = False 'Make it normal
            frmMain1.tbToolBar.Buttons("Bold").Value = tbrUnpressed 'Set button to unpressed
         Else 'If it is not bold
            .RTBox.SelBold = True 'Make it
            frmMain1.tbToolBar.Buttons("Bold").Value = tbrPressed 'Set button to pressed
        End If
    End With
End Sub
Private Sub mnubullet_Click()
If RTBox.SelBullet = False Then
RTBox.SelBullet = 1
frmMain1.tbToolBar.Buttons("Bullet").Value = tbrPressed 'Set button to unpressed
Else
RTBox.SelBullet = False
frmMain1.tbToolBar.Buttons("Bullet").Value = tbrUnpressed 'Set button to unpressed
End If
End Sub
Private Sub mnucalender_Click()
calender.Show
End Sub

Private Sub mnucenter_Click()
  RTBox.SelAlignment = 2
frmMain1.tbToolBar.Buttons("Align Left").Value = tbrUnpressed
frmMain1.tbToolBar.Buttons("Center").Value = tbrPressed
frmMain1.tbToolBar.Buttons("Align Right").Value = tbrUnpressed
End Sub

Private Sub mnuclear_Click()
RTBox.SelText = ""
End Sub
Private Sub mnuclock_Click()
clock.Show
End Sub

Private Sub mnucyan_Click()
RTBox.BackColor = QBColor(3)
End Sub
Private Sub mnuday_Click()
Dim i, Day, msg
i = InputBox("Enter a date(mm-dd-yyyy):", "Date Demo")
If Not IsDate(i) Then
   MsgBox "Invalid Date", , "Textwriter 1.0"
   Exit Sub
End If
Day = Format(i, "dddd")
msg = "Day of this date is:" + Day
MsgBox msg
RTBox.SelText = Day
End Sub
Private Sub mnuDefinitionLists_Click()
RTBox.SelText = Chr(13) + Chr(10) + RTBox.SelText + Chr(13) + Chr(10) + "<DL>" + Chr(13) + Chr(10) + "<DT> Paragraph Title" + Chr(13) + Chr(10) + "<DD> Your Text Here" + Chr(13) + Chr(10) + "<DT> Second Paragraph Title" + Chr(13) + Chr(10) + "<DD> Your Text Here" + Chr(13) + Chr(10) + "</DL>"
End Sub

Private Sub mnudelete_Click()
RTBox.text = ""
End Sub
Private Sub mnudtlong_Click()
RTBox.SelText = Format$(Now, "Long Date") & " " & Format$(Now, "Long Time")
End Sub

Private Sub mnudtshort_Click()
RTBox.SelText = Format$(Now, "Short Date") & " " & Format$(Now, "Short Time")
End Sub

Private Sub mnuExtendedQuotations_Click()
RTBox.SelText = Chr(13) + Chr(10) + RTBox.SelText + Chr(13) + Chr(10) + "<P>Your text" + Chr(13) + Chr(10) + "<BLOCKQUOTE>" + Chr(13) + Chr(10) + "<P> Write your text here to include lengthy quotations in a separate block on the screen" + Chr(13) + Chr(10) + "</P>" + Chr(13) + Chr(10) + "<P> Add more text here if you want</P>" + Chr(13) + Chr(10) + "</BLOCKQUOTE>"
End Sub

Private Sub mnufind_Click()
'e = InputBox("find what", "Find")
'RTBox.find (e)
find.Show
End Sub

Private Sub mnufonts_Click()
'frmfont.Show
On Error GoTo Cancel
dlgCommonDialog1.FLAGS = cdlCFScreenFonts Or cdlCFBoth Or cdlCFEffects
dlgCommonDialog1.ShowFont
RTBox.SelFontName = dlgCommonDialog1.FontName
RTBox.SelBold = dlgCommonDialog1.FontBold
RTBox.SelItalic = dlgCommonDialog1.FontItalic
RTBox.SelFontSize = dlgCommonDialog1.FontSize
RTBox.SelStrikeThru = dlgCommonDialog1.FontStrikethru
RTBox.SelUnderline = dlgCommonDialog1.FontUnderline
RTBox.SelColor = dlgCommonDialog1.Color
Cancel:
 End Sub

Private Sub mnuformatbar_Click()
    mnuformatbar.Checked = Not mnuformatbar.Checked
    CoolBar1.Visible = mnuformatbar.Checked
End Sub

Private Sub mnugreen10_Click(Index As Integer)
RTBox.BackColor = RGB(0, 255, 0)
End Sub


Private Sub mnuhblack_Click()
RTBox.SelText = "<FONT COLOR=#000000>" + RTBox.SelText + "</FONT>"
End Sub

Private Sub mnuhblue_Click()
RTBox.SelText = "<FONT COLOR=#0000FF>" + RTBox.SelText + "</FONT>"
End Sub

Private Sub mnuhblueviolet_Click()
RTBox.SelText = "<FONT COLOR=#9F5F9F>" + RTBox.SelText + "</FONT>"
End Sub


Private Sub mnuhbrown_Click()
RTBox.SelText = "<FONT COLOR=#A62A2A>" + RTBox.SelText + "</FONT>"
End Sub

Private Sub mnuhcyan_Click()
RTBox.SelText = "<FONT COLOR=#00FFFF>" + RTBox.SelText + "</FONT>"
End Sub

Private Sub mnuhdarkbrown_Click()
RTBox.SelText = "<FONT COLOR=#5C4033>" + RTBox.SelText + "</FONT>"
End Sub

Private Sub mnuhgold_Click()
RTBox.SelText = "<FONT COLOR=#CD7F32>" + RTBox.SelText + "</FONT>"
End Sub

Private Sub mnuhgreen_Click()
RTBox.SelText = "<FONT COLOR=#2F4F2F>" + RTBox.SelText + "</FONT>"
End Sub



Private Sub mnuhmagenta_Click()
RTBox.SelText = "<FONT COLOR=#FF00FF>" + RTBox.SelText + "</FONT>"
End Sub

Private Sub mnuhorange_Click()
RTBox.SelText = "<FONT COLOR=#FF7F00>" + RTBox.SelText + "</FONT>"
End Sub

Private Sub mnuHorizontalRules_Click()
RTBox.SelText = Chr(13) + Chr(10) + RTBox.SelText + Chr(13) + Chr(10) + "<HR SIZE= Enter the desired size    WIDTH=" + "Enter a number %>"
End Sub

Private Sub mnuhred_Click()
RTBox.SelText = "<FONT COLOR=#FF0000>" + RTBox.SelText + "</FONT>"
End Sub

Private Sub mnuhtmlnew_Click()
Web.Visible = False
Command8.Visible = False
RTBox.Visible = True
DTPicker1.Left = 8040
Command3.Visible = False
Image3.Visible = False
Combo3.Visible = True
mnuhtmlback.Visible = True
mnutextback.Visible = False
mnuhtmldocument.Visible = True
'mnuothers.Visible = True
StatusBar1.Panels(1).text = "New Blank HTML Document....."
mnutextdocument.Visible = False
'mnutable.Visible = True
FLAGS = 1
If RTBox.text <> "" Then
If MsgBox("Do you want to save your current project?", vbYesNo + vbInformation, "Save") = vbYes Then
mnuFileSave_Click
Else
   
    RTBox.text = ""
    'frmhtmlbegin.Show
    'RTBox.Text = "<HTML>" & vbCrLf & vbCrLf & "<HEAD>" & vbCrLf & "<TITLE>" & "Web Page</TITLE>" & vbCrLf & "</HEAD>" & vbCrLf & vbCrLf & "<BODY>" & vbCrLf & vbCrLf & "</BODY>" & vbCrLf & vbCrLf & "</HTML>" & vbCrLf & ""
  
'RTBox.SelText = "<HTML>" + Chr(13) + Chr(10) + "<HEAD>" + Chr(13) + Chr(10) + "<TITLE>" + "Enter title" + "</TITLE>" + Chr(13) + Chr(10) + "<LINK REV=" + cmdOpen.Caption + "made" + cmdOpen.Caption + "  " + "HREF=" + cmdOpen.Caption + "mailto:" + "Enter Mail" + cmdOpen.Caption + ">" + Chr(13) + Chr(10) + "<META NAME=" + cmdOpen.Caption + "generator" + cmdOpen.Caption + "  " + "CONTENT=" + cmdOpen.Caption + "Text writer1.0 1.0" + cmdOpen.Caption + ">" + Chr(13) + Chr(10) + "<META" + " NAME=" + cmdOpen.Caption + "author" + cmdOpen.Caption + "  " + "CONTENT=" + cmdOpen.Caption + "Enter name" + cmdOpen.Caption + ">" + Chr(13) + Chr(10) + "<META" + " NAME=" + cmdOpen.Caption + "description" + cmdOpen.Caption + "  " + "CONTENT=" + cmdOpen.Caption + "Enter Description" + cmdOpen.Caption + ">" + Chr(13) + Chr(10) + "<META" + " NAME=" + cmdOpen.Caption + "keywords" + cmdOpen.Caption + "  " + " CONTENT=" + cmdOpen.Caption + "Enter Keyword" + cmdOpen.Caption + ">" + Chr(13) + Chr(10) + "</HEAD>"
'RTBox.SelText = Chr(10) + "<BODY" + "  " + "BGCOLOR=" + cmdOpen.Caption + "#FFFFFF" + cmdOpen.Caption + "  " + "TEXT=" + cmdOpen.Caption + "#000000" + cmdOpen.Caption + "  " + "LINK=" + cmdOpen.Caption + "#0000FF" + cmdOpen.Caption + "  " + "VLINK=" + cmdOpen.Caption + "#FFC0CB" + cmdOpen.Caption + "  " + "ALINK=" + cmdOpen.Caption + "#FF0000" + cmdOpen.Caption + "  " + "BACKGROUND=" + cmdOpen.Caption + "Enter Picture File Name" + cmdOpen.Caption + ">" + Chr(10) + Chr(13) + "</BODY>" + Chr(10) + "</HTML>"
RTBox.Font.Size = 9
RTBox.SelText = "<HTML>" + Chr(13) + Chr(10) + "<HEAD>" + Chr(13) + Chr(10) + "<TITLE>" + "Enter title" + "</TITLE>" + Chr(13) + Chr(10) + "<LINK REV=" + Chr(147) + "made" + Chr(148) + "  " + "HREF=" + Chr(147) + "mailto:" + "Enter Mail" + Chr(147) + ">" + Chr(13) + Chr(10) + "<META NAME=" + Chr(147) + "generator" + Chr(148) + "  " + "CONTENT=" + Chr(147) + "Text writer1.0 " + Chr(148) + ">" + Chr(13) + Chr(10) + "<META" + " NAME=" + Chr(147) + "author" + Chr(147) + "  " + "CONTENT=" + Chr(147) + "Enter name" + Chr(147) + ">" + Chr(13) + Chr(10) + "<META" + " NAME=" + Chr(147) + "description" + Chr(147) + "  " + "CONTENT=" + Chr(147) + "Enter Description" + Chr(147) + ">" + Chr(13) + Chr(10) + "<META" + " NAME=" + Chr(147) + "keywords" + Chr(147) + "  " + " CONTENT=" + Chr(147) + "Enter Keyword" + Chr(147) + ">" + Chr(13) + Chr(10) + "</HEAD>"
RTBox.SelText = Chr(10) + "<BODY" + "  " + "BGCOLOR=" + Chr(147) + "#FFFFFF" + Chr(147) + "  " + "TEXT=" + Chr(147) + "#000000" + Chr(147) + "  " + "LINK=" + Chr(147) + "#0000FF" + Chr(147) + "  " + "VLINK=" + Chr(147) + "#FFC0CB" + Chr(147) + "  " + "ALINK=" + Chr(147) + "#FF0000" + Chr(147) + "  " + "BACKGROUND=" + Chr(147) + "Enter Picture File Name" + Chr(147) + ">" + Chr(10) + Chr(13) + "<H1></H1>" + Chr(10) + Chr(13) + "<P>...  content here!!!...</P>" + Chr(10) + Chr(13) + "<HR>" + Chr(10) + Chr(13) + "<P><SMALL>Created on ..." + Format$(Now, "Long date") + "</SMALL></P>" + Chr(10) + Chr(13) + "</BODY>" + Chr(10) + "</HTML>"
RTBox.SetFocus
frmMain1.Caption = "Text writer1.0 (Unsaved Document)"
  unsaveddocument = 0
RTBox.SetFocus
mnuadd_Click
End If
Else
     
      RTBox.text = ""
     'frmhtmlbegin.Show
    'RTBox.Text = "<HTML>" & vbCrLf & vbCrLf & "<HEAD>" & vbCrLf & "<TITLE>" & "Web Page</TITLE>" & vbCrLf & "</HEAD>" & vbCrLf & vbCrLf & "<BODY>" & vbCrLf & vbCrLf & "</BODY>" & vbCrLf & vbCrLf & "</HTML>" & vbCrLf & ""
    'RTBox.SelText = "<HTML>" + Chr(13) + Chr(10) + "<HEAD>" + Chr(13) + Chr(10) + "<TITLE>" + "Enter title" + "</TITLE>" + Chr(13) + Chr(10) + "<LINK REV=" + cmdOpen.Caption + "made" + cmdOpen.Caption + "  " + "HREF=" + cmdOpen.Caption + "mailto:" + "Enter Mail" + cmdOpen.Caption + ">" + Chr(13) + Chr(10) + "<META NAME=" + cmdOpen.Caption + "generator" + cmdOpen.Caption + "  " + "CONTENT=" + cmdOpen.Caption + "Text writer1.0 1.0" + cmdOpen.Caption + ">" + Chr(13) + Chr(10) + "<META" + " NAME=" + cmdOpen.Caption + "author" + cmdOpen.Caption + "  " + "CONTENT=" + cmdOpen.Caption + "Enter name" + cmdOpen.Caption + ">" + Chr(13) + Chr(10) + "<META" + " NAME=" + cmdOpen.Caption + "description" + cmdOpen.Caption + "  " + "CONTENT=" + cmdOpen.Caption + "Enter Description" + cmdOpen.Caption + ">" + Chr(13) + Chr(10) + "<META" + " NAME=" + cmdOpen.Caption + "keywords" + cmdOpen.Caption + "  " + " CONTENT=" + cmdOpen.Caption + "Enter Keyword" + cmdOpen.Caption + ">" + Chr(13) + Chr(10) + "</HEAD>"
    'RTBox.SelText = Chr(10) + "<BODY" + "  " + "BGCOLOR=" + cmdOpen.Caption + "#FFFFFF" + cmdOpen.Caption + "  " + "TEXT=" + cmdOpen.Caption + "#000000" + cmdOpen.Caption + "  " + "LINK=" + cmdOpen.Caption + "#0000FF" + cmdOpen.Caption + "  " + "VLINK=" + cmdOpen.Caption + "#FFC0CB" + cmdOpen.Caption + "  " + "ALINK=" + cmdOpen.Caption + "#FF0000" + cmdOpen.Caption + "  " + "BACKGROUND=" + cmdOpen.Caption + "Enter Picture File Name" + cmdOpen.Caption + ">" + Chr(10) + Chr(13) + "</BODY>" + Chr(10) + "</HTML>"
  RTBox.Font.Size = 9
  RTBox.SelText = "<HTML>" + Chr(13) + Chr(10) + "<HEAD>" + Chr(13) + Chr(10) + "<TITLE>" + "Enter title" + "</TITLE>" + Chr(13) + Chr(10) + "<LINK REV=" + Chr(147) + "made" + Chr(148) + "  " + "HREF=" + Chr(147) + "mailto:" + "Enter Mail" + Chr(147) + ">" + Chr(13) + Chr(10) + "<META NAME=" + Chr(147) + "generator" + Chr(148) + "  " + "CONTENT=" + Chr(147) + "Text writer1.0 " + Chr(148) + ">" + Chr(13) + Chr(10) + "<META" + " NAME=" + Chr(147) + "author" + Chr(147) + "  " + "CONTENT=" + Chr(147) + "Enter name" + Chr(147) + ">" + Chr(13) + Chr(10) + "<META" + " NAME=" + Chr(147) + "description" + Chr(147) + "  " + "CONTENT=" + Chr(147) + "Enter Description" + Chr(147) + ">" + Chr(13) + Chr(10) + "<META" + " NAME=" + Chr(147) + "keywords" + Chr(147) + "  " + " CONTENT=" + Chr(147) + "Enter Keyword" + Chr(147) + ">" + Chr(13) + Chr(10) + "</HEAD>"
'RTBox.SelText = Chr(10) + "<BODY" + "  " + "BGCOLOR=" + Chr(147) + "#FFFFFF" + Chr(147) + "  " + "TEXT=" + Chr(147) + "#000000" + Chr(147) + "  " + "LINK=" + Chr(147) + "#0000FF" + Chr(147) + "  " + "VLINK=" + Chr(147) + "#FFC0CB" + Chr(147) + "  " + "ALINK=" + Chr(147) + "#FF0000" + Chr(147) + "  " + "BACKGROUND=" + Chr(147) + "Enter Picture File Name" + Chr(147) + ">" + Chr(10) + Chr(13) + "</BODY>" + Chr(10) + "</HTML>"
 RTBox.SelText = Chr(10) + "<BODY" + "  " + "BGCOLOR=" + Chr(147) + "#FFFFFF" + Chr(147) + "  " + "TEXT=" + Chr(147) + "#000000" + Chr(147) + "  " + "LINK=" + Chr(147) + "#0000FF" + Chr(147) + "  " + "VLINK=" + Chr(147) + "#FFC0CB" + Chr(147) + "  " + "ALINK=" + Chr(147) + "#FF0000" + Chr(147) + "  " + "BACKGROUND=" + Chr(147) + "Enter Picture File Name" + Chr(147) + ">" + Chr(10) + Chr(13) + "<H1></H1>" + Chr(10) + Chr(13) + "<P>...  content here!!!...</P>" + Chr(10) + Chr(13) + "<HR>" + Chr(10) + Chr(13) + "<P><SMALL>Created on ..." + Format$(Now, "Long date") + "</SMALL></P>" + Chr(10) + Chr(13) + "</BODY>" + Chr(10) + "</HTML>"
  RTBox.SetFocus
  frmMain1.Caption = "Text writer1.0 (Unsaved Document)"
  unsaveddocument = 0
RTBox.SetFocus
mnuadd_Click
End If
End Sub



Private Sub mnuhwhite_Click()
RTBox.SelText = "<FONT COLOR=#FFFFFF>" + RTBox.SelText + "</FONT>"
End Sub

Private Sub mnuhyellow_Click()
RTBox.SelText = "<FONT COLOR=#FFFF00>" + RTBox.SelText + "</FONT>"
End Sub

Private Sub mnuinitcap_Click()
          'z1 = Mid(RTBox.SelText, 1, 1)
          'z2 = Mid(RTBox.SelText, 2)
          'RTBox.SelText = Format(UCase(z1) & z2)
          RTBox.SelText = StrConv(RTBox.SelText, vbProperCase)
          RTBox.SetFocus
End Sub

Private Sub mnuitlalic_Click()
        If frmMain1.RTBox Is Nothing Then Exit Sub
         With frmMain1
         If .RTBox.SelItalic = True Then 'If it is bold
            .RTBox.SelItalic = False 'Make it normal
            frmMain1.tbToolBar.Buttons("Italic").Value = tbrUnpressed 'Set button to unpressed
         Else 'If it is not bold
            .RTBox.SelItalic = True 'Make it
            frmMain1.tbToolBar.Buttons("Italic").Value = tbrPressed 'Set button to pressed
        End If
    End With
End Sub

Private Sub mnulblue_Click()
RTBox.BackColor = QBColor(9)
End Sub

Private Sub mnulcyan_Click()
RTBox.BackColor = QBColor(11)
End Sub

Private Sub mnuldformat_Click()
RTBox.SelText = Format$(Now, "Long date")
End Sub

Private Sub mnuleft_Click()
RTBox.SelAlignment = 0
frmMain1.tbToolBar.Buttons("Align Left").Value = tbrPressed
frmMain1.tbToolBar.Buttons("Center").Value = tbrUnpressed
frmMain1.tbToolBar.Buttons("Align Right").Value = tbrUnpressed
End Sub

Private Sub mnuLineBreaks_Click()
RTBox.SelText = Chr(13) + Chr(10) + RTBox.SelText + Chr(13) + Chr(10) + "<BR>"
End Sub

Private Sub mnulinecount_Click()
Dim lineCount As Integer, pos As Integer, txt As String
'lineCount = 0
'pos = 1
'txt = RTBox.text
'Do While pos <> 0
'pos = InStr(pos + 1, txt, Chr$(13))
'lineCount = lineCount + 1
'DoEvents
'Loop
Dim TotalLines As Long
    TotalLines = SendMessage(RTBox.hwnd, &HBA, 0, 0&)
MsgBox "Number of line(s) of text : " + CStr(TotalLines), 32, "LineCount "
End Sub


Private Sub mnulower_Click()
 RTBox.SelText = Format(RTBox.SelText, "<")
         RTBox.SetFocus
End Sub

Private Sub mnultformat_Click()
    RTBox.SelText = Format$(Now, "Long Time")
End Sub

Private Sub mnulyello_Click()
RTBox.BackColor = QBColor(14)
End Sub
Private Sub mnumaximized_Click()
Me.WindowState = vbMaximized
End Sub

Private Sub mnuMinimized_Click()
Me.WindowState = vbMinimized
End Sub

Private Sub mnumore_Click()
dlgCommonDialog1.FLAGS = &H2
dlgCommonDialog1.ShowColor
RTBox.BackColor = dlgCommonDialog1.Color

End Sub

Private Sub mnuNestedLists_Click()
RTBox.SelText = Chr(13) + Chr(10) + RTBox.SelText + Chr(13) + Chr(10) + "<UL>" + Chr(13) + Chr(10) + "<LI> Sub-heading" + Chr(13) + Chr(10) + "<UL>" + Chr(13) + Chr(10) + "<LI> Your Text Here" + Chr(13) + Chr(10) + "<LI> Your Text Here" + Chr(13) + Chr(10) + "<LI> Your Text Here. Add more <LI> if necessary" + Chr(13) + Chr(10) + "</UL>" + Chr(13) + Chr(10) + "<LI> Second Sub-heading" + Chr(13) + Chr(10) + "<UL>" + Chr(13) + Chr(10) + "<LI> Your Text Here" + Chr(13) + Chr(10) + "<LI> Your Text Here" + Chr(13) + Chr(10) + "<LI> Your Text Here. Add more <LI> if necessary" + Chr(13) + Chr(10) + "</UL>" + Chr(13) + Chr(10) + "</UL>"
End Sub

Private Sub mnuNumberedLists_Click()
RTBox.SelText = Chr(13) + Chr(10) + RTBox.SelText + Chr(13) + Chr(10) + "<OL>" + Chr(13) + Chr(10) + "<LI> Type your text here" + Chr(13) + Chr(10) + "<LI> Type your text here" + Chr(13) + Chr(10) + "<LI> Type your text here and add more <LI> if necessary" + Chr(13) + Chr(10) + "</OL>"
End Sub





Private Sub mnupic_Click()
  ' Setting CancelError = True forces the program to errhandler: if the Cancel Button is clicked,
        ' giving the ActiveForm focus once again...
  ' dlgCommonDialog.CancelError = True
   'On Error GoTo ErrorHandler
 '  dlgCommonDialog.DialogTitle = "Select Picture..."
  ' dlgCommonDialog.Filter = "Bitmaps (*.bmp;*.dib)|*.bmp;*.dib|GIF Images (*.gif)|*.gif|JPEG Images (*.jpg)|*.jpg|"
   'dlgCommonDialog.ShowOpen
    
                        '  Load picture into the Active Form... and NOT into a new Document.
   'frmMain1.Picture = LoadPicture(dlgCommonDialog.FileName)
                        ' Copy the picture into the clipboard.
   ' Clipboard.Clear
   ' Clipboard.SetData frmMain1.Picture
    
                         ' Paste the picture into the RichTextBox.
     'SendMessage frmMain1.RTBox.hWnd, WM_PASTE, 0, 0&
    ' frmMain1.RTBox.SetFocus
'ErrorHandler:
insert.Show
End Sub

Private Sub mnured_Click()
RTBox.BackColor = RGB(255, 0, 0)
End Sub




Private Sub mnuregular_Click()
 RTBox.SelBold = False
          RTBox.SelUnderline = False
          RTBox.SelStrikeThru = False
          RTBox.SetFocus
End Sub



Private Sub mnuright_Click()
RTBox.SelAlignment = 1
frmMain1.tbToolBar.Buttons("Align Left").Value = tbrUnpressed
frmMain1.tbToolBar.Buttons("Center").Value = tbrUnpressed
frmMain1.tbToolBar.Buttons("Align Right").Value = tbrPressed
End Sub

Private Sub mnusdformat_Click()
 RTBox.SelText = Format$(Now, "Short Date")
End Sub

Private Sub mnuselectall_Click()
RTBox.SelStart = 0
RTBox.SelLength = Len(RTBox.text)

End Sub

Private Sub mnushstrikethru_Click()
RTBox.SelText = "<strike>" + RTBox.SelText + "</strike>"
End Sub

Private Sub mnustformat_Click()
RTBox.SelText = Format$(Now, "Short Time")
End Sub

Private Sub mnuStrikethru_Click()
            If frmMain1.RTBox Is Nothing Then Exit Sub
         With frmMain1
         If .RTBox.SelStrikeThru = True Then 'If it is bold
            .RTBox.SelStrikeThru = False 'Make it normal
            frmMain1.tbToolBar.Buttons("Strike Through").Value = tbrUnpressed 'Set button to unpressed
         Else 'If it is not bold
            .RTBox.SelStrikeThru = True 'Make it
            frmMain1.tbToolBar.Buttons("Strike Through").Value = tbrPressed 'Set button to pressed
        End If
    End With
End Sub



Private Sub mnusymbols_Click()
symbols.Show , Me
End Sub

Private Sub mnutextdocument_Click()
dlgCommonDialog1.ShowColor
RTBox.SelColor = dlgCommonDialog1.Color
RTBox.SetFocus
End Sub

Private Sub mnutextnew_Click()
RTBox.Visible = True
DTPicker1.Left = 6000
Command3.Visible = False
Web.Visible = False
Command8.Visible = False
Image3.Visible = False
FLAGS = 0
If RTBox.text <> "" And unsaveddocument = 0 Then
If MsgBox("Do you want to save your current project?", vbYesNo + vbInformation, "Save") = vbYes Then
mnuFileSave_Click
RTBox = ""
RTBox.SetFocus
unsaveddocument = 0
frmMain1.Caption = "Text writer 1.0 (Unsaved Document)"
Else
RTBox = ""
RTBox.SetFocus
unsaveddocument = 0
frmMain1.Caption = "Text writer1.0 (Unsaved Document)"
End If
Else
RTBox = ""
RTBox.SetFocus
unsaveddocument = 0
frmMain1.Caption = "Text writer1.0 (Unsaved Document)"
End If
Combo3.Visible = False
mnutextback.Visible = True
mnuhtmlback.Visible = False
'mnuothers.Visible = False
StatusBar1.Panels(1).text = "New Blank TEXT Document....."
mnutextdocument.Visible = True
mnuhtmldocument.Visible = False
'  mnutable.Visible = False
End Sub




Private Sub mnuTypewriter_Click()
RTBox.SelText = "<PRE>" + RTBox.SelText + "</PRE>"
End Sub

Private Sub mnuunderline_Click()
  If frmMain1.RTBox Is Nothing Then Exit Sub
         With frmMain1
         If .RTBox.SelUnderline = True Then 'If it is bold
            .RTBox.SelUnderline = False 'Make it normal
            frmMain1.tbToolBar.Buttons("Underline").Value = tbrUnpressed 'Set button to unpressed
         Else 'If it is not bold
            .RTBox.SelUnderline = True 'Make it
            frmMain1.tbToolBar.Buttons("Underline").Value = tbrPressed 'Set button to pressed
        End If
    End With
End Sub

Private Sub mnuUnnumberesLists_Click()
RTBox.SelText = Chr(13) + Chr(10) + RTBox.SelText + Chr(13) + Chr(10) + "<UL>" + Chr(13) + Chr(10) + "<LI> Type your text here" + Chr(13) + Chr(10) + "<LI> Type your text here" + Chr(13) + Chr(10) + "<LI> Type your text here and add more <LI> if necessary" + Chr(13) + Chr(10) + "</UL>"
End Sub

Private Sub mnuupper_Click()
RTBox.SelText = Format(RTBox.SelText, ">")
         RTBox.SetFocus
End Sub

Private Sub mnuwhite_Click()
RTBox.BackColor = RGB(255, 255, 255)
End Sub




Private Sub mnuWhitespace_Click()
RTBox.SelText = Chr(13) + Chr(10) + RTBox.SelText + Chr(13) + Chr(10) + "<P>&nbsp;</P>"
End Sub

Private Sub mnuwordcount_Click()
WordCounter (RTBox.text)
End Sub
Function countWords(str As String) As Long
Dim words() As String, i As Long, numWords As Long
words = Split(str, " ")
For i = LBound(words) To UBound(words)
If isWord(words(i)) Then
numWords = numWords + 1
End If
Next
countWords = numWords
End Function
Function isWord(str As String) As Boolean
Dim ret As Boolean
If str = Null Then
ret = False
ElseIf Len(str) = 0 Then
ret = False
ElseIf Mid(str, 1, 1) >= "A" And Mid(str, 1, 1) <= "Z" Then
ret = True
ElseIf Mid(str, 1, 1) >= "a" And Mid(str, 1, 1) <= "z" Then
ret = True
Else
ret = False
End If
isWord = ret
End Function

'End Function

Private Sub mnuyellow_Click()
RTBox.BackColor = QBColor(14)
End Sub







Private Sub Slider1_Click()
RTBox.SelIndent = Slider1.Value
End Sub

Private Sub tbToolBar_ButtonClick(ByVal Button As MSComctlLib.Button)
Dim k1 As Integer
    On Error Resume Next
    Select Case Button.Key
        Case "New"
            mnutextnew_Click
        Case "Open"
            mnuFileOpen_Click
        Case "Save"
            mnuFileSave_Click
        Case "Print"
            mnuFilePrint_Click
        Case "Print Preview"
             mnuFilePrintPreview_Click
        Case "Undo"
          mnuEditUndo_Click
        Case "Redo"
          mnuredo_Click
        Case "Cut"
            mnuEditCut_Click
        Case "Copy"
            mnuEditCopy_Click
        Case "Paste"
            mnuEditPaste_Click
        Case "Find"
              mnufind_Click
        Case "Delete"
            mnudelete_Click
        Case "Bold"
            If RTBox.SelBold = False Then
            RTBox.SelBold = True
            Else
            RTBox.SelBold = False
            End If
            Button.Value = IIf(RTBox.SelBold, tbrPressed, tbrUnpressed)
            RTBox.SetFocus

        Case "Italic"
           If RTBox.SelItalic = False Then
           RTBox.SelItalic = True
           Else
           RTBox.SelItalic = False
           End If
           Button.Value = IIf(RTBox.SelItalic, tbrPressed, tbrUnpressed)
           RTBox.SetFocus

        Case "Underline"
           If RTBox.SelUnderline = False Then
           RTBox.SelUnderline = True
           Else
           RTBox.SelUnderline = False
           End If
           Button.Value = IIf(RTBox.SelUnderline, tbrPressed, tbrUnpressed)
           RTBox.SetFocus

        Case "Strike Through"
           If RTBox.SelStrikeThru = False Then
           RTBox.SelStrikeThru = True
           Else
           RTBox.SelStrikeThru = False
           End If
           Button.Value = IIf(RTBox.SelStrikeThru, tbrPressed, tbrUnpressed)
           RTBox.SetFocus
        Case "Align Left"
            RTBox.SelAlignment = 0
            frmMain1.tbToolBar.Buttons("Align Left").Value = tbrPressed
            frmMain1.tbToolBar.Buttons("Center").Value = tbrUnpressed
            frmMain1.tbToolBar.Buttons("Align Right").Value = tbrUnpressed
        Case "Center"
            RTBox.SelAlignment = 2
            frmMain1.tbToolBar.Buttons("Align Left").Value = tbrUnpressed
            frmMain1.tbToolBar.Buttons("Center").Value = tbrPressed
            frmMain1.tbToolBar.Buttons("Align Right").Value = tbrUnpressed
        Case "Align Right"
            RTBox.SelAlignment = 1
            frmMain1.tbToolBar.Buttons("Align Left").Value = tbrUnpressed
            frmMain1.tbToolBar.Buttons("Center").Value = tbrUnpressed
            frmMain1.tbToolBar.Buttons("Align Right").Value = tbrPressed
        Case "Font color"
             mnutextdocument_Click
        Case "Bullet"
             mnubullet_Click
        Case "Date & Time"
             mnudtlong_Click
        Case "Insert Picture"
             mnupic_Click
        Case "Upper Case"
             mnuupper_Click
        Case "Lower Case"
             mnulower_Click
        Case "Increase font size"
          k1 = RTBox.SelFontSize
          If k1 < 80 Then
          RTBox.SelFontSize = k1 + 1
          Else
          GoTo errhan:
          End If
       Case "Decrease font size"
          k1 = RTBox.SelFontSize
          If k1 > 8 Then
          RTBox.SelFontSize = k1 - 1
          Else
          GoTo errhan:
          End If
            End Select
         Exit Sub
errhan:
 MsgBox "cannot modified the fontsize", vbInformation, "Invalid"
End Sub

Private Sub mnuHelpAbout_Click()
    frmAbout.Show vbModal, Me
End Sub

Private Sub mnuHelpSearchForHelpOn_Click()
    Dim nRet As Integer


    'if there is no helpfile for this project display a message to the user
    'you can set the HelpFile for your application in the
    'Project Properties dialog
    If Len(App.HelpFile) = 0 Then
        MsgBox "Unable to display Help Contents. There is no Help associated with this project.", vbInformation, Me.Caption
    Else
        On Error Resume Next
        nRet = OSWinHelp(Me.hwnd, App.HelpFile, 261, 0)
        If err Then
            MsgBox err.Description
        End If
    End If

End Sub

Private Sub mnuHelpContents_Click()
   ' Dim nRet As Integer


    'if there is no helpfile for this project display a message to the user
    'you can set the HelpFile for your application in the
    'Project Properties dialog
   ' If Len(App.HelpFile) = 0 Then
        'MsgBox "Unable to display Help Contents. There is no Help associated with this project.", vbInformation, Me.Caption
    'Else
       ' On Error Resume Next
       ' nRet = OSWinHelp(Me.hWnd, App.HelpFile, 3, 0)
        'If err Then
         '   MsgBox err.Description
       ' End If
    'End If
content.Show
End Sub




Private Sub mnuToolsOptions_Click()
   ' frmOptions.Show vbModal, Me
End Sub



Private Sub mnuViewOptions_Click()
    'frmOptions.Show vbModal, Me
End Sub



Private Sub mnuViewStatusBar_Click()
    mnuViewStatusBar.Checked = Not mnuViewStatusBar.Checked
    StatusBar1.Visible = mnuViewStatusBar.Checked
End Sub

Private Sub mnuViewToolbar_Click()
    mnuViewToolBar.Checked = Not mnuViewToolBar.Checked
    tbToolBar.Visible = mnuViewToolBar.Checked
End Sub


Private Sub mnuEditPaste_Click()
' RTBox.SelText = a1
'If Clipboard.GetText = "" Then
'MsgBox "hai"
'Else
On Error GoTo err
SendMessage RTBox.hwnd, WM_PASTE, 0&, 0& 'Paste
'frmMain1.RTBox.SelText = Clipboard.GetText
RTBox.SetFocus
'End If
err:
'On Error Resume Next
'RTBox.SelText = Clipboard.GetText
End Sub

Private Sub mnuEditCopy_Click()
'   a1 = RTBox.SelText
 SendMessage RTBox.hwnd, WM_COPY, 0&, 0& 'Copy
' Clipboard.SetText frmMain1.RTBox.SelText
 mnuEditPaste.Enabled = True
    'On Error Resume Next
    'Clipboard.SetText RTBox.SelText
  tbToolBar.Buttons(13).Enabled = True
End Sub

Private Sub mnuEditCut_Click()
  ' a1 = RTBox.SelText
   SendMessage RTBox.hwnd, WM_CUT, 0&, 0& 'Cut
   'Clipboard.SetText frmMain1.RTBox.SelText
    RTBox.SelText = vbNullString
  ' RTBox.SelText = ""
   mnuEditPaste.Enabled = True
    ' On Error Resume Next
  'Clipboard.SetText RTBox.SelText 'RTF
  'RTBox.SelText = vbNullString
  tbToolBar.Buttons(13).Enabled = True
End Sub


Private Sub mnuFilePrint_Click()
'dlgCommonDialog.CancelError = True
'On Error GoTo errhandler:
'dlgCommonDialog.ShowPrinter
PrintRTF frmMain1.RTBox, 720, 720, 720, 720 'Call PrintRTF sub
'PrintRTF frmMain1.RTBox, 0, 0, 0, 0 'Call PrintRTF sub
'dlgCommonDialog.CancelError = True
'On Error GoTo errhandler:
'dlgCommonDialog.ShowPrinter
'On Error GoTo errhandler
 ' Dim BeginPage, EndPage, NumCopies, i
  ' dlgCommonDialog.CancelError = True
  'dlgCommonDialog.ShowPrinter
  'BeginPage = dlgCommonDialog.FromPage
  'EndPage = dlgCommonDialog.ToPage
  'NumCopies = dlgCommonDialog.Copies
  'For i = 1 To NumCopies
  'Printer.Print RTBox.Text
  'Next i
'Printer.EndDoc
  'Exit Sub
'errhandler:
   'Exit Sub
 '  Select Case err.Number
   '     Case 482    'Printer error
  '          MsgBox "Make sure that you have a printer installed.  If a " & _
                "printer is installed, go into your printer properties " & _
                "look under the Setup tab, and make sure the ICM checkbox " & _
                "is checked and try printing again.", , "Printer Error"
    '        Exit Sub
     '   Case 32755  'Cancel was pressed
      '      Exit Sub
       ' Case Else
        '    MsgBox err.Number & " " & err.Description, , "Preview - Printing"
         '   Resume Next
    'End Select

End Sub

Private Sub mnuFilePrintPreview_Click()
    'ToDo: Add 'mnuFilePrintPreview_Click' code.
    'MsgBox "Add 'mnuFilePrintPreview_Click' code."
On Error Resume Next
'dlgCommonDialog.FLAGS = cdlPDPrintSetup
'dlgCommonDialog.ShowPrinter
'If err.Number = 0 Then
'preview.Show vbModal
'End If
'preview.Show (1)
preview.Show vbModal
    If gprint = True Then
         preview.DocPrintProc
    End If
End Sub

Private Sub mnuFilePageSetup_Click()
    'On Error Resume Next
    'With dlgCommonDialog
     '   .DialogTitle = "Page Setup"
      '  .CancelError = True
       ' .ShowPrinter
    'End With
'Dim PageSetup As PageSetupDlg
 '   With PageSetup
  '      .lStructSize = Len(PageSetup)
   '     .hwndOwner = hWnd
    '            PageSetupDlg PageSetup ' Show the dialog box
     '  End With
  page.Show
End Sub



Private Sub mnuFileSaveAs_Click()
Dim FileToSave As String
Command8.Visible = False
Web.Visible = False
 dlgCommonDialog.CancelError = True
 On Error GoTo errhandler
 dlgCommonDialog.DialogTitle = "Save As"
 dlgCommonDialog.Filter = "Rich Text File File (*.rtf)|*.rtf|" & _
 "HTML File (*.Html)|*.Html|" & _
 "Ini File (*.Ini)|*.Ini|" & _
 "Text File (*.txt)|*.txt|" & _
 "Document file(*.doc)|*.doc|"
 dlgCommonDialog.FilterIndex = 10
 dlgCommonDialog.ShowSave
 FileToSave = frmMain1.dlgCommonDialog.FileName
 If Len(Dir$(FileToSave)) <> 0 Then
        X = MsgBox("This file already exists: " + thefile + ", do you want replace it?", vbYesNo + vbCritical, "Error")
        If X = vbNo Then Exit Sub
    End If
      
    frmMain1.RTBox.SaveFile FileToSave
    ref.text = FileToSave
    frmMain1.Caption = "Text writer1.0" & "(" & FileToSave & ")"
       
' Open strfilename For Output As #1
 'Print #1, RTBox.Text
 'Close #1
  Exit Sub
errhandler:
End Sub

Private Sub mnuFileSave_Click()
On Error GoTo errhandler:
Command8.Visible = False
Web.Visible = False
If FLAGS = 0 Then 'And unsaveddocument = 0 Then
    Dim FileToSave As String
    If Right(frmMain1.Caption, 18) = "(Unsaved Document)" Then
        With frmMain1.dlgCommonDialog
            .DialogTitle = "Save File"
            .CancelError = False
            .Filter = "Text files (*.txt)|*.txt|RTF Files (*.rtf)|*.rtf|Ini Files (*.ini)|*.ini|Registry Files (*.log)|*.log|Depuration Files (*.dpr)|*.dpr|All files (*.*)|*.*"
            .ShowSave
        End With
        FileToSave = frmMain1.dlgCommonDialog.FileName
        If Len(Dir$(FileToSave)) <> 0 Then
        X = MsgBox("This file already exists: " + FileToSave + ", do you want replace it?", vbYesNo + vbCritical, "Error")
        If X = vbNo Then Exit Sub
        End If
        frmMain1.RTBox.SaveFile FileToSave
        ref.text = FileToSave
        frmMain1.Caption = "Text writer1.0" + "(" + FileToSave + ")"
        unsavedchanges = False
       ' unsaveddocument = 1
       

    Else
        FileToSave = ref.text
        frmMain1.RTBox.SaveFile FileToSave
        unsavedchanges = False
        'unsaveddocument = 1
    End If


ElseIf FLAGS = 1 And unsaveddocument = 0 Or FLAGS = 1 And unsaveddocument = 2 Then
   dlgCommonDialog.CancelError = True
    On Error GoTo errhandler:
    unsaveddocument = 1
    dlgCommonDialog.Filter = "HTML Files (*.html)|*.html|HTM Files (*.htm )|*.htm "
    dlgCommonDialog.ShowSave
    thefile = dlgCommonDialog.FileName
    If dlgCommonDialog.FileName <> "" Then
    Open dlgCommonDialog.FileName For Output As #1
    Print #1, RTBox.text
    Close #1
    frmMain1.Caption = "Text writer1.0" & "(" & thefile & ")"
    ref.text = thefile
    savecheck = True
    End If
    End If
Exit Sub
 'End If
errhandler:
      unsaveddocument = 0
      unsavedchanges = True
    'Cancel button clicked

End Sub



Private Sub mnuFileOpen_Click()
Web.Visible = False
Command8.Visible = False
'CmDlg.Filter = "All Files (*.*)|*.*|Text Files (*.txt)|*.txt|HTML Files (*.html)|*.html|HTM Files (*.htm)|*.htm"
 ' CmDlg.FilterIndex = 2
'CmDlg.ShowOpen
  Dim LoadFileToTB As Boolean
 Dim TxtBox As Object
 Dim FilePath As String
 Dim st As String
  Dim Append As Boolean
Dim iFile As Integer
Dim s As String
'If Dir(FilePath) = "" Then Exit Sub
'On Error GoTo ErrorHandler:
's = RTBox.Text
'iFile = FreeFile
 
  'sFile = CmDlg.FileName

'Open sFile For Input As #iFile
's = Input(LOF(iFile), #iFile)
'If Append Then
 '   RTBox.Text = RTBox.Text & s
'Else
 '   RTBox.Text = s
'End If
   With dlgCommonDialog
        .DialogTitle = "Open"
        .CancelError = False
        'ToDo: set the flags and attributes of the common dialog control
        .Filter = "Text Files (*.txt)|*.txt|Rich text Files (*.rtf)|*.rtf|Document Files (*.doc)|*.doc|HTML Files (*.html)|*.html|HTM Files (*.htm)|*.htm"
        .ShowOpen
        If Len(.FileName) = 0 Then
            Exit Sub
        End If
        sFile = .FileName
    End With
    frmMain1.RTBox.LoadFile sFile
   LoadFileToTB = True
   Unsaved = 3
   mnuhtmldocument.Visible = True
       '  mnuheffects.Visible = True
   mnutextdocument.Visible = True
   Combo3.Visible = True
   DTPicker1.Left = 8040
 
   frmMain1.Caption = "TextEditor 1.0 - " + sFile
   ref.text = sFile
   savecheck = True
ErrorHandler:
If iFile > 0 Then Close #iFile
 'dlgCommonDialog.CancelError = True
  '  On Error GoTo ErrHandler:
   ' dlgCommonDialog.DialogTitle = "Open"
  '  dlgCommonDialog.Filter = " HTML Files (*.html)|*.html| HTM Files (*.htm)|*.htm)| TEXT Files (*.txt)|*.txt| RICH TEXT FILES (*.rtf)|*.rtf"
   ' dlgCommonDialog.ShowOpen
   ' If dlgCommonDialog.FileName <> "" Then
   ' Open dlgCommonDialog.FileName For Input As #1
   ' Do Until EOF(1)
   ' Line Input #1, lineoftext$
   ' alltext$ = alltext$ & lineoftext$
   ' RTBox.Text = alltext$
   ' Loop
   ' Close #1
'End If
 '  mnuothers.Enabled = True
  ' mnutable.Enabled = True
 
'End If
'ErrHandler:
    'Cancel button clicked
End Sub

Private Sub RTBox_SelChange()
Dim Current As Long
Current = SendMessage(RTBox.hwnd, EM_LINEFROMCHAR, -1, 0&) + 1
frmMain1.StatusBar1.Panels(3).text = "CurrentLine :" + Format(Current, "###,###,###,###")

If frmMain1.RTBox.SelBullet = True Then
frmMain1.tbToolBar.Buttons("Bullet").Value = tbrPressed
Else
frmMain1.tbToolBar.Buttons("Bullet").Value = tbrUnpressed
End If

If frmMain1.RTBox.SelBold = True Then
  frmMain1.tbToolBar.Buttons("Bold").Value = tbrPressed
Else
  frmMain1.tbToolBar.Buttons("Bold").Value = tbrUnpressed
End If
If frmMain1.RTBox.SelItalic = True Then
  frmMain1.tbToolBar.Buttons("Italic").Value = tbrPressed
Else
  frmMain1.tbToolBar.Buttons("Italic").Value = tbrUnpressed
End If
If frmMain1.RTBox.SelUnderline = True Then
  frmMain1.tbToolBar.Buttons("Underline").Value = tbrPressed
Else
  frmMain1.tbToolBar.Buttons("Underline").Value = tbrUnpressed
End If
If frmMain1.RTBox.SelStrikeThru = True Then
  frmMain1.tbToolBar.Buttons("Strike Through").Value = tbrPressed
Else
  frmMain1.tbToolBar.Buttons("Strike Through").Value = tbrUnpressed
End If
If frmMain1.RTBox.SelAlignment = AlignLeft Then
            frmMain1.tbToolBar.Buttons("Align Left").Value = tbrPressed
            frmMain1.tbToolBar.Buttons("Center").Value = tbrUnpressed
            frmMain1.tbToolBar.Buttons("Align Right").Value = tbrUnpressed
        ElseIf frmMain1.RTBox.SelAlignment = Center Then
          frmMain1.tbToolBar.Buttons("Align Left").Value = tbrUnpressed
            frmMain1.tbToolBar.Buttons("Center").Value = tbrPressed
            frmMain1.tbToolBar.Buttons("Align Right").Value = tbrUnpressed
        ElseIf frmMain1.RTBox.SelAlignment = AlignRight Then
            frmMain1.tbToolBar.Buttons("Align Left").Value = tbrUnpressed
            frmMain1.tbToolBar.Buttons("Center").Value = tbrUnpressed
           frmMain1.tbToolBar.Buttons("Align Right").Value = tbrPressed
End If

frmMain1.tbToolBar.Buttons("Cut").Enabled = frmMain1.RTBox.SelLength
frmMain1.tbToolBar.Buttons("Copy").Enabled = frmMain1.RTBox.SelLength

WordCount (RTBox.text)
CharCount (RTBox.text)
Call ShowLineNumber
End Sub


Private Sub RTBox_Change()
'undo & redo
 If Not Undoing Then
    undoStage = undoStage + 1
    If undoStage > 1000 Then
        undoStage = 1000
            For i = 1 To undoStage - 1
            undoStack(i) = undoStack(i + 1)
            Next i
    End If
   undoStack(undoStage) = RTBox.text
End If
  
 If CountUndo > 0 Then
    mnuredo.Enabled = True
 Else
    mnuredo.Enabled = False
 End If
 If undoStage > 1 Then
    mnuEditundo.Enabled = True
 Else
    mnuEditundo.Enabled = False
 End If

'*************** words count ****************************
WordCount (RTBox.text)
    
'********************** character count ************************
CharCount (RTBox.text)

'***************************line count*******************************

Call ShowLineNumber
' *********************buttons enabled******************************
mnufindnext.Enabled = True
mnuEditundo.Enabled = True
mnuselectall.Enabled = True
mnuEditCut.Enabled = True
mnuEditCopy.Enabled = True
mnufind.Enabled = True
mnugoto.Enabled = True
mnuReplace.Enabled = True
mnuclear.Enabled = True
mnudelete.Enabled = True
    tbToolBar.Buttons(8).Enabled = True
    'tbToolBar.Buttons(9).Enabled = True
    tbToolBar.Buttons(10).Enabled = True
    'tbToolBar.Buttons(11).Enabled = True
    'tbToolBar.Buttons(13).Enabled = True
    tbToolBar.Buttons(14).Enabled = True
    tbToolBar.Buttons(15).Enabled = True
    'tbToolBar.Buttons(12).Enabled = True
    tbToolBar.Buttons(18).Enabled = True
    tbToolBar.Buttons(19).Enabled = True
    tbToolBar.Buttons(20).Enabled = True
    tbToolBar.Buttons(22).Enabled = True
    tbToolBar.Buttons(23).Enabled = True
    'Set public variable UnsavedChanges to True each time
    'the text in the Rich textbox is modified.
    'frmMain1.tbToolBar.Buttons("Cut").Enabled = False
    unsavedchanges = True
End Sub
Private Sub RTbox_Click()
    saveddocument = 2
      End Sub
Private Sub wordstyle_Click()
 Select Case wordstyle.list(wordstyle.ListIndex)
 Case "Uppercase"
         RTBox.SelText = Format(RTBox.SelText, ">")
         RTBox.SetFocus
 Case "Lowercase"
         RTBox.SelText = Format(RTBox.SelText, "<")
         RTBox.SetFocus
 Case "Initialcap"
          RTBox.SelText = StrConv(RTBox.SelText, vbProperCase)
          RTBox.SetFocus
 Case "Bold"
            If RTBox.SelBold = False Then
            RTBox.SelBold = True
            Else
            RTBox.SelBold = False
            End If
            RTBox.SetFocus
 Case "Italic"
           If RTBox.SelItalic = False Then
           RTBox.SelItalic = True
           Else
           RTBox.SelItalic = False
           End If
           RTBox.SetFocus
Case "BoldItalic"
           If RTBox.SelBold = False And RTBox.SelItalic = False Then
           RTBox.SelBold = True
           RTBox.SelItalic = True
           ElseIf RTBox.SelBold = True And RTBox.SelItalic = False Then
           RTBox.SelBold = True
           RTBox.SelItalic = True
           ElseIf RTBox.SelBold = False And RTBox.SelItalic = True Then
           RTBox.SelBold = True
           RTBox.SelItalic = True
           ElseIf RTBox.SelBold = True And RTBox.SelItalic = True Then
           RTBox.SelBold = False
           RTBox.SelItalic = False
           End If
 
 Case "Underline"
           If RTBox.SelUnderline = False Then
           RTBox.SelUnderline = True
           Else
           RTBox.SelUnderline = False
           End If
           RTBox.SetFocus
 Case "Strikethru"
           If RTBox.SelStrikeThru = False Then
           RTBox.SelStrikeThru = True
           Else
           RTBox.SelStrikeThru = False
           End If
           RTBox.SetFocus

 Case "Normal"
          RTBox.SelBold = False
          RTBox.SelUnderline = False
          RTBox.SelStrikeThru = False
          RTBox.SetFocus
 End Select
End Sub



Private Sub RTBox_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
    If Button = 2 Then
    PopupMenu mnuEdit
    End If
End Sub

Private Sub WordCount(TextString As String)
 
Dim WordCounter As Double
Dim SpacePosition As Double

 SpacePosition = 1
 'Replace the Enter, Space, Tab and NewLine With " "
TextString = Replace(TextString, Chr(32), " ")
TextString = Replace(TextString, Chr(13), " ")
TextString = Replace(TextString, Chr(10), " ")
TextString = Replace(TextString, Chr(9), " ")


TextString = Trim(TextString)
 
If Len(TextString) > 0 Then WordCounter = 1
  Do While SpacePosition > 0
        SpacePosition = InStr(SpacePosition, TextString, " ")
        ' increase word counter
        If SpacePosition > 0 Then
            WordCounter = WordCounter + 1
            'skip additional spaces
            While Mid(TextString, SpacePosition, 1) = " "
                SpacePosition = SpacePosition + 1
           Wend
        End If
      Loop
     frmMain1.StatusBar1.Panels(4).text = " Words : " & WordCounter
 
   End Sub
Private Sub WordCounter(TextString As String)
 
Dim WordCounter As Double
Dim SpacePosition As Double

 SpacePosition = 1
 'Replace the Enter, Space, Tab and NewLine With " "
TextString = Replace(TextString, Chr(32), " ")
TextString = Replace(TextString, Chr(13), " ")
TextString = Replace(TextString, Chr(10), " ")
TextString = Replace(TextString, Chr(9), " ")


TextString = Trim(TextString)
 
If Len(TextString) > 0 Then WordCounter = 1
  Do While SpacePosition > 0
        SpacePosition = InStr(SpacePosition, TextString, " ")
        ' increase word counter
        If SpacePosition > 0 Then
            WordCounter = WordCounter + 1
            'skip additional spaces
            While Mid(TextString, SpacePosition, 1) = " "
                SpacePosition = SpacePosition + 1
           Wend
        End If
      Loop
     MsgBox " Words : " & WordCounter, vbInformation, words
 
   End Sub

Public Sub CharCount(CharString As String)

Dim CharNo As Long

'Replace Enter, Space, Tab and NewLine With ""
CharString = Replace(CharString, Chr(32), "")
CharString = Replace(CharString, Chr(13), "")
CharString = Replace(CharString, Chr(10), "")
CharString = Replace(CharString, Chr(9), "")

'Trim the String
CharString = Trim(CharString)

' Find the length of the String and show in Status Bar
CharNo = Len(CharString)
frmMain1.StatusBar1.Panels(5).text = " Characters : " & CharNo
End Sub


Public Sub ShowLineNumber() '(RT As String)

' Show Current Line Number in the Status Bar

'Dim LineNumber As Long
 '
  '  LineNumber = RTBox.GetLineFromChar(RTBox.SelStart)
   ' LineNumber = LineNumber + 1
     Dim TotalLines As Long
    TotalLines = SendMessage(RTBox.hwnd, &HBA, 0, 0&)
    StatusBar1.Panels(2).text = " Lines :" & CStr(TotalLines)
    
End Sub

Private Sub cc_click()
If FLAGS = 0 And unsaveddocument = 0 Or FLAGS = 0 And unsavedchanges = True Then
    unsavedchanges = False
    unsaveddocument = 1
 dlgCommonDialog.CancelError = True
   On Error GoTo errhandler:
    dlgCommonDialog.DialogTitle = "Save"
    dlgCommonDialog.Filter = "Text Files (*.txt)|*.txt |Rich text File (*.rtf)|*.rtf "
    dlgCommonDialog.ShowSave
    'RTBox.SaveFile dlgCommonDialog.FileName
    thefile = dlgCommonDialog.FileName
        ' check to see if the file already exists
    
    If Len(Dir$(thefile)) <> 0 And unsaveddocument = 0 Then
        X = MsgBox("This file already exists: " + thefile + ", do you want replace it?", vbYesNo + vbCritical, "Error")
        If X = vbNo Then Exit Sub
    End If
      
    If Len(Dir$(thefile)) <> 0 And Unsaved = 3 Then
    If dlgCommonDialog.FileName <> "" Then
    Open dlgCommonDialog.FileName For Output As #1
    Print #1, RTBox.text
    Close #1
    frmMain1.Caption = "Text writer1.0" & "(" & thefile & ")"
    unsaveddocument = 1
    unsavedchanges = False
    End If
    End If
     
         
    If dlgCommonDialog.FileName <> "" Then
    Open dlgCommonDialog.FileName For Output As #1
    Print #1, RTBox.text
    Close #1
    frmMain1.Caption = "Text writer1.0" & "(" & thefile & ")"
    unsaveddocument = 1
    unsavedchanges = False
    End If
    
ElseIf FLAGS = 1 And unsaveddocument = 0 Or FLAGS = 1 And unsaveddocument = 2 Then
   dlgCommonDialog.CancelError = True
    On Error GoTo errhandler:
    unsaveddocument = 1
    dlgCommonDialog.Filter = "HTML Files (*.html)|*.html|HTM Files (*.htm )|*.htm "
    dlgCommonDialog.ShowSave
    thefile = dlgCommonDialog.FileName
    If dlgCommonDialog.FileName <> "" Then
    Open dlgCommonDialog.FileName For Output As #1
    Print #1, RTBox.text
    Close #1
    frmMain1.Caption = "Text writer1.0" & "(" & thefile & ")"
    End If
    End If
 
errhandler:
      unsaveddocument = 0
      unsavedchanges = True
    'Cancel button clicked
End Sub

'********************************** calculator *************************
Private Sub cmd_Click(Index As Integer)

    If txt.text = "0" Then
    txt.text = ""
    End If
    If X = 0 Then
    txt.text = ""
    X = X + 1
    End If
    Cmdcos(6).Enabled = True
    Cmdcos(11).Enabled = True
    txt.text = txt.text + cmd(Index).Caption
End Sub

Private Sub cmdc_Click()
    txt.text = "0"
    cnt = 0
    cnt1 = 0
    j = 0
    X = 0
    Cmdcos(6).Enabled = False
   Cmdcos(11).Enabled = False
End Sub

Private Sub Cmdcos_Click(Index As Integer)
On Error GoTo errhan
   op1 = Cmdcos(Index).Caption
   nos = txt.text
    Select Case op1
        Case "cos"
                If flag = 1 Then
                ans = Cos((3.14 / 180) * nos)
                Else
                ans = Cos(nos)
                End If
        Case "sin"
                If flag = 1 Then
                ans = Sin((3.14 / 180) * nos)
                Else
                ans = Sin(nos)
                End If
        Case "tan"
                If flag = 1 Then
                ans = Tan((3.14 / 180) * nos)
                Else
                ans = Tan(nos)
                End If
                If no1 Mod 90 = 0 Then
                    NO3 = no1 / 2
                    If NO3 Mod 2 = 1 Then
                        i = MsgBox("Wrong input", vbExclamation + vbOKOnly, "ERROR")
                        ans = 0
                    Else
                    ans = 0
                    End If
                End If
        Case "x^2"
                ans = nos ^ 2
        Case "x^3"
                ans = nos ^ 3
        Case "1/x"
                If nos = 0 Then
                i = MsgBox("Divide by zero error", vbExclamation + vbOKOnly, "ERROR")
                Else
                ans = 1 / nos
                End If
         Case "ln"
                If nos = 0 Then
                i = MsgBox("Math error", vbExclamation + vbOKOnly, "ERROR")
                Else
                ans = Log(nos)
                End If
         Case "Exp"
                ans = Exp(nos)
         Case "n!"
                ans = 1
                no2 = nos
                For i = 1 To no2
                ans = ans * i
                Next
         Case "sqrt"
                ans = Sqr(nos)
         Case "MS"
                ans = nos
                A = nos
          Case "MR"
                ans = A
                no1 = A
       End Select
    txt.text = ans
errhan:
End Sub

Private Sub cmde_Click()
On Error GoTo errhan
cnt1 = 0
    Select Case op
        Case "+"
                ans = txt.text + no1
                If cnt = 0 Then
                  no1 = txt.text
                    cnt = cnt + 1
                End If
                txt.text = ans
        Case "-"
                If cnt > 0 Then
                  txt.text = no1
                  no1 = ans
                End If
                 ans = no1 - txt.text
                 no1 = txt.text
                 txt.text = ans
                cnt = cnt + 1
        Case "*"
                ans = no1 * txt.text
                If cnt = 0 Then
                  no1 = txt.text
                    cnt = cnt + 1
                End If
        txt.text = ans
        Case "/"
                If cnt > 0 Then
                  txt.text = no1
                  no1 = ans
                End If
                If txt.text = "0" Then
                i = MsgBox("Divide by zero error", vbExclamation + vbOKOnly, "ERROR")
                Else
                ans = no1 / txt.text
                 no1 = txt.text
                txt.text = ans
                cnt = cnt + 1
                End If
        Case "x^y"
                ans = no1 ^ txt.text
                txt.text = ans
    End Select
errhan:
End Sub
Private Sub Cmdop_Click(Index As Integer)
On Error GoTo errhan
    X = 0
    If cnt1 > 0 Then
        Select Case op
            Case "+"
                    ans = no1 + txt.text
                    txt.text = ans
                    no1 = txt.text
                    op = Cmdop(Index).Caption
            Case "-"
                    ans = no1 - txt.text
                    txt.text = ans
                    no1 = txt.text
                    op = Cmdop(Index).Caption
            Case "/"
                    If txt.text = 0 Then
                    MsgBox "Divide by zero error", vbExclamation + vbOKOnly, "ERROR"
                    Else
                    ans = no1 / txt.text
                    txt.text = ans
                    no1 = txt.text
                    op = Cmdop(Index).Caption
                    End If
            Case "*"
                    ans = no1 * txt.text
                    txt.text = ans
                    no1 = txt.text
                    op = Cmdop(Index).Caption
            Case "x^y"
                    ans = no1 ^ txt.text
                    txt.text = ans
                    no1 = txt.text
                    op = Cmdop(Index).Caption
        End Select
    Else
    no1 = Val(txt.text)
    op = Cmdop(Index).Caption
    txt.text = 0
    cnt1 = cnt1 + 1
    End If
errhan:
End Sub


Private Sub Opt1_Click()
    flag = 1
    For i = 0 To 2
    Cmdcos(i).Enabled = True
    Next
End Sub

Private Sub Opt2_Click()
    flag = 2
    For i = 0 To 2
    Cmdcos(i).Enabled = True
    Next
End Sub


Private Sub Command1_Click()
frmMain1.RTBox.SelText = txt.text
End Sub


