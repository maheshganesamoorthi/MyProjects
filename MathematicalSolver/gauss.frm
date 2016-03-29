VERSION 5.00
Begin VB.Form gauss 
   BackColor       =   &H00C0FFFF&
   Caption         =   "Gauss"
   ClientHeight    =   9120
   ClientLeft      =   60
   ClientTop       =   420
   ClientWidth     =   10935
   Icon            =   "gauss.frx":0000
   LinkTopic       =   "Form1"
   ScaleHeight     =   11040
   ScaleWidth      =   15240
   StartUpPosition =   3  'Windows Default
   Begin VB.Frame Frame3 
      BackColor       =   &H00C0FFFF&
      Caption         =   "Example :"
      ForeColor       =   &H000000FF&
      Height          =   8655
      Left            =   6240
      TabIndex        =   42
      Top             =   2040
      Width           =   9015
      Begin VB.Image Image3 
         Height          =   8490
         Left            =   720
         Picture         =   "gauss.frx":038A
         Top             =   120
         Width           =   6240
      End
   End
   Begin VB.Frame Frame2 
      BackColor       =   &H00C0FFFF&
      Caption         =   "Gauss - Jordan Method :"
      ForeColor       =   &H000000FF&
      Height          =   4335
      Left            =   120
      TabIndex        =   21
      Top             =   6360
      Width           =   6015
      Begin VB.CommandButton Command6 
         Caption         =   "Clear"
         Height          =   375
         Left            =   2040
         TabIndex        =   44
         Top             =   3720
         Width           =   1935
      End
      Begin VB.CommandButton Command4 
         Caption         =   "Step4"
         Enabled         =   0   'False
         Height          =   495
         Left            =   4320
         TabIndex        =   37
         Top             =   3000
         Width           =   735
      End
      Begin VB.CommandButton Command3 
         Caption         =   "Step3"
         Enabled         =   0   'False
         Height          =   495
         Left            =   3240
         TabIndex        =   36
         Top             =   3000
         Width           =   735
      End
      Begin VB.CommandButton Command2 
         Caption         =   "Step2"
         Enabled         =   0   'False
         Height          =   495
         Left            =   2160
         TabIndex        =   35
         Top             =   3000
         Width           =   735
      End
      Begin VB.CommandButton Command1 
         Caption         =   "Step1"
         Height          =   495
         Left            =   1080
         TabIndex        =   34
         Top             =   3000
         Width           =   735
      End
      Begin VB.TextBox r3 
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   12
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   495
         Left            =   4680
         TabIndex        =   33
         Top             =   1920
         Width           =   735
      End
      Begin VB.TextBox r2 
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   12
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   495
         Left            =   4680
         TabIndex        =   32
         Top             =   1320
         Width           =   735
      End
      Begin VB.TextBox r1 
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   12
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   495
         Left            =   4680
         TabIndex        =   31
         Top             =   720
         Width           =   735
      End
      Begin VB.TextBox zz3 
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   12
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   495
         Left            =   2280
         TabIndex        =   30
         Top             =   1920
         Width           =   615
      End
      Begin VB.TextBox yy3 
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   12
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   495
         Left            =   1440
         TabIndex        =   29
         Top             =   1920
         Width           =   615
      End
      Begin VB.TextBox xx3 
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   12
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   495
         Left            =   600
         TabIndex        =   28
         Top             =   1920
         Width           =   615
      End
      Begin VB.TextBox zz2 
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   12
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   495
         Left            =   2280
         TabIndex        =   27
         Top             =   1320
         Width           =   615
      End
      Begin VB.TextBox yy2 
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   12
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   495
         Left            =   1440
         TabIndex        =   26
         Top             =   1320
         Width           =   615
      End
      Begin VB.TextBox xx2 
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   12
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   495
         Left            =   600
         TabIndex        =   25
         Top             =   1320
         Width           =   615
      End
      Begin VB.TextBox zz1 
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   12
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   495
         Left            =   2280
         TabIndex        =   24
         Top             =   720
         Width           =   615
      End
      Begin VB.TextBox yy1 
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   12
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   495
         Left            =   1440
         TabIndex        =   23
         Top             =   720
         Width           =   615
      End
      Begin VB.TextBox xx1 
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   12
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   495
         Left            =   600
         TabIndex        =   22
         Top             =   720
         Width           =   615
      End
      Begin VB.Label Label8 
         Alignment       =   2  'Center
         BackColor       =   &H00C0FFFF&
         Caption         =   "="
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   4080
         TabIndex        =   41
         Top             =   1440
         Width           =   375
      End
      Begin VB.Line Line3 
         Index           =   15
         X1              =   3960
         X2              =   3720
         Y1              =   2520
         Y2              =   2520
      End
      Begin VB.Line Line3 
         Index           =   14
         X1              =   3960
         X2              =   3720
         Y1              =   600
         Y2              =   600
      End
      Begin VB.Line Line1 
         Index           =   9
         X1              =   3960
         X2              =   3960
         Y1              =   600
         Y2              =   2520
      End
      Begin VB.Line Line3 
         Index           =   13
         X1              =   3000
         X2              =   2760
         Y1              =   2520
         Y2              =   2520
      End
      Begin VB.Line Line3 
         Index           =   12
         X1              =   3000
         X2              =   2760
         Y1              =   600
         Y2              =   600
      End
      Begin VB.Line Line1 
         Index           =   8
         X1              =   3000
         X2              =   3000
         Y1              =   600
         Y2              =   2520
      End
      Begin VB.Line Line3 
         Index           =   11
         X1              =   5520
         X2              =   5280
         Y1              =   2520
         Y2              =   2520
      End
      Begin VB.Line Line3 
         Index           =   10
         X1              =   5520
         X2              =   5280
         Y1              =   600
         Y2              =   600
      End
      Begin VB.Line Line1 
         Index           =   7
         X1              =   5520
         X2              =   5520
         Y1              =   600
         Y2              =   2520
      End
      Begin VB.Line Line2 
         Index           =   3
         X1              =   4800
         X2              =   4560
         Y1              =   2520
         Y2              =   2520
      End
      Begin VB.Line Line3 
         Index           =   9
         X1              =   4800
         X2              =   4560
         Y1              =   600
         Y2              =   600
      End
      Begin VB.Line Line1 
         Index           =   6
         X1              =   4560
         X2              =   4560
         Y1              =   600
         Y2              =   2520
      End
      Begin VB.Line Line9 
         X1              =   3360
         X2              =   3120
         Y1              =   2520
         Y2              =   2520
      End
      Begin VB.Line Line8 
         X1              =   3360
         X2              =   3120
         Y1              =   600
         Y2              =   600
      End
      Begin VB.Line Line7 
         X1              =   3120
         X2              =   3120
         Y1              =   600
         Y2              =   2520
      End
      Begin VB.Line Line2 
         Index           =   2
         X1              =   720
         X2              =   480
         Y1              =   2520
         Y2              =   2520
      End
      Begin VB.Line Line3 
         Index           =   8
         X1              =   720
         X2              =   480
         Y1              =   600
         Y2              =   600
      End
      Begin VB.Line Line1 
         Index           =   5
         X1              =   480
         X2              =   480
         Y1              =   600
         Y2              =   2520
      End
      Begin VB.Label Label7 
         Alignment       =   2  'Center
         BorderStyle     =   1  'Fixed Single
         Caption         =   "Z"
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
         Left            =   3240
         TabIndex        =   40
         Top             =   2040
         Width           =   615
      End
      Begin VB.Label Label6 
         Alignment       =   2  'Center
         BorderStyle     =   1  'Fixed Single
         Caption         =   "Y"
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
         Left            =   3240
         TabIndex        =   39
         Top             =   1440
         Width           =   615
      End
      Begin VB.Label Label5 
         Alignment       =   2  'Center
         BorderStyle     =   1  'Fixed Single
         Caption         =   "X"
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
         Left            =   3240
         TabIndex        =   38
         Top             =   840
         Width           =   615
      End
   End
   Begin VB.Frame Frame1 
      BackColor       =   &H00C0FFFF&
      Caption         =   "Gauss - Elimination Method :"
      ForeColor       =   &H000000FF&
      Height          =   4215
      Left            =   120
      TabIndex        =   0
      Top             =   2040
      Width           =   6015
      Begin VB.CommandButton Command5 
         Caption         =   "Clear"
         Height          =   375
         Left            =   1920
         TabIndex        =   43
         Top             =   3600
         Width           =   1815
      End
      Begin VB.TextBox x1 
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   12
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   495
         Left            =   720
         TabIndex        =   1
         Top             =   720
         Width           =   615
      End
      Begin VB.TextBox y1 
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   12
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   495
         Left            =   1560
         TabIndex        =   2
         Top             =   720
         Width           =   615
      End
      Begin VB.TextBox z1 
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   12
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   495
         Left            =   2400
         TabIndex        =   3
         Top             =   720
         Width           =   615
      End
      Begin VB.TextBox x2 
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   12
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   495
         Left            =   720
         TabIndex        =   4
         Top             =   1320
         Width           =   615
      End
      Begin VB.TextBox y2 
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   12
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   495
         Left            =   1560
         TabIndex        =   5
         Top             =   1320
         Width           =   615
      End
      Begin VB.TextBox z2 
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   12
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   495
         Left            =   2400
         TabIndex        =   6
         Top             =   1320
         Width           =   615
      End
      Begin VB.TextBox x3 
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   12
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   495
         Left            =   720
         TabIndex        =   7
         Top             =   1920
         Width           =   615
      End
      Begin VB.TextBox y3 
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   12
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   495
         Left            =   1560
         TabIndex        =   8
         Top             =   1920
         Width           =   615
      End
      Begin VB.TextBox z3 
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   12
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   495
         Left            =   2400
         TabIndex        =   9
         Top             =   1920
         Width           =   615
      End
      Begin VB.TextBox c1 
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   12
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   495
         Left            =   4800
         TabIndex        =   10
         Top             =   720
         Width           =   735
      End
      Begin VB.TextBox c2 
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   12
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   495
         Left            =   4800
         TabIndex        =   11
         Top             =   1320
         Width           =   735
      End
      Begin VB.TextBox c3 
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   12
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   495
         Left            =   4800
         TabIndex        =   12
         Top             =   1920
         Width           =   735
      End
      Begin VB.CommandButton s1 
         Caption         =   "Step1"
         Height          =   495
         Left            =   960
         TabIndex        =   16
         Top             =   2880
         Width           =   735
      End
      Begin VB.CommandButton s2 
         Caption         =   "Step2"
         Enabled         =   0   'False
         Height          =   495
         Left            =   2040
         TabIndex        =   15
         Top             =   2880
         Width           =   735
      End
      Begin VB.CommandButton s3 
         Caption         =   "Step3"
         Enabled         =   0   'False
         Height          =   495
         Left            =   3120
         TabIndex        =   14
         Top             =   2880
         Width           =   735
      End
      Begin VB.CommandButton s4 
         Caption         =   "Step4"
         Enabled         =   0   'False
         Height          =   495
         Left            =   4200
         TabIndex        =   13
         Top             =   2880
         Width           =   735
      End
      Begin VB.Label Label1 
         Alignment       =   2  'Center
         BorderStyle     =   1  'Fixed Single
         Caption         =   "X"
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
         Left            =   3360
         TabIndex        =   20
         Top             =   840
         Width           =   615
      End
      Begin VB.Label Label2 
         Alignment       =   2  'Center
         BorderStyle     =   1  'Fixed Single
         Caption         =   "Y"
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
         Left            =   3360
         TabIndex        =   19
         Top             =   1440
         Width           =   615
      End
      Begin VB.Label Label3 
         Alignment       =   2  'Center
         BorderStyle     =   1  'Fixed Single
         Caption         =   "Z"
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
         Left            =   3360
         TabIndex        =   18
         Top             =   2040
         Width           =   615
      End
      Begin VB.Line Line1 
         Index           =   0
         X1              =   600
         X2              =   600
         Y1              =   600
         Y2              =   2520
      End
      Begin VB.Line Line3 
         Index           =   0
         X1              =   840
         X2              =   600
         Y1              =   600
         Y2              =   600
      End
      Begin VB.Line Line2 
         Index           =   0
         X1              =   840
         X2              =   600
         Y1              =   2520
         Y2              =   2520
      End
      Begin VB.Line Line4 
         X1              =   3240
         X2              =   3240
         Y1              =   600
         Y2              =   2520
      End
      Begin VB.Line Line5 
         X1              =   3480
         X2              =   3240
         Y1              =   600
         Y2              =   600
      End
      Begin VB.Line Line6 
         X1              =   3480
         X2              =   3240
         Y1              =   2520
         Y2              =   2520
      End
      Begin VB.Line Line1 
         Index           =   1
         X1              =   4680
         X2              =   4680
         Y1              =   600
         Y2              =   2520
      End
      Begin VB.Line Line3 
         Index           =   1
         X1              =   4920
         X2              =   4680
         Y1              =   600
         Y2              =   600
      End
      Begin VB.Line Line2 
         Index           =   1
         X1              =   4920
         X2              =   4680
         Y1              =   2520
         Y2              =   2520
      End
      Begin VB.Line Line1 
         Index           =   2
         X1              =   5640
         X2              =   5640
         Y1              =   600
         Y2              =   2520
      End
      Begin VB.Line Line3 
         Index           =   2
         X1              =   5640
         X2              =   5400
         Y1              =   600
         Y2              =   600
      End
      Begin VB.Line Line3 
         Index           =   3
         X1              =   5640
         X2              =   5400
         Y1              =   2520
         Y2              =   2520
      End
      Begin VB.Line Line1 
         Index           =   3
         X1              =   3120
         X2              =   3120
         Y1              =   600
         Y2              =   2520
      End
      Begin VB.Line Line3 
         Index           =   4
         X1              =   3120
         X2              =   2880
         Y1              =   600
         Y2              =   600
      End
      Begin VB.Line Line3 
         Index           =   5
         X1              =   3120
         X2              =   2880
         Y1              =   2520
         Y2              =   2520
      End
      Begin VB.Line Line1 
         Index           =   4
         X1              =   4080
         X2              =   4080
         Y1              =   600
         Y2              =   2520
      End
      Begin VB.Line Line3 
         Index           =   6
         X1              =   4080
         X2              =   3840
         Y1              =   600
         Y2              =   600
      End
      Begin VB.Line Line3 
         Index           =   7
         X1              =   4080
         X2              =   3840
         Y1              =   2520
         Y2              =   2520
      End
      Begin VB.Label Label4 
         Alignment       =   2  'Center
         BackColor       =   &H00C0FFFF&
         Caption         =   "="
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   4200
         TabIndex        =   17
         Top             =   1440
         Width           =   375
      End
   End
   Begin VB.Image Image2 
      Height          =   735
      Left            =   4320
      Picture         =   "gauss.frx":ACB0C
      Top             =   1320
      Width           =   7455
   End
   Begin VB.Image Image1 
      Height          =   1710
      Left            =   0
      Picture         =   "gauss.frx":BE8E2
      Stretch         =   -1  'True
      Top             =   -120
      Width           =   15240
   End
