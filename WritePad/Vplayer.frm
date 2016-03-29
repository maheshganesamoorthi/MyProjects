VERSION 5.00
Object = "{C1A8AF28-1257-101B-8FB0-0020AF039CA3}#1.1#0"; "MCI32.OCX"
Object = "{27395F88-0C0C-101B-A3C9-08002B2F49FB}#1.1#0"; "PICCLP32.OCX"
Begin VB.Form Vplayer 
   Caption         =   "Video Player"
   ClientHeight    =   5745
   ClientLeft      =   165
   ClientTop       =   855
   ClientWidth     =   7860
   Icon            =   "Vplayer.frx":0000
   LinkTopic       =   "Form1"
   ScaleHeight     =   10710
   ScaleWidth      =   15240
   StartUpPosition =   3  'Windows Default
   Begin VB.Frame Frame2 
      BackColor       =   &H00C0C0FF&
      Caption         =   "Options :"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   4575
      Left            =   0
      TabIndex        =   10
      Top             =   5880
      Width           =   1935
      Begin VB.CommandButton Command5 
         Caption         =   "Mute"
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
         Left            =   240
         TabIndex        =   16
         Top             =   2760
         Width           =   1335
      End
      Begin VB.CommandButton Command4 
         Caption         =   "Exit"
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
         Left            =   240
         TabIndex        =   15
         Top             =   3360
         Width           =   1335
      End
      Begin VB.CommandButton Command3 
         Caption         =   "Back"
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
         Left            =   240
         TabIndex        =   14
         Top             =   1560
         Width           =   1335
      End
      Begin VB.CommandButton Command2 
         Caption         =   "Next"
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
         Left            =   240
         TabIndex        =   13
         Top             =   2160
         Width           =   1335
      End
      Begin VB.CommandButton play 
         Caption         =   "Play"
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
         Left            =   240
         TabIndex        =   12
         Top             =   360
         Width           =   1335
      End
      Begin VB.CommandButton stop1 
         Caption         =   "Stop"
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
         Left            =   240
         TabIndex        =   11
         Top             =   960
         Width           =   1335
      End
   End
   Begin VB.Frame Frame3 
      BackColor       =   &H00C0C0FF&
      Caption         =   "File Types"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1455
      Left            =   0
      TabIndex        =   8
      Top             =   4440
      Width           =   1935
      Begin VB.ComboBox Combo1 
         Height          =   315
         Left            =   120
         TabIndex        =   9
         Text            =   "All File Types"
         Top             =   360
         Width           =   1575
      End
      Begin VB.Label lblElapsedTime 
         BackColor       =   &H00C0C0FF&
         Caption         =   "    Label1"
         ForeColor       =   &H00000000&
         Height          =   375
         Left            =   120
         TabIndex        =   18
         Top             =   840
         Width           =   1095
      End
      Begin VB.Label lblTotalTime 
         BackColor       =   &H00C0C0FF&
         Caption         =   "/  00:00"
         ForeColor       =   &H00000000&
         Height          =   375
         Left            =   1200
         TabIndex        =   17
         Top             =   840
         Width           =   615
      End
   End
   Begin VB.Frame Frame1 
      BackColor       =   &H00C0C0FF&
      Caption         =   "Vedio && Song Select:"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   4455
      Left            =   0
      TabIndex        =   3
      Top             =   0
      Width           =   1935
      Begin VB.DriveListBox Drive1 
         Height          =   315
         Left            =   120
         TabIndex        =   7
         Top             =   240
         Width           =   1695
      End
      Begin VB.DirListBox Dir1 
         Height          =   1665
         Left            =   120
         TabIndex        =   6
         Top             =   600
         Width           =   1695
      End
      Begin VB.TextBox Text1 
         Height          =   375
         Left            =   120
         TabIndex        =   5
         Top             =   3960
         Width           =   1695
      End
      Begin VB.FileListBox File1 
         Height          =   1650
         Left            =   120
         TabIndex        =   4
         Top             =   2280
         Width           =   1695
      End
   End
   Begin VB.CommandButton cmdopen 
      Caption         =   "cmdopen"
      Height          =   495
      Left            =   3240
      TabIndex        =   2
      Top             =   6960
      Visible         =   0   'False
      Width           =   615
   End
   Begin VB.Timer Timer1 
      Interval        =   1
      Left            =   8280
      Top             =   7200
   End
   Begin PicClip.PictureClip pc 
      Left            =   6120
      Top             =   8640
      _ExtentX        =   1508
      _ExtentY        =   1296
      _Version        =   393216
   End
   Begin MCI.MMControl MMPlayer 
      Height          =   495
      Left            =   4320
      TabIndex        =   1
      Top             =   7080
      Visible         =   0   'False
      Width           =   3540
      _ExtentX        =   6244
      _ExtentY        =   873
      _Version        =   393216
      DeviceType      =   ""
      FileName        =   ""
   End
   Begin VB.PictureBox MediaPlayer1 
      Height          =   5715
      Left            =   1920
      ScaleHeight     =   5655
      ScaleWidth      =   5805
      TabIndex        =   0
      TabStop         =   0   'False
      Top             =   0
      Width           =   5865
   End
   Begin VB.Label Label1 
      BackColor       =   &H00000000&
      Caption         =   "Label1"
      Height          =   3735
      Left            =   3960
      TabIndex        =   19
      Top             =   4680
      Width           =   6015
   End
   Begin VB.Menu mnufile 
      Caption         =   "File"
      Begin VB.Menu mnuexit 
         Caption         =   "Exit"
         Begin VB.Menu mnuyes 
            Caption         =   "Yes"
            Shortcut        =   ^X
         End
         Begin VB.Menu mnuno 
            Caption         =   "No"
         End
      End
   End
   Begin VB.Menu mnuplay 
      Caption         =   "Play"
      Begin VB.Menu mnupplay 
         Caption         =   "Play            - Space Bar -"
      End
      Begin VB.Menu mnupause 
         Caption         =   "Pause         - Space Bar -"
      End
      Begin VB.Menu mnustop 
         Caption         =   "Stop"
         Shortcut        =   ^S
      End
      Begin VB.Menu mnurewind 
         Caption         =   "Rewind"
         Shortcut        =   ^R
      End
      Begin VB.Menu mnuforward 
         Caption         =   "Forward"
         Shortcut        =   ^F
      End
      Begin VB.Menu line1 
         Caption         =   "-"
      End
      Begin VB.Menu mnunext 
         Caption         =   "Play Next "
         Shortcut        =   ^N
      End
      Begin VB.Menu mnuback 
         Caption         =   "Play Back"
         Shortcut        =   ^B
      End
      Begin VB.Menu line2 
         Caption         =   "-"
      End
      Begin VB.Menu mnumute 
         Caption         =   "Mute"
         Shortcut        =   ^M
      End
   End
   Begin VB.Menu mnuview 
      Caption         =   "Display"
      Begin VB.Menu mnu50 
         Caption         =   "50%"
         Shortcut        =   {F1}
      End
      Begin VB.Menu mnu100 
         Caption         =   "100%"
         Shortcut        =   {F2}
      End
      Begin VB.Menu line3 
         Caption         =   "-"
      End
      Begin VB.Menu MNUDEFAULT 
         Caption         =   "Fit to Window - Default"
         Shortcut        =   {F4}
      End
      Begin VB.Menu mnuzoom 
         Caption         =   "Fit to Window - 2 x Zoom"
         Shortcut        =   {F5}
      End
      Begin VB.Menu mnufullzoom 
         Caption         =   "Fit to Window - Full Zoom"
         Shortcut        =   {F6}
      End
      Begin VB.Menu mnuline4 
         Caption         =   "-"
      End
      Begin VB.Menu mnuTheatreMode 
         Caption         =   "Theatre Mode"
         Shortcut        =   {F7}
      End
      Begin VB.Menu mnufullview 
         Caption         =   "Full Window View"
         Shortcut        =   {F8}
      End
      Begin VB.Menu mnuline5 
         Caption         =   "-"
      End
      Begin VB.Menu mnufullscreen 
         Caption         =   "Fullscreen          - Alt+Enter-"
      End
      Begin VB.Menu line7 
         Caption         =   "-"
      End
      Begin VB.Menu mnuVideoStatistics 
         Caption         =   "Video Statistics"
      End
   End
