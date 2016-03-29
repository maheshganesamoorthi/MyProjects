VERSION 5.00
Begin VB.Form matdetfrm 
   BackColor       =   &H00C0FFFF&
   Caption         =   "Matrix Operation"
   ClientHeight    =   9750
   ClientLeft      =   60
   ClientTop       =   420
   ClientWidth     =   14055
   Icon            =   "matdetfrm.frx":0000
   LinkTopic       =   "Form1"
   ScaleHeight     =   9750
   ScaleWidth      =   14055
   StartUpPosition =   3  'Windows Default
   Begin VB.Frame Frame1 
      BackColor       =   &H00C0FFFF&
      Caption         =   "Matrix Determinant :"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   8175
      Left            =   7920
      TabIndex        =   59
      Top             =   2400
      Width           =   7335
      Begin VB.TextBox Text2 
         Height          =   375
         Left            =   2880
         TabIndex        =   88
         Top             =   5640
         Width           =   2415
      End
      Begin VB.TextBox Text1 
         Alignment       =   2  'Center
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   161
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   435
         Index           =   0
         Left            =   1080
         TabIndex        =   87
         Top             =   1560
         Width           =   555
      End
      Begin VB.TextBox Text1 
         Alignment       =   2  'Center
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   161
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   435
         Index           =   1
         Left            =   1710
         TabIndex        =   86
         Top             =   1560
         Width           =   555
      End
      Begin VB.TextBox Text1 
         Alignment       =   2  'Center
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   161
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   435
         Index           =   2
         Left            =   2310
         TabIndex        =   85
         Top             =   1560
         Width           =   555
      End
      Begin VB.TextBox Text1 
         Alignment       =   2  'Center
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   161
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   435
         Index           =   3
         Left            =   2910
         TabIndex        =   84
         Top             =   1560
         Width           =   555
      End
      Begin VB.TextBox Text1 
         Alignment       =   2  'Center
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   161
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   435
         Index           =   4
         Left            =   3510
         TabIndex        =   83
         Top             =   1560
         Width           =   555
      End
      Begin VB.TextBox Text1 
         Alignment       =   2  'Center
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   161
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   435
         Index           =   5
         Left            =   1110
         TabIndex        =   82
         Top             =   2160
         Width           =   555
      End
      Begin VB.TextBox Text1 
         Alignment       =   2  'Center
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   161
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   435
         Index           =   6
         Left            =   1710
         TabIndex        =   81
         Top             =   2160
         Width           =   555
      End
      Begin VB.TextBox Text1 
         Alignment       =   2  'Center
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   161
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   435
         Index           =   7
         Left            =   2310
         TabIndex        =   80
         Top             =   2160
         Width           =   555
      End
      Begin VB.TextBox Text1 
         Alignment       =   2  'Center
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   161
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   435
         Index           =   8
         Left            =   2910
         TabIndex        =   79
         Top             =   2160
         Width           =   555
      End
      Begin VB.TextBox Text1 
         Alignment       =   2  'Center
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   161
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   435
         Index           =   9
         Left            =   3510
         TabIndex        =   78
         Top             =   2160
         Width           =   555
      End
      Begin VB.TextBox Text1 
         Alignment       =   2  'Center
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   161
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   435
         Index           =   10
         Left            =   1110
         TabIndex        =   77
         Top             =   2760
         Width           =   555
      End
      Begin VB.TextBox Text1 
         Alignment       =   2  'Center
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   161
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   435
         Index           =   11
         Left            =   1710
         TabIndex        =   76
         Top             =   2760
         Width           =   555
      End
      Begin VB.TextBox Text1 
         Alignment       =   2  'Center
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   161
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   435
         Index           =   12
         Left            =   2310
         TabIndex        =   75
         Top             =   2760
         Width           =   555
      End
      Begin VB.TextBox Text1 
         Alignment       =   2  'Center
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   161
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   435
         Index           =   13
         Left            =   2910
         TabIndex        =   74
         Top             =   2760
         Width           =   555
      End
      Begin VB.TextBox Text1 
         Alignment       =   2  'Center
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   161
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   435
         Index           =   14
         Left            =   3510
         TabIndex        =   73
         Top             =   2760
         Width           =   555
      End
      Begin VB.TextBox Text1 
         Alignment       =   2  'Center
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   161
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   435
         Index           =   15
         Left            =   1110
         TabIndex        =   72
         Top             =   3360
         Width           =   555
      End
      Begin VB.TextBox Text1 
         Alignment       =   2  'Center
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   161
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   435
         Index           =   16
         Left            =   1710
         TabIndex        =   71
         Top             =   3360
         Width           =   555
      End
      Begin VB.TextBox Text1 
         Alignment       =   2  'Center
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   161
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   435
         Index           =   17
         Left            =   2310
         TabIndex        =   70
         Top             =   3360
         Width           =   555
      End
      Begin VB.TextBox Text1 
         Alignment       =   2  'Center
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   161
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   435
         Index           =   18
         Left            =   2910
         TabIndex        =   69
         Top             =   3360
         Width           =   555
      End
      Begin VB.TextBox Text1 
         Alignment       =   2  'Center
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   161
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   435
         Index           =   19
         Left            =   3510
         TabIndex        =   68
         Top             =   3360
         Width           =   555
      End
      Begin VB.TextBox Text1 
         Alignment       =   2  'Center
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   161
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   435
         Index           =   20
         Left            =   1110
         TabIndex        =   67
         Top             =   3960
         Width           =   555
      End
      Begin VB.TextBox Text1 
         Alignment       =   2  'Center
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   161
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   435
         Index           =   21
         Left            =   1710
         TabIndex        =   66
         Top             =   3960
         Width           =   555
      End
      Begin VB.TextBox Text1 
         Alignment       =   2  'Center
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   161
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   435
         Index           =   22
         Left            =   2310
         TabIndex        =   65
         Top             =   3960
         Width           =   555
      End
      Begin VB.TextBox Text1 
         Alignment       =   2  'Center
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   161
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   435
         Index           =   23
         Left            =   2910
         TabIndex        =   64
         Top             =   3960
         Width           =   555
      End
      Begin VB.TextBox Text1 
         Alignment       =   2  'Center
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   161
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   435
         Index           =   24
         Left            =   3510
         TabIndex        =   63
         Top             =   3960
         Width           =   555
      End
      Begin VB.CommandButton Command2 
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
         Left            =   3720
         TabIndex        =   62
         Top             =   6840
         Width           =   1455
      End
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
         Height          =   375
         Left            =   2160
         TabIndex        =   61
         Top             =   6840
         Width           =   1335
      End
      Begin VB.ComboBox Combo3 
         Height          =   315
         Left            =   2880
         Style           =   2  'Dropdown List
         TabIndex        =   60
         Top             =   5040
         Width           =   2445
      End
      Begin VB.Label Label4 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Determinant value is :"
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
         Left            =   840
         TabIndex        =   91
         Top             =   5760
         Width           =   1935
      End
      Begin VB.Label Label3 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Order of A-Matrix :"
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
         Left            =   1200
         TabIndex        =   90
         Top             =   5040
         Width           =   1575
      End
      Begin VB.Line Line6 
         X1              =   2040
         X2              =   1560
         Y1              =   1200
         Y2              =   1200
      End
      Begin VB.Line Line5 
         X1              =   2040
         X2              =   2040
         Y1              =   720
         Y2              =   1200
      End
      Begin VB.Line Line4 
         X1              =   1560
         X2              =   2040
         Y1              =   720
         Y2              =   720
      End
      Begin VB.Line Line3 
         X1              =   480
         X2              =   960
         Y1              =   1200
         Y2              =   1200
      End
      Begin VB.Line Line2 
         X1              =   480
         X2              =   480
         Y1              =   720
         Y2              =   1200
      End
      Begin VB.Line Line1 
         X1              =   960
         X2              =   480
         Y1              =   720
         Y2              =   720
      End
      Begin VB.Label Label2 
         Alignment       =   2  'Center
         BackColor       =   &H00C0FFFF&
         Caption         =   "Matrix - A"
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
         Left            =   720
         TabIndex        =   89
         Top             =   840
         Width           =   1095
      End
   End
   Begin VB.Frame Frame3 
      BackColor       =   &H00C0FFFF&
      Caption         =   "Matrix Inverse && Transpose"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   8175
      Left            =   120
      TabIndex        =   0
      Top             =   2400
      Width           =   7695
      Begin VB.ComboBox Combo1 
         Height          =   315
         Left            =   5520
         Style           =   2  'Dropdown List
         TabIndex        =   29
         Top             =   1560
         Width           =   1935
      End
      Begin VB.ComboBox Combo2 
         Height          =   315
         Left            =   5520
         TabIndex        =   28
         Text            =   "Transpose"
         Top             =   2040
         Width           =   1935
      End
      Begin VB.CommandButton Command9 
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
         Height          =   375
         Left            =   4560
         TabIndex        =   27
         Top             =   2520
         Width           =   1335
      End
      Begin VB.CommandButton Command10 
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
         Left            =   6000
         TabIndex        =   26
         Top             =   2520
         Width           =   1335
      End
      Begin VB.TextBox mat 
         Alignment       =   2  'Center
         Height          =   375
         Index           =   0
         Left            =   360
         TabIndex        =   25
         Top             =   1080
         Width           =   495
      End
      Begin VB.TextBox mat 
         Alignment       =   2  'Center
         Height          =   375
         Index           =   1
         Left            =   960
         TabIndex        =   24
         Top             =   1080
         Width           =   495
      End
      Begin VB.TextBox mat 
         Alignment       =   2  'Center
         Height          =   375
         Index           =   2
         Left            =   1560
         TabIndex        =   23
         Top             =   1080
         Width           =   495
      End
      Begin VB.TextBox mat 
         Alignment       =   2  'Center
         Height          =   375
         Index           =   3
         Left            =   2160
         TabIndex        =   22
         Top             =   1080
         Width           =   495
      End
      Begin VB.TextBox mat 
         Alignment       =   2  'Center
         Height          =   375
         Index           =   4
         Left            =   2760
         TabIndex        =   21
         Top             =   1080
         Width           =   495
      End
      Begin VB.TextBox mat 
         Alignment       =   2  'Center
         Height          =   375
         Index           =   5
         Left            =   360
         TabIndex        =   20
         Top             =   1560
         Width           =   495
      End
      Begin VB.TextBox mat 
         Alignment       =   2  'Center
         Height          =   375
         Index           =   6
         Left            =   960
         TabIndex        =   19
         Top             =   1560
         Width           =   495
      End
      Begin VB.TextBox mat 
         Alignment       =   2  'Center
         Height          =   375
         Index           =   7
         Left            =   1560
         TabIndex        =   18
         Top             =   1560
         Width           =   495
      End
      Begin VB.TextBox mat 
         Alignment       =   2  'Center
         Height          =   375
         Index           =   8
         Left            =   2160
         TabIndex        =   17
         Top             =   1560
         Width           =   495
      End
      Begin VB.TextBox mat 
         Alignment       =   2  'Center
         Height          =   375
         Index           =   9
         Left            =   2760
         TabIndex        =   16
         Top             =   1560
         Width           =   495
      End
      Begin VB.TextBox mat 
         Alignment       =   2  'Center
         Height          =   375
         Index           =   10
         Left            =   360
         TabIndex        =   15
         Top             =   2040
         Width           =   495
      End
      Begin VB.TextBox mat 
         Alignment       =   2  'Center
         Height          =   375
         Index           =   11
         Left            =   960
         TabIndex        =   14
         Top             =   2040
         Width           =   495
      End
      Begin VB.TextBox mat 
         Alignment       =   2  'Center
         Height          =   375
         Index           =   12
         Left            =   1560
         TabIndex        =   13
         Top             =   2040
         Width           =   495
      End
      Begin VB.TextBox mat 
         Alignment       =   2  'Center
         Height          =   375
         Index           =   13
         Left            =   2160
         TabIndex        =   12
         Top             =   2040
         Width           =   495
      End
      Begin VB.TextBox mat 
         Alignment       =   2  'Center
         Height          =   375
         Index           =   14
         Left            =   2760
         TabIndex        =   11
         Top             =   2040
         Width           =   495
      End
      Begin VB.TextBox mat 
         Alignment       =   2  'Center
         Height          =   375
         Index           =   15
         Left            =   360
         TabIndex        =   10
         Top             =   2520
         Width           =   495
      End
      Begin VB.TextBox mat 
         Alignment       =   2  'Center
         Height          =   375
         Index           =   16
         Left            =   960
         TabIndex        =   9
         Top             =   2520
         Width           =   495
      End
      Begin VB.TextBox mat 
         Alignment       =   2  'Center
         Height          =   375
         Index           =   17
         Left            =   1560
         TabIndex        =   8
         Top             =   2520
         Width           =   495
      End
      Begin VB.TextBox mat 
         Alignment       =   2  'Center
         Height          =   375
         Index           =   18
         Left            =   2160
         TabIndex        =   7
         Top             =   2520
         Width           =   495
      End
      Begin VB.TextBox mat 
         Alignment       =   2  'Center
         Height          =   375
         Index           =   19
         Left            =   2760
         TabIndex        =   6
         Top             =   2520
         Width           =   495
      End
      Begin VB.TextBox mat 
         Alignment       =   2  'Center
         Height          =   375
         Index           =   20
         Left            =   360
         TabIndex        =   5
         Top             =   3000
         Width           =   495
      End
      Begin VB.TextBox mat 
         Alignment       =   2  'Center
         Height          =   375
         Index           =   21
         Left            =   960
         TabIndex        =   4
         Top             =   3000
         Width           =   495
      End
      Begin VB.TextBox mat 
         Alignment       =   2  'Center
         Height          =   375
         Index           =   22
         Left            =   1560
         TabIndex        =   3
         Top             =   3000
         Width           =   495
      End
      Begin VB.TextBox mat 
         Alignment       =   2  'Center
         Height          =   375
         Index           =   23
         Left            =   2160
         TabIndex        =   2
         Top             =   3000
         Width           =   495
      End
      Begin VB.TextBox mat 
         Alignment       =   2  'Center
         Height          =   375
         Index           =   24
         Left            =   2760
         TabIndex        =   1
         Top             =   3000
         Width           =   495
      End
      Begin VB.Label Label1 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Transpose :"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   14.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   240
         TabIndex        =   58
         Top             =   3960
         Width           =   2295
      End
      Begin VB.Label Label8 
         Alignment       =   2  'Center
         BackColor       =   &H00C0FFFF&
         Caption         =   "Matrix - A"
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
         Left            =   600
         TabIndex        =   57
         Top             =   600
         Width           =   1095
      End
      Begin VB.Line Line22 
         X1              =   840
         X2              =   360
         Y1              =   480
         Y2              =   480
      End
      Begin VB.Line Line33 
         X1              =   360
         X2              =   360
         Y1              =   480
         Y2              =   960
      End
      Begin VB.Line Line34 
         X1              =   360
         X2              =   840
         Y1              =   960
         Y2              =   960
      End
      Begin VB.Line Line35 
         X1              =   1440
         X2              =   1920
         Y1              =   480
         Y2              =   480
      End
      Begin VB.Line Line36 
         X1              =   1920
         X2              =   1920
         Y1              =   480
         Y2              =   960
      End
      Begin VB.Line Line37 
         X1              =   1920
         X2              =   1440
         Y1              =   960
         Y2              =   960
      End
      Begin VB.Label Label10 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Order of A-Matrix :"
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
         TabIndex        =   56
         Top             =   1560
         Width           =   1575
      End
      Begin VB.Label Label11 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Operation :"
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
         Left            =   4440
         TabIndex        =   55
         Top             =   2040
         Width           =   975
      End
      Begin VB.Line Line38 
         X1              =   3480
         X2              =   4320
         Y1              =   7680
         Y2              =   7680
      End
      Begin VB.Line Line39 
         X1              =   600
         X2              =   1440
         Y1              =   7680
         Y2              =   7680
      End
      Begin VB.Line Line40 
         X1              =   3480
         X2              =   4320
         Y1              =   4560
         Y2              =   4560
      End
      Begin VB.Line Line41 
         X1              =   600
         X2              =   1440
         Y1              =   4560
         Y2              =   4560
      End
      Begin VB.Line Line42 
         X1              =   600
         X2              =   600
         Y1              =   4560
         Y2              =   7680
      End
      Begin VB.Line Line43 
         X1              =   4320
         X2              =   4320
         Y1              =   4560
         Y2              =   7680
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
         Index           =   16
         Left            =   720
         TabIndex        =   54
         Top             =   4680
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
         Index           =   17
         Left            =   1440
         TabIndex        =   53
         Top             =   4680
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
         Index           =   18
         Left            =   2160
         TabIndex        =   52
         Top             =   4680
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
         Index           =   19
         Left            =   2880
         TabIndex        =   51
         Top             =   4680
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
         Index           =   21
         Left            =   720
         TabIndex        =   50
         Top             =   5280
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
         Index           =   22
         Left            =   1440
         TabIndex        =   49
         Top             =   5280
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
         Index           =   23
         Left            =   2160
         TabIndex        =   48
         Top             =   5280
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
         Index           =   24
         Left            =   2880
         TabIndex        =   47
         Top             =   5280
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
         Index           =   25
         Left            =   3600
         TabIndex        =   46
         Top             =   5280
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
         Index           =   26
         Left            =   720
         TabIndex        =   45
         Top             =   5880
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
         Index           =   27
         Left            =   1440
         TabIndex        =   44
         Top             =   5880
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
         Index           =   28
         Left            =   2160
         TabIndex        =   43
         Top             =   5880
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
         Index           =   30
         Left            =   3600
         TabIndex        =   42
         Top             =   5880
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
         Index           =   31
         Left            =   720
         TabIndex        =   41
         Top             =   6480
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
         Index           =   32
         Left            =   1440
         TabIndex        =   40
         Top             =   6480
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
         Index           =   33
         Left            =   2160
         TabIndex        =   39
         Top             =   6480
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
         Index           =   20
         Left            =   3600
         TabIndex        =   38
         Top             =   4680
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
         Index           =   35
         Left            =   3600
         TabIndex        =   37
         Top             =   6480
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
         Index           =   29
         Left            =   2880
         TabIndex        =   36
         Top             =   5880
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
         Index           =   34
         Left            =   2880
         TabIndex        =   35
         Top             =   6480
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
         Index           =   36
         Left            =   720
         TabIndex        =   34
         Top             =   7080
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
         Index           =   37
         Left            =   1440
         TabIndex        =   33
         Top             =   7080
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
         Index           =   38
         Left            =   2160
         TabIndex        =   32
         Top             =   7080
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
         Index           =   39
         Left            =   2880
         TabIndex        =   31
         Top             =   7080
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
         Index           =   40
         Left            =   3600
         TabIndex        =   30
         Top             =   7080
         Width           =   615
      End
   End
   Begin VB.Image Image2 
      Height          =   645
      Left            =   5760
      Picture         =   "matdetfrm.frx":076A
      Top             =   1560
      Width           =   3825
   End
   Begin VB.Image Image1 
      Height          =   1710
      Left            =   0
      Picture         =   "matdetfrm.frx":88AC
      Stretch         =   -1  'True
      Top             =   0
      Width           =   15360
   End