End
Attribute VB_Name = "gauss"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Dim A, B, C, D, e, F, G, H, i, j, k, l, xval, yval, zval As Long
Dim strMsg As String


Private Sub Command1_Click()
On Local Error GoTo eh:
If FindDeterminant1 = 0 Then
    MsgBox "The co-efficient matrix is Singular"
    Exit Sub
End If
A = Val(xx1.Text)
B = Val(yy1.Text)
C = Val(zz1.Text)
D = Val(xx2.Text)
e = Val(yy2.Text)
F = Val(zz2.Text)
G = Val(xx3.Text)
H = Val(yy3.Text)
i = Val(zz3.Text)

j = Val(r1.Text)
k = Val(r2.Text)
l = Val(r3.Text)
xx2.Text = (A * D) - (D * A)
yy2.Text = (A * e) - (D * B)
zz2.Text = (A * F) - (D * C)
r2.Text = (A * k) - (D * j)
xx3.Text = (A * G) - (G * A)
yy3.Text = (A * H) - (G * B)
zz3.Text = (A * i) - (G * C)
r3.Text = (A * l) - (G * j)
Command1.Enabled = False
Command2.Enabled = True
Exit Sub
eh:
MsgBox err.Description, vbInformation
End Sub

Private Sub Command2_Click()
On Local Error GoTo eh:
A = Val(xx1.Text)
B = Val(yy1.Text)
C = Val(zz1.Text)
D = Val(xx2.Text)
e = Val(yy2.Text)
F = Val(zz2.Text)
G = Val(xx3.Text)
H = Val(yy3.Text)
i = Val(zz3.Text)
j = Val(r1.Text)
k = Val(r2.Text)
l = Val(r3.Text)
xx1.Text = (e * A) - (B * D)
yy1.Text = (e * B) - (B * e)
zz1.Text = (e * C) - (B * F)
r1.Text = (e * j) - (B * k)
xx3.Text = (e * G) - (H * D)
yy3.Text = (e * H) - (H * e)
zz3.Text = (e * i) - (H * F)
r3.Text = (e * l) - (H * k)
Command2.Enabled = False
Command3.Enabled = True
Exit Sub
eh:
MsgBox err.Description, vbInformation
End Sub

