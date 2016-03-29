VERSION 5.00
Object = "{3B7C8863-D78F-101B-B9B5-04021C009402}#1.2#0"; "RichTx32.ocx"
Begin VB.Form mathstable 
   BackColor       =   &H00C0FFFF&
   Caption         =   "Table"
   ClientHeight    =   9705
   ClientLeft      =   60
   ClientTop       =   420
   ClientWidth     =   14025
   Icon            =   "mathstable.frx":0000
   LinkTopic       =   "Form1"
   ScaleHeight     =   9705
   ScaleWidth      =   14025
   StartUpPosition =   3  'Windows Default
   Begin VB.Frame Frame1 
      BackColor       =   &H00C0FFFF&
      Caption         =   "Addition Table :"
      ForeColor       =   &H000000FF&
      Height          =   3135
      Left            =   120
      TabIndex        =   30
      Top             =   1320
      Width           =   15135
      Begin VB.TextBox Text11 
         Height          =   375
         Left            =   13320
         TabIndex        =   32
         Top             =   2280
         Width           =   1695
      End
      Begin VB.CommandButton Command1 
         Caption         =   "Solve"
         Height          =   255
         Left            =   13680
         TabIndex        =   31
         Top             =   2760
         Width           =   975
      End
      Begin RichTextLib.RichTextBox Text21 
         Height          =   1695
         Left            =   13320
         TabIndex        =   33
         Top             =   240
         Width           =   1695
         _ExtentX        =   2990
         _ExtentY        =   2990
         _Version        =   393217
         Enabled         =   -1  'True
         ScrollBars      =   2
         TextRTF         =   $"mathstable.frx":038A
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
      End
      Begin RichTextLib.RichTextBox Text5 
         Height          =   2775
         Left            =   5280
         TabIndex        =   34
         Top             =   240
         Width           =   1335
         _ExtentX        =   2355
         _ExtentY        =   4895
         _Version        =   393217
         TextRTF         =   $"mathstable.frx":040E
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
      End
      Begin RichTextLib.RichTextBox Text4 
         Height          =   2775
         Left            =   3960
         TabIndex        =   35
         Top             =   240
         Width           =   1335
         _ExtentX        =   2355
         _ExtentY        =   4895
         _Version        =   393217
         TextRTF         =   $"mathstable.frx":0492
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
      End
      Begin RichTextLib.RichTextBox Text3 
         Height          =   2775
         Left            =   2640
         TabIndex        =   36
         Top             =   240
         Width           =   1335
         _ExtentX        =   2355
         _ExtentY        =   4895
         _Version        =   393217
         TextRTF         =   $"mathstable.frx":0516
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
      End
      Begin RichTextLib.RichTextBox Text2 
         Height          =   2775
         Left            =   1320
         TabIndex        =   37
         Top             =   240
         Width           =   1335
         _ExtentX        =   2355
         _ExtentY        =   4895
         _Version        =   393217
         TextRTF         =   $"mathstable.frx":059A
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
      End
      Begin RichTextLib.RichTextBox Text1 
         Height          =   2775
         Left            =   120
         TabIndex        =   38
         Top             =   240
         Width           =   1335
         _ExtentX        =   2355
         _ExtentY        =   4895
         _Version        =   393217
         Enabled         =   -1  'True
         TextRTF         =   $"mathstable.frx":061E
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
      End
      Begin RichTextLib.RichTextBox Text10 
         Height          =   2775
         Left            =   11880
         TabIndex        =   39
         Top             =   240
         Width           =   1335
         _ExtentX        =   2355
         _ExtentY        =   4895
         _Version        =   393217
         TextRTF         =   $"mathstable.frx":06A2
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
      End
      Begin RichTextLib.RichTextBox Text9 
         Height          =   2775
         Left            =   10560
         TabIndex        =   40
         Top             =   240
         Width           =   1335
         _ExtentX        =   2355
         _ExtentY        =   4895
         _Version        =   393217
         TextRTF         =   $"mathstable.frx":0726
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
      End
      Begin RichTextLib.RichTextBox Text8 
         Height          =   2775
         Left            =   9240
         TabIndex        =   41
         Top             =   240
         Width           =   1335
         _ExtentX        =   2355
         _ExtentY        =   4895
         _Version        =   393217
         TextRTF         =   $"mathstable.frx":07AA
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
      End
      Begin RichTextLib.RichTextBox Text7 
         Height          =   2775
         Left            =   7920
         TabIndex        =   42
         Top             =   240
         Width           =   1335
         _ExtentX        =   2355
         _ExtentY        =   4895
         _Version        =   393217
         TextRTF         =   $"mathstable.frx":082E
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
      End
      Begin RichTextLib.RichTextBox Text6 
         Height          =   2775
         Left            =   6600
         TabIndex        =   43
         Top             =   240
         Width           =   1335
         _ExtentX        =   2355
         _ExtentY        =   4895
         _Version        =   393217
         Enabled         =   -1  'True
         TextRTF         =   $"mathstable.frx":08B2
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
      End
      Begin VB.Label Label1 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Enter the Number :"
         Height          =   255
         Left            =   13320
         TabIndex        =   44
         Top             =   2040
         Width           =   1455
      End
   End
   Begin VB.Frame Frame2 
      BackColor       =   &H00C0FFFF&
      Caption         =   "Multiplication :"
      ForeColor       =   &H000000FF&
      Height          =   3135
      Left            =   120
      TabIndex        =   15
      Top             =   7560
      Width           =   15135
      Begin VB.CommandButton Command3 
         Caption         =   "Solve"
         Height          =   255
         Left            =   13800
         TabIndex        =   17
         Top             =   2760
         Width           =   975
      End
      Begin VB.TextBox Text13 
         Height          =   375
         Left            =   13440
         TabIndex        =   16
         Top             =   2280
         Width           =   1575
      End
      Begin RichTextLib.RichTextBox RichTextBox1 
         Height          =   2775
         Left            =   120
         TabIndex        =   18
         Top             =   240
         Width           =   1335
         _ExtentX        =   2355
         _ExtentY        =   4895
         _Version        =   393217
         TextRTF         =   $"mathstable.frx":0936
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
      End
      Begin RichTextLib.RichTextBox RichTextBox2 
         Height          =   2775
         Left            =   1440
         TabIndex        =   19
         Top             =   240
         Width           =   1335
         _ExtentX        =   2355
         _ExtentY        =   4895
         _Version        =   393217
         TextRTF         =   $"mathstable.frx":09BA
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
      End
      Begin RichTextLib.RichTextBox RichTextBox3 
         Height          =   2775
         Left            =   2760
         TabIndex        =   20
         Top             =   240
         Width           =   1335
         _ExtentX        =   2355
         _ExtentY        =   4895
         _Version        =   393217
         TextRTF         =   $"mathstable.frx":0A3E
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
      End
      Begin RichTextLib.RichTextBox RichTextBox4 
         Height          =   2775
         Left            =   4080
         TabIndex        =   21
         Top             =   240
         Width           =   1335
         _ExtentX        =   2355
         _ExtentY        =   4895
         _Version        =   393217
         TextRTF         =   $"mathstable.frx":0AC2
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
      End
      Begin RichTextLib.RichTextBox RichTextBox5 
         Height          =   2775
         Left            =   5400
         TabIndex        =   22
         Top             =   240
         Width           =   1335
         _ExtentX        =   2355
         _ExtentY        =   4895
         _Version        =   393217
         Enabled         =   -1  'True
         TextRTF         =   $"mathstable.frx":0B46
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
      End
      Begin RichTextLib.RichTextBox RichTextBox6 
         Height          =   2775
         Left            =   6720
         TabIndex        =   23
         Top             =   240
         Width           =   1335
         _ExtentX        =   2355
         _ExtentY        =   4895
         _Version        =   393217
         TextRTF         =   $"mathstable.frx":0BCA
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
      End
      Begin RichTextLib.RichTextBox RichTextBox7 
         Height          =   2775
         Left            =   8040
         TabIndex        =   24
         Top             =   240
         Width           =   1335
         _ExtentX        =   2355
         _ExtentY        =   4895
         _Version        =   393217
         TextRTF         =   $"mathstable.frx":0C4E
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
      End
      Begin RichTextLib.RichTextBox RichTextBox8 
         Height          =   2775
         Left            =   9360
         TabIndex        =   25
         Top             =   240
         Width           =   1335
         _ExtentX        =   2355
         _ExtentY        =   4895
         _Version        =   393217
         TextRTF         =   $"mathstable.frx":0CD2
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
      End
      Begin RichTextLib.RichTextBox RichTextBox9 
         Height          =   2775
         Left            =   10680
         TabIndex        =   26
         Top             =   240
         Width           =   1335
         _ExtentX        =   2355
         _ExtentY        =   4895
         _Version        =   393217
         TextRTF         =   $"mathstable.frx":0D56
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
      End
      Begin RichTextLib.RichTextBox RichTextBox10 
         Height          =   2775
         Left            =   12000
         TabIndex        =   27
         Top             =   240
         Width           =   1335
         _ExtentX        =   2355
         _ExtentY        =   4895
         _Version        =   393217
         Enabled         =   -1  'True
         TextRTF         =   $"mathstable.frx":0DDA
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
      End
      Begin RichTextLib.RichTextBox Text23 
         Height          =   1695
         Left            =   13440
         TabIndex        =   28
         Top             =   240
         Width           =   1575
         _ExtentX        =   2778
         _ExtentY        =   2990
         _Version        =   393217
         Enabled         =   -1  'True
         ScrollBars      =   2
         TextRTF         =   $"mathstable.frx":0E5E
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
      End
      Begin VB.Label Label3 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Enter the Number :"
         Height          =   255
         Left            =   13440
         TabIndex        =   29
         Top             =   2040
         Width           =   1455
      End
   End
   Begin VB.Frame Frame3 
      BackColor       =   &H00C0FFFF&
      Caption         =   "Subtraction :"
      ForeColor       =   &H000000FF&
      Height          =   3135
      Left            =   120
      TabIndex        =   0
      Top             =   4440
      Width           =   15135
      Begin VB.CommandButton Command2 
         Caption         =   "Solve"
         Height          =   255
         Left            =   13800
         TabIndex        =   2
         Top             =   2760
         Width           =   975
      End
      Begin VB.TextBox Text12 
         Height          =   375
         Left            =   13440
         TabIndex        =   1
         Top             =   2280
         Width           =   1575
      End
      Begin RichTextLib.RichTextBox RichTextBox11 
         Height          =   2775
         Left            =   120
         TabIndex        =   3
         Top             =   240
         Width           =   1335
         _ExtentX        =   2355
         _ExtentY        =   4895
         _Version        =   393217
         TextRTF         =   $"mathstable.frx":0EE2
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
      End
      Begin RichTextLib.RichTextBox RichTextBox12 
         Height          =   2775
         Left            =   1440
         TabIndex        =   4
         Top             =   240
         Width           =   1335
         _ExtentX        =   2355
         _ExtentY        =   4895
         _Version        =   393217
         TextRTF         =   $"mathstable.frx":0F66
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
      End
      Begin RichTextLib.RichTextBox RichTextBox13 
         Height          =   2775
         Left            =   2760
         TabIndex        =   5
         Top             =   240
         Width           =   1335
         _ExtentX        =   2355
         _ExtentY        =   4895
         _Version        =   393217
         TextRTF         =   $"mathstable.frx":0FEA
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
      End
      Begin RichTextLib.RichTextBox RichTextBox14 
         Height          =   2775
         Left            =   4080
         TabIndex        =   6
         Top             =   240
         Width           =   1335
         _ExtentX        =   2355
         _ExtentY        =   4895
         _Version        =   393217
         TextRTF         =   $"mathstable.frx":106E
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
      End
      Begin RichTextLib.RichTextBox RichTextBox15 
         Height          =   2775
         Left            =   5400
         TabIndex        =   7
         Top             =   240
         Width           =   1335
         _ExtentX        =   2355
         _ExtentY        =   4895
         _Version        =   393217
         Enabled         =   -1  'True
         TextRTF         =   $"mathstable.frx":10F2
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
      End
      Begin RichTextLib.RichTextBox RichTextBox16 
         Height          =   2775
         Left            =   6720
         TabIndex        =   8
         Top             =   240
         Width           =   1335
         _ExtentX        =   2355
         _ExtentY        =   4895
         _Version        =   393217
         TextRTF         =   $"mathstable.frx":1176
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
      End
      Begin RichTextLib.RichTextBox RichTextBox17 
         Height          =   2775
         Left            =   8040
         TabIndex        =   9
         Top             =   240
         Width           =   1335
         _ExtentX        =   2355
         _ExtentY        =   4895
         _Version        =   393217
         TextRTF         =   $"mathstable.frx":11FA
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
      End
      Begin RichTextLib.RichTextBox RichTextBox18 
         Height          =   2775
         Left            =   9360
         TabIndex        =   10
         Top             =   240
         Width           =   1335
         _ExtentX        =   2355
         _ExtentY        =   4895
         _Version        =   393217
         TextRTF         =   $"mathstable.frx":127E
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
      End
      Begin RichTextLib.RichTextBox RichTextBox19 
         Height          =   2775
         Left            =   10680
         TabIndex        =   11
         Top             =   240
         Width           =   1335
         _ExtentX        =   2355
         _ExtentY        =   4895
         _Version        =   393217
         TextRTF         =   $"mathstable.frx":1302
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
      End
      Begin RichTextLib.RichTextBox RichTextBox20 
         Height          =   2775
         Left            =   12000
         TabIndex        =   12
         Top             =   240
         Width           =   1335
         _ExtentX        =   2355
         _ExtentY        =   4895
         _Version        =   393217
         Enabled         =   -1  'True
         TextRTF         =   $"mathstable.frx":1386
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
      End
      Begin RichTextLib.RichTextBox Text22 
         Height          =   1695
         Left            =   13440
         TabIndex        =   13
         Top             =   240
         Width           =   1575
         _ExtentX        =   2778
         _ExtentY        =   2990
         _Version        =   393217
         Enabled         =   -1  'True
         ScrollBars      =   2
         TextRTF         =   $"mathstable.frx":140A
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
      End
      Begin VB.Label Label2 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Enter the Number :"
         Height          =   255
         Left            =   13440
         TabIndex        =   14
         Top             =   2040
         Width           =   1455
      End
   End
   Begin VB.Image Image1 
      Height          =   1335
      Left            =   0
      Picture         =   "mathstable.frx":148E
      Stretch         =   -1  'True
      Top             =   0
      Width           =   15360
   End