End
Attribute VB_Name = "matdetfrm"
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
Dim Triangular_A(5, 5) As Long
Dim det(5, 5) As Long
Dim temp(4, 4) As Long
Dim tempdiv(4, 4) As Double
Dim Matrix_A(5, 5) As Long
Dim line_1
Dim temporary_1 As Long
Dim Transpose_Matrix(5, 5) As Long
Dim multiplier_1
Dim Inverse_Matrix(10, 10) As Long
'Matrix where the calculations are done
'Matri
Dim flag As String
Dim oper
 Const MAX_DIM = 10
 Dim elem1
 Dim message$

Private Sub Combo3_Click()
Call allvisible
ro = Int(Left((Combo3.Text), 1))
co = Int(Right((Combo3.Text), 1))

If ro = 1 Then
Text1(0).Visible = True
For i = 1 To 24
 Text1(i).Visible = False
Next

ElseIf ro = 2 Then
For i = 0 To 24
 Text1(i).Visible = False
Next
Text1(0).Visible = True
Text1(1).Visible = True
Text1(5).Visible = True
Text1(6).Visible = True


ElseIf ro = 3 Then
For i = 0 To 24
 Text1(i).Visible = False
Next
Text1(0).Visible = True
Text1(1).Visible = True
Text1(5).Visible = True
Text1(6).Visible = True
Text1(2).Visible = True
Text1(7).Visible = True
Text1(12).Visible = True
Text1(11).Visible = True
Text1(10).Visible = True