Private Sub Command3_Click()
On Local Error GoTo eh:
A = Val(xx1.Text)
B = Val(yy1.Text)
C = Val(zz1.Text)
D = Val(xx2.Text)
e = Val(yy2.Text)
F = Val(zz2.Text)
G = Val(xx3.Text)
H = Val(yy3.Text)
i = Val(zz3.Text)
j = Val(r1.Text)
k = Val(r2.Text)
l = Val(r3.Text)
xx1.Text = (i * A) - (C * G)
yy1.Text = (i * B) - (C * H)
zz1.Text = (i * C) - (C * i)
r1.Text = (i * j) - (C * l)
xx2.Text = (i * D) - (F * G)
yy2.Text = (i * e) - (F * H)
zz2.Text = (i * F) - (F * i)
r2.Text = (i * k) - (F * l)
Command3.Enabled = False
Command4.Enabled = True
Exit Sub
eh:
MsgBox err.Description, vbInformation
End Sub

Private Sub Command4_Click()
On Local Error GoTo eh:
A = Val(xx1.Text)
B = Val(yy1.Text)
C = Val(zz1.Text)
D = Val(xx2.Text)
e = Val(yy2.Text)
F = Val(zz2.Text)
G = Val(xx3.Text)
H = Val(yy3.Text)
i = Val(zz3.Text)
j = Val(r1.Text)
k = Val(r2.Text)
l = Val(r3.Text)
xval = j / A
yval = k / e
zval = l / i
strMsg = "The values are:" & vbNewLine & "x = " & xval & vbNewLine & "y = " & yval & vbNewLine & "z = " & zval
MsgBox "Solution is :" & strMsg, vbInformation, "Solution"
Exit Sub
eh:
MsgBox err.Description, vbInformation
End Sub

