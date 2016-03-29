VERSION 5.00
Begin VB.Form matrix 
   BackColor       =   &H00C0FFFF&
   Caption         =   "Matrix"
   ClientHeight    =   11040
   ClientLeft      =   60
   ClientTop       =   420
   ClientWidth     =   15240
   Icon            =   "matrix.frx":0000
   LinkTopic       =   "Form1"
   ScaleHeight     =   11040
   ScaleWidth      =   15240
   StartUpPosition =   3  'Windows Default
   Begin VB.Frame Frame5 
      BackColor       =   &H00C0FFFF&
      Caption         =   "Select Operation :"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   8535
      Left            =   10680
      TabIndex        =   80
      Top             =   2160
      Width           =   4455
      Begin VB.CommandButton Command1 
         Caption         =   "Clear"
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
         Left            =   480
         TabIndex        =   102
         Top             =   5880
         Width           =   3495
      End
      Begin VB.CommandButton command2 
         Caption         =   "B(CA)"
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
         Index           =   11
         Left            =   2880
         TabIndex        =   101
         Top             =   3240
         Width           =   1095
      End
      Begin VB.CommandButton command2 
         Caption         =   "(CA)B"
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
         Index           =   10
         Left            =   1680
         TabIndex        =   100
         Top             =   3240
         Width           =   1095
      End
      Begin VB.CommandButton command2 
         Caption         =   "B(AC)"
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
         Index           =   9
         Left            =   480
         TabIndex        =   99
         Top             =   3240
         Width           =   1095
      End
      Begin VB.CommandButton command2 
         Caption         =   "(AC)B"
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
         Index           =   8
         Left            =   2880
         TabIndex        =   98
         Top             =   2760
         Width           =   1095
      End
      Begin VB.CommandButton command2 
         Caption         =   "A(CB)"
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
         Index           =   7
         Left            =   1680
         TabIndex        =   97
         Top             =   2760
         Width           =   1095
      End
      Begin VB.CommandButton command2 
         Caption         =   "(CB)A"
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
         Index           =   6
         Left            =   480
         TabIndex        =   96
         Top             =   2760
         Width           =   1095
      End
      Begin VB.CommandButton command2 
         Caption         =   "A(BC)"
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
         Index           =   5
         Left            =   2880
         TabIndex        =   95
         Top             =   2280
         Width           =   1095
      End
      Begin VB.CommandButton command2 
         Caption         =   "(BC)A"
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
         Index           =   4
         Left            =   1680
         TabIndex        =   94
         Top             =   2280
         Width           =   1095
      End
      Begin VB.CommandButton command2 
         Caption         =   "C(BA)"
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
         Index           =   3
         Left            =   480
         TabIndex        =   93
         Top             =   2280
         Width           =   1095
      End
      Begin VB.CommandButton command2 
         Caption         =   "(BA)C"
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
         Index           =   2
         Left            =   2880
         TabIndex        =   92
         Top             =   1800
         Width           =   1095
      End
      Begin VB.CommandButton command2 
         Caption         =   "C(AB)"
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
         Index           =   1
         Left            =   1680
         TabIndex        =   91
         Top             =   1800
         Width           =   1095
      End
      Begin VB.CommandButton command2 
         Caption         =   "(AB)C"
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
         Index           =   0
         Left            =   480
         TabIndex        =   90
         Top             =   1800
         Width           =   1095
      End
      Begin VB.CommandButton Command3 
         Caption         =   "A+B+C"
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
         Left            =   2280
         TabIndex        =   89
         Top             =   4320
         Width           =   1695
      End
      Begin VB.CommandButton Command4 
         Caption         =   "A-B-C"
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
         Left            =   2280
         TabIndex        =   88
         Top             =   4800
         Width           =   1695
      End
      Begin VB.CommandButton Command5 
         Caption         =   "A+B"
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
         Left            =   480
         TabIndex        =   87
         Top             =   4320
         Width           =   1695
      End
      Begin VB.CommandButton Command6 
         Caption         =   "A-B"
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
         Left            =   480
         TabIndex        =   86
         Top             =   4800
         Width           =   1695
      End
      Begin VB.CommandButton Command7 
         Caption         =   "A/B"
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
         Left            =   480
         TabIndex        =   85
         Top             =   5280
         Width           =   1695
      End
      Begin VB.CommandButton Command8 
         Caption         =   "A/B/C"
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
         Left            =   2280
         TabIndex        =   84
         Top             =   5280
         Width           =   1695
      End
      Begin VB.CommandButton Command9 
         Caption         =   "AB"
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
         Left            =   480
         TabIndex        =   83
         Top             =   3720
         Width           =   3495
      End
      Begin VB.ComboBox C1 
         Height          =   315
         Left            =   2160
         TabIndex        =   82
         Text            =   "Multiplication"
         Top             =   720
         Width           =   1935
      End
      Begin VB.Label Label8 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Select the Operation :"
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
         Left            =   240
         TabIndex        =   103
         Top             =   720
         Width           =   1935
      End
   End
   Begin VB.Frame Frame1 
      BackColor       =   &H00C0FFFF&
      Caption         =   "Enter the value :"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   8535
      Left            =   120
      TabIndex        =   0
      Top             =   2160
      Width           =   10455
      Begin VB.TextBox A 
         Alignment       =   2  'Center
         Height          =   375
         Index           =   0
         Left            =   240
         TabIndex        =   1
         Top             =   1080
         Width           =   495
      End
      Begin VB.ComboBox cmbOrderOfA 
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   360
         Left            =   1920
         Style           =   2  'Dropdown List
         TabIndex        =   70
         Top             =   3120
         Width           =   1095
      End
      Begin VB.ComboBox cmbOrderOfB 
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   360
         Left            =   5520
         Style           =   2  'Dropdown List
         TabIndex        =   69
         Top             =   3120
         Width           =   1095
      End
      Begin VB.ComboBox cmbOrderOfC 
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   360
         Left            =   9120
         Style           =   2  'Dropdown List
         TabIndex        =   68
         Top             =   3120
         Width           =   1095
      End
      Begin VB.TextBox A 
         Alignment       =   2  'Center
         Height          =   375
         Index           =   1
         Left            =   960
         TabIndex        =   2
         Top             =   1080
         Width           =   495
      End
      Begin VB.TextBox A 
         Alignment       =   2  'Center
         Height          =   375
         Index           =   2
         Left            =   1680
         TabIndex        =   3
         Top             =   1080
         Width           =   495
      End
      Begin VB.TextBox A 
         Alignment       =   2  'Center
         Height          =   375
         Index           =   3
         Left            =   2400
         TabIndex        =   4
         Top             =   1080
         Width           =   495
      End
      Begin VB.TextBox A 
         Alignment       =   2  'Center
         Height          =   375
         Index           =   4
         Left            =   240
         TabIndex        =   5
         Top             =   1560
         Width           =   495
      End
      Begin VB.TextBox A 
         Alignment       =   2  'Center
         Height          =   375
         Index           =   5
         Left            =   960
         TabIndex        =   6
         Top             =   1560
         Width           =   495
      End
      Begin VB.TextBox A 
         Alignment       =   2  'Center
         Height          =   375
         Index           =   6
         Left            =   1680
         TabIndex        =   7
         Top             =   1560
         Width           =   495
      End
      Begin VB.TextBox A 
         Alignment       =   2  'Center
         Height          =   375
         Index           =   7
         Left            =   2400
         TabIndex        =   8
         Top             =   1560
         Width           =   495
      End
      Begin VB.TextBox A 
         Alignment       =   2  'Center
         Height          =   375
         Index           =   8
         Left            =   240
         TabIndex        =   9
         Top             =   2040
         Width           =   495
      End
      Begin VB.TextBox A 
         Alignment       =   2  'Center
         Height          =   375
         Index           =   9
         Left            =   960
         TabIndex        =   10
         Top             =   2040
         Width           =   495
      End
      Begin VB.TextBox A 
         Alignment       =   2  'Center
         Height          =   375
         Index           =   10
         Left            =   1680
         TabIndex        =   11
         Top             =   2040
         Width           =   495
      End
      Begin VB.TextBox A 
         Alignment       =   2  'Center
         Height          =   375
         Index           =   11
         Left            =   2400
         TabIndex        =   12
         Top             =   2040
         Width           =   495
      End
      Begin VB.TextBox A 
         Alignment       =   2  'Center
         Height          =   375
         Index           =   12
         Left            =   240
         TabIndex        =   14
         Top             =   2520
         Width           =   495
      End
      Begin VB.TextBox A 
         Alignment       =   2  'Center
         Height          =   375
         Index           =   13
         Left            =   960
         TabIndex        =   15
         Top             =   2520
         Width           =   495
      End
      Begin VB.TextBox A 
         Alignment       =   2  'Center
         Height          =   375
         Index           =   14
         Left            =   1680
         TabIndex        =   16
         Top             =   2520
         Width           =   495
      End
      Begin VB.TextBox A 
         Alignment       =   2  'Center
         Height          =   375
         Index           =   15
         Left            =   2400
         TabIndex        =   17
         Top             =   2520
         Width           =   495
      End
      Begin VB.TextBox B 
         Alignment       =   2  'Center
         Height          =   375
         Index           =   0
         Left            =   3840
         TabIndex        =   18
         Top             =   1080
         Width           =   495
      End
      Begin VB.TextBox B 
         Alignment       =   2  'Center
         Height          =   375
         Index           =   1
         Left            =   4560
         TabIndex        =   19
         Top             =   1080
         Width           =   495
      End
      Begin VB.TextBox B 
         Alignment       =   2  'Center
         Height          =   375
         Index           =   2
         Left            =   5280
         TabIndex        =   20
         Top             =   1080
         Width           =   495
      End
      Begin VB.TextBox B 
         Alignment       =   2  'Center
         Height          =   375
         Index           =   3
         Left            =   6000
         TabIndex        =   21
         Top             =   1080
         Width           =   495
      End
      Begin VB.TextBox B 
         Alignment       =   2  'Center
         Height          =   375
         Index           =   4
         Left            =   3840
         TabIndex        =   22
         Top             =   1560
         Width           =   495
      End
      Begin VB.TextBox B 
         Alignment       =   2  'Center
         Height          =   375
         Index           =   5
         Left            =   4560
         TabIndex        =   23
         Top             =   1560
         Width           =   495
      End
      Begin VB.TextBox B 
         Alignment       =   2  'Center
         Height          =   375
         Index           =   6
         Left            =   5280
         TabIndex        =   24
         Top             =   1560
         Width           =   495
      End
      Begin VB.TextBox B 
         Alignment       =   2  'Center
         Height          =   375
         Index           =   7
         Left            =   6000
         TabIndex        =   25
         Top             =   1560
         Width           =   495
      End
      Begin VB.TextBox B 
         Alignment       =   2  'Center
         Height          =   375
         Index           =   8
         Left            =   3840
         TabIndex        =   26
         Top             =   2040
         Width           =   495
      End
      Begin VB.TextBox B 
         Alignment       =   2  'Center
         Height          =   375
         Index           =   9
         Left            =   4560
         TabIndex        =   27
         Top             =   2040
         Width           =   495
      End
      Begin VB.TextBox B 
         Alignment       =   2  'Center
         Height          =   375
         Index           =   10
         Left            =   5280
         TabIndex        =   28
         Top             =   2040
         Width           =   495
      End
      Begin VB.TextBox B 
         Alignment       =   2  'Center
         Height          =   375
         Index           =   11
         Left            =   6000
         TabIndex        =   29
         Top             =   2040
         Width           =   495
      End
      Begin VB.TextBox B 
         Alignment       =   2  'Center
         Height          =   375
         Index           =   12
         Left            =   3840
         TabIndex        =   30
         Top             =   2520
         Width           =   495
      End
      Begin VB.TextBox B 
         Alignment       =   2  'Center
         Height          =   375
         Index           =   13
         Left            =   4560
         TabIndex        =   31
         Top             =   2520
         Width           =   495
      End
      Begin VB.TextBox B 
         Alignment       =   2  'Center
         Height          =   375
         Index           =   14
         Left            =   5280
         TabIndex        =   32
         Top             =   2520
         Width           =   495
      End
      Begin VB.TextBox B 
         Alignment       =   2  'Center
         Height          =   375
         Index           =   15
         Left            =   6000
         TabIndex        =   33
         Top             =   2520
         Width           =   495
      End
      Begin VB.TextBox C 
         Alignment       =   2  'Center
         Height          =   375
         Index           =   0
         Left            =   7440
         TabIndex        =   34
         Top             =   1080
         Width           =   495
      End
      Begin VB.TextBox C 
         Alignment       =   2  'Center
         Height          =   375
         Index           =   1
         Left            =   8160
         TabIndex        =   35
         Top             =   1080
         Width           =   495
      End
      Begin VB.TextBox C 
         Alignment       =   2  'Center
         Height          =   375
         Index           =   2
         Left            =   8880
         TabIndex        =   36
         Top             =   1080
         Width           =   495
      End
      Begin VB.TextBox C 
         Alignment       =   2  'Center
         Height          =   375
         Index           =   3
         Left            =   9600
         TabIndex        =   37
         Top             =   1080
         Width           =   495
      End
      Begin VB.TextBox C 
         Alignment       =   2  'Center
         Height          =   375
         Index           =   4
         Left            =   7440
         TabIndex        =   38
         Top             =   1560
         Width           =   495
      End
      Begin VB.TextBox C 
         Alignment       =   2  'Center
         Height          =   375
         Index           =   5
         Left            =   8160
         TabIndex        =   39
         Top             =   1560
         Width           =   495
      End
      Begin VB.TextBox C 
         Alignment       =   2  'Center
         Height          =   375
         Index           =   6
         Left            =   8880
         TabIndex        =   40
         Top             =   1560
         Width           =   495
      End
      Begin VB.TextBox C 
         Alignment       =   2  'Center
         Height          =   375
         Index           =   7
         Left            =   9600
         TabIndex        =   41
         Top             =   1560
         Width           =   495
      End
      Begin VB.TextBox C 
         Alignment       =   2  'Center
         Height          =   375
         Index           =   8
         Left            =   7440
         TabIndex        =   42
         Top             =   2040
         Width           =   495
      End
      Begin VB.TextBox C 
         Alignment       =   2  'Center
         Height          =   375
         Index           =   9
         Left            =   8160
         TabIndex        =   43
         Top             =   2040
         Width           =   495
      End
      Begin VB.TextBox C 
         Alignment       =   2  'Center
         Height          =   375
         Index           =   10
         Left            =   8880
         TabIndex        =   44
         Top             =   2040
         Width           =   495
      End
      Begin VB.TextBox C 
         Alignment       =   2  'Center
         Height          =   375
         Index           =   11
         Left            =   9600
         TabIndex        =   45
         Top             =   2040
         Width           =   495
      End
      Begin VB.TextBox C 
         Alignment       =   2  'Center
         Height          =   375
         Index           =   12
         Left            =   7440
         TabIndex        =   46
         Top             =   2520
         Width           =   495
      End
      Begin VB.TextBox C 
         Alignment       =   2  'Center
         Height          =   375
         Index           =   13
         Left            =   8160
         TabIndex        =   47
         Top             =   2520
         Width           =   495
      End
      Begin VB.TextBox C 
         Alignment       =   2  'Center
         Height          =   375
         Index           =   14
         Left            =   8880
         TabIndex        =   48
         Top             =   2520
         Width           =   495
      End
      Begin VB.TextBox C 
         Alignment       =   2  'Center
         Height          =   375
         Index           =   15
         Left            =   9600
         TabIndex        =   49
         Top             =   2520
         Width           =   495
      End
      Begin VB.Frame Frame2 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Answer :"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H000000FF&
         Height          =   4695
         Left            =   120
         TabIndex        =   13
         Top             =   3840
         Width           =   10215
         Begin VB.Label lblOrderD 
            BackColor       =   &H00C0FFFF&
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
            Left            =   2760
            TabIndex        =   81
            Top             =   600
            Visible         =   0   'False
            Width           =   1335
         End
         Begin VB.Line Line32 
            X1              =   6360
            X2              =   7200
            Y1              =   3720
            Y2              =   3720
         End
         Begin VB.Line Line31 
            X1              =   3960
            X2              =   4800
            Y1              =   3720
            Y2              =   3720
         End
         Begin VB.Line Line24 
            X1              =   6360
            X2              =   7200
            Y1              =   960
            Y2              =   960
         End
         Begin VB.Line Line23 
            X1              =   3960
            X2              =   4800
            Y1              =   960
            Y2              =   960
         End
         Begin VB.Line Line21 
            X1              =   3960
            X2              =   3960
            Y1              =   960
            Y2              =   3720
         End
         Begin VB.Line Line19 
            X1              =   7200
            X2              =   7200
            Y1              =   960
            Y2              =   3720
         End
         Begin VB.Line Line30 
            X1              =   4200
            X2              =   4200
            Y1              =   240
            Y2              =   720
         End
         Begin VB.Line Line29 
            X1              =   4200
            X2              =   4560
            Y1              =   240
            Y2              =   240
         End
         Begin VB.Line Line28 
            X1              =   4200
            X2              =   4560
            Y1              =   720
            Y2              =   720
         End
         Begin VB.Line Line27 
            X1              =   5400
            X2              =   5760
            Y1              =   240
            Y2              =   240
         End
         Begin VB.Line Line26 
            X1              =   5760
            X2              =   5760
            Y1              =   240
            Y2              =   720
         End
         Begin VB.Line Line25 
            X1              =   5400
            X2              =   5760
            Y1              =   720
            Y2              =   720
         End
         Begin VB.Label Label9 
            Alignment       =   2  'Center
            BackColor       =   &H00C0FFFF&
            Caption         =   "Matrix - D"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   9.75
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   255
            Left            =   4320
            TabIndex        =   67
            Top             =   360
            Width           =   1335
         End
         Begin VB.Label D 
            Alignment       =   2  'Center
            BackColor       =   &H00C0C0FF&
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   495
            Index           =   0
            Left            =   4200
            TabIndex        =   66
            Top             =   1200
            Width           =   615
         End
         Begin VB.Label D 
            Alignment       =   2  'Center
            BackColor       =   &H00C0C0FF&
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   495
            Index           =   1
            Left            =   4920
            TabIndex        =   65
            Top             =   1200
            Width           =   615
         End
         Begin VB.Label D 
            Alignment       =   2  'Center
            BackColor       =   &H00C0C0FF&
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   495
            Index           =   2
            Left            =   5640
            TabIndex        =   64
            Top             =   1200
            Width           =   615
         End
         Begin VB.Label D 
            Alignment       =   2  'Center
            BackColor       =   &H00C0C0FF&
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   495
            Index           =   3
            Left            =   6360
            TabIndex        =   63
            Top             =   1200
            Width           =   615
         End
         Begin VB.Label D 
            Alignment       =   2  'Center
            BackColor       =   &H00C0C0FF&
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   495
            Index           =   4
            Left            =   4200
            TabIndex        =   62
            Top             =   1800
            Width           =   615
         End
         Begin VB.Label D 
            Alignment       =   2  'Center
            BackColor       =   &H00C0C0FF&
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   495
            Index           =   5
            Left            =   4920
            TabIndex        =   61
            Top             =   1800
            Width           =   615
         End
         Begin VB.Label D 
            Alignment       =   2  'Center
            BackColor       =   &H00C0C0FF&
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   495
            Index           =   6
            Left            =   5640
            TabIndex        =   60
            Top             =   1800
            Width           =   615
         End
         Begin VB.Label D 
            Alignment       =   2  'Center
            BackColor       =   &H00C0C0FF&
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   495
            Index           =   7
            Left            =   6360
            TabIndex        =   59
            Top             =   1800
            Width           =   615
         End
         Begin VB.Label D 
            Alignment       =   2  'Center
            BackColor       =   &H00C0C0FF&
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   495
            Index           =   8
            Left            =   4200
            TabIndex        =   58
            Top             =   2400
            Width           =   615
         End
         Begin VB.Label D 
            Alignment       =   2  'Center
            BackColor       =   &H00C0C0FF&
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   495
            Index           =   9
            Left            =   4920
            TabIndex        =   57
            Top             =   2400
            Width           =   615
         End
         Begin VB.Label D 
            Alignment       =   2  'Center
            BackColor       =   &H00C0C0FF&
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   495
            Index           =   10
            Left            =   5640
            TabIndex        =   56
            Top             =   2400
            Width           =   615
         End
         Begin VB.Label D 
            Alignment       =   2  'Center
            BackColor       =   &H00C0C0FF&
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   495
            Index           =   11
            Left            =   6360
            TabIndex        =   55
            Top             =   2400
            Width           =   615
         End
         Begin VB.Label D 
            Alignment       =   2  'Center
            BackColor       =   &H00C0C0FF&
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   495
            Index           =   12
            Left            =   4200
            TabIndex        =   54
            Top             =   3000
            Width           =   615
         End
         Begin VB.Label D 
            Alignment       =   2  'Center
            BackColor       =   &H00C0C0FF&
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   495
            Index           =   13
            Left            =   4920
            TabIndex        =   53
            Top             =   3000
            Width           =   615
         End
         Begin VB.Label D 
            Alignment       =   2  'Center
            BackColor       =   &H00C0C0FF&
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   495
            Index           =   14
            Left            =   5640
            TabIndex        =   52
            Top             =   3000
            Width           =   615
         End
         Begin VB.Label D 
            Alignment       =   2  'Center
            BackColor       =   &H00C0C0FF&
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   495
            Index           =   15
            Left            =   6360
            TabIndex        =   51
            Top             =   3000
            Width           =   615
         End
         Begin VB.Label Label6 
            Alignment       =   2  'Center
            BackColor       =   &H00C0C0FF&
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9.75
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   495
            Left            =   4200
            TabIndex        =   50
            Top             =   3840
            Width           =   2775
         End
      End
      Begin VB.Label Label3 
         Alignment       =   2  'Center
         BackColor       =   &H00C0FFFF&
         Caption         =   "Matrix - C"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   7680
         TabIndex        =   79
         Top             =   600
         Width           =   1095
      End
      Begin VB.Label Label4 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Order of A- Matrix :"
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
         Left            =   240
         TabIndex        =   78
         Top             =   3240
         Width           =   1815
      End
      Begin VB.Label Label7 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Order of B- Matrix :"
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
         Left            =   3840
         TabIndex        =   77
         Top             =   3240
         Width           =   1815
      End
      Begin VB.Label Label5 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Order of C-Matrix :"
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
         Left            =   7440
         TabIndex        =   76
         Top             =   3240
         Width           =   1815
      End
      Begin VB.Line Line1 
         X1              =   240
         X2              =   240
         Y1              =   480
         Y2              =   960
      End
      Begin VB.Line Line2 
         X1              =   240
         X2              =   600
         Y1              =   480
         Y2              =   480
      End
      Begin VB.Line Line3 
         X1              =   240
         X2              =   600
         Y1              =   960
         Y2              =   960
      End
      Begin VB.Line Line4 
         X1              =   1440
         X2              =   1800
         Y1              =   480
         Y2              =   480
      End
      Begin VB.Line Line5 
         X1              =   1800
         X2              =   1800
         Y1              =   480
         Y2              =   960
      End
      Begin VB.Line Line6 
         X1              =   1440
         X2              =   1800
         Y1              =   960
         Y2              =   960
      End
      Begin VB.Label Label2 
         Alignment       =   2  'Center
         BackColor       =   &H00C0FFFF&
         Caption         =   "Matrix -A"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   480
         TabIndex        =   75
         Top             =   600
         Width           =   1095
      End
      Begin VB.Label Label1 
         Alignment       =   2  'Center
         BackColor       =   &H00C0FFFF&
         Caption         =   "Matrix - B"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   4080
         TabIndex        =   74
         Top             =   600
         Width           =   1095
      End
      Begin VB.Line Line7 
         X1              =   4320
         X2              =   3840
         Y1              =   480
         Y2              =   480
      End
      Begin VB.Line Line8 
         X1              =   3840
         X2              =   3840
         Y1              =   480
         Y2              =   960
      End
      Begin VB.Line Line9 
         X1              =   3840
         X2              =   4320
         Y1              =   960
         Y2              =   960
      End
      Begin VB.Line Line10 
         X1              =   4920
         X2              =   5400
         Y1              =   480
         Y2              =   480
      End
      Begin VB.Line Line11 
         X1              =   5400
         X2              =   5400
         Y1              =   480
         Y2              =   960
      End
      Begin VB.Line Line12 
         X1              =   4920
         X2              =   5400
         Y1              =   960
         Y2              =   960
      End
      Begin VB.Line Line13 
         X1              =   7920
         X2              =   7440
         Y1              =   480
         Y2              =   480
      End
      Begin VB.Line Line14 
         X1              =   7440
         X2              =   7440
         Y1              =   480
         Y2              =   960
      End
      Begin VB.Line Line15 
         X1              =   7440
         X2              =   7920
         Y1              =   960
         Y2              =   960
      End
      Begin VB.Line Line16 
         X1              =   8520
         X2              =   9000
         Y1              =   480
         Y2              =   480
      End
      Begin VB.Line Line17 
         X1              =   9000
         X2              =   9000
         Y1              =   480
         Y2              =   960
      End
      Begin VB.Line Line18 
         X1              =   9000
         X2              =   8520
         Y1              =   960
         Y2              =   960
      End
      Begin VB.Label lblOrderA 
         BackColor       =   &H00C0FFFF&
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
         Left            =   1920
         TabIndex        =   73
         Top             =   600
         Visible         =   0   'False
         Width           =   1095
      End
      Begin VB.Label lblOrderB 
         BackColor       =   &H00C0FFFF&
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
         Left            =   5520
         TabIndex        =   72
         Top             =   600
         Visible         =   0   'False
         Width           =   1095
      End
      Begin VB.Label lblOrderC 
         BackColor       =   &H00C0FFFF&
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
         Left            =   9120
         TabIndex        =   71
         Top             =   600
         Visible         =   0   'False
         Width           =   1095
      End
   End
   Begin VB.Image Image6 
      Height          =   645
      Left            =   5760
      Picture         =   "matrix.frx":038A
      Top             =   1440
      Width           =   3825
   End
   Begin VB.Image Image5 
      Height          =   1710
      Left            =   0
      Picture         =   "matrix.frx":84CC
      Stretch         =   -1  'True
      Top             =   0
      Width           =   15360
   End
   Begin VB.Line Line20 
      Visible         =   0   'False
      X1              =   0
      X2              =   0
      Y1              =   0
      Y2              =   2760
   End
