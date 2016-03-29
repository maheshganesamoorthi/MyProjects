VERSION 5.00
Object = "{C1A8AF28-1257-101B-8FB0-0020AF039CA3}#1.1#0"; "MCI32.OCX"
Begin VB.Form player 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Audio Player"
   ClientHeight    =   5535
   ClientLeft      =   45
   ClientTop       =   405
   ClientWidth     =   6375
   Icon            =   "player.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   5535
   ScaleWidth      =   6375
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton cmdopen 
      Caption         =   "Command3"
      Height          =   495
      Left            =   7920
      TabIndex        =   14
      Top             =   4920
      Visible         =   0   'False
      Width           =   495
   End
   Begin VB.CommandButton Exit 
      BackColor       =   &H00C0C0FF&
      Caption         =   "Exit"
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
      Left            =   5040
      Style           =   1  'Graphical
      TabIndex        =   11
      Top             =   1560
      Width           =   1095
   End
   Begin VB.CommandButton play 
      BackColor       =   &H00C0C0FF&
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
      Height          =   375
      Left            =   5040
      Style           =   1  'Graphical
      TabIndex        =   10
      Top             =   480
      Width           =   1095
   End
   Begin VB.CommandButton Command1 
      BackColor       =   &H00C0C0FF&
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
      Height          =   375
      Left            =   5040
      Style           =   1  'Graphical
      TabIndex        =   9
      Top             =   840
      Width           =   1095
   End
   Begin VB.CommandButton Command2 
      BackColor       =   &H00C0C0FF&
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
      Height          =   375
      Left            =   5040
      Style           =   1  'Graphical
      TabIndex        =   8
      Top             =   1200
      Width           =   1095
   End
   Begin VB.CommandButton Command3 
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
      Left            =   8400
      TabIndex        =   7
      Top             =   6000
      Visible         =   0   'False
      Width           =   975
   End
   Begin MCI.MMControl MediaPlayer11 
      Height          =   495
      Left            =   2640
      TabIndex        =   6
      Top             =   8160
      Visible         =   0   'False
      Width           =   3540
      _ExtentX        =   6244
      _ExtentY        =   873
      _Version        =   393216
      BorderStyle     =   0
      PrevEnabled     =   -1  'True
      NextEnabled     =   -1  'True
      PlayEnabled     =   -1  'True
      PauseEnabled    =   -1  'True
      BackEnabled     =   -1  'True
      StepEnabled     =   -1  'True
      StopEnabled     =   -1  'True
      RecordEnabled   =   -1  'True
      EjectEnabled    =   -1  'True
      Enabled         =   0   'False
      DeviceType      =   ""
      FileName        =   ""
   End
   Begin VB.Frame Frame3 
      Caption         =   "Play Song"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1095
      Left            =   5400
      TabIndex        =   5
      Top             =   7560
      Visible         =   0   'False
      Width           =   5055
   End
   Begin VB.DirListBox Dir1 
      Height          =   1215
      Left            =   240
      TabIndex        =   4
      Top             =   720
      Width           =   2415
   End
   Begin VB.FileListBox File1 
      Height          =   1650
      Left            =   2760
      TabIndex        =   3
      Top             =   360
      Width           =   2175
   End
   Begin VB.DriveListBox Drive1 
      BackColor       =   &H00FFFFFF&
      ForeColor       =   &H00000000&
      Height          =   315
      Left            =   240
      TabIndex        =   2
      Top             =   360
      Width           =   2415
   End
   Begin VB.TextBox Text1 
      Height          =   375
      Left            =   240
      TabIndex        =   1
      Top             =   2160
      Width           =   6015
   End
   Begin VB.Frame Frame1 
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
      Height          =   2655
      Left            =   120
      TabIndex        =   0
      Top             =   0
      Width           =   6255
   End
   Begin VB.PictureBox MediaPlayer1 
      Height          =   135
      Left            =   360
      ScaleHeight     =   75
      ScaleWidth      =   4755
      TabIndex        =   13
      Top             =   7320
      Width           =   4815
   End
   Begin VB.Label Label2 
      BackStyle       =   0  'Transparent
      Height          =   255
      Left            =   1920
      TabIndex        =   12
      Top             =   3120
      Width           =   2535
   End
   Begin VB.Image Image5 
      Height          =   570
      Left            =   4320
      Picture         =   "player.frx":038A
      Stretch         =   -1  'True
      Top             =   4440
      Width           =   765
   End
   Begin VB.Image Image4 
      Height          =   375
      Left            =   1320
      Picture         =   "player.frx":0798
      Top             =   4560
      Width           =   750
   End
   Begin VB.Image Image3 
      Appearance      =   0  'Flat
      Height          =   465
      Left            =   2160
      Picture         =   "player.frx":0B98
      Top             =   4440
      Width           =   990
   End
   Begin VB.Image Image2 
      Height          =   540
      Left            =   3240
      Picture         =   "player.frx":1031
      Stretch         =   -1  'True
      Top             =   4440
      Width           =   990
   End
   Begin VB.Image Image1 
      Height          =   2655
      Left            =   120
      Picture         =   "player.frx":1549
      Top             =   2760
      Width           =   6240
   End
   Begin VB.Label Label1 
      BackColor       =   &H0080FFFF&
      Height          =   135
      Left            =   360
      TabIndex        =   15
      Top             =   6600
      Visible         =   0   'False
      Width           =   4815
   End