Private Sub Command5_Click()
s1.Enabled = True
s2.Enabled = False
s3.Enabled = False
s4.Enabled = False
x1.Text = ""
y1.Text = ""
z1.Text = ""
c1.Text = ""
x2.Text = ""
y2.Text = ""
z2.Text = ""
c2.Text = ""
x3.Text = ""
y3.Text = ""
z3.Text = ""
c3.Text = ""
End Sub

Private Sub Command6_Click()
xx1.Text = ""
yy1.Text = ""
zz1.Text = ""
r1.Text = ""
xx2.Text = ""
yy2.Text = ""
zz2.Text = ""
r2.Text = ""
xx3.Text = ""
yy3.Text = ""
zz3.Text = ""
r3.Text = ""
Command1.Enabled = True
Command2.Enabled = False
Command3.Enabled = False
Command4.Enabled = False
End Sub

Private Sub Form_Load()
Me.WindowState = vbMaximized
End Sub



Private Sub s1_Click()
Dim vx As Single, vy As Single, vz As Single, vc As Single
Dim df As Single
On Local Error GoTo eh:
If FindDeterminant = 0 Then
    MsgBox "The co-efficient matrix is Singular"
    Exit Sub
End If

df = CSng(x2.Text) / CSng(x1.Text)
vx = FormatNumber(CSng(x2.Text) - CSng(x1.Text) * df, 6)
vy = FormatNumber(CSng(y2.Text) - CSng(y1.Text) * df, 6)
vz = FormatNumber(CSng(z2.Text) - CSng(z1.Text) * df, 6)
vc = FormatNumber(CSng(c2.Text) - CSng(c1.Text) * df, 6)
x2 = vx: y2 = vy: z2 = vz: c2 = vc
s1.Enabled = False: s2.Enabled = True
x1.Locked = True: y1.Locked = True: z1.Locked = True: c1.Locked = True
x2.Locked = True: y2.Locked = True: z2.Locked = True: c2.Locked = True
x3.Locked = True: y3.Locked = True: z3.Locked = True: c3.Locked = True
Exit Sub
eh:
MsgBox err.Description, vbInformation
End Sub
Private Sub s2_Click()
Dim vx As Single, vy As Single, vz As Single, vc As Single
Dim df As Single
On Local Error GoTo eh:
df = CSng(x3.Text) / CSng(x1.Text)
vx = FormatNumber(CSng(x3.Text) - CSng(x1.Text) * df, 6)
vy = FormatNumber(CSng(y3.Text) - CSng(y1.Text) * df, 6)
vz = FormatNumber(CSng(z3.Text) - CSng(z1.Text) * df, 6)
vc = FormatNumber(CSng(c3.Text) - CSng(c1.Text) * df, 6)
x3 = vx: y3 = vy: z3 = vz: c3 = vc
s2.Enabled = False: s3.Enabled = True
Exit Sub
eh:
MsgBox err.Description, vbInformation
End Sub
Private Sub s3_Click()
Dim vx As Single, vy As Single, vz As Single, vc As Single
Dim df As Single
On Local Error GoTo eh:
        If Abs(y2) < Abs(y3) Then
           vx = x3: vy = y3: vz = z3: vc = c3
           x3 = x2: y3 = y2: z3 = z2: c3 = c2
           x2 = vx: y2 = vy: z2 = vz: c2 = vc
        End If