End
Attribute VB_Name = "matrix"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim row, col, ctr, t, ro, co, q, p, i, m, v, n, k, ro1, co1, ro2, co2, a1, b1 As Long
Dim roA, roB, roC, coA, coB, coC As Long
Dim Amatrix(4, 4) As Long
Dim Bmatrix(4, 4) As Long
Dim Cmatrix(4, 4) As Long
Dim Dmatrix(4, 4) As Long
Dim temp(4, 4) As Long
Dim tempdiv(4, 4) As Double
Dim Matrix_A(5, 5) As Long
Dim line_1
Dim temporary_1 As Long
Dim Transpose_Matrix(5, 5) As Long
Dim multiplier_1
'Matrix where the calculations are done
'Matri
Dim flag As String
Dim oper
 Const MAX_DIM = 10
 Dim elem1
 Dim message$
Option Explicit


Private Sub A_Change(Index As Integer)
If IsNumeric(A(Index).Text) = False And A(Index).Text <> "" Then
    If (A(Index).Text <> "-") Then
       
        i = MsgBox(A(Index).Text & " " & "is not a numeric value.Enter only numeric values", vbOKOnly + vbExclamation, "Non numeric input")
                   A(Index).SetFocus
        
    End If
    End If
End Sub

Private Sub A_LostFocus(Index As Integer)


