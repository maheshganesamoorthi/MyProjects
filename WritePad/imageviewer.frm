VERSION 5.00
Begin VB.Form Imagepic 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Image Viewer"
   ClientHeight    =   7890
   ClientLeft      =   45
   ClientTop       =   405
   ClientWidth     =   7245
   Icon            =   "imageviewer.frx":0000
   LinkTopic       =   "Form2"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   7890
   ScaleWidth      =   7245
   StartUpPosition =   3  'Windows Default
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
      Height          =   1935
      Left            =   120
      TabIndex        =   9
      Top             =   5880
      Width           =   4815
      Begin VB.DriveListBox Drive1 
         BackColor       =   &H8000000F&
         Height          =   315
         Left            =   240
         TabIndex        =   12
         Top             =   360
         Width           =   2055
      End
      Begin VB.DirListBox Dir1 
         BackColor       =   &H00FFFFFF&
         Height          =   765
         Left            =   240
         TabIndex        =   11
         Top             =   720
         Width           =   2055
      End
      Begin VB.FileListBox File1 
         BackColor       =   &H00FFFFFF&
         Height          =   1260
         Left            =   2520
         Pattern         =   "*.JPG"
         TabIndex        =   10
         Top             =   360
         Width           =   2055
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
      Left            =   120
      TabIndex        =   7
      Top             =   8520
      Visible         =   0   'False
      Width           =   2535
      Begin VB.ComboBox Combo1 
         Height          =   315
         Left            =   240
         TabIndex        =   8
         Text            =   "Picture Format"
         Top             =   240
         Visible         =   0   'False
         Width           =   2055
      End
   End
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
      Height          =   1935
      Left            =   5040
      TabIndex        =   5
      Top             =   5880
      Width           =   2175
      Begin VB.CommandButton Command3 
         Caption         =   "Zoom Out"
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
         Left            =   240
         TabIndex        =   14
         Top             =   720
         Width           =   1695
      End
      Begin VB.CommandButton Command2 
         Caption         =   "Zoom In"
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
         Left            =   240
         TabIndex        =   13
         Top             =   240
         Width           =   1695
      End
      Begin VB.CommandButton Command4 
         Caption         =   " E&XIT"
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
         Left            =   240
         TabIndex        =   6
         Top             =   1200
         Width           =   1695
      End
   End
   Begin VB.HScrollBar hslPicDest 
      Height          =   195
      LargeChange     =   100
      Left            =   120
      SmallChange     =   100
      TabIndex        =   3
      Top             =   4770
      Width           =   6510
   End
   Begin VB.VScrollBar vslPicDest 
      Height          =   4635
      LargeChange     =   100
      Left            =   6720
      SmallChange     =   100
      TabIndex        =   2
      Top             =   240
      Width           =   210
   End
   Begin VB.PictureBox picArea 
      BorderStyle     =   0  'None
      Height          =   4575
      Left            =   120
      ScaleHeight     =   4575
      ScaleWidth      =   6615
      TabIndex        =   1
      Top             =   120
      Width           =   6615
      Begin VB.Image image1 
         Height          =   4455
         Left            =   120
         Stretch         =   -1  'True
         Top             =   120
         Width           =   6495
      End
   End
   Begin VB.PictureBox picDest 
      Appearance      =   0  'Flat
      AutoSize        =   -1  'True
      BackColor       =   &H80000005&
      BorderStyle     =   0  'None
      ForeColor       =   &H80000008&
      Height          =   3120
      Left            =   720
      ScaleHeight     =   208
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   336
      TabIndex        =   0
      Top             =   720
      Visible         =   0   'False
      Width           =   5040
   End
   Begin VB.Label lblStatus 
      Height          =   495
      Left            =   720
      TabIndex        =   4
      Top             =   5160
      Width           =   5295
   End
End
Attribute VB_Name = "Imagepic"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim i As Integer