End
Attribute VB_Name = "mathstable"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim i, j, k, l, m, n, o, p, q, r, s, t As Long
Dim A, B As String

Private Sub Command1_Click()

If Val(Text11.Text) < 0 Or Text11.Text = "" Then
 MsgBox "Invalid Data"
ElseIf Val(Text11.Text) > 2500 Then
 MsgBox "Over Flow"
Else
Text21.Text = ""
For i = 0 To 10
s = i + Val(Text11.Text)
B = i & "+" & Val(Text11.Text) & "=" & s
A = Text21.Text
Text21.Text = ""
Text21.Text = A & vbNewLine & B
Next
End If
End Sub

Private Sub Command2_Click()
If Val(Text12.Text) < 0 Or Text12.Text = "" Then
 MsgBox "Invalid Data"
ElseIf Val(Text12.Text) > 2500 Then
 MsgBox "Over Flow"
Else
Text22.Text = ""
For i = Val(Text12.Text) To Val(Text12.Text) + 10
s = i - Val(Text12.Text)
B = i & "-" & Val(Text12.Text) & "=" & s
A = Text22.Text
Text22.Text = ""
Text22.Text = A & vbNewLine & B
Next
End If
End Sub

Private Sub Command3_Click()
If Val(Text13.Text) < 0 Or Text13.Text = "" Then
 MsgBox "Invalid Data"