ElseIf ro = 4 Then
For i = 0 To 24
 Text1(i).Visible = False
Next
Text1(0).Visible = True
Text1(1).Visible = True
Text1(5).Visible = True
Text1(6).Visible = True
Text1(2).Visible = True
Text1(7).Visible = True
Text1(12).Visible = True
Text1(11).Visible = True
Text1(10).Visible = True
Text1(15).Visible = True
Text1(16).Visible = True
Text1(17).Visible = True
Text1(3).Visible = True
Text1(8).Visible = True
Text1(13).Visible = True
Text1(18).Visible = True

ElseIf ro = 5 Then
Call allvisible
End If

End Sub

Private Sub Command1_Click()
For i = 0 To 24
 If Text1(i).Text = "" Then
    Text1(i).Text = "0"
 End If
Next
p = 0
For n = 1 To Val(Combo3.Text)
    For m = 1 To Val(Combo3.Text)
        det(n, m) = Text1(p)
        p = p + 1
    Next m
Next n
  
End Sub


Private Sub Command2_Click()
For i = 0 To 24
Text1(i).Text = ""
Next
Text2.Text = ""
End Sub

Private Sub Command9_Click()
 If Combo1.Text = "1*1" Then
  v = 1
 ElseIf Combo1.Text = "2*2" Then
  v = 2
 ElseIf Combo1.Text = "3*3" Then
  v = 3
 ElseIf Combo1.Text = "4*4" Then
  v = 4
 ElseIf Combo1.Text = "5*5" Then
  v = 5
 End If
