VERSION 5.00
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "COMDLG32.OCX"
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCTL.OCX"
Object = "{EAB22AC0-30C1-11CF-A7EB-0000C05BAE0B}#1.1#0"; "shdocvw.dll"
Begin VB.Form webbrowserfrm 
   Caption         =   "Web Browser"
   ClientHeight    =   5280
   ClientLeft      =   165
   ClientTop       =   825
   ClientWidth     =   8835
   Icon            =   "web.frx":0000
   LinkTopic       =   "Form2"
   ScaleHeight     =   5280
   ScaleWidth      =   8835
   StartUpPosition =   3  'Windows Default
   Begin MSComDlg.CommonDialog cmdopen 
      Left            =   1080
      Top             =   1200
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
   End
   Begin MSComctlLib.StatusBar StatusBar1 
      Align           =   2  'Align Bottom
      Height          =   255
      Left            =   0
      TabIndex        =   3
      Top             =   5025
      Width           =   8835
      _ExtentX        =   15584
      _ExtentY        =   450
      _Version        =   393216
      BeginProperty Panels {8E3867A5-8586-11D1-B16A-00C0F0283628} 
         NumPanels       =   1
         BeginProperty Panel1 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
         EndProperty
      EndProperty
   End
   Begin VB.TextBox txt 
      Height          =   345
      Left            =   1920
      TabIndex        =   2
      Text            =   "http://"
      Top             =   480
      Width           =   6465
   End
   Begin MSComctlLib.ImageList ImageList1 
      Left            =   2160
      Top             =   7200
      _ExtentX        =   1005
      _ExtentY        =   1005
      BackColor       =   -2147483643
      ImageWidth      =   16
      ImageHeight     =   16
      MaskColor       =   12632256
      _Version        =   393216
      BeginProperty Images {2C247F25-8591-11D1-B16A-00C0F0283628} 
         NumListImages   =   8
         BeginProperty ListImage1 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "web.frx":038A
            Key             =   "back"
         EndProperty
         BeginProperty ListImage2 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "web.frx":0724
            Key             =   "forward"
         EndProperty
         BeginProperty ListImage3 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "web.frx":0ABE
            Key             =   "home"
         EndProperty
         BeginProperty ListImage4 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "web.frx":0E58
            Key             =   "refresh"
         EndProperty
         BeginProperty ListImage5 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "web.frx":11F2
            Key             =   "search"
         EndProperty
         BeginProperty ListImage6 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "web.frx":158C
            Key             =   "stop"
         EndProperty
         BeginProperty ListImage7 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "web.frx":1926
            Key             =   "Exit"
         EndProperty
         BeginProperty ListImage8 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "web.frx":1CC0
            Key             =   ""
         EndProperty
      EndProperty
   End
   Begin MSComctlLib.Toolbar Toolbar1 
      Align           =   1  'Align Top
      Height          =   360
      Left            =   0
      TabIndex        =   1
      Top             =   0
      Width           =   8835
      _ExtentX        =   15584
      _ExtentY        =   635
      ButtonWidth     =   609
      ButtonHeight    =   582
      Appearance      =   1
      Style           =   1
      ImageList       =   "ImageList1"
      _Version        =   393216
      BeginProperty Buttons {66833FE8-8583-11D1-B16A-00C0F0283628} 
         NumButtons      =   8
         BeginProperty Button1 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Key             =   "Back"
            Object.ToolTipText     =   "Back"
            ImageIndex      =   1
         EndProperty
         BeginProperty Button2 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Key             =   "Forward"
            Object.ToolTipText     =   "Forward"
            ImageIndex      =   2
         EndProperty
         BeginProperty Button3 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Key             =   "Go"
            Object.ToolTipText     =   "Go"
            ImageIndex      =   8
         EndProperty
         BeginProperty Button4 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Key             =   "Home"
            Object.ToolTipText     =   "Home"
            ImageIndex      =   3
         EndProperty
         BeginProperty Button5 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Key             =   "Stop"
            Object.ToolTipText     =   "Stop"
            ImageIndex      =   6
         EndProperty
         BeginProperty Button6 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Key             =   "Reload"
            Object.ToolTipText     =   "Reload"
            ImageIndex      =   4
         EndProperty
         BeginProperty Button7 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Key             =   "Search"
            Object.ToolTipText     =   "Search"
            ImageIndex      =   5
         EndProperty
         BeginProperty Button8 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Key             =   "Exit"
            Object.ToolTipText     =   "Exit"
            ImageIndex      =   7
         EndProperty
      EndProperty
   End
   Begin SHDocVwCtl.WebBrowser WebBrowser1 
      Height          =   4095
      Left            =   0
      TabIndex        =   0
      Top             =   840
      Width           =   8775
      ExtentX         =   15478
      ExtentY         =   7223
      ViewMode        =   1
      Offline         =   0
      Silent          =   0
      RegisterAsBrowser=   0
      RegisterAsDropTarget=   1
      AutoArrange     =   -1  'True
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
   Begin VB.Label Label1 
      Caption         =   "Enter the Address :"
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
      Left            =   120
      TabIndex        =   4
      Top             =   480
      Width           =   1695
   End
   Begin VB.Menu mnufile 
      Caption         =   "File"
      Begin VB.Menu mnuopen 
         Caption         =   "Open"
         Shortcut        =   ^O
      End
      Begin VB.Menu mnugo 
         Caption         =   "Go"
         Shortcut        =   ^G
      End
      Begin VB.Menu mnustop 
         Caption         =   "Stop"
         Shortcut        =   ^S
      End
      Begin VB.Menu mnuhome 
         Caption         =   "Home"
         Shortcut        =   ^H
      End
      Begin VB.Menu mnuback 
         Caption         =   "Back"
         Shortcut        =   ^B
      End
      Begin VB.Menu mnuforward 
         Caption         =   "Forward"
         Shortcut        =   ^F
      End
      Begin VB.Menu mnureload 
         Caption         =   "Refresh"
         Shortcut        =   ^R
      End
      Begin VB.Menu mnuexit 
         Caption         =   "Exit"
      End
   End
   Begin VB.Menu mnusearch 
      Caption         =   "Search"
      Begin VB.Menu mnugoogle 
         Caption         =   "Google"
      End
      Begin VB.Menu mnugooglemaps 
         Caption         =   "Google maps"
      End
      Begin VB.Menu mnugooglevideos 
         Caption         =   "Google videos"
      End
      Begin VB.Menu mnuwekipedia 
         Caption         =   "Wekipedia"
      End
      Begin VB.Menu mnuyahoo 
         Caption         =   "Yahoo"
      End
      Begin VB.Menu mnuyoutube 
         Caption         =   "You Tube"
      End
   End
   Begin VB.Menu mnuscreen 
      Caption         =   "Screen"
      Begin VB.Menu mnunormal 
         Caption         =   "Normal"
         Shortcut        =   {F6}
      End
      Begin VB.Menu mniminimized 
         Caption         =   "Minimized"
         Shortcut        =   {F7}
      End
      Begin VB.Menu mnumaximized 
         Caption         =   "Maximized"
         Shortcut        =   {F8}
      End
   End