ElseIf Val(Text13.Text) > 2500 Then
 MsgBox "Over Flow"
Else
Text23.Text = ""
For i = 0 To 10
s = i * Val(Text13.Text)
B = i & "*" & Val(Text13.Text) & "=" & s
A = Text23.Text
Text23.Text = ""
Text23.Text = A & vbNewLine & B
Next
End If
End Sub

Private Sub Form_Load()
Me.WindowState = vbMaximized
j = 1
k = 2
l = 3
m = 4
n = 5
o = 6
p = 7
q = 8
r = 9
t = 10
Text1.Text = "First Table" & vbNewLine & "--------------------"
For i = 0 To 10
s = i + j
B = i & "+" & j & "=" & s
A = Text1.Text
Text1.Text = ""
Text1.Text = A & vbNewLine & B
Next

Text2.Text = "Second Table" & vbNewLine & "--------------------"
For i = 0 To 10
s = i + k
B = i & "+" & k & "=" & s
A = Text2.Text
Text2.Text = ""
Text2.Text = A & vbNewLine & B
Next

Text3.Text = "Third Table" & vbNewLine & "--------------------"
For i = 0 To 10
s = i + l
B = i & "+" & l & "=" & s
A = Text3.Text
Text3.Text = ""
Text3.Text = A & vbNewLine & B
Next