For i = 0 To 24
 If mat(i).Text = "" Then
    mat(i).Text = "0"
 End If
Next
p = 0
For n = 0 To 4
    For m = 0 To 4
        Matrix_A(n, m) = mat(p)
        p = p + 1
    Next m
Next n

If Combo2.Text = "Transpose" Then
  For n = 0 To 4
    For k = 0 To 4
        Transpose_Matrix(n, k) = Matrix_A(k, n)
    Next k
Next n


p = 16
For ro = 0 To 4
    For co = 0 To 4
        D(p).Caption = Transpose_Matrix(ro, co)
            p = p + 1
  Next
  Next
ElseIf Combo2.Text = "Inverse" Then
Exit Sub
End If
End Sub
Private Sub Combo1_Click()
Call allvisi
ro = Int(Left((Combo1.Text), 1))
co = Int(Right((Combo1.Text), 1))

If ro = 1 Then
mat(0).Visible = True
D(16).Visible = True
For i = 1 To 24
 mat(i).Visible = False
Next
For i = 17 To 40
  D(i).Visible = False
Next

ElseIf ro = 2 Then
For i = 0 To 24
 mat(i).Visible = False
Next
For i = 16 To 40
  D(i).Visible = False
Next
mat(0).Visible = True
mat(1).Visible = True
mat(5).Visible = True
mat(6).Visible = True
D(16).Visible = True
D(17).Visible = True
D(21).Visible = True
D(22).Visible = True


