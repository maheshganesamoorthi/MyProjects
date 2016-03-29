VERSION 5.00
Begin VB.Form insert 
   Caption         =   "Insert Picture"
   ClientHeight    =   5595
   ClientLeft      =   60
   ClientTop       =   420
   ClientWidth     =   7200
   Icon            =   "insert.frx":0000
   LinkTopic       =   "Form2"
   ScaleHeight     =   5595
   ScaleWidth      =   7200
   StartUpPosition =   3  'Windows Default
   Begin VB.PictureBox Picture1 
      AutoSize        =   -1  'True
      Height          =   255
      Left            =   2400
      ScaleHeight     =   195
      ScaleWidth      =   195
      TabIndex        =   5
      Top             =   240
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.DriveListBox DriveList 
      Height          =   315
      Left            =   120
      TabIndex        =   4
      Top             =   240
      Width           =   2175
   End
   Begin VB.DirListBox DirList 
      Height          =   990
      Left            =   120
      TabIndex        =   3
      Top             =   600
      Width           =   2175
   End
   Begin VB.FileListBox FileList 
      Height          =   2625
      Left            =   120
      TabIndex        =   2
      Top             =   1680
      Width           =   2175
   End
   Begin VB.ComboBox PatternCombo 
      Height          =   315
      Left            =   120
      TabIndex        =   1
      Text            =   "Combo1"
      Top             =   4440
      Width           =   2175
   End
   Begin VB.CommandButton insert 
      Caption         =   "Insert"
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
      Left            =   3360
      TabIndex        =   0
      Top             =   4920
      Width           =   1935
   End
   Begin VB.Image Image1 
      Height          =   4455
      Left            =   2400
      Stretch         =   -1  'True
      Top             =   240
      Width           =   4575
   End
End
Attribute VB_Name = "insert"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim flag As Boolean
Private Sub insert_Click()
On Error GoTo SendError
' Copy the picture into the clipboard.
    If Clipboard.GetFormat(vbCFText) = True Then
        strSaveClipBoard = Clipboard.GetText
        flag = True
    End If
    
    Clipboard.Clear
    Clipboard.SetData Image1.Picture
    ' Paste the picture into the RichTextBox.
    SendMessage frmMain1.RTBox.hWnd, WM_PASTE, 0, 0&
    frmMain1.RTBox.SetFocus
    If flag = True Then
        Clipboard.Clear
        Clipboard.SetText strSaveClipBoard
    Else
        Clipboard.Clear
    End If
    Unload Me
  
Exit Sub
SendError:
End Sub

Private Sub FileList_dblClick()
    insert_Click
End Sub

Private Sub DirList_Change()
    FileList.Path = DirList.Path
End Sub

Private Sub DriveList_Change()
    On Error GoTo DriveError
    DirList.Path = DriveList.Drive
    Exit Sub

DriveError:
    DriveList.Drive = DirList.Path
    Exit Sub
End Sub


Private Sub FileList_Click()
Dim FName As String
    On Error GoTo LoadPictureError
    FName = FileList.Path + "\" + FileList.FileName
    'Caption = "BWord Insert Picture" & " [" & FName & "]"
    MousePointer = vbHourglass
    DoEvents
    Picture1.Picture = LoadPicture(FName)
    Image1.Picture = LoadPicture(FName)
    Image2.Picture = LoadPicture(FName)
    MousePointer = vbDefault
    Exit Sub
LoadPictureError:
    Beep
    MousePointer = vbDefault
    'Caption = "BWord Insert Picture" & " [Invalid picture]"
    Exit Sub
End Sub

Private Sub Form_Load()
      PatternCombo.AddItem "Bitmaps (*.bmp)"
    PatternCombo.AddItem "GIF (*.gif)"
    PatternCombo.AddItem "JPEG (*.jpg)"
    PatternCombo.AddItem "Matafiles (*.wmf)"
    PatternCombo.AddItem "TIF (*.tif)"
    PatternCombo.AddItem "Graphic (*.gif;*.jpg;*.bmp;*.wmf;*.tif)"
    PatternCombo.ListIndex = 0
End Sub



Private Sub Image1_dblClick()
    insert_Click
End Sub

Private Sub PatternCombo_Click()
Dim pat As String
Dim p1 As Integer
Dim p2 As Integer
    pat = PatternCombo.list(PatternCombo.ListIndex)
    p1 = InStr(pat, "(")
    p2 = InStr(pat, ")")
    FileList.Pattern = Mid$(pat, p1 + 1, p2 - p1 - 1)
End Sub

Private Sub Picture1_DblClick()
    insert_Click
End Sub


