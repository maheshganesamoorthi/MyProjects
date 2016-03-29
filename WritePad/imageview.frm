VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCTL.OCX"
Begin VB.Form imageview 
   BackColor       =   &H00E0E0E0&
   Caption         =   "Image Viewer"
   ClientHeight    =   10995
   ClientLeft      =   60
   ClientTop       =   420
   ClientWidth     =   13335
   Icon            =   "imageview.frx":0000
   LinkTopic       =   "Form1"
   ScaleHeight     =   10995
   ScaleWidth      =   13335
   StartUpPosition =   3  'Windows Default
   Begin VB.Frame Frame3 
      BackColor       =   &H00C0FFFF&
      Caption         =   "Option"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   2415
      Left            =   12480
      TabIndex        =   9
      Top             =   8400
      Width           =   2535
      Begin VB.CommandButton Command2 
         Caption         =   " E&XIT"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   495
         Left            =   360
         TabIndex        =   12
         Top             =   1800
         Width           =   1815
      End
      Begin VB.CommandButton Command1 
         Caption         =   "FRAME"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   495
         Left            =   360
         TabIndex        =   11
         Top             =   1200
         Width           =   1815
      End
      Begin MSComctlLib.Slider ThumbSizeSlider 
         Height          =   495
         Left            =   120
         TabIndex        =   10
         ToolTipText     =   "Zoom in & Zoom out"
         Top             =   360
         Width           =   2175
         _ExtentX        =   3836
         _ExtentY        =   873
         _Version        =   393216
         OLEDropMode     =   1
         LargeChange     =   1
         Min             =   1
         SelStart        =   1
         Value           =   1
         TextPosition    =   1
      End
   End
   Begin VB.Frame Frame2 
      BackColor       =   &H00C0FFFF&
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
      Height          =   735
      Left            =   12480
      TabIndex        =   7
      Top             =   7560
      Width           =   2535
      Begin VB.ComboBox Combo1 
         Height          =   315
         Left            =   240
         TabIndex        =   8
         Text            =   "Picture Format"
         Top             =   240
         Width           =   2055
      End
   End
   Begin VB.Frame Frame1 
      BackColor       =   &H00C0FFFF&
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
      Height          =   7215
      Left            =   12480
      TabIndex        =   0
      Top             =   240
      Width           =   2535
      Begin VB.FileListBox File2 
         BackColor       =   &H00FFFFFF&
         Height          =   1260
         Left            =   240
         Pattern         =   "*.bmp"
         TabIndex        =   4
         Top             =   5760
         Width           =   2055
      End
      Begin VB.FileListBox File1 
         BackColor       =   &H00FFFFFF&
         Height          =   1260
         Left            =   240
         Pattern         =   "*.JPG"
         TabIndex        =   3
         Top             =   3960
         Width           =   2055
      End
      Begin VB.DirListBox Dir1 
         BackColor       =   &H00FFFFFF&
         Height          =   2565
         Left            =   240
         TabIndex        =   2
         Top             =   960
         Width           =   2055
      End
      Begin VB.DriveListBox Drive1 
         BackColor       =   &H8000000F&
         Height          =   315
         Left            =   240
         TabIndex        =   1
         Top             =   360
         Width           =   2055
      End
      Begin VB.Label Label2 
         AutoSize        =   -1  'True
         BackColor       =   &H00C0FFFF&
         Caption         =   " BMP FILES"
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   14.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H000000FF&
         Height          =   315
         Left            =   240
         TabIndex        =   6
         Top             =   5400
         Width           =   1485
      End
      Begin VB.Label Label1 
         AutoSize        =   -1  'True
         BackColor       =   &H00C0FFFF&
         Caption         =   "JPG FILES"
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   14.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H000000FF&
         Height          =   315
         Left            =   240
         TabIndex        =   5
         Top             =   3600
         Width           =   1305
      End
   End
   Begin VB.Image Image1 
      BorderStyle     =   1  'Fixed Single
      Height          =   5895
      Left            =   240
      Stretch         =   -1  'True
      Top             =   240
      Width           =   7455
   End
   Begin VB.Line Line5 
      BorderWidth     =   3
      X1              =   12240
      X2              =   12240
      Y1              =   10800
      Y2              =   360
   End
End
Attribute VB_Name = "imageview"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
If Command1.Caption = "FRAME" Then
image1.BorderStyle = 1
image1.Appearance = 0
Command1.Caption = "UNFRAME"
Else
image1.BorderStyle = 1
image1.Appearance = 1
Command1.Caption = "FRAME"
End If
End Sub

Private Sub Command2_Click()
Unload Me
End Sub