ElseIf ro = 3 Then
For i = 0 To 24
 mat(i).Visible = False
Next
For i = 16 To 40
  D(i).Visible = False
Next
mat(0).Visible = True
mat(1).Visible = True
mat(5).Visible = True
mat(6).Visible = True
mat(2).Visible = True
mat(7).Visible = True
mat(12).Visible = True
mat(11).Visible = True
mat(10).Visible = True
D(16).Visible = True
D(17).Visible = True
D(21).Visible = True
D(22).Visible = True
D(18).Visible = True
D(23).Visible = True
D(28).Visible = True
D(26).Visible = True
D(27).Visible = True

ElseIf ro = 4 Then
For i = 0 To 24
 mat(i).Visible = False
Next
For i = 16 To 40
  D(i).Visible = False
Next
mat(0).Visible = True
mat(1).Visible = True
mat(5).Visible = True
mat(6).Visible = True
mat(2).Visible = True
mat(7).Visible = True
mat(12).Visible = True
mat(11).Visible = True
mat(10).Visible = True
mat(15).Visible = True
mat(16).Visible = True
mat(17).Visible = True
mat(3).Visible = True
mat(8).Visible = True
mat(13).Visible = True
mat(18).Visible = True
D(16).Visible = True
D(17).Visible = True
D(21).Visible = True
D(22).Visible = True
D(18).Visible = True
D(23).Visible = True
D(28).Visible = True
D(26).Visible = True
D(27).Visible = True