If IsNumeric(A(Index).Text) = False And A(Index).Text <> "" Then

   If (A(Index).Text <> "-") Then
   
        i = MsgBox(A(Index).Text & " " & "is not a numeric value.Enter only numeric values", vbOKOnly + vbExclamation, "Non numeric input")
               
        A(Index).SetFocus
    
   End If

End If


End Sub

Private Sub B_Change(Index As Integer)

If IsNumeric(B(Index).Text) = False And B(Index).Text <> "" Then

    If (B(Index).Text <> "-") Then
    
        i = MsgBox(B(Index).Text & " " & "is not a numeric value.Enter only numeric values", vbOKOnly + vbExclamation, "Non numeric input")
               
        B(Index).SetFocus
        
    End If

End If



End Sub

Private Sub B_LostFocus(Index As Integer)

If IsNumeric(B(Index).Text) = False And B(Index).Text <> "" Then

   If (B(Index).Text <> "-") Then
   
        i = MsgBox(B(Index).Text & " " & "is not a numeric value.Enter only numeric values", vbOKOnly + vbExclamation, "Non numeric input")
               
        B(Index).SetFocus
        
   End If

End If


End Sub

Private Sub C_Change(Index As Integer)

If IsNumeric(C(Index).Text) = False And C(Index).Text <> "" Then

    If (C(Index).Text <> "-") Then
    
        i = MsgBox(C(Index).Text & " " & "is not a numeric value.Enter only numeric values", vbOKOnly + vbExclamation, "Non numeric input")
               
        C(Index).SetFocus
        
    End If

End If


End Sub

Private Sub C_LostFocus(Index As Integer)

If IsNumeric(C(Index).Text) = False And C(Index).Text <> "" Then

    If (C(Index).Text <> "-") Then
    
        i = MsgBox(C(Index).Text & " " & "is not a numeric value.Enter only numeric values", vbOKOnly + vbExclamation, "Non numeric input")
               
        C(Index).SetFocus
        
    End If

End If


End Sub

Private Sub C1_Click()

Select Case C1.List(C1.ListIndex)
Case "Addition"
 For i = 0 To 11
  command2(i).Enabled = False
 Next
 Command3.Enabled = True
 Command5.Enabled = True
 Command6.Enabled = False
 Command4.Enabled = False
 Command7.Enabled = False
 Command8.Enabled = False
 Command9.Enabled = False
 'Image1.Visible = True
 'Image2.Visible = False
 'Image3.Visible = False
 'Image4.Visible = False
Case "Subtraction"
 For i = 0 To 11
  command2(i).Enabled = False
 Next
  Command3.Enabled = False
  Command5.Enabled = False
  Command6.Enabled = True
  Command4.Enabled = True
  Command7.Enabled = False
  Command8.Enabled = False
  Command9.Enabled = False
  'Image1.Visible = False
 'Image2.Visible = True
 'Image3.Visible = False
  'Image4.Visible = False
Case "Multiplication"
For i = 0 To 11
  command2(i).Enabled = True
 Next
  Command3.Enabled = False
  Command5.Enabled = False
  Command6.Enabled = False
  Command4.Enabled = False
  Command7.Enabled = False
  Command8.Enabled = False
  Command9.Enabled = True
   'Image4.Visible = False
Case "Division"
For i = 0 To 11
  command2(i).Enabled = False
 Next
  Command3.Enabled = False
  Command5.Enabled = False
  Command6.Enabled = False
  Command4.Enabled = False
  Command7.Enabled = True
  Command8.Enabled = True
  Command9.Enabled = False
  'Image1.Visible = False
 'Image2.Visible = False
 'Image3.Visible = True
  'Image4.Visible = False
End Select
End Sub

Private Sub cmbOrderOfA_Click()

Call setlabels

Call All_Visible_A

ro = Int(Left((cmbOrderOfA.Text), 1))

co = Int(Right((cmbOrderOfA.Text), 1))

If (ro <> 4) Then


For i = (ro * 4) To 15
     
    A(i).Visible = False
    
    A(i).Text = ""
    
Next

End If


q = co

If (co <> 4) Then

    For i = co To 3
    
    
        For p = 1 To 4
        
            
            A(q).Visible = False
            
            A(q).Text = ""
            
            q = q + 4
               
        Next
                
       ' q = co
        
        co = co + 1
        
        q = co 'Added later
        
    
    Next



End If

End Sub



Private Sub cmbOrderOfB_Click()

Call setlabels

Call All_Visible_B

ro = Int(Left((cmbOrderOfB.Text), 1))

co = Int(Right((cmbOrderOfB.Text), 1))

If (ro <> 4) Then


For i = (ro * 4) To 15
     
    B(i).Visible = False
    
    B(i).Text = ""
    
Next

End If

q = co

If (co <> 4) Then

    For i = co To 3
    
    
        For p = 1 To 4
        
            
            B(q).Visible = False
            
            B(q).Text = ""
            
            q = q + 4
               
        Next
                
       ' q = co
        
        co = co + 1
        
        q = co 'Added later
    
    Next



End If



End Sub

Private Sub cmbOrderOfC_Click()

Call setlabels

Call All_Visible_c

ro = Int(Left((cmbOrderOfC.Text), 1))

co = Int(Right((cmbOrderOfC.Text), 1))

If (ro <> 4) Then


For i = (ro * 4) To 15
     
    C(i).Visible = False
    
    C(i).Text = ""
    
Next

End If

q = co

If (co <> 4) Then

    For i = co To 3
    
    
        For p = 1 To 4
        
            
            C(q).Visible = False
            
            C(q).Text = ""
            
            q = q + 4
               
        Next
                
        'q = co
        
        co = co + 1
        
        q = co 'Added later
    
    Next



End If


End Sub







Private Sub Command1_Click()

Call All_Visible_A
Call All_Visible_B
Call All_Visible_c
Call All_Visible_D


For i = 0 To 15

    A(i).Text = ""
    
    B(i).Text = ""
    
    C(i).Text = ""
    
    D(i).Caption = ""

Next

cmbOrderOfA.Text = cmbOrderOfA.List(15)

cmbOrderOfB.Text = cmbOrderOfB.List(15)

cmbOrderOfC.Text = cmbOrderOfC.List(15)

A(0).SetFocus

Label6.Caption = ""

lblOrderD.Caption = ""


End Sub



Private Sub Command2_Click(Index As Integer)

p = 0

q = 0


flag = ""


'Take elements of A in the array Amatrix