Text4.Text = "Fourth Table" & vbNewLine & "--------------------"
For i = 0 To 10
s = i + m
B = i & "+" & m & "=" & s
A = Text4.Text
Text4.Text = ""
Text4.Text = A & vbNewLine & B
Next

 Text5.Text = "Fifth Table" & vbNewLine & "--------------------"
For i = 0 To 10
s = i + n
B = i & "+" & n & "=" & s
A = Text5.Text
Text5.Text = ""
Text5.Text = A & vbNewLine & B
Next


Text6.Text = "Sixth Table" & vbNewLine & "--------------------"
For i = 0 To 10
s = i + o
B = i & "+" & o & "=" & s
A = Text6.Text
Text6.Text = ""
Text6.Text = A & vbNewLine & B
Next

Text7.Text = "7 th Table" & vbNewLine & "------------------"
For i = 0 To 10
s = i + p
B = i & "+" & p & "=" & s
A = Text7.Text
Text7.Text = ""
Text7.Text = A & vbNewLine & B
Next

Text8.Text = "Eight Table" & vbNewLine & "--------------------"
For i = 0 To 10
s = i + q
B = i & "+" & q & "=" & s
A = Text8.Text
Text8.Text = ""
Text8.Text = A & vbNewLine & B
Next

Text9.Text = "Ninth Table" & vbNewLine & "--------------------"
For i = 0 To 10
s = i + r
B = i & "+" & r & "=" & s
A = Text9.Text
Text9.Text = ""
Text9.Text = A & vbNewLine & B
Next

 Text10.Text = "Tenth Table" & vbNewLine & "--------------------"