D(19).Visible = True
D(24).Visible = True
D(29).Visible = True
D(33).Visible = True
D(34).Visible = True
D(31).Visible = True
D(32).Visible = True

ElseIf ro = 5 Then
Call allvisi
End If
End Sub
Private Sub allvisi()
For i = 0 To 24
    mat(i).Visible = True
Next
For i = 16 To 40
  D(i).Visible = True
Next
End Sub
Private Sub allvisible()
For i = 0 To 24
    Text1(i).Visible = True
Next
End Sub
Private Sub Combo2_Click()
Dim oper
If Combo2.Text = "Transpose" Then
Label1.Caption = "Transpose :"
  oper = True
ElseIf Combo2.Text = "Inverse" Then
Label1.Caption = "Inverse :"
  oper = False
End If
End Sub
Private Sub Command10_Click()
For i = 0 To 24
 mat(i).Text = ""
Next
Call allvisi
For i = 16 To 40
 D(i).Caption = ""
Next
End Sub



Private Sub Form_Load()
Me.WindowState = vbMaximized
Combo1.AddItem "1*1"
Combo1.AddItem "2*2"
Combo1.AddItem "3*3"
Combo1.AddItem "4*4"
Combo1.AddItem "5*5"
Combo1.Text = "5*5"
Combo3.AddItem "1*1"
Combo3.AddItem "2*2"
Combo3.AddItem "3*3"
Combo3.AddItem "4*4"
Combo3.AddItem "5*5"
Combo3.Text = "3*3"
Combo2.AddItem "Transpose"
Combo2.AddItem "Inverse"
For i = 0 To 24
 mat(i).TabIndex = i