df = CSng(y3.Text) / CSng(y2.Text)
vx = FormatNumber(CSng(x3.Text) - CSng(x2.Text) * df, 6)
vy = FormatNumber(CSng(y3.Text) - CSng(y2.Text) * df, 6)
vz = FormatNumber(CSng(z3.Text) - CSng(z2.Text) * df, 6)
vc = FormatNumber(CSng(c3.Text) - CSng(c2.Text) * df, 6)
x3 = vx: y3 = vy: z3 = vz: c3 = vc
s3.Enabled = False: s4.Enabled = True
Exit Sub
eh:
MsgBox err.Description, vbInformation
End Sub
Private Sub s4_Click()
Dim vx As Single, vy As Single, vz As Single, strMsg As String
On Local Error GoTo eh:
vz = FormatNumber(CSng(c3.Text) / CSng(z3.Text), 5)
vy = FormatNumber((CSng(c2.Text) - CSng(z2.Text) * vz) / CSng(y2.Text), 5)
vx = FormatNumber((CSng(c1.Text) - (CSng(z1.Text) * vz + _
        CSng(y1.Text) * vy)) / CSng(x1.Text))
strMsg = "X = " & vx & vbNewLine & "Y = " & vy & vbNewLine & "Z = " & vz
MsgBox "Solution is :" & strMsg, vbInformation, "Solution"
'x1 = "": x2 = "": x3 = "": y1 = "": y2 = "": y3 = "": z1 = "": z2 = "": z3 = "": c1 = "": c2 = "": c3 = ""
x1.Locked = False: y1.Locked = False: z1.Locked = False: c1.Locked = False
x2.Locked = False: y2.Locked = False: z2.Locked = False: c2.Locked = False
x3.Locked = False: y3.Locked = False: z3.Locked = False: c3.Locked = False
 x1.SetFocus