For ro = 0 To 3


    For co = 0 To 3
    
        If A(q) = "" Then
        
            Amatrix(ro, co) = 0
        
        Else
        
            Amatrix(ro, co) = Int(A(q))
            
        End If
        
        q = q + 1
    
    Next
    
    p = p + 4
    
    q = p
       
Next

p = 0

q = 0
'*For ro = 0 To 3  'Check for successful fill-up

   ' For co = 0 To 3
    
     '   Debug.Print "Amatrix(" & ro & "," & co & ") = " & Amatrix(ro, co)
    
   ' Next

'*Next

'Take all the elements of B in array Bmatrix

For ro = 0 To 3


    For co = 0 To 3
    
        If B(q) = "" Then
        
            Bmatrix(ro, co) = 0
        
        Else
        
            Bmatrix(ro, co) = Int(B(q))
            
        End If
        
        q = q + 1
    
    Next
    
    p = p + 4
    
    q = p
       
Next


'Take all the elements of C in array Cmatrix

p = 0

q = 0

For ro = 0 To 3


    For co = 0 To 3
    
        If C(q) = "" Then
        
            Cmatrix(ro, co) = 0
        
        Else
        
            Cmatrix(ro, co) = Int(C(q))
            
        End If
        
        q = q + 1
    
    Next
    
    p = p + 4
    
    q = p
       
Next

GoTo continue

Debug.Print "A***************"

For ro = 0 To 3  'Check for successful fill-up

    For co = 0 To 3
    
        Debug.Print "Amatrix(" & ro & "," & co & ") = " & Amatrix(ro, co)
    
    Next

Next

Debug.Print "B***************"

For ro = 0 To 3  'Check for successful fill-up

    For co = 0 To 3
    
        Debug.Print "Bmatrix(" & ro & "," & co & ") = " & Bmatrix(ro, co)
    
    Next

Next

Debug.Print "C********************"

Debug.Print "A***************"

For ro = 0 To 3  'Check for successful fill-up

    For co = 0 To 3
    
        Debug.Print "Cmatrix(" & ro & "," & co & ") = " & Cmatrix(ro, co)
    
    Next

Next

continue:

Call Check_Empty_Input

'Processing logic
'-----------------