End
Attribute VB_Name = "Vplayer"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Public SwitchVal As Boolean
Dim GenresTypes
Dim Min As Integer
Dim Sec As Integer
Dim cmclick
Dim cc
Dim Interval As Integer
Dim FileN As String                'Stores Filenames.
Dim FileNum As Double
Dim FileName As String
Dim LeftHandSize As Integer
Dim FileOpen As Boolean
Private Declare Function SendMessage& Lib "user32" Alias "SendMessageA" (ByVal hwnd&, ByVal wMsg&, ByVal wParam&, lParam As Any)
Private Declare Function ReleaseCapture Lib "user32" () As Long




Private Sub Command1_Click()
On Error Resume Next
'If MediaPlayer1.Width < 11895 And MediaPlayer1.Height < 10000 Then
MediaPlayer1.Width = 11895
MediaPlayer1.Height = 10710
'Vplayer.WindowState = vbMaximized
'Else
'GoTo err
'End If
err:
End Sub

Private Sub Command2_Click()
On Error Resume Next
'a = File1.ListIndex
'a = Count(file.ListIndex)
'File1.ListIndex = File1.ListIndex + 1
Label1.Visible = False
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
With MediaPlayer1

        .FileName = FileName
        .autoStart = True
        cmdopen.Caption = "Close"