Exit Sub
eh:
MsgBox err.Description, vbInformation
End Sub

Private Function FindDeterminant() As Single
On Local Error Resume Next
FindDeterminant = x1 * (y2 * z3 - y3 * z2) - y1 * (x2 * z3 - x3 * z2) + z1 * (x2 * y3 - x3 * y2)
End Function

Private Function FindDeterminant1() As Single
On Local Error Resume Next
FindDeterminant1 = xx1 * (yy2 * zz3 - yy3 * zz2) - yy1 * (xx2 * zz3 - xx3 * zz2) + zz1 * (xx2 * yy3 - xx3 * yy2)
End Function

Private Sub X1_Validate(Cancel As Boolean)
If IsNumeric(x1.Text) = False And x1.Text <> "" Then
 If (x1.Text <> "-") Then
  i = MsgBox(x1.Text & " " & "is not a numeric value.Enter only numeric values", vbInformation)
  x1.Text = ""
  x1.SetFocus
 End If
End If
End Sub
Private Sub Y1_Validate(Cancel As Boolean)
If IsNumeric(y1.Text) = False And y1.Text <> "" Then
 If (y1.Text <> "-") Then
  i = MsgBox(y1.Text & " " & "is not a numeric value.Enter only numeric values", vbInformation)
   y1.Text = ""
  y1.SetFocus
 End If