If (flag <> "cancel") Then


    Select Case Index
    
    Case 0:  ' (AB)C
    
    'Calculate the product only if the product is defined
    
    If (Right(cmbOrderOfA, 1) = Left(cmbOrderOfB, 1)) Then
    
    'Calculate AB and store result in temp(4,4)
           
        For p = 0 To 3
        
        
            For q = 0 To 3
            
                temp(p, q) = 0
                
                For ctr = 0 To 3
                
                    temp(p, q) = temp(p, q) + Amatrix(p, ctr) * Bmatrix(ctr, q)
                
                Next
             
                                 
            Next
            
        Next
    
       
   
        If (Right(cmbOrderOfB, 1) = Left(cmbOrderOfC, 1)) Then
        
             'Multiply temp by Cmatrix and store the result in Dmatrix(4,4)
        
             
        
             For p = 0 To 3
         
         
                 For q = 0 To 3
                 
                    Dmatrix(p, q) = 0
                              
                     For ctr = 0 To 3
                 
                      Dmatrix(p, q) = Dmatrix(p, q) + temp(p, ctr) * Cmatrix(ctr, q)
                 
                     Next
                                                  
                  
                 Next
             
              Next
              
              '------------------
              
              i = 0
              
              For ro = 0 To 3
              
              
                For co = 0 To 3
                
                
                    D(i).Caption = Dmatrix(ro, co)
                    
                    i = i + 1
                
                Next
              
                            
              Next
              
              Call All_Visible_D
              
              'oooooooooooooooooooooooooooo
              
              
              Call All_Visible_D

              ro = Int(Left((cmbOrderOfA.Text), 1))

              co = Int(Right((cmbOrderOfC.Text), 1))

              If (ro <> 4) Then


                For i = (ro * 4) To 15
     
                        D(i).Visible = False
    
                        'D(i). = ""
    
                Next

             End If


             q = co

             If (co <> 4) Then

                    For i = co To 3
    
    
                        For p = 1 To 4
        
            
                        D(q).Visible = False
            
                        'D(q).Text = ""
            
                         q = q + 4
               
                        Next
                
                    ' q = co
        
                    co = co + 1
        
                    q = co 'Added later
        
    
                Next



        End If
              
            
        Label6.Caption = "Order Of " & command2(Index).Caption & " = " & Left(cmbOrderOfA, 1) & " x " & Right(cmbOrderOfC, 1)
              
        lblOrderD.Caption = Left(cmbOrderOfA, 1) & " x " & Right(cmbOrderOfC, 1)
        
              'ooooooooooooooooooooooooooo
    
        
        Else
        
            i = MsgBox("The product (AB)C is not defined", vbOKOnly, "Orders Incompatible")
        
            A(0).SetFocus
        
        End If
    
    
    Else
                   
        i = MsgBox("The product AB is not defined", vbOKOnly, "Orders Incompatible")
        
        A(0).SetFocus
    
    End If
    
    Case 1: 'C(AB)
    
    'Calculate the product only if the product is defined
    
    If (Right(cmbOrderOfA, 1) = Left(cmbOrderOfB, 1)) Then
    
    'Calculate AB and store result in temp
           
        For p = 0 To 3
        
        
            For q = 0 To 3
            
                
                temp(p, q) = 0
                
                For ctr = 0 To 3
                
                    temp(p, q) = temp(p, q) + Amatrix(p, ctr) * Bmatrix(ctr, q)
                
                Next
                                             
                 
            Next
            
        Next
    
       
   
        If (Right(cmbOrderOfC, 1) = Left(cmbOrderOfA, 1)) Then
        
             'Multiply Cmatrix by temp and store the result in Dmatrix
        
           
        
             For p = 0 To 3
         
         
                 For q = 0 To 3
             
                 
                    Dmatrix(p, q) = 0
                    
                     For ctr = 0 To 3
                 
                      Dmatrix(p, q) = Dmatrix(p, q) + Cmatrix(p, ctr) * temp(ctr, q)
                 
                     Next
              
                                   
                  
                 Next
             
              Next
              
              
        
              '------------------
              
              i = 0
              
              For ro = 0 To 3
              
              
                For co = 0 To 3
                
                
                    D(i).Caption = Dmatrix(ro, co)
                    
                    i = i + 1
                
                Next
              
                            
              Next
              
              Call All_Visible_D
              
              'oooooooooooooooooooooooooooo
              
              
              Call All_Visible_D

              ro = Int(Left(cmbOrderOfC, 1))

              co = Int(Right(cmbOrderOfB, 1))

              If (ro <> 4) Then


                For i = (ro * 4) To 15
     
                        D(i).Visible = False
    
                        'D(i). = ""
    
                Next

             End If


             q = co

             If (co <> 4) Then

                    For i = co To 3
    
    
                        For p = 1 To 4
        
            
                        D(q).Visible = False
            
                        'D(q).Text = ""
            
                         q = q + 4
               
                        Next
                
                    ' q = co
        
                    co = co + 1
        
                    q = co 'Added later
        
    
                Next



        End If
              
            
        Label6.Caption = "Order Of " & command2(Index).Caption & " = " & Left(cmbOrderOfC, 1) & " x " & Right(cmbOrderOfB, 1)
              
        lblOrderD.Caption = Left(cmbOrderOfC, 1) & " x " & Right(cmbOrderOfB, 1)
        
              'ooooooooooooooooooooooooooo
    
        
        Else
        
            i = MsgBox("The product C(AB) is not defined", vbOKOnly, "Orders Incompatible")
        
            A(0).SetFocus
        
        End If
    
    
    Else
                   
        i = MsgBox("The product AB is not defined", vbOKOnly, "Orders Incompatible")
        
        A(0).SetFocus
    
    End If
    
    Case 2:  '(BA)C
    
    'Calculate the product only if the product is defined
    
    If (Right(cmbOrderOfB, 1) = Left(cmbOrderOfA, 1)) Then
    
    'Calculate BA and store result in temp(4,4)
           
        For p = 0 To 3
        
        
            For q = 0 To 3
            
                temp(p, q) = 0
                
                For ctr = 0 To 3
                
                    temp(p, q) = temp(p, q) + Bmatrix(p, ctr) * Amatrix(ctr, q)
                
                Next
             
                               
                 
            Next
            
        Next
    
       
   
        If (Right(cmbOrderOfA, 1) = Left(cmbOrderOfC, 1)) Then
        
             'Multiply temp by Cmatrix and store the result in Dmatrix(4,4)
        
            
        
             For p = 0 To 3
         
         
                 For q = 0 To 3
             
                 
                    Dmatrix(p, q) = 0
                    
                     For ctr = 0 To 3
                 
                     Dmatrix(p, q) = Dmatrix(p, q) + temp(p, ctr) * Cmatrix(ctr, q)
                 
                     Next
                                                
                  
                 Next
             
              Next
              
              '------------------
              
              i = 0
              
              For ro = 0 To 3
              
              
                For co = 0 To 3
                
                
                    D(i).Caption = Dmatrix(ro, co)
                    
                    i = i + 1
                
                Next
              
                            
              Next
              
              Call All_Visible_D
              
              'oooooooooooooooooooooooooooo
              
              
              Call All_Visible_D

              ro = Int(Left((cmbOrderOfB.Text), 1))

              co = Int(Right((cmbOrderOfC.Text), 1))

              If (ro <> 4) Then


                For i = (ro * 4) To 15
     
                        D(i).Visible = False
    
                        'D(i). = ""
    
                Next

             End If


             q = co

             If (co <> 4) Then

                    For i = co To 3
    
    
                        For p = 1 To 4
        
            
                        D(q).Visible = False
            
                        'D(q).Text = ""
            
                         q = q + 4
               
                        Next
                
                    ' q = co
        
                    co = co + 1
        
                    q = co 'Added later
        
    
                Next



        End If
              
            
        Label6.Caption = "Order Of " & command2(Index).Caption & " = " & Left(cmbOrderOfB, 1) & " x " & Right(cmbOrderOfC, 1)
              
        lblOrderD.Caption = Left(cmbOrderOfB, 1) & " x " & Right(cmbOrderOfC, 1)
        
              'ooooooooooooooooooooooooooo
    
        
        Else
        
            i = MsgBox("The product (BA)C is not defined", vbOKOnly, "Orders Incompatible")
        
            A(0).SetFocus
        
        End If
    
    
    Else
                   
        i = MsgBox("The product BA is not defined", vbOKOnly, "Orders Incompatible")
        
        A(0).SetFocus
    
    End If
    
    
    Case 3:  'C(BA)
    
    'Calculate the product only if the product is defined
    
    If (Right(cmbOrderOfB, 1) = Left(cmbOrderOfA, 1)) Then
    
    'Calculate BA and store result in temp(4,4)
           
        For p = 0 To 3
        
        
            For q = 0 To 3
            
                temp(p, q) = 0
                
                For ctr = 0 To 3
                
                    temp(p, q) = temp(p, q) + Bmatrix(p, ctr) * Amatrix(ctr, q)
                
                Next
             
                                 
            Next
            
        Next
    
       
   
        If (Right(cmbOrderOfC, 1) = Left(cmbOrderOfB, 1)) Then
        
             'Multiply Cmatrix by temp and store the result in Dmatrix(4,4)
        
             
        
             For p = 0 To 3
         
         
                 For q = 0 To 3
             
                    Dmatrix(p, q) = 0
                 
                     For ctr = 0 To 3
                 
                      Dmatrix(p, q) = Dmatrix(p, q) + Cmatrix(p, ctr) * temp(ctr, q)
                 
                     Next
              
                                  
                  
                 Next
             
              Next
              
              '------------------
              
              i = 0
              
              For ro = 0 To 3
              
              
                For co = 0 To 3
                
                
                    D(i).Caption = Dmatrix(ro, co)
                    
                    i = i + 1
                
                Next
              
                            
              Next
              
              Call All_Visible_D
              
              'oooooooooooooooooooooooooooo
              
              
              Call All_Visible_D

              ro = Int(Left((cmbOrderOfC.Text), 1))

              co = Int(Right((cmbOrderOfA.Text), 1))

              If (ro <> 4) Then


                For i = (ro * 4) To 15
     
                        D(i).Visible = False
    
                        'D(i). = ""
    
                Next

             End If


             q = co

             If (co <> 4) Then

                    For i = co To 3
    
    
                        For p = 1 To 4
        
            
                        D(q).Visible = False
            
                        'D(q).Text = ""
            
                         q = q + 4
               
                        Next
                
                    ' q = co
        
                    co = co + 1
        
                    q = co 'Added later
        
    
                Next



        End If
              
            
        Label6.Caption = "Order Of " & command2(Index).Caption & " = " & Left(cmbOrderOfC, 1) & " x " & Right(cmbOrderOfA, 1)
              
        lblOrderD.Caption = Left(cmbOrderOfC, 1) & " x " & Right(cmbOrderOfA, 1)
        
              'ooooooooooooooooooooooooooo
    
        
        Else
        
            i = MsgBox("The product C(BA) is not defined", vbOKOnly, "Orders Incompatible")
        
            A(0).SetFocus
        
        End If
    
    
    Else
                   
        i = MsgBox("The product BA is not defined", vbOKOnly, "Orders Incompatible")
        
        A(0).SetFocus
    
    End If
        
    Case 4:  '(BC)A
    
    'Calculate the product only if the product is defined
    
    If (Right(cmbOrderOfB, 1) = Left(cmbOrderOfC, 1)) Then
    
    'Calculate BC and store result in temp
           
        For p = 0 To 3
        
        
            For q = 0 To 3
            
                
                temp(p, q) = 0
                
                For ctr = 0 To 3
                
                    temp(p, q) = temp(p, q) + Bmatrix(p, ctr) * Cmatrix(ctr, q)
                
                Next
                                             
                 
            Next
            
        Next
    
       
   
        If (Right(cmbOrderOfC, 1) = Left(cmbOrderOfA, 1)) Then
        
             'Multiply temp by Amatrix and store the result in Dmatrix(4,4)
        
            
             For p = 0 To 3
         
         
                 For q = 0 To 3
             
                 
                    Dmatrix(p, q) = 0
                    
                     For ctr = 0 To 3
                 
                      Dmatrix(p, q) = Dmatrix(p, q) + temp(p, ctr) * Amatrix(ctr, q)
                 
                     Next
              
                                      
                 Next
             
              Next
              
              '------------------
              
              i = 0
              
              For ro = 0 To 3
              
              
                For co = 0 To 3
                
                
                    D(i).Caption = Dmatrix(ro, co)
                    
                    i = i + 1
                
                Next
              
                            
              Next
              
              Call All_Visible_D
              
              'oooooooooooooooooooooooooooo
              
              
              Call All_Visible_D

              ro = Int(Left((cmbOrderOfB.Text), 1))

              co = Int(Right((cmbOrderOfA.Text), 1))

              If (ro <> 4) Then


                For i = (ro * 4) To 15
     
                        D(i).Visible = False
    
                        'D(i). = ""
    
                Next

             End If


             q = co

             If (co <> 4) Then

                    For i = co To 3
    
    
                        For p = 1 To 4
        
            
                        D(q).Visible = False
            
                        'D(q).Text = ""
            
                         q = q + 4
               
                        Next
                
                    ' q = co
        
                    co = co + 1
        
                    q = co 'Added later
        
    
                Next



        End If
              
            
        Label6.Caption = "Order Of " & command2(Index).Caption & " = " & Left(cmbOrderOfB, 1) & " x " & Right(cmbOrderOfA, 1)
              
        lblOrderD.Caption = Left(cmbOrderOfB, 1) & " x " & Right(cmbOrderOfA, 1)
        
              'ooooooooooooooooooooooooooo
    
        
        Else
        
            i = MsgBox("The product (BC)A is not defined", vbOKOnly, "Orders Incompatible")
        
            A(0).SetFocus
        
        End If
    
    
    Else
                   
        i = MsgBox("The product BC is not defined", vbOKOnly, "Orders Incompatible")
        
        A(0).SetFocus
    
    End If
        
    Case 5:  'A(BC)
    
    'Calculate the product only if the product is defined
    
    If (Right(cmbOrderOfB, 1) = Left(cmbOrderOfC, 1)) Then
    
    'Calculate BC and store the result in temp
           
        For p = 0 To 3
        
        
            For q = 0 To 3
            
                
                temp(p, q) = 0
                
                For ctr = 0 To 3
                
                    temp(p, q) = temp(p, q) + Bmatrix(p, ctr) * Cmatrix(ctr, q)
                
                Next
                                             
                 
            Next
            
        Next
    
       
   
        If (Right(cmbOrderOfA, 1) = Left(cmbOrderOfB, 1)) Then
        
             'Multiply Amatrix by temp and store the result in Dmatrix(4,4)
        
           
             For p = 0 To 3
         
         
                 For q = 0 To 3
             
                 
                     Dmatrix(p, q) = 0
                     
                     For ctr = 0 To 3
                 
                      Dmatrix(p, q) = Dmatrix(p, q) + Amatrix(p, ctr) * temp(ctr, q)
                 
                     Next
                                              
                  
                 Next
             
              Next
              
              '------------------
              
              i = 0
              
              For ro = 0 To 3
              
              
                For co = 0 To 3
                
                
                    D(i).Caption = Dmatrix(ro, co)
                    
                    i = i + 1
                
                Next
              
                            
              Next
              
              Call All_Visible_D
              
              'oooooooooooooooooooooooooooo
              
              
              Call All_Visible_D

              ro = Int(Left((cmbOrderOfA.Text), 1))

              co = Int(Right((cmbOrderOfC.Text), 1))

              If (ro <> 4) Then


                For i = (ro * 4) To 15
     
                        D(i).Visible = False
    
                        'D(i). = ""
    
                Next

             End If


             q = co

             If (co <> 4) Then

                    For i = co To 3
    
    
                        For p = 1 To 4
        
            
                        D(q).Visible = False
            
                        'D(q).Text = ""
            
                         q = q + 4
               
                        Next
                
                    ' q = co
        
                    co = co + 1
        
                    q = co 'Added later
        
    
                Next



        End If
              
            
        Label6.Caption = "Order Of " & command2(Index).Caption & " = " & Left(cmbOrderOfA, 1) & " x " & Right(cmbOrderOfC, 1)
              
        lblOrderD.Caption = Left(cmbOrderOfA, 1) & " x " & Right(cmbOrderOfC, 1)
        
              'ooooooooooooooooooooooooooo
    
        
        Else
        
            i = MsgBox("The product A(BC) is not defined", vbOKOnly, "Orders Incompatible")
        
            A(0).SetFocus
        
        End If
    
    
    Else
                   
        i = MsgBox("The product BC is not defined", vbOKOnly, "Orders Incompatible")
        
        A(0).SetFocus
    
    End If
        
    Case 6:  '(CB)A
    'Calculate the product only if the product is defined
    
    If (Right(cmbOrderOfC, 1) = Left(cmbOrderOfB, 1)) Then
    
    'Calculate CB and store result in temp
           
        For p = 0 To 3
        
        
            For q = 0 To 3
            
                
                temp(p, q) = 0
                
                For ctr = 0 To 3
                
                    temp(p, q) = temp(p, q) + Cmatrix(p, ctr) * Bmatrix(ctr, q)
                
                Next
                                          
                 
            Next
            
        Next
    
       
   
        If (Right(cmbOrderOfB, 1) = Left(cmbOrderOfA, 1)) Then
        
             'Multiply temp by Amatrix and store the result in Dmatrix(4,4)
        
            
        
             For p = 0 To 3
         
         
                 For q = 0 To 3
             
                        
                     Dmatrix(p, q) = 0
                     
                     For ctr = 0 To 3
                 
                      Dmatrix(p, q) = Dmatrix(p, q) + temp(p, ctr) * Amatrix(ctr, q)
                 
                     Next
                                           
                  
                 Next
             
              Next
              
              '------------------
              
              i = 0
              
              For ro = 0 To 3
              
              
                For co = 0 To 3
                
                
                    D(i).Caption = Dmatrix(ro, co)
                    
                    i = i + 1
                
                Next
              
                            
              Next
              
              Call All_Visible_D
              
              'oooooooooooooooooooooooooooo
              
              
              Call All_Visible_D

              ro = Int(Left((cmbOrderOfC.Text), 1))

              co = Int(Right((cmbOrderOfA.Text), 1))

              If (ro <> 4) Then


                For i = (ro * 4) To 15
     
                        D(i).Visible = False
    
                        'D(i). = ""
    
                Next

             End If


             q = co

             If (co <> 4) Then

                    For i = co To 3
    
    
                        For p = 1 To 4
        
            
                        D(q).Visible = False
            
                        'D(q).Text = ""
            
                         q = q + 4
               
                        Next
                
                    ' q = co
        
                    co = co + 1
        
                    q = co 'Added later
        
    
                Next



        End If
              
            
        Label6.Caption = "Order Of " & command2(Index).Caption & " = " & Left(cmbOrderOfC, 1) & " x " & Right(cmbOrderOfA, 1)
              
        lblOrderD.Caption = Left(cmbOrderOfC, 1) & " x " & Right(cmbOrderOfA, 1)
        
              'ooooooooooooooooooooooooooo
    
        
        Else
        
            i = MsgBox("The product (CB)A is not defined", vbOKOnly, "Orders Incompatible")
        
            A(0).SetFocus
        
        End If
    
    
    Else
                   
        i = MsgBox("The product CB is not defined", vbOKOnly, "Orders Incompatible")
        
        A(0).SetFocus
    
    End If
            
    Case 7:  'A(CB)
    
    'Calculate the product only if the product is defined
    
    If (Right(cmbOrderOfC, 1) = Left(cmbOrderOfB, 1)) Then
    
    'Calculate CB and store result in temp
           
        For p = 0 To 3
        
        
            For q = 0 To 3
            
                temp(p, q) = 0
                
                For ctr = 0 To 3
                
                    temp(p, q) = temp(p, q) + Cmatrix(p, ctr) * Bmatrix(ctr, q)
                
                Next
                                           
                 
            Next
            
        Next
    
       
   
        If (Right(cmbOrderOfA, 1) = Left(cmbOrderOfC, 1)) Then
        
             'Multiply Amatrix by temp and store the result in Dmatrix(4,4)
        
             
        
             For p = 0 To 3
         
         
                 For q = 0 To 3
             
                     Dmatrix(p, q) = 0
                     
                     For ctr = 0 To 3
                 
                      Dmatrix(p, q) = Dmatrix(p, q) + Amatrix(p, ctr) * temp(ctr, q)
                 
                     Next
                                                
                  
                 Next
             
              Next
              
              '------------------
              
              i = 0
              
              For ro = 0 To 3
              
              
                For co = 0 To 3
                
                
                    D(i).Caption = Dmatrix(ro, co)
                    
                    i = i + 1
                
                Next
              
                            
              Next
              
              Call All_Visible_D
              
              'oooooooooooooooooooooooooooo
              
              
              Call All_Visible_D

              ro = Int(Left((cmbOrderOfA.Text), 1))

              co = Int(Right((cmbOrderOfB.Text), 1))

              If (ro <> 4) Then


                For i = (ro * 4) To 15
     
                        D(i).Visible = False
    
                        'D(i). = ""
    
                Next

             End If


             q = co

             If (co <> 4) Then

                    For i = co To 3
    
    
                        For p = 1 To 4
        
            
                        D(q).Visible = False
            
                        'D(q).Text = ""
            
                         q = q + 4
               
                        Next
                
                    ' q = co
        
                    co = co + 1
        
                    q = co 'Added later
        
    
                Next



        End If
              
            
        Label6.Caption = "Order Of " & command2(Index).Caption & " = " & Left(cmbOrderOfA, 1) & " x " & Right(cmbOrderOfB, 1)
              
        lblOrderD.Caption = Left(cmbOrderOfA, 1) & " x " & Right(cmbOrderOfB, 1)
        
              'ooooooooooooooooooooooooooo
    
        
        Else
        
            i = MsgBox("The product A(CB) is not defined", vbOKOnly, "Orders Incompatible")
        
            A(0).SetFocus
        
        End If
    
    
    Else
                   
        i = MsgBox("The product CB is not defined", vbOKOnly, "Orders Incompatible")
        
        A(0).SetFocus
    
    End If
        
    Case 8:  '(AC)B
    
    'Calculate the product only if the product is defined
    
    If (Right(cmbOrderOfA, 1) = Left(cmbOrderOfC, 1)) Then
    
    'Calculate AC and store result in temp
           
        For p = 0 To 3
        
        
            For q = 0 To 3
            
                temp(p, q) = 0
                
                For ctr = 0 To 3
                
                    temp(p, q) = temp(p, q) + Amatrix(p, ctr) * Cmatrix(ctr, q)
                
                Next
                                           
                 
            Next
            
        Next
    
       
   
        If (Right(cmbOrderOfC, 1) = Left(cmbOrderOfB, 1)) Then
        
             'Multiply temp by Bmatrix and store the result in Dmatrix(4,4)
        
            
             For p = 0 To 3
         
         
                 For q = 0 To 3
             
                     
                     Dmatrix(p, q) = 0
                     
                     For ctr = 0 To 3
                 
                      Dmatrix(p, q) = Dmatrix(p, q) + temp(p, ctr) * Bmatrix(ctr, q)
                 
                     Next
                                               
                  
                 Next
             
              Next
              
              '------------------
              
              i = 0
              
              For ro = 0 To 3
              
              
                For co = 0 To 3
                
                
                    D(i).Caption = Dmatrix(ro, co)
                    
                    i = i + 1
                
                Next
              
                            
              Next
              
              Call All_Visible_D
              
              'oooooooooooooooooooooooooooo
              
              
              Call All_Visible_D

              ro = Int(Left((cmbOrderOfA.Text), 1))

              co = Int(Right((cmbOrderOfB.Text), 1))

              If (ro <> 4) Then


                For i = (ro * 4) To 15
     
                        D(i).Visible = False
    
                        'D(i). = ""
    
                Next

             End If


             q = co

             If (co <> 4) Then

                    For i = co To 3
    
    
                        For p = 1 To 4
        
            
                        D(q).Visible = False
            
                        'D(q).Text = ""
            
                         q = q + 4
               
                        Next
                
                    ' q = co
        
                    co = co + 1
        
                    q = co 'Added later
        
    
                Next



        End If
              
            
        Label6.Caption = "Order Of " & command2(Index).Caption & " = " & Left(cmbOrderOfA, 1) & " x " & Right(cmbOrderOfB, 1)
              
        lblOrderD.Caption = Left(cmbOrderOfA, 1) & " x " & Right(cmbOrderOfB, 1)
        
              'ooooooooooooooooooooooooooo
    
        
        Else
        
            i = MsgBox("The product (AC)B is not defined", vbOKOnly, "Orders Incompatible")
        
            A(0).SetFocus
        
        End If
    
    
    Else
                   
        i = MsgBox("The product AC is not defined", vbOKOnly, "Orders Incompatible")
        
        A(0).SetFocus
    
    End If
        
    Case 9:  'B(AC)
    
    'Calculate the product only if the product is defined
    
    If (Right(cmbOrderOfA, 1) = Left(cmbOrderOfC, 1)) Then
    
    'Calculate AC and store result in temp
           
        For p = 0 To 3
        
        
            For q = 0 To 3
            
                temp(p, q) = 0
                
                For ctr = 0 To 3
                
                    temp(p, q) = temp(p, q) + Amatrix(p, ctr) * Cmatrix(ctr, q)
                
                Next
                                           
                 
            Next
            
        Next
    
       
   
        If (Right(cmbOrderOfB, 1) = Left(cmbOrderOfA, 1)) Then
        
             'Multiply Bmatrix by temp and store the result in Dmatrix(4,4)
        
            
        
             For p = 0 To 3
         
         
                 For q = 0 To 3
             
                     Dmatrix(p, q) = 0
                     
                     For ctr = 0 To 3
                 
                      Dmatrix(p, q) = Dmatrix(p, q) + Bmatrix(p, ctr) * temp(ctr, q)
                 
                     Next
                                               
                  
                 Next
             
              Next
              
              '------------------
              
              i = 0
              
              For ro = 0 To 3
              
              
                For co = 0 To 3
                
                
                    D(i).Caption = Dmatrix(ro, co)
                    
                    i = i + 1
                
                Next
              
                            
              Next
              
              Call All_Visible_D
              
              'oooooooooooooooooooooooooooo
                            
              Call All_Visible_D

              ro = Int(Left((cmbOrderOfA.Text), 1))

              co = Int(Right((cmbOrderOfB.Text), 1))

              If (ro <> 4) Then


                For i = (ro * 4) To 15
     
                        D(i).Visible = False
    
                        'D(i). = ""
    
                Next

             End If


             q = co

             If (co <> 4) Then

                    For i = co To 3
    
    
                        For p = 1 To 4
        
            
                        D(q).Visible = False
            
                        'D(q).Text = ""
            
                         q = q + 4
               
                        Next
                
                    ' q = co
        
                    co = co + 1
        
                    q = co 'Added later
        
    
                Next



        End If
              
            
        Label6.Caption = "Order Of " & command2(Index).Caption & " = " & Left(cmbOrderOfA, 1) & " x " & Right(cmbOrderOfB, 1)
              
        lblOrderD.Caption = Left(cmbOrderOfA, 1) & " x " & Right(cmbOrderOfB, 1)
        
              'ooooooooooooooooooooooooooo
    
        
        Else
        
            i = MsgBox("The product B(AC) is not defined", vbOKOnly, "Orders Incompatible")
        
            A(0).SetFocus
        
        End If
    
    
    Else
                   
        i = MsgBox("The product AC is not defined", vbOKOnly, "Orders Incompatible")
        
        A(0).SetFocus
    
    End If
        
    Case 10: '(CA)B
    
      'Calculate the product only if the product is defined
    
    If (Right(cmbOrderOfC, 1) = Left(cmbOrderOfA, 1)) Then
    
    'Calculate CA and store result in temp
           
        For p = 0 To 3
        
        
            For q = 0 To 3
            
                temp(p, q) = 0
                
                For ctr = 0 To 3
                
                    temp(p, q) = temp(p, q) + Cmatrix(p, ctr) * Amatrix(ctr, q)
                
                Next
             
                      
                 
            Next
            
        Next
    
       
   
        If (Right(cmbOrderOfA, 1) = Left(cmbOrderOfB, 1)) Then
        
             'Multiply temp by Bmatrix and store the result in Dmatrix(4,4)
        
             
        
             For p = 0 To 3
         
         
                 For q = 0 To 3
             
                     Dmatrix(p, q) = 0
                     
                     For ctr = 0 To 3
                 
                      Dmatrix(p, q) = Dmatrix(p, q) + temp(p, ctr) * Bmatrix(ctr, q)
                 
                     Next
                                              
                  
                 Next
             
              Next
              
              '------------------
              
              i = 0
              
              For ro = 0 To 3
              
              
                For co = 0 To 3
                
                
                    D(i).Caption = Dmatrix(ro, co)
                    
                    i = i + 1
                
                Next
              
                            
              Next
              
              Call All_Visible_D
              
              'oooooooooooooooooooooooooooo
              
              
              Call All_Visible_D

              ro = Int(Left((cmbOrderOfC.Text), 1))

              co = Int(Right((cmbOrderOfB.Text), 1))

              If (ro <> 4) Then


                For i = (ro * 4) To 15
     
                        D(i).Visible = False
    
                        'D(i). = ""
    
                Next

             End If


             q = co

             If (co <> 4) Then

                    For i = co To 3
    
    
                        For p = 1 To 4
        
            
                        D(q).Visible = False
            
                        'D(q).Text = ""
            
                         q = q + 4
               
                        Next
                
                    ' q = co
        
                    co = co + 1
        
                    q = co 'Added later
        
    
                Next



        End If
              
            
        Label6.Caption = "Order Of " & command2(Index).Caption & " = " & Left(cmbOrderOfC, 1) & " x " & Right(cmbOrderOfB, 1)
              
        lblOrderD.Caption = Left(cmbOrderOfC, 1) & " x " & Right(cmbOrderOfB, 1)
        
              'ooooooooooooooooooooooooooo
    
        
        Else
        
            i = MsgBox("The product (CA)B is not defined", vbOKOnly, "Orders Incompatible")
        
            A(0).SetFocus
        
        End If
    
    
    Else
                   
        i = MsgBox("The product CA is not defined", vbOKOnly, "Orders Incompatible")
        
        A(0).SetFocus
    
    End If
    
    
    Case 11: 'B(CA)
    
      'Calculate the product only if the product is defined
    
    If (Right(cmbOrderOfC, 1) = Left(cmbOrderOfA, 1)) Then
    
    'Calculate CA and store result in temp
           
        For p = 0 To 3
        
        
            For q = 0 To 3
            
                temp(p, q) = 0
                
                For ctr = 0 To 3
                
                    temp(p, q) = temp(p, q) + Cmatrix(p, ctr) * Amatrix(ctr, q)
                
                Next
                                         
                 
            Next
            
        Next
    
       
   
        If (Right(cmbOrderOfB, 1) = Left(cmbOrderOfC, 1)) Then
        
             'Multiply Bmatrix by temp and store the result in Dmatrix
        
             
        
             For p = 0 To 3
         
         
                 For q = 0 To 3
                 
                    
                    Dmatrix(p, q) = 0
             
                 
                     For ctr = 0 To 3
                 
                      Dmatrix(p, q) = Dmatrix(p, q) + Bmatrix(p, ctr) * temp(ctr, q)
                 
                     Next
                                                   
                 Next
             
              Next
              
              '------------------
              
              i = 0
              
              For ro = 0 To 3
              
              
                For co = 0 To 3
                
                
                    D(i).Caption = Dmatrix(ro, co)
                    
                    i = i + 1
                
                Next
              
                            
              Next
              
              Call All_Visible_D
              
              'oooooooooooooooooooooooooooo
              
              
              Call All_Visible_D

              ro = Int(Left((cmbOrderOfC.Text), 1))

              co = Int(Right((cmbOrderOfB.Text), 1))

              If (ro <> 4) Then


                For i = (ro * 4) To 15
     
                        D(i).Visible = False
    
                        'D(i). = ""
    
                Next

             End If


             q = co

             If (co <> 4) Then

                    For i = co To 3
    
    
                        For p = 1 To 4
        
            
                        D(q).Visible = False
            
                        'D(q).Text = ""
            
                         q = q + 4
               
                        Next
                
                    ' q = co
        
                    co = co + 1
        
                    q = co 'Added later
        
    
                Next



        End If
              
            
        Label6.Caption = "Order Of " & command2(Index).Caption & " = " & Left(cmbOrderOfC, 1) & " x " & Right(cmbOrderOfB, 1)
              
        lblOrderD.Caption = Left(cmbOrderOfC, 1) & " x " & Right(cmbOrderOfB, 1)
        
              'ooooooooooooooooooooooooooo
    
        
        Else
        
            i = MsgBox("The product B(CA) is not defined", vbOKOnly, "Orders Incompatible")
        
            A(0).SetFocus
        
        End If
    
    
    Else
                   
        i = MsgBox("The product CA is not defined", vbOKOnly, "Orders Incompatible")
        
        A(0).SetFocus
    
    End If
    
    
    
    End Select
    