End
Attribute VB_Name = "player"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
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

Private Sub aplayer_EndOfStream(ByVal Result As Long)
A = File1.ListCount
b = A - 1
c = A - b

If File1.ListIndex = b Then
GoTo err
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
  '      .AutoStart = True
   '     cmdopen.Caption = "Close"
'End With
aplayer.URL = FileName
'AudioPlayer.Command = "Stop"
'AudioPlayer.Command = "Close"
'AudioPlayer.FileName = Text1.text
'AudioPlayer.Command = "Open"
'AudioPlayer.Command = "Play"

End If
err:
End Sub


Private Sub Check1_Click()
If Check1.Value = 1 Then
 List1.Enabled = True
 Command4.Enabled = True
 Command5.Enabled = True
ElseIf Check1.Value <> 1 Then
 List1.Enabled = False
 Command4.Enabled = False
 Command5.Enabled = False
End If
End Sub

Private Sub Command1_Click()
'If Text1.Text = "" Then
'GoTo err
'Else
If File1.ListIndex = 0 Then
'MsgBox "Not song"
GoTo err
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
'AudioPlayer.FileName = Text1.text
'AudioPlayer.Command = "Open"
'AudioPlayer.Command = "Play"
'aplayer.URL = FileName

Label2.Caption = File1.Path
MediaPlayer11.Command = "Close"
MediaPlayer11.Refresh
MediaPlayer11.FileName = Text1.text
MediaPlayer11.Command = "open"
'MMControl1.hWndDisplay = Picture1.hWnd
MediaPlayer11.Command = "play"
'With MediaPlayer1

 '       .FileName = FileName
  '      .AutoStart = True
   '     cmdopen.Caption = "Close"
'End With
End If

err:    'AudioPlayer.FileName = spev
    'AudioPlayer.Command = "play"
End Sub

Private Sub Command2_Click()
'a = File1.ListIndex
'a = Count(file.ListIndex)
'File1.ListIndex = File1.ListIndex + 1
A = File1.ListCount
b = A - 1
c = A - b

If File1.ListIndex = b Then
GoTo err
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
  '      .AutoStart = True
   '     cmdopen.Caption = "Close"
'End With
'aplayer.URL = FileName
MediaPlayer11.Command = "Close"
MediaPlayer11.Refresh
MediaPlayer11.FileName = Text1.text
MediaPlayer11.Command = "open"
'MMControl1.hWndDisplay = Picture1.hWnd
MediaPlayer11.Command = "play"
Label2.Caption = File1.Path
Label2.Caption = File1.Path
'AudioPlayer.Command = "Stop"
'AudioPlayer.Command = "Close"
'AudioPlayer.FileName = Text1.text
'AudioPlayer.Command = "Open"
'AudioPlayer.Command = "Play"

End If
err:
    'AudioPlayer.FileName = spev
    'AudioPlayer.Command = "play"
End Sub






Private Sub Drive1_Change()
'this will change the path of the folders
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

Private Sub Exit_Click()
Unload Me
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
    
End With
Text1.text = FileName
End Sub
Private Sub Dir1_Change()
File1.FileName = Dir1.Path
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

  '      .FileName = FileName
  '      .AutoStart = True
  '      cmdopen.Caption = "Close"

'End With
'aplayer.URL = FileName

'End With
On Error GoTo errh
MediaPlayer11.Command = "Close"
MediaPlayer11.Refresh
ftp = Dir1.Path & "\" & File1.FileName
MediaPlayer11.FileName = ftp
MediaPlayer11.Command = "open"
'MMControl1.hWndDisplay = Picture1.hWnd
MediaPlayer11.Command = "play"
Label2.Caption = File1.Path
'File1.Enabled = False
Exit Sub
errh:
End Sub

Private Sub Form_Load()
cmclick = 0
End Sub



Private Sub Form_unLoad(Cancel As Integer)
cmclick = 1
MediaPlayer11.Command = "Close"
MediaPlayer11.Refresh
Unload Me
End Sub




Private Sub MediaPlayer11_Done(NotifyCode As Integer)
Command2_Click
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
Label2.Caption = File1.Path
End Sub