Private Sub Command2_Click()
If i = 30 Then
MsgBox "can't zoom in"
Else
  'image1.Stretch = True
   vslPicDest.Visible = True
  hslPicDest.Visible = True
  i = i + 1
  image1.Height = image1.Height + (image1.Height * 0.05)
  image1.Width = image1.Width + (image1.Width * 0.05)
 
  'image1.Width = sWidth
  'image1.Height = sHeight
  'image1.Stretch = False

  'increase the zoom value
  lblStatus.Caption = "Width:" & image1.Width & "    Height:" & image1.Height & "   Zoom 1:" & i
  
  'Process Image
 ' SizeImage picDest, image1.Picture, sWidth, sHeight
  
  ' Calculate the scroll bar value
  ScrollBar image1.Width, image1.Height, picArea.Width, picArea.Height
End If
End Sub


Private Sub Command3_Click()
If i = -50 Then
MsgBox "can't zoom out"
Else
  i = i - 1
  image1.Height = image1.Height - (image1.Height * 0.05)
  image1.Width = image1.Width - (image1.Width * 0.05)
 
  'image1.Width = sWidth
  'image1.Height = sHeight
  'image1.Stretch = False

  'increase the zoom value
   lblStatus.Caption = "Width:" & image1.Width & "    Height:" & image1.Height & "   Zoom 1:" & i
  
  'Process Image
 'SizeImage picDest, image1.Picture, sWidth, sHeight
  
  ' Calculate the scroll bar value
  ScrollBar image1.Width, image1.Height, picArea.Width, picArea.Height
  End If
End Sub

Private Sub Command5_Click()
If Command5.Caption = "FRAME" Then
image1.BorderStyle = 1
image1.Appearance = 0
Command5.Caption = "UNFRAME"
Else
image1.BorderStyle = 1
image1.Appearance = 1
Command5.Caption = "FRAME"
End If
End Sub

Private Sub Command4_Click()
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
End Sub

Private Sub Drive1_Change()
Dir1.Path = Drive1.Drive
End Sub
Private Sub File1_Click()
Dim A2 As String
Dim b As String
 mzoomfactor = 0.05
   i = 0
  image1.Height = 4455
  image1.Width = 6495
  lblStatus.Caption = "Width:" & image1.Width & "    Height:" & image1.Height & "   Zoom 1:" & 0
  picArea.Height = image1.Height
  picArea.Width = image1.Width
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
ScrollBar image1.Width, image1.Height, picArea.Width, picArea.Height
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



Private Sub Form_Load()
'Me.WindowState = vbMaximized
Combo1.AddItem "*.jpg"
Combo1.AddItem "*.bmp"
Combo1.AddItem "*.JPG"
  vslPicDest.Visible = False
  hslPicDest.Visible = False
  mzoomfactor = 0.05
  i = 0
  picArea.Height = image1.Height
  picArea.Width = image1.Width
End Sub
Private Sub hslPicDest_Change()
   image1.Left = -hslPicDest.Value
End Sub

Private Sub vslPicDest_Change()
   image1.Top = -vslPicDest.Value
End Sub
Private Sub vslPicDest_Scroll()
image1.Top = -vslPicDest.Value
End Sub
Private Sub hslPicDest_Scroll()
image1.Left = -hslPicDest.Value
End Sub
Private Sub ScrollBar(picWidth As Integer, picHeight As Integer, areaWidth As Integer, areaHeight As Integer)

  'picDest is inside the picArea, so algorithm to calculate
  'the scrollable width and height
  
  If picWidth - areaWidth > 0 Then
     'enable the horizontal scrollbar
     hslPicDest.Max = picWidth - areaWidth
     hslPicDest.Visible = True
     hslPicDest.Enabled = True
  Else
     'Disable the horizontal bar
     hslPicDest.Max = 0
     hslPicDest.Visible = False
     hslPicDest.Enabled = False
  End If
  
  If picHeight - areaHeight > 0 Then
     'enable the horizontal scrollbar
     vslPicDest.Max = picHeight - areaHeight
     vslPicDest.Visible = True
     vslPicDest.Enabled = True
  Else
     'Disable the vertical bar
     vslPicDest.Max = 0
     vslPicDest.Visible = False
     vslPicDest.Enabled = False
  End If

End Sub