End If
End Sub



Private Sub Z1_Validate(Cancel As Boolean)
If IsNumeric(z1.Text) = False And z1.Text <> "" Then
 If (z1.Text <> "-") Then
  i = MsgBox(z1.Text & " " & "is not a numeric value.Enter only numeric values", vbInformation)
   z1.Text = ""
  z1.SetFocus
 End If
End If
End Sub


Private Sub C1_Validate(Cancel As Boolean)
If IsNumeric(c1.Text) = False And c1.Text <> "" Then
 If (c1.Text <> "-") Then
  i = MsgBox(c1.Text & " " & "is not a numeric value.Enter only numeric values", vbInformation)
  c1.Text = ""
  c1.SetFocus
 End If
End If
End Sub

Private Sub X2_Validate(Cancel As Boolean)
If IsNumeric(x2.Text) = False And x2.Text <> "" Then
 If (x2.Text <> "-") Then
  i = MsgBox(x2.Text & " " & "is not a numeric value.Enter only numeric values", vbInformation)
  x2.Text = ""
  x2.SetFocus
 End If
End If
End Sub
Private Sub Y2_Validate(Cancel As Boolean)
If IsNumeric(y2.Text) = False And y2.Text <> "" Then
 If (y2.Text <> "-") Then
  i = MsgBox(y2.Text & " " & "is not a numeric value.Enter only numeric values", vbInformation)
   y2.Text = ""
  y2.SetFocus
 End If
End If
End Sub



Private Sub Z2_Validate(Cancel As Boolean)
If IsNumeric(z2.Text) = False And z2.Text <> "" Then
 If (z2.Text <> "-") Then
  i = MsgBox(z2.Text & " " & "is not a numeric value.Enter only numeric values", vbInformation)
   z2.Text = ""
  z2.SetFocus
 End If
End If
End Sub


Private Sub C2_Validate(Cancel As Boolean)
If IsNumeric(c2.Text) = False And c2.Text <> "" Then
 If (c2.Text <> "-") Then
  i = MsgBox(c2.Text & " " & "is not a numeric value.Enter only numeric values", vbInformation)
  c2.Text = ""
  c2.SetFocus
 End If
End If
End Sub

Private Sub X3_Validate(Cancel As Boolean)
If IsNumeric(x3.Text) = False And x3.Text <> "" Then
 If (x3.Text <> "-") Then
  i = MsgBox(x3.Text & " " & "is not a numeric value.Enter only numeric values", vbInformation)
  x3.Text = ""
  x3.SetFocus
 End If
End If
End Sub
Private Sub Y3_Validate(Cancel As Boolean)
If IsNumeric(y3.Text) = False And y3.Text <> "" Then
 If (y3.Text <> "-") Then
  i = MsgBox(y3.Text & " " & "is not a numeric value.Enter only numeric values", vbInformation)
   y3.Text = ""
  y3.SetFocus
 End If
End If
End Sub



Private Sub Z3_Validate(Cancel As Boolean)
If IsNumeric(z3.Text) = False And z3.Text <> "" Then
 If (z3.Text <> "-") Then
  i = MsgBox(z3.Text & " " & "is not a numeric value.Enter only numeric values", vbInformation)
   z3.Text = ""
  z3.SetFocus
 End If
End If
End Sub


Private Sub C3_Validate(Cancel As Boolean)
If IsNumeric(c3.Text) = False And c3.Text <> "" Then
 If (c3.Text <> "-") Then
  i = MsgBox(c3.Text & " " & "is not a numeric value.Enter only numeric values", vbInformation)
  c3.Text = ""
  c3.SetFocus
 End If
End If
End Sub

Private Sub XX1_Validate(Cancel As Boolean)
If IsNumeric(xx1.Text) = False And xx1.Text <> "" Then
 If (xx1.Text <> "-") Then
  i = MsgBox(xx1.Text & " " & "is not a numeric value.Enter only numeric values", vbInformation)
  xx1.Text = ""
  xx1.SetFocus
 End If
