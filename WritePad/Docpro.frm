VERSION 5.00
Begin VB.Form Docpro 
   Caption         =   "Document Properties"
   ClientHeight    =   4230
   ClientLeft      =   60
   ClientTop       =   420
   ClientWidth     =   6165
   Icon            =   "Docpro.frx":0000
   LinkTopic       =   "Form2"
   ScaleHeight     =   4230
   ScaleWidth      =   6165
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command1 
      Caption         =   "Close"
      Height          =   375
      Left            =   2520
      TabIndex        =   9
      Top             =   3720
      Width           =   1215
   End
   Begin VB.Frame Frame1 
      Caption         =   "Created :"
      Height          =   1455
      Left            =   120
      TabIndex        =   6
      Top             =   2160
      Width           =   5895
      Begin VB.Label Label6 
         Height          =   615
         Left            =   1080
         TabIndex        =   11
         Top             =   720
         Width           =   4695
      End
      Begin VB.Label Label5 
         Caption         =   "Location :"
         Height          =   255
         Left            =   240
         TabIndex        =   10
         Top             =   720
         Width           =   855
      End
      Begin VB.Label Label4 
         Height          =   255
         Left            =   1080
         TabIndex        =   8
         Top             =   360
         Width           =   2655
      End
      Begin VB.Label Label3 
         Caption         =   "Date :"
         Height          =   255
         Left            =   240
         TabIndex        =   7
         Top             =   360
         Width           =   615
      End
   End
   Begin VB.Frame Frame4 
      Caption         =   "Document :"
      Height          =   1215
      Left            =   120
      TabIndex        =   0
      Top             =   840
      Width           =   5895
      Begin VB.Label Label9 
         Caption         =   "Characters:"
         Height          =   255
         Left            =   240
         TabIndex        =   14
         Top             =   840
         Width           =   1215
      End
      Begin VB.Label Label8 
         Caption         =   "Number of Lines:"
         Height          =   255
         Left            =   240
         TabIndex        =   13
         Top             =   600
         Width           =   1215
      End
      Begin VB.Label Label7 
         Caption         =   "Word Count:"
         Height          =   255
         Left            =   240
         TabIndex        =   12
         Top             =   360
         Width           =   1215
      End
      Begin VB.Label lblChr 
         Caption         =   " "
         Height          =   255
         Left            =   1680
         TabIndex        =   3
         Top             =   840
         Width           =   2535
      End
      Begin VB.Label lblLine 
         Height          =   255
         Left            =   1680
         TabIndex        =   2
         Top             =   600
         Width           =   2535
      End
      Begin VB.Label lblWord 
         Height          =   255
         Left            =   1680
         TabIndex        =   1
         Top             =   360
         Width           =   2535
      End
   End
   Begin VB.Image Image1 
      Height          =   615
      Left            =   120
      Picture         =   "Docpro.frx":0CCA
      Stretch         =   -1  'True
      Top             =   120
      Width           =   495
   End
   Begin VB.Label Label2 
      Height          =   495
      Left            =   1680
      TabIndex        =   5
      Top             =   240
      Width           =   3495
   End
   Begin VB.Label Label1 
      Caption         =   "File Name:"
      Height          =   255
      Left            =   720
      TabIndex        =   4
      Top             =   240
      Width           =   855
   End
End
Attribute VB_Name = "Docpro"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
Unload Me
End Sub

Private Sub Form_Load()
  WordCount (frmmain1.RTBox.Text)
  CharCount (frmmain1.RTBox.Text)
  ShowLineNumber (frmmain1.RTBox.Text)
  Label2.Caption = frmmain1.Caption
  'lblWord.Caption = frmmain1.StatusBar1.Panels(4).Text
  'lblLine.Caption = frmmain1.StatusBar1.Panels(2).Text
  'lblChr.Caption = frmmain1.StatusBar1.Panels(5).Text
  Label4.Caption = Date
  Label6.Caption = frmmain1.ref.Text
End Sub
Private Sub WordCount(TextString As String)
 
Dim WordCounter As Double
Dim SpacePosition As Double

 SpacePosition = 1
 'Replace the Enter, Space, Tab and NewLine With " "
TextString = Replace(TextString, Chr(32), " ")
TextString = Replace(TextString, Chr(13), " ")
TextString = Replace(TextString, Chr(10), " ")
TextString = Replace(TextString, Chr(9), " ")


TextString = Trim(TextString)
 
If Len(TextString) > 0 Then WordCounter = 1
  Do While SpacePosition > 0
        SpacePosition = InStr(SpacePosition, TextString, " ")
        ' increase word counter
        If SpacePosition > 0 Then
            WordCounter = WordCounter + 1
            'skip additional spaces
            While Mid(TextString, SpacePosition, 1) = " "
                SpacePosition = SpacePosition + 1
           Wend
        End If
      Loop
      lblWord.Caption = WordCounter
     'frmmain1.StatusBar1.Panels(4).Text = " Words : " & WordCounter
 
   End Sub

Public Sub CharCount(CharString As String)

Dim CharNo As Long

'Replace Enter, Space, Tab and NewLine With ""
CharString = Replace(CharString, Chr(32), "")
CharString = Replace(CharString, Chr(13), "")
CharString = Replace(CharString, Chr(10), "")
CharString = Replace(CharString, Chr(9), "")

'Trim the String
CharString = Trim(CharString)

' Find the length of the String and show in Status Bar
CharNo = Len(CharString)
lblChr.Caption = CharNo
'frmmain1.StatusBar1.Panels(5).Text = " Characters : " & CharNo
End Sub


Public Sub ShowLineNumber(RT As String)

' Show Current Line Number in the Status Bar

Dim LineNumber As Long
       
    LineNumber = frmmain1.RTBox.GetLineFromChar(frmmain1.RTBox.SelStart)
    LineNumber = LineNumber + 1
    lblLine.Caption = LineNumber
   'StatusBar1.Panels(2).Text = " Lines :" & LineNumber
    
End Sub