For i = 0 To 10
s = i + t
B = i & "+" & t & "=" & s
A = Text10.Text
Text10.Text = ""
Text10.Text = A & vbNewLine & B
Next

RichTextBox1.Text = "First Table" & vbNewLine & "--------------------"
For i = 0 To 10
s = i * j
B = i & "*" & j & "=" & s
A = RichTextBox1.Text
RichTextBox1.Text = ""
RichTextBox1.Text = A & vbNewLine & B
Next

RichTextBox2.Text = "Second Table" & vbNewLine & "--------------------"
For i = 0 To 10
s = i * k
B = i & "*" & k & "=" & s
A = RichTextBox2.Text
RichTextBox2.Text = ""
RichTextBox2.Text = A & vbNewLine & B
Next

RichTextBox3.Text = "Third Table" & vbNewLine & "--------------------"
For i = 0 To 10
s = i * l
B = i & "*" & l & "=" & s
A = RichTextBox3.Text
RichTextBox3.Text = ""
RichTextBox3.Text = A & vbNewLine & B
Next

RichTextBox4.Text = "Fourth Table" & vbNewLine & "--------------------"
For i = 0 To 10
s = i * m
B = i & "*" & m & "=" & s
A = RichTextBox4.Text
RichTextBox4.Text = ""
RichTextBox4.Text = A & vbNewLine & B
Next

 RichTextBox5.Text = "Fifth Table" & vbNewLine & "--------------------"
For i = 0 To 10
s = i * n
B = i & "*" & n & "=" & s
A = RichTextBox5.Text
RichTextBox5.Text = ""
RichTextBox5.Text = A & vbNewLine & B
Next


RichTextBox6.Text = "Sixth Table" & vbNewLine & "--------------------"
For i = 0 To 10
s = i * o
B = i & "*" & o & "=" & s
A = RichTextBox6.Text
RichTextBox6.Text = ""
RichTextBox6.Text = A & vbNewLine & B
Next

RichTextBox7.Text = "7 th Table" & vbNewLine & "------------------"
For i = 0 To 10
s = i * p
B = i & "*" & p & "=" & s
A = RichTextBox7.Text
RichTextBox7.Text = ""
RichTextBox7.Text = A & vbNewLine & B
Next

RichTextBox8.Text = "Eight Table" & vbNewLine & "--------------------"
For i = 0 To 10
s = i * q
B = i & "*" & q & "=" & s
A = RichTextBox8.Text
RichTextBox8.Text = ""
RichTextBox8.Text = A & vbNewLine & B
Next

RichTextBox9.Text = "Ninth Table" & vbNewLine & "--------------------"
For i = 0 To 10
s = i * r
B = i & "*" & r & "=" & s
A = RichTextBox9.Text
RichTextBox9.Text = ""
RichTextBox9.Text = A & vbNewLine & B
Next

 RichTextBox10.Text = "Tenth Table" & vbNewLine & "--------------------"