End With
'AudioPlayer.Command = "Stop"
'AudioPlayer.Command = "Close"
'AudioPlayer.FileName = Text1.Text
'AudioPlayer.Command = "Open"
'AudioPlayer.Command = "Play"

End If
err:
    'AudioPlayer.FileName = spev
    'AudioPlayer.Command = "play"
End Sub







Private Sub Command3_Click()
On Error Resume Next
'If Text1.Text = "" Then
'GoTo err
'Else
Label1.Visible = False
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
'AudioPlayer.FileName = Text1.Text
'AudioPlayer.Command = "Open"
'AudioPlayer.Command = "Play"
With MediaPlayer1

        .FileName = FileName
        .autoStart = True
        cmdopen.Caption = "Close"
End With
End If

err:    'AudioPlayer.FileName = spev
    'AudioPlayer.Command = "play"
End Sub

Private Sub Command4_Click()
On Error Resume Next
cmclick = 1
With MediaPlayer1

        .FileName = FileName
        .autoStart = False
        cmdopen.Caption = "open"

End With
With MediaPlayer1

        .FileName = FileName
        .autoStart = False
        cmdopen.Caption = "open"

End With
Unload Me
End Sub

Private Sub Command5_Click()
On Error Resume Next
Label1.Visible = False
If MediaPlayer1.mute = True Then
  Command5.Caption = "Mute"
  mnumute.Caption = "Mute"
  MediaPlayer1.mute = False
 Else
  MediaPlayer1.mute = True
  Command5.Caption = "UnMute"
    mnumute.Caption = "UnMute"
 End If
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

Private Sub File1_Click()
'Dim temp As String
'On Error Resume Next
'EraseTXTBoxes

'If Right(Dir1.Path, 1) = "\" Then
 '   FileName = Dir1.Path & File1.FileName
'Else
 '   FileName = Dir1.Path & "\" & File1.FileName
'End If
 'Text1.Text = FileName
'Open FileName For Binary As #1
 End Sub
Private Sub Dir1_Change()
On Error Resume Next
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

Private Sub cmdOpen_Click()
On Error Resume Next
With MediaPlayer1
    If Not FileOpen Then
        .FileName = FileName
        .autoStart = False
        cmdopen.Caption = "Close"
    Timer1.Enabled = True
    Else
        .FileName = ""
        cmdopen.Caption = "Open"
   Timer1.Enabled = False
    
  StartA = 0
    End If
End With
End Sub

Private Sub File1_DblClick()
On Error Resume Next
Label1.Visible = False
'With MediaPlayer1

'        .FileName = FileName
 '       .AutoStart = True
  '      cmdopen.Caption = "Close"

'End With
FileNum = File1.ListIndex

'Opens the file in Object MPlayer1. Gets
'the File Name from the variable FileN.
If File1.FileName = "" Then
    MsgBox "Please select a file!", vbInformation, App.Title
Else
    MediaPlayer1.Open (FileN & File1.list(FileNum))
    'MediaPlayer1.URL = FileN & File1.list(FileNum)
     Text1.text = FileN
    'Sets the value of variable PlayNext to true
    'so that the program knows that it has to play
    'the next file after playing this file .
    PlayNext = True