End If
    
End Sub



Private Sub Command3_Click()
ro = Int(Left((cmbOrderOfA.Text), 1))
co = Int(Right((cmbOrderOfA.Text), 1))
ro1 = Int(Left((cmbOrderOfB.Text), 1))
co1 = Int(Right((cmbOrderOfB.Text), 1))
ro2 = Int(Left((cmbOrderOfC.Text), 1))
co2 = Int(Right((cmbOrderOfC.Text), 1))
If ro <> ro1 Or co <> co1 Or ro <> ro2 Or co <> co2 Or ro1 <> ro2 Or co1 <> co2 Then
 MsgBox "The addition (A+B+C) is not defined", vbOKOnly, "Invalid"
Else
p = 0
q = 0
flag = ""
'Take elements of A in the array Amatrix
For ro = 0 To 3
    For co = 0 To 3
        If A(q) = "" Then
            Amatrix(ro, co) = 0
           Else
            Amatrix(ro, co) = Int(A(q))
        End If
         q = q + 1
    Next
    p = p + 4
    q = p
Next
p = 0
q = 0
'Take all the elements of B in array Bmatrix
For ro = 0 To 3
    For co = 0 To 3
        If B(q) = "" Then
            Bmatrix(ro, co) = 0
        Else
            Bmatrix(ro, co) = Int(B(q))
        End If
        q = q + 1
    Next
    p = p + 4
    q = p