For i = 0 To 10
s = i * t
B = i & "*" & t & "=" & s
A = RichTextBox10.Text
RichTextBox10.Text = ""
RichTextBox10.Text = A & vbNewLine & B
Next



RichTextBox11.Text = "First Table" & vbNewLine & "--------------------"
For i = 1 To 11
s = i - j
B = i & "-" & j & "=" & s
A = RichTextBox11.Text
RichTextBox11.Text = ""
RichTextBox11.Text = A & vbNewLine & B
Next

RichTextBox12.Text = "Second Table" & vbNewLine & "--------------------"
For i = 2 To 12
s = i - k
B = i & "-" & k & "=" & s
A = RichTextBox12.Text
RichTextBox12.Text = ""
RichTextBox12.Text = A & vbNewLine & B
Next

RichTextBox13.Text = "Third Table" & vbNewLine & "--------------------"
For i = 3 To 13
s = i - l
B = i & "-" & l & "=" & s
A = RichTextBox13.Text
RichTextBox13.Text = ""
RichTextBox13.Text = A & vbNewLine & B
Next

RichTextBox14.Text = "Fourth Table" & vbNewLine & "--------------------"
For i = 4 To 14
s = i - m
B = i & "-" & m & "=" & s
A = RichTextBox14.Text
RichTextBox14.Text = ""
RichTextBox14.Text = A & vbNewLine & B
Next

 RichTextBox15.Text = "Fifth Table" & vbNewLine & "--------------------"
For i = 5 To 15
s = i - n
B = i & "-" & n & "=" & s
A = RichTextBox15.Text
RichTextBox15.Text = ""
RichTextBox15.Text = A & vbNewLine & B
Next


RichTextBox16.Text = "Sixth Table" & vbNewLine & "--------------------"
For i = 6 To 16
s = i - o
B = i & "-" & o & "=" & s
A = RichTextBox16.Text
RichTextBox16.Text = ""
RichTextBox16.Text = A & vbNewLine & B
Next

RichTextBox17.Text = "7 th Table" & vbNewLine & "------------------"
For i = 7 To 17
s = i - p
B = i & "-" & p & "=" & s
A = RichTextBox17.Text
RichTextBox17.Text = ""
RichTextBox17.Text = A & vbNewLine & B
Next

RichTextBox18.Text = "Eight Table" & vbNewLine & "--------------------"
For i = 8 To 18
s = i - q
B = i & "-" & q & "=" & s
A = RichTextBox18.Text
RichTextBox18.Text = ""
RichTextBox18.Text = A & vbNewLine & B
Next

RichTextBox19.Text = "Ninth Table" & vbNewLine & "--------------------"
For i = 9 To 19
s = i - r
B = i & "-" & r & "=" & s
A = RichTextBox19.Text
RichTextBox19.Text = ""
RichTextBox19.Text = A & vbNewLine & B
Next

 RichTextBox20.Text = "Tenth Table" & vbNewLine & "--------------------"
For i = 10 To 20
s = i - t
B = i & "-" & t & "=" & s
A = RichTextBox20.Text
RichTextBox20.Text = ""
RichTextBox20.Text = A & vbNewLine & B
Next

End Sub
Private Sub Text11_Validate(Cancel As Boolean)
If IsNumeric(Text11.Text) = False And Text11.Text <> "" Then
 If (Text11.Text <> "-") Then
  i = MsgBox(Text11.Text & " " & "is not a numeric value.Enter only numeric values", vbInformation)
  Text11.Text = ""
  Text11.SetFocus
 End If
End If
End Sub
Private Sub Text12_Validate(Cancel As Boolean)
If IsNumeric(Text12.Text) = False And Text12.Text <> "" Then
 If (Text12.Text <> "-") Then
  i = MsgBox(Text12.Text & " " & "is not a numeric value.Enter only numeric values", vbInformation)
  Text12.Text = ""
  Text12.SetFocus
 End If
End If
End Sub
Private Sub Text13_Validate(Cancel As Boolean)
If IsNumeric(Text13.Text) = False And Text13.Text <> "" Then
 If (Text13.Text <> "-") Then
  i = MsgBox(Text13.Text & " " & "is not a numeric value.Enter only numeric values", vbInformation)
  Text13.Text = ""
  Text13.SetFocus
 End If
End If
End Sub