End If
End Sub
Public Sub DisplayFileType()
'Sets the File Pattern of Object File1.
On Error Resume Next
'Displays all file types
If Combo1.text = "All File Types" Then
    File1.Pattern = "*.mpg;*.mpeg;*.m1v;*.avi;*.dat;*.asf;*.wmv;*.wm;*.mp3;*.mp2;*.wma;*.cda;*.wav;*.mid;*.midi;*.rmi;*.snd;*.au;*.aif;*.aifc;*.aiff"
Else
'Displays Only 1 file type
    File1.Pattern = Combo1.text
End If

End Sub

Private Sub File1_PathChange()
'Creates a full path of the file and saves
'it in the string variable FileN.
On Error Resume Next
If Right(File1.Path, 1) = "\" Then
    FileN = File1.Path
Else
    FileN = File1.Path & "\"
End If
End Sub
Private Sub Combo1_Click()
On Error Resume Next
Call DisplayFileType
End Sub
Private Sub Form_Load()
'Vplayer.WindowState = vbMaximized
On Error Resume Next
cmclick = 0
cc = 0
Interval = 10
Label1.Visible = True
'Vplayer.WindowState = vbMaximized
'Vplayer.Width = 9570
'Vplayer.Height = 10335
Frame2.Visible = False
MediaPlayer1.Height = 5715
MediaPlayer1.Width = 5500
Vplayer.WindowState = vbNormal
'Vplayer.Height = 6555
'Vplayer.Width = 7710
MediaPlayer1.AutoSize = False
'LeftHandSide (True)
MediaPlayer1.DisplaySize = mpDefaultSize
Combo1.list(0) = "All File Types"
Combo1.list(1) = "*.mpg"
Combo1.list(2) = "*.mpeg"
Combo1.list(3) = "*.m1v"
Combo1.list(4) = "*.avi"
Combo1.list(5) = "*.dat"
Combo1.list(6) = "*.asf"
Combo1.list(7) = "*.wmv"
Combo1.list(8) = "*.wm"
Combo1.list(9) = "*.mp3"
Combo1.list(10) = "*.mp2"
Combo1.list(11) = "*.wma"
Combo1.list(12) = "*.cda"
Combo1.list(13) = "*.wav"
Combo1.list(14) = "*.mid"
Combo1.list(15) = "*.midi"
Combo1.list(16) = "*.rmi"
Combo1.list(17) = "*.snd"
Combo1.list(18) = "*.au"
Combo1.list(19) = "*.aif"
Combo1.list(20) = "*.aifc"
Combo1.list(21) = "*.aiff"
Combo1.text = "All File Types"
End Sub
Private Sub Form_Resize()
On Error Resume Next
  MediaPlayer1.AutoSize = False
  Label1.Visible = False
  MediaPlayer1.DisplaySize = mpDefaultSize
  'MediaPlayer1.fullScreen = True
 ' MediaPlayer1.Left = 2040
  'MediaPlayer1.Height = 10695
  'MediaPlayer1.Width = 13095
  Frame2.Visible = True
  LeftHandSide (True)
End Sub

Private Sub mnu100_Click()
On Error Resume Next
Label1.Visible = False
   MediaPlayer1.AutoSize = True
    Frame2.Visible = True
    MediaPlayer1.DisplaySize = mpDefaultSize
 LeftHandSide (True)
End Sub

Private Sub mnu50_Click()
On Error Resume Next
Label1.Visible = False
    MediaPlayer1.AutoSize = True
    Frame2.Visible = True
    MediaPlayer1.DisplaySize = mpHalfSize
    LeftHandSide (True)
   End Sub



Private Sub mnuback_Click()
On Error Resume Next
Label1.Visible = False
Command3_Click
End Sub

Private Sub MNUDEFAULT_Click()
On Error Resume Next
  MediaPlayer1.AutoSize = False
  Label1.Visible = False
  MediaPlayer1.DisplaySize = mpDefaultSize
  Frame2.Visible = True
  LeftHandSide (True)

End Sub



Private Sub mnuforward_Click()
Label1.Visible = False
On Error Resume Next
Interval = 10
MediaPlayer1.currentPosition = MediaPlayer1.currentPosition + Interval
End Sub

Private Sub mnufullscreen_Click()
Label1.Visible = False
MediaPlayer1.DisplaySize = mpFullScreen
End Sub