Private Sub Dir1_Change()
File1.Path = Dir1.Path
If Combo1.ListIndex = 0 Then
File1.Pattern = ("*.jpg")
ElseIf Combo1.ListIndex = 1 Then
File1.Pattern = ("*.bmp")
ElseIf Combo1.ListIndex = 2 Then
File1.Pattern = ("*.JPG")
End If
File2.Path = Dir1.Path
If Combo1.ListIndex = 0 Then
File2.Pattern = ("*.jpg")
ElseIf Combo1.ListIndex = 1 Then
File2.Pattern = ("*.bmp")
ElseIf Combo1.ListIndex = 2 Then
File2.Pattern = ("*.JPG")
End If
End Sub

Private Sub Drive1_Change()
Dir1.Path = Drive1.Drive
End Sub
Private Sub File1_Click()
Dim A2 As String
Dim b As String
If Combo1.ListIndex = 0 Then
File1.Pattern = ("*.jpg")
ElseIf Combo1.ListIndex = 1 Then
File1.Pattern = ("*.bmp")
ElseIf Combo1.ListIndex = 2 Then
File1.Pattern = ("*.JPG")
End If
If Right(File1.Path, 1) <> "\" Then
filenam = File1.Path + "\" + File1.FileName
Else
filenam = File1.Path + File1.FileName
End If
'On Error GoTo errhan
 If Right(filenam, 1) <> "g" Then
 GoTo errhan1
 'Or Right(filenam, 1) <> "G" Then
'If File1.Pattern <> "*.JPG" Or File1.Pattern <> "*.jpg" Or File1.Pattern <> "*.bmp" Then
Else
'A2 = File1.Path
'Else
'A2 = File1.Path + "\"
'End If
'b = A2 + File1.FileName
image1.Picture = LoadPicture(filenam)
End If
errhan1:
If Right(filenam, 1) <> "G" Then
GoTo errhan
Else
image1.Picture = LoadPicture(filenam)
End If
errhan:
 'MsgBox " INVALID PICTURE "
'Dim A As String
'Dim b As String
'If Right(File1.Path, 1) = "\" Then
'A = File1.Path
'Else
'A = File1.Path + "\"
'End If
'b = A + File1.FileName
'Image1.Picture = LoadPicture(b)
End Sub
Private Sub File2_Click()
Dim A2 As String
Dim b As String
If Combo1.ListIndex = 0 Then
File2.Pattern = ("*.jpg")
ElseIf Combo1.ListIndex = 1 Then
File2.Pattern = ("*.bmp")
ElseIf Combo1.ListIndex = 2 Then
File2.Pattern = ("*.JPG")
End If
If Right(File2.Path, 1) <> "\" Then
filenam = File2.Path + "\" + File2.FileName
Else
filenam = File2.Path + File2.FileName
End If
'On Error GoTo errhan
 If Right(filenam, 1) <> "g" Then
 GoTo errhan1
 'Or Right(filenam, 1) <> "G" Then
'If File2.Pattern <> "*.JPG" Or File2.Pattern <> "*.jpg" Or File2.Pattern <> "*.bmp" Then
Else
'A2 = File2.Path
'Else
'A2 = File2.Path + "\"
'End If
'b = A2 + File2.FileName
image1.Picture = LoadPicture(filenam)
End If
errhan1:
If Right(filenam, 1) <> "G" Then
GoTo errhan
Else
image1.Picture = LoadPicture(filenam)
End If
errhan:
 'MsgBox " INVALID PICTURE "
End Sub



Private Sub Form_Load()
Me.WindowState = vbMaximized
Combo1.AddItem "*.jpg"
Combo1.AddItem "*.bmp"
Combo1.AddItem "*.JPG"
ThumbSizeSlider.SelStart = 5
image1.Height = 6135
image1.Width = 7935
End Sub

Private Sub ThumbSizeSlider_Click()
'Image1.Width = 11 + 40 * ThumbSizeSlider.Value
'Image1.width = 1 + 40 * ThumbSizeSlider.Value
If ThumbSizeSlider.Value = 1 Then
image1.Height = 2895
image1.Width = 4575
ElseIf ThumbSizeSlider.Value = 2 Then
image1.Height = 4335
image1.Width = 6135
ElseIf ThumbSizeSlider.Value = 3 Then
image1.Height = 4935
image1.Width = 6735
ElseIf ThumbSizeSlider.Value = 4 Then
image1.Height = 5535
image1.Width = 7335
ElseIf ThumbSizeSlider.Value = 5 Then
image1.Height = 6135
image1.Width = 7935
ElseIf ThumbSizeSlider.Value = 6 Then
image1.Height = 7335
image1.Width = 8400
ElseIf ThumbSizeSlider.Value = 7 Then
image1.Height = 8055
image1.Width = 10095
ElseIf ThumbSizeSlider.Value = 8 Then
image1.Height = 8895
image1.Width = 10815
ElseIf ThumbSizeSlider.Value = 9 Then
image1.Height = 9735
image1.Width = 11655
ElseIf ThumbSizeSlider.Value = 10 Then
image1.Height = 10455
image1.Width = 11900
End If

End Sub