End If
End Sub
Private Sub YY1_Validate(Cancel As Boolean)
If IsNumeric(yy1.Text) = False And yy1.Text <> "" Then
 If (yy1.Text <> "-") Then
  i = MsgBox(yy1.Text & " " & "is not a numeric value.Enter only numeric values", vbInformation)
   yy1.Text = ""
  yy1.SetFocus
 End If
End If
End Sub



Private Sub ZZ1_Validate(Cancel As Boolean)
If IsNumeric(zz1.Text) = False And zz1.Text <> "" Then
 If (zz1.Text <> "-") Then
  i = MsgBox(zz1.Text & " " & "is not a numeric value.Enter only numeric values", vbInformation)
   zz1.Text = ""
  zz1.SetFocus
 End If
End If
End Sub


Private Sub R1_Validate(Cancel As Boolean)
If IsNumeric(r1.Text) = False And r1.Text <> "" Then
 If (r1.Text <> "-") Then
  i = MsgBox(r1.Text & " " & "is not a numeric value.Enter only numeric values", vbInformation)
  r1.Text = ""
  r1.SetFocus
 End If
End If
End Sub

Private Sub XX2_Validate(Cancel As Boolean)
If IsNumeric(xx2.Text) = False And xx2.Text <> "" Then
 If (xx2.Text <> "-") Then
  i = MsgBox(xx2.Text & " " & "is not a numeric value.Enter only numeric values", vbInformation)
  xx2.Text = ""
  xx2.SetFocus
 End If
End If
End Sub
Private Sub YY2_Validate(Cancel As Boolean)
If IsNumeric(yy2.Text) = False And yy2.Text <> "" Then
 If (yy2.Text <> "-") Then
  i = MsgBox(yy2.Text & " " & "is not a numeric value.Enter only numeric values", vbInformation)
   yy2.Text = ""
  yy2.SetFocus
 End If
End If
End Sub



Private Sub ZZ2_Validate(Cancel As Boolean)
If IsNumeric(zz2.Text) = False And zz2.Text <> "" Then
 If (zz2.Text <> "-") Then
  i = MsgBox(zz2.Text & " " & "is not a numeric value.Enter only numeric values", vbInformation)
   zz2.Text = ""
  zz2.SetFocus
 End If
End If
End Sub


Private Sub R2_Validate(Cancel As Boolean)
If IsNumeric(r2.Text) = False And r2.Text <> "" Then
 If (r2.Text <> "-") Then
  i = MsgBox(r2.Text & " " & "is not a numeric value.Enter only numeric values", vbInformation)
  r2.Text = ""
  r2.SetFocus
 End If
End If
End Sub

Private Sub XX3_Validate(Cancel As Boolean)
If IsNumeric(xx3.Text) = False And xx3.Text <> "" Then
 If (xx3.Text <> "-") Then
  i = MsgBox(xx3.Text & " " & "is not a numeric value.Enter only numeric values", vbInformation)
  xx3.Text = ""
  xx3.SetFocus
 End If
End If
End Sub
Private Sub YY3_Validate(Cancel As Boolean)
If IsNumeric(yy3.Text) = False And yy3.Text <> "" Then
 If (yy3.Text <> "-") Then
  i = MsgBox(yy3.Text & " " & "is not a numeric value.Enter only numeric values", vbInformation)
   yy3.Text = ""
  yy3.SetFocus
 End If
End If
End Sub



Private Sub ZZ3_Validate(Cancel As Boolean)
If IsNumeric(zz3.Text) = False And zz3.Text <> "" Then
 If (zz3.Text <> "-") Then
  i = MsgBox(zz3.Text & " " & "is not a numeric value.Enter only numeric values", vbInformation)
   zz3.Text = ""
  zz3.SetFocus
 End If
End If
End Sub


Private Sub R3_Validate(Cancel As Boolean)
If IsNumeric(r3.Text) = False And r3.Text <> "" Then
 If (r3.Text <> "-") Then
  i = MsgBox(r3.Text & " " & "is not a numeric value.Enter only numeric values", vbInformation)
  r3.Text = ""
  r3.SetFocus
 End If
End If
End Sub