Private Sub mnufullview_Click()
On Error Resume Next
  MediaPlayer1.AutoSize = False
  Label1.Visible = False
  LeftHandSide (False)
  MediaPlayer1.DisplaySize = mpFitToSize
  'MediaPlayer1.fullScreen = True
End Sub

Private Sub mnufullzoom_Click()
On Error Resume Next
MediaPlayer1.AutoSize = False
Frame2.Visible = True
Label1.Visible = False
MediaPlayer1.DisplaySize = mpFitToSize
LeftHandSide (True)
End Sub





Private Sub mnumute_Click()
Label1.Visible = False
Command5_Click
End Sub

Private Sub mnunext_Click()
On Error Resume Next
Label1.Visible = False
Command2_Click
End Sub

Private Sub mnupause_Click()
On Error Resume Next
Label1.Visible = False
 MediaPlayer1.pause
 mnupplay.Enabled = True
 mnupause.Enabled = False
End Sub

Private Sub mnupplay_Click()
On Error Resume Next
Label1.Visible = False
File1_DblClick
End Sub

Private Sub mnurewind_Click()
On Error Resume Next
Label1.Visible = False
On Error Resume Next
MediaPlayer1.currentPosition = MediaPlayer1.currentPosition - Interval
End Sub
Private Sub mnustop_Click()
On Error Resume Next
Label1.Visible = False
MediaPlayer1.Stop
End Sub

Private Sub mnuTheatreMode_Click()
On Error Resume Next
  MediaPlayer1.AutoSize = False
  Label1.Visible = False
 LeftHandSide (False)
  MediaPlayer1.DisplaySize = mpDefaultSize
 End Sub

Private Sub mnuVideoStatistics_Click()
On Error Resume Next
MediaPlayer1.ShowDialog mpShowDialogStatistics
Label1.Visible = False
End Sub

Private Sub mnuyes_Click()
Unload Me
End Sub

Private Sub mnuzoom_Click()
On Error Resume Next
  MediaPlayer1.AutoSize = False
  Frame2.Visible = True
  Label1.Visible = False
  MediaPlayer1.DisplaySize = mpDoubleSize
 LeftHandSide (True)
End Sub





Private Sub play_Click()
File1_DblClick
End Sub

Private Sub stop1_Click()
mnustop_Click
End Sub

Private Sub Timer1_Timer()
On Error Resume Next
Min = MediaPlayer1.currentPosition \ 60
Sec = MediaPlayer1.currentPosition - (Min * 60)
If Min > 0 Or Sec > 0 Then
    lblElapsedTime.Caption = "Time  :  " & Format(Min, "0#") _
        & ":" & Format(Sec, "0#")
Else
    lblElapsedTime.Caption = "Time  :  00:00"
End If
End Sub


Public Function LeftHandSide(Value As Boolean)
'Hides or shows the Left Hand side
'to True or False From the value
'recieved by the Function.

Drive1.Visible = Value
Dir1.Visible = Value
Text1.Visible = Value
File1.Visible = Value
play.Visible = Value
stop1.Visible = Value
Command2.Visible = Value
Command3.Visible = Value
Command4.Visible = Value
Command5.Visible = Value
Frame1.Visible = Value
Frame2.Visible = Value
Frame3.Visible = Value
Combo1.Visible = Value
lblElapsedTime.Visible = Value
lblTotalTime.Visible = Value
If Value = True Then
'Sets the properties and aligns the following
    'objects whenever the form resizes.
    Frame1.Width = 1935
    Frame2.Width = 1935
    Frame3.Width = 1935
    'Properties for Object Drive1.
    Drive1.Width = 1695
    
    'Properties for Object Dir1.
    Dir1.Width = Drive1.Width
        
    
    
    'Properties for Object File1.
    File1.Width = Dir1.Width
   ' File1.Height = Me.ScaleHeight - File1.Top
    
    'Properties for Object  MediaPlayer1.
    MediaPlayer1.Left = Frame1.Width
    If MediaPlayer1.AutoSize = False Then
         MediaPlayer1.Width = ScaleWidth - Drive1.Width
         MediaPlayer1.Height = ScaleHeight
    End If

Else
 
    MediaPlayer1.Left = 0
    MediaPlayer1.Width = ScaleWidth
    MediaPlayer1.Height = ScaleHeight
        
End If
End Function




