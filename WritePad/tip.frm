VERSION 5.00
Begin VB.Form tip 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Tip of the Day"
   ClientHeight    =   2625
   ClientLeft      =   45
   ClientTop       =   405
   ClientWidth     =   5385
   Icon            =   "tip.frx":0000
   LinkTopic       =   "Form2"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   2625
   ScaleWidth      =   5385
   ShowInTaskbar   =   0   'False
   StartUpPosition =   1  'CenterOwner
   Begin VB.CommandButton Command1 
      Caption         =   "Cancel"
      Height          =   375
      Left            =   4080
      TabIndex        =   5
      Top             =   1320
      WhatsThisHelpID =   2110
      Width           =   1215
   End
   Begin VB.CommandButton cmdPrevious 
      Caption         =   "Previous"
      Height          =   375
      Left            =   4080
      TabIndex        =   4
      Top             =   840
      WhatsThisHelpID =   2110
      Width           =   1215
   End
   Begin VB.CommandButton cmdNext 
      Caption         =   "Next"
      Height          =   375
      Left            =   4080
      TabIndex        =   3
      Top             =   360
      WhatsThisHelpID =   2110
      Width           =   1215
   End
   Begin VB.PictureBox Picture1 
      BackColor       =   &H00FFFFFF&
      Height          =   2355
      Left            =   120
      ScaleHeight     =   2295
      ScaleWidth      =   3795
      TabIndex        =   0
      Top             =   120
      WhatsThisHelpID =   2110
      Width           =   3855
      Begin VB.PictureBox Picture2 
         Height          =   495
         Left            =   120
         Picture         =   "tip.frx":08CA
         ScaleHeight     =   435
         ScaleWidth      =   435
         TabIndex        =   6
         Top             =   120
         Width           =   495
      End
      Begin VB.Label Label2 
         BackColor       =   &H00FFFFFF&
         Caption         =   " Did you Know  . . ."
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
         Left            =   960
         TabIndex        =   7
         Top             =   240
         Width           =   2415
      End
      Begin VB.Label Label1 
         BackColor       =   &H00FFFFFF&
         Caption         =   "   "
         Height          =   1215
         Left            =   120
         TabIndex        =   2
         Top             =   840
         WhatsThisHelpID =   2110
         Width           =   3495
      End
      Begin VB.Label lblTipText 
         BackColor       =   &H00FFFFFF&
         Height          =   1635
         Left            =   120
         TabIndex        =   1
         Top             =   840
         WhatsThisHelpID =   2110
         Width           =   3255
      End
   End
End
Attribute VB_Name = "tip"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

' The in-memory database of tips.
Dim Tips As New Collection
Dim A As Integer
Dim b As Integer
Dim c As Integer
' Index in collection of tip currently being displayed.
Dim CurrentTip As Long


Private Sub cmdNext_Click()
On Error GoTo err
A = Tips.Count
b = A - 1
'If CurrentTip = 11 Then
'CurrentTip = 1
If CurrentTip = A Then
 CurrentTip = 1
 Label1.Caption = Tips.Item(CurrentTip)
'Label1.Caption = Tips.Item(CurrentTip)
Else
    CurrentTip = CurrentTip + 1
    Label1.Caption = Tips.Item(CurrentTip)
End If
err:
 End Sub

Private Sub cmdPrevious_Click()

If CurrentTip = 0 Then
'CurrentTip = 11
'Label1.Caption = Tips.Item(CurrentTip)
CurrentTip = 10
Label1.Caption = Tips.Item(CurrentTip)
ElseIf CurrentTip = 1 Then
'CurrentTip = 11
'Label1.Caption = Tips.Item(CurrentTip)
CurrentTip = 10
Label1.Caption = Tips.Item(CurrentTip)
Else
    CurrentTip = CurrentTip - 1
    Label1.Caption = Tips.Item(CurrentTip)
End If
err:
End Sub

Private Sub Command1_Click()
Unload Me
End Sub

Private Sub Form_Load()
 
CurrentTip = 0

'Tips added
Tips.Add "That you can create a new document by click NEW on the File Menu?"
Tips.Add "That you can select all text by pressing CTRL + A"
Tips.Add "That You can design web pages by starting the HTML Document from the File menu by click HTML Document or CTRL + H"
Tips.Add "That you can display the clock by clicking the tools menu and then Clock"
Tips.Add "That You can Insert the Date into your document?"
Tips.Add "That You Can insert a Image File by Click on Picture on the Format Menu --> Insert --> Picture"
Tips.Add "That You can view the Vedio by clicking tools menu and then Vedio Player"
Tips.Add "That You can search your document for a word"
Tips.Add "That you can add tools in the document by clicking Tools --> Option --> Add tools  or pressing CTRL + T "
Tips.Add "That you can Insert symbol into your document by click Format --> insert --> symbols"
 
CurrentTip = CurrentTip + 1
Label1.Caption = Tips.Item(CurrentTip)
End Sub