End
Attribute VB_Name = "webbrowserfrm"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Form_Load()
'txt.Text = "http://"
mnuhome_Click
End Sub

Private Sub mniminimized_Click()
webbrowserfrm.WindowState = vbMinimized
End Sub

Private Sub mnuback_Click()
    On Error GoTo errStop
    WebBrowser1.GoBack
    
errStop:
    Exit Sub
End Sub

Private Sub mnuexit_Click()
Unload Me
End Sub

Private Sub mnuforward_Click()
    On Error GoTo errNstop
    WebBrowser1.GoForward
    
errNstop:
    Exit Sub
End Sub

Private Sub mnugo_Click()
   strTest = InputBox("Enter URL", "Go to URL")
            If strTest = "" Then
            GoTo err
            Else
                WebBrowser1.Navigate (strTest)
            End If
err:
MsgBox "Invalid Address", vbInformation, "Invalid"
End Sub

Private Sub mnugoogle_Click()
WebBrowser1.Navigate ("http://www.google.co.in")
txt.Text = "http://www.google.co.in"
End Sub

Private Sub mnugooglemaps_Click()
WebBrowser1.Navigate ("http://www.maps.google.com")
txt.Text = "http://www.maps.google.com"
End Sub

Private Sub mnuhome_Click()
 WebBrowser1.Navigate ("http://www.google.co.in")
 txt.Text = "http://www.google.co.in"