Next
'Take all the elements of C in array Cmatrix
p = 0
q = 0
For ro = 0 To 3
    For co = 0 To 3
        If C(q) = "" Then
            Cmatrix(ro, co) = 0
        Else
            Cmatrix(ro, co) = Int(C(q))
        End If
        q = q + 1
    Next
    p = p + 4
    q = p
Next
For ro = 0 To 3
    For co = 0 To 3
temp(ro, co) = Amatrix(ro, co) + Bmatrix(ro, co) + Cmatrix(ro, co)
  Next
Next
     i = 0
    For ro = 0 To 3
     For co = 0 To 3
      D(i).Caption = temp(ro, co)
        i = i + 1
    Next
  Next
End If
Call All_Visible_D
             ro = Int(Left((cmbOrderOfA.Text), 1))
             co = Int(Right((cmbOrderOfA.Text), 1))
             If (ro <> 4) Then
                For i = (ro * 4) To 15
                      D(i).Visible = False
                Next
             End If
             q = co
             If (co <> 4) Then
                    For i = co To 3
                        For p = 1 To 4
                         D(q).Visible = False
                           q = q + 4
                        Next
                         co = co + 1
                    q = co
                Next
             End If
 Label6.Caption = "Order Of " & Command3.Caption & " = " & Left(cmbOrderOfA, 1) & " x " & Right(cmbOrderOfA, 1)

End Sub

Private Sub Command4_Click()
ro = Int(Left((cmbOrderOfA.Text), 1))
co = Int(Right((cmbOrderOfA.Text), 1))
ro1 = Int(Left((cmbOrderOfB.Text), 1))
co1 = Int(Right((cmbOrderOfB.Text), 1))
ro2 = Int(Left((cmbOrderOfC.Text), 1))
co2 = Int(Right((cmbOrderOfC.Text), 1))
If ro <> ro1 Or co <> co1 Or ro <> ro2 Or co <> co2 Or ro1 <> ro2 Or co1 <> co2 Then
 MsgBox "The addition (A-B-C) is not defined", vbOKOnly, "Invalid"
Else
p = 0
q = 0
flag = ""
'Take elements of A in the array Amatrix
For ro = 0 To 3
    For co = 0 To 3
        If A(q) = "" Then
            Amatrix(ro, co) = 0
           Else
            Amatrix(ro, co) = Int(A(q))
        End If
         q = q + 1
    Next
    p = p + 4
    q = p
Next
p = 0
q = 0
'Take all the elements of B in array Bmatrix
For ro = 0 To 3
    For co = 0 To 3
        If B(q) = "" Then
            Bmatrix(ro, co) = 0
        Else
            Bmatrix(ro, co) = Int(B(q))
        End If
        q = q + 1
    Next
    p = p + 4
    q = p
Next
'Take all the elements of C in array Cmatrix
p = 0
q = 0
For ro = 0 To 3
    For co = 0 To 3
        If C(q) = "" Then
            Cmatrix(ro, co) = 0
        Else
            Cmatrix(ro, co) = Int(C(q))
        End If
        q = q + 1
    Next
    p = p + 4
    q = p
Next
For ro = 0 To 3
    For co = 0 To 3
temp(ro, co) = Amatrix(ro, co) - Bmatrix(ro, co) - Cmatrix(ro, co)
  Next
Next
     i = 0
    For ro = 0 To 3
     For co = 0 To 3
      D(i).Caption = temp(ro, co)
        i = i + 1
    Next
  Next
End If
Call All_Visible_D
             ro = Int(Left((cmbOrderOfA.Text), 1))
             co = Int(Right((cmbOrderOfA.Text), 1))
             If (ro <> 4) Then
                For i = (ro * 4) To 15
                      D(i).Visible = False
                Next
             End If
             q = co
             If (co <> 4) Then
                    For i = co To 3
                        For p = 1 To 4
                         D(q).Visible = False
                           q = q + 4
                        Next
                         co = co + 1
                    q = co
                Next
             End If
 Label6.Caption = "Order Of " & Command4.Caption & " = " & Left(cmbOrderOfA, 1) & " x " & Right(cmbOrderOfA, 1)

End Sub

Private Sub Command5_Click()
ro = Int(Left((cmbOrderOfA.Text), 1))
co = Int(Right((cmbOrderOfA.Text), 1))
ro1 = Int(Left((cmbOrderOfB.Text), 1))
co1 = Int(Right((cmbOrderOfB.Text), 1))
If ro <> ro1 Or co <> co1 Then
 MsgBox "The addition (A+B) is not defined", vbOKOnly, "Invalid"
Else
p = 0
q = 0
flag = ""
'Take elements of A in the array Amatrix
For ro = 0 To 3
    For co = 0 To 3
        If A(q) = "" Then
            Amatrix(ro, co) = 0
           Else
            Amatrix(ro, co) = Int(A(q))
        End If
         q = q + 1
    Next
    p = p + 4
    q = p
Next
p = 0
q = 0
'Take all the elements of B in array Bmatrix
For ro = 0 To 3
    For co = 0 To 3
        If B(q) = "" Then
            Bmatrix(ro, co) = 0
        Else
            Bmatrix(ro, co) = Int(B(q))
        End If
        q = q + 1
    Next
    p = p + 4
    q = p
Next
For ro = 0 To 3
    For co = 0 To 3
temp(ro, co) = Amatrix(ro, co) + Bmatrix(ro, co)
  Next
Next
     i = 0
    For ro = 0 To 3
     For co = 0 To 3
      D(i).Caption = temp(ro, co)
        i = i + 1
    Next
  Next
End If
Call All_Visible_D
             ro = Int(Left((cmbOrderOfA.Text), 1))
             co = Int(Right((cmbOrderOfA.Text), 1))
             If (ro <> 4) Then
                For i = (ro * 4) To 15
                      D(i).Visible = False
                Next
             End If
             q = co
             If (co <> 4) Then
                    For i = co To 3
                        For p = 1 To 4
                         D(q).Visible = False
                           q = q + 4
                        Next
                         co = co + 1
                    q = co
                Next
             End If
 Label6.Caption = "Order Of " & Command5.Caption & " = " & Left(cmbOrderOfA, 1) & " x " & Right(cmbOrderOfA, 1)

End Sub

Private Sub Command6_Click()
ro = Int(Left((cmbOrderOfA.Text), 1))
co = Int(Right((cmbOrderOfA.Text), 1))
ro1 = Int(Left((cmbOrderOfB.Text), 1))
co1 = Int(Right((cmbOrderOfB.Text), 1))
If ro <> ro1 Or co <> co1 Then
 MsgBox "The addition (A-B) is not defined", vbOKOnly, "Invalid"
Else
p = 0
q = 0
flag = ""
'Take elements of A in the array Amatrix
For ro = 0 To 3
    For co = 0 To 3
        If A(q) = "" Then
            Amatrix(ro, co) = 0
           Else
            Amatrix(ro, co) = Int(A(q))
        End If
         q = q + 1
    Next
    p = p + 4
    q = p
Next
p = 0
q = 0
'Take all the elements of B in array Bmatrix
For ro = 0 To 3
    For co = 0 To 3
        If B(q) = "" Then
            Bmatrix(ro, co) = 0
        Else
            Bmatrix(ro, co) = Int(B(q))
        End If
        q = q + 1
    Next
    p = p + 4
    q = p
Next
For ro = 0 To 3
    For co = 0 To 3
temp(ro, co) = Amatrix(ro, co) - Bmatrix(ro, co)
  Next
Next
     i = 0
    For ro = 0 To 3
     For co = 0 To 3
      D(i).Caption = temp(ro, co)
        i = i + 1
    Next
  Next
End If
Call All_Visible_D
             ro = Int(Left((cmbOrderOfA.Text), 1))
             co = Int(Right((cmbOrderOfA.Text), 1))
             If (ro <> 4) Then
                For i = (ro * 4) To 15
                      D(i).Visible = False
                Next
             End If
             q = co
             If (co <> 4) Then
                    For i = co To 3
                        For p = 1 To 4
                         D(q).Visible = False
                           q = q + 4
                        Next
                         co = co + 1
                    q = co
                Next
             End If
 Label6.Caption = "Order Of " & Command6.Caption & " = " & Left(cmbOrderOfA, 1) & " x " & Right(cmbOrderOfA, 1)
End Sub

Private Sub Command7_Click()
On Error GoTo errhan:
ro = Int(Left((cmbOrderOfA.Text), 1))
co = Int(Right((cmbOrderOfA.Text), 1))
ro1 = Int(Left((cmbOrderOfB.Text), 1))
co1 = Int(Right((cmbOrderOfB.Text), 1))
If ro <> ro1 Or co <> co1 Then
 MsgBox "The addition (A/B) is not defined", vbOKOnly, "Invalid"