Next
Combo1.TabIndex = 25
Combo2.TabIndex = 26
Command9.TabIndex = 27
Command10.TabIndex = 28
For i = 0 To 24
 Text1(i).Visible = False
Next
Text1(0).Visible = True
Text1(1).Visible = True
Text1(5).Visible = True
Text1(6).Visible = True
Text1(2).Visible = True
Text1(7).Visible = True
Text1(12).Visible = True
Text1(11).Visible = True
Text1(10).Visible = True

End Sub

Private Sub mat_Change(Index As Integer)

If IsNumeric(mat(Index).Text) = False And mat(Index).Text <> "" Then

    If (mat(Index).Text <> "-") Then
    
        i = MsgBox(mat(Index).Text & " " & "is not a numeric value.Enter only numeric values", vbOKOnly + vbExclamation, "Non numeric input")
               
        mat(Index).SetFocus
        
    End If

End If



End Sub

Private Sub mat_LostFocus(Index As Integer)

If IsNumeric(mat(Index).Text) = False And mat(Index).Text <> "" Then

   If (mat(Index).Text <> "-") Then
   
        i = MsgBox(mat(Index).Text & " " & "is not a numeric value.Enter only numeric values", vbOKOnly + vbExclamation, "Non numeric input")
               
        mat(Index).SetFocus
        
   End If

End If


End Sub