End Sub

Private Sub mnumaximized_Click()
webbrowserfrm.WindowState = vbMaximized
End Sub

Private Sub mnunormal_Click()
webbrowserfrm.WindowState = vbNormal
End Sub

Private Sub mnuopen_Click()
   On Error GoTo errHandle
    cmdopen.CancelError = True
    cmdopen.Filter = "Html Files (*.html)|*.html;*.htm|"
    cmdopen.ShowOpen
    WebBrowser1.Navigate (cmdopen.FileName)
    txt.Text = cmdopen.FileName
errHandle:
    Exit Sub
    
End Sub

Private Sub mnureload_Click()
WebBrowser1.Refresh
End Sub

Private Sub mnustop_Click()
 WebBrowser1.Stop
End Sub

Private Sub mnuwekipedia_Click()
WebBrowser1.Navigate ("http://www.wekipedia.com")
txt.Text = "http://www.wekipedia.com"
End Sub

Private Sub mnuyahoo_Click()
WebBrowser1.Navigate ("http://www.yahoo.co.in")
txt.Text = "http://www.yahoo.co.in"
End Sub

Private Sub mnuyoutube_Click()
WebBrowser1.Navigate ("http://www.youtube.com")
txt.Text = "http://www.youtube.com"
End Sub

Private Sub Toolbar1_ButtonClick(ByVal Button As MSComctlLib.Button)
On Error GoTo errHandle
    Select Case Button.Key
        Case "Back"
            WebBrowser1.GoBack
        Case "Forward"
            WebBrowser1.GoForward
        Case "Stop"
            WebBrowser1.Stop
        Case "Reload"
            WebBrowser1.Refresh
        Case "Home"
            WebBrowser1.Navigate ("http://www.google.co.in")
            txt.Text = "http://www.google.co.in"
        Case "Search"
             If txt.Text = "" Then
             WebBrowser1.Navigate ("http://www.google.co.in")
              txt.Text = "http://www.google.co.in"
             Else
             WebBrowser1.Navigate (txt.Text)
             End If
        Case "Go"
            strTest = InputBox("Enter URL", "Go to URL")
            If strTest = "" Then
               MsgBox "Invalid Address", vbInformation, "Invalid"
            Else
                WebBrowser1.Navigate (strTest)
            End If
        Case "Exit"
            mnuexit_Click
    End Select
    
errHandle:
    Exit Sub
End Sub
Private Sub WebBrowser1_NavigateComplete(ByVal pDisp As Object, URL As Variant)
     txt.Text = WebBrowser1.LocationURL
     webbrowserfrm.Caption = "Web Browser - " & WebBrowser1.LocationName
     txt.SelStart = 0
     txt.SelLength = Len(txt.Text)
     
End Sub
Private Sub Form_Resize()
On Error Resume Next
   WebBrowser1.Move 100, 100, Me.ScaleWidth - 200, Me.ScaleHeight - 200
   txt.Move 1920, 480, Me.ScaleWidth - 2000, 345
    WebBrowser1.Top = 840
    End Sub