Else
p = 0
q = 0
flag = ""
'Take elements of A in the array Amatrix
For ro = 0 To 3
    For co = 0 To 3
        If A(q) = "" Then
            Amatrix(ro, co) = 1
           Else
            Amatrix(ro, co) = Int(A(q))
        End If
         q = q + 1
    Next
    p = p + 4
    q = p
Next
p = 0
q = 0
'Take all the elements of B in array Bmatrix
For ro = 0 To 3
    For co = 0 To 3
        If B(q) = "" Then
            Bmatrix(ro, co) = 1
        Else
            Bmatrix(ro, co) = Int(B(q))
        End If
        q = q + 1
    Next
    p = p + 4
    q = p
Next
For ro = 0 To 3
    For co = 0 To 3
temp(ro, co) = Amatrix(ro, co) / Bmatrix(ro, co)
  Next
Next
     i = 0
    For ro = 0 To 3
     For co = 0 To 3
      D(i).Caption = temp(ro, co)
        i = i + 1
    Next
  Next
End If
Call All_Visible_D
             ro = Int(Left((cmbOrderOfA.Text), 1))
             co = Int(Right((cmbOrderOfA.Text), 1))
             If (ro <> 4) Then
                For i = (ro * 4) To 15
                      D(i).Visible = False
                Next
             End If
             q = co
             If (co <> 4) Then
                    For i = co To 3
                        For p = 1 To 4
                         D(q).Visible = False
                           q = q + 4
                        Next
                         co = co + 1
                    q = co
                Next
             End If
 Label6.Caption = "Order Of " & Command7.Caption & " = " & Left(cmbOrderOfA, 1) & " x " & Right(cmbOrderOfA, 1)
 Exit Sub
errhan:
  MsgBox "Divide by zero error"
End Sub

Private Sub Command8_Click()
ro = Int(Left((cmbOrderOfA.Text), 1))
co = Int(Right((cmbOrderOfA.Text), 1))
ro1 = Int(Left((cmbOrderOfB.Text), 1))
co1 = Int(Right((cmbOrderOfB.Text), 1))
ro2 = Int(Left((cmbOrderOfC.Text), 1))
co2 = Int(Right((cmbOrderOfC.Text), 1))
If ro <> ro1 Or co <> co1 Or ro <> ro2 Or co <> co2 Or ro1 <> ro2 Or co1 <> co2 Then
 MsgBox "The addition (A/B/C) is not defined", vbOKOnly, "Invalid"
Else
p = 0
q = 0
flag = ""
'Take elements of A in the array Amatrix
For ro = 0 To 3
    For co = 0 To 3
        If A(q) = "" Then
            Amatrix(ro, co) = 1
           Else
            Amatrix(ro, co) = Int(A(q))
        End If
         q = q + 1
    Next
    p = p + 4
    q = p
Next
p = 0
q = 0
'Take all the elements of B in array Bmatrix
For ro = 0 To 3
    For co = 0 To 3
        If B(q) = "" Then
            Bmatrix(ro, co) = 1
        Else
            Bmatrix(ro, co) = Int(B(q))
        End If
        q = q + 1
    Next
    p = p + 4
    q = p
Next
'Take all the elements of C in array Cmatrix
p = 0
q = 0
For ro = 0 To 3
    For co = 0 To 3
        If C(q) = "" Then
            Cmatrix(ro, co) = 1
        Else
            Cmatrix(ro, co) = Int(C(q))
        End If
        q = q + 1
    Next
    p = p + 4
    q = p
Next
For ro = 0 To 3
    For co = 0 To 3
tempdiv(ro, co) = (Amatrix(ro, co) / Bmatrix(ro, co)) / Cmatrix(ro, co)
  Next
Next
     i = 0
    For ro = 0 To 3
     For co = 0 To 3
      D(i).Caption = tempdiv(ro, co)
        i = i + 1
    Next
  Next
End If
Call All_Visible_D
             ro = Int(Left((cmbOrderOfA.Text), 1))
             co = Int(Right((cmbOrderOfA.Text), 1))
             If (ro <> 4) Then
                For i = (ro * 4) To 15
                      D(i).Visible = False
                Next
             End If
             q = co
             If (co <> 4) Then
                    For i = co To 3
                        For p = 1 To 4
                         D(q).Visible = False
                           q = q + 4
                        Next
                         co = co + 1
                    q = co
                Next
             End If
 Label6.Caption = "Order Of " & Command8.Caption & " = " & Left(cmbOrderOfA, 1) & " x " & Right(cmbOrderOfA, 1)
Exit Sub
errhan:
  MsgBox "Divide by zero error"
End Sub





Private Sub Command9_Click()
p = 0

q = 0


flag = ""


'Take elements of A in the array Amatrix

For ro = 0 To 3
    For co = 0 To 3
        If A(q) = "" Then
            Amatrix(ro, co) = 0
        Else
            Amatrix(ro, co) = Int(A(q))
        End If
        q = q + 1
    Next
    p = p + 4
    q = p
Next
p = 0
q = 0
'*For ro = 0 To 3  'Check for successful fill-up
   ' For co = 0 To 3
     '   Debug.Print "Amatrix(" & ro & "," & co & ") = " & Amatrix(ro, co)
   ' Next
'*Next
'Take all the elements of B in array Bmatrix
For ro = 0 To 3
    For co = 0 To 3
        If B(q) = "" Then
            Bmatrix(ro, co) = 0
        Else
            Bmatrix(ro, co) = Int(B(q))
        End If
        q = q + 1
    Next
    p = p + 4
    q = p
Next
If (Right(cmbOrderOfA, 1) = Left(cmbOrderOfB, 1)) Then
    'Calculate AB and store result in temp(4,4)
        For p = 0 To 3
            For q = 0 To 3
                temp(p, q) = 0
                For ctr = 0 To 3
                    temp(p, q) = temp(p, q) + Amatrix(p, ctr) * Bmatrix(ctr, q)
                Next
            Next
        Next
              '------------------
              i = 0
              For ro = 0 To 3
                For co = 0 To 3
                    D(i).Caption = temp(ro, co)
                    i = i + 1
                Next
              Next
              Call All_Visible_D
              'oooooooooooooooooooooooooooo
              
              Call All_Visible_D
              ro = Int(Left((cmbOrderOfA.Text), 1))
              co = Int(Right((cmbOrderOfB.Text), 1))
              If (ro <> 4) Then
                For i = (ro * 4) To 15
                        D(i).Visible = False
                        'D(i). = ""
                Next
             End If
             q = co
             If (co <> 4) Then
                    For i = co To 3
                        For p = 1 To 4
                        D(q).Visible = False
                        'D(q).Text = ""
                         q = q + 4
                        Next
                    ' q = co
                            co = co + 1
                    q = co 'Added later
    
                Next
        End If
              
            
        Label6.Caption = "Order Of " & Command9.Caption & " = " & Left(cmbOrderOfA, 1) & " x " & Right(cmbOrderOfB, 1)
              
        lblOrderD.Caption = Left(cmbOrderOfA, 1) & " x " & Right(cmbOrderOfB, 1)
        
              'ooooooooooooooooooooooooooo
    
        
        Else
        
            i = MsgBox("The product (AB) is not defined", vbOKOnly, "Orders Incompatible")
        
            A(0).SetFocus
        
        End If
    
    
    'Else
      '
       ' i = MsgBox("The product AB is not defined", vbOKOnly, "Orders Incompatible")
        
       ' A(0).SetFocus
    
    'End If
    
End Sub

Private Sub Form_Load()

Call setlabels

For i = 0 To 15

    A(i).MaxLength = 3
    
    B(i).MaxLength = 3
    
    C(i).MaxLength = 3

Next

 ctr = 1
'Initialize the combo-boxes

For row = 1 To 4


    For col = 1 To 4
    
        cmbOrderOfA.AddItem row & " x " & col
        
        cmbOrderOfB.AddItem row & " x " & col
        
        cmbOrderOfC.AddItem row & " x " & col
        
       If (col = 4) Then
                                
            Exit For
                   
       End If
    
    Next
    
Next

cmbOrderOfA.Text = cmbOrderOfA.List(15)

cmbOrderOfB.Text = cmbOrderOfB.List(15)

cmbOrderOfC.Text = cmbOrderOfC.List(15)

'Set the TabIndex


cmbOrderOfA.TabIndex = 48

cmbOrderOfB.TabIndex = 49

cmbOrderOfC.TabIndex = 50


For t = 0 To 15


    A(t).TabIndex = t
        
    B(t).TabIndex = t + 16
    
    C(t).TabIndex = t + 32


Next

Me.WindowState = vbMaximized
C1.AddItem "Addition"
C1.AddItem "Subtraction"
C1.AddItem "Multiplication"
C1.AddItem "Division"
 oper = True
'Call allvisi
For i = 0 To 11
  command2(i).Enabled = True
 Next
  Command3.Enabled = False
  Command5.Enabled = False
  Command6.Enabled = False
  Command4.Enabled = False
  Command7.Enabled = False
  Command8.Enabled = False
   'Image1.Visible = False
 'Image2.Visible = False
 'Image3.Visible = True
 ' Image4.Visible = False
End Sub





Public Sub All_Visible_A()

For i = 0 To 15

    A(i).Visible = True
    
Next

End Sub

Public Sub setlabels()

lblOrderA.Caption = cmbOrderOfA.Text

lblOrderB.Caption = cmbOrderOfB.Text

lblOrderC.Caption = cmbOrderOfC.Text


End Sub

Public Sub All_Visible_B()

For i = 0 To 15

    B(i).Visible = True
    
Next

End Sub

Public Sub All_Visible_c()

For i = 0 To 15

    C(i).Visible = True
    
Next

End Sub

Public Sub Check_Empty_Input()

roA = Int(Left(cmbOrderOfA.Text, 1))
roB = Int(Left(cmbOrderOfB.Text, 1))
roC = Int(Left(cmbOrderOfC.Text, 1))

coA = Int(Right(cmbOrderOfA.Text, 1))
coB = Int(Right(cmbOrderOfB.Text, 1))
coC = Int(Right(cmbOrderOfC.Text, 1))

For i = 0 To 15

If (A(i).Visible = True) Then


    If A(i).Text = "" Then
                     
         m = MsgBox("Blank fields found.Blank fields will be interpreted as 0.", vbOKCancel + vbExclamation, "Empty fields")
                       
         If (m = vbCancel) Then
         
            flag = "cancel"
            
            A(i).SetFocus
            
         Else
         
            flag = ""
            
         End If
                          
         Exit Sub
         
    
    End If
    
End If

Next


For i = 0 To 15

If (B(i).Visible = True) Then


    If B(i).Text = "" Then
    
            
         m = MsgBox(" Blank fields found.Blank fields will be interpreted as 0.", vbOKCancel + vbExclamation, "Empty fields")
         
         If (m = vbCancel) Then
         
            B(i).SetFocus
            
            flag = "cancel"
            
         Else
         
            flag = ""
         
         End If
         
         
         Exit Sub
         
    
    End If
    
 End If

Next

For i = 0 To 15

If (C(i).Visible = True) Then


    If C(i).Text = "" Then
    
            
         m = MsgBox("Blank fields found.Blank fields will be interpreted as 0.", vbOKCancel + vbExclamation, "Empty fields")
         
         If (m = vbCancel) Then
         
          flag = "cancel"
          
          C(i).SetFocus
          
         Else
         
            flag = ""
            
         End If
         
         
         Exit Sub
         
    
    End If
    
End If

Next


End Sub

Public Sub All_Visible_D()

 For i = 0 To 15
 
    D(i).Visible = True
 
 Next
    
End Sub







