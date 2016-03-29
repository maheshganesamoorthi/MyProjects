VERSION 5.00
Begin VB.Form content 
   Caption         =   "Helps and Contents..."
   ClientHeight    =   7950
   ClientLeft      =   60
   ClientTop       =   420
   ClientWidth     =   5025
   Icon            =   "content.frx":0000
   LinkTopic       =   "Form2"
   ScaleHeight     =   7950
   ScaleWidth      =   5025
   StartUpPosition =   3  'Windows Default
   Begin VB.ListBox List1 
      Height          =   1620
      Left            =   120
      TabIndex        =   3
      Top             =   1800
      Width           =   4455
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Show Tips..."
      Height          =   495
      Left            =   1200
      TabIndex        =   2
      Top             =   5520
      Width           =   2055
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Close"
      Height          =   495
      Left            =   1200
      TabIndex        =   1
      Top             =   6720
      Width           =   2055
   End
   Begin VB.CommandButton Command3 
      Caption         =   "About..."
      Height          =   495
      Left            =   1200
      TabIndex        =   0
      Top             =   6120
      Width           =   2055
   End
   Begin VB.Image Image2 
      Height          =   615
      Left            =   3960
      Picture         =   "content.frx":038A
      Stretch         =   -1  'True
      Top             =   4440
      Width           =   615
   End
   Begin VB.Label l 
      Height          =   1215
      Left            =   120
      TabIndex        =   7
      Top             =   4080
      Width           =   4455
   End
   Begin VB.Label Label1 
      Caption         =   "Text writer 1.0"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   24
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   1200
      TabIndex        =   6
      Top             =   360
      Width           =   3375
   End
   Begin VB.Image Image1 
      Height          =   1095
      Left            =   120
      Picture         =   "content.frx":110D
      Stretch         =   -1  'True
      Top             =   120
      Width           =   975
   End
   Begin VB.Label Label2 
      Caption         =   "Index:"
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
      TabIndex        =   5
      Top             =   1440
      Width           =   735
   End
   Begin VB.Label Label3 
      Caption         =   "Contents:"
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
      Top             =   3720
      Width           =   1215
   End
End
Attribute VB_Name = "content"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
tip.Show
End Sub

Private Sub Command2_Click()
Unload Me
End Sub

Private Sub Command3_Click()
frmAbout.Show
End Sub
Private Sub Form_Load()
List1.AddItem "New"
List1.AddItem "Open"
List1.AddItem "Save"
List1.AddItem "Save as"
List1.AddItem "Page setup"
List1.AddItem "Print Preview"
List1.AddItem "Print"
List1.AddItem "Exit"

List1.AddItem "Undo"
List1.AddItem "Redo"
List1.AddItem "Select all"
List1.AddItem "Cut"
List1.AddItem "Copy"
List1.AddItem "Paste"
List1.AddItem "Clear"
List1.AddItem "Delete"
List1.AddItem "Find"
List1.AddItem "Find next"
List1.AddItem "Replace"

List1.AddItem "Fonts"
List1.AddItem "Word effects"
List1.AddItem "Cases"
List1.AddItem "Font sizes"
List1.AddItem "Color"
List1.AddItem "Back color"
List1.AddItem "HTML effects"
List1.AddItem "Table"
List1.AddItem "Other HTML effects"


List1.AddItem "Bullet"
List1.AddItem "Allign"
List1.AddItem "Insert"

List1.AddItem "Calculator"
List1.AddItem "Calendar"
List1.AddItem "Audio Player"
List1.AddItem "Vedio Player"
List1.AddItem "Clock"
List1.AddItem "Image viewer"
List1.AddItem "Add tools"
List1.AddItem "Remove tools"

List1.AddItem "Word count"
List1.AddItem "Line count"
List1.AddItem "Normal"
List1.AddItem "Minimized"
List1.AddItem "Maximized"

End Sub

Private Sub List1_Click()
Select Case List1.List(List1.ListIndex)
Case "New"
 l.Caption = " Create New TEXT ( or ) HTML Document"
Case "Open"
 l.Caption = " Open the Exisiting Document"
Case "Save"
 l.Caption = " Save the Current Document"
Case "Save as"
 l.Caption = " Save the Current Document to different location and different formats "
Case "Page setup"
 l.Caption = " Change Page Layout settings"
Case "Print Preview"
 l.Caption = " View the full pages"
Case "Print"
 l.Caption = " Print the Current document"
Case "Exit"
 l.Caption = " Close the Text writer 1.0"

Case "Undo"
 l.Caption = " Reverse the last actions"
Case "Redo"
 l.Caption = " Move to last actions"
Case "Select all"
 l.Caption = " Select the all text in the Document"
Case "Cut"
 l.Caption = " Cut the selection content in the Document"
Case "Copy"
  l.Caption = " Copy the selection content in the Document"
Case "Paste"
  l.Caption = " Insert the content from cut or copy"
Case "Clear"
  l.Caption = " Clear the select part in the document"
Case "Delete"
  l.Caption = " Clear the all content in the Document"
Case "Find"
  l.Caption = " Find the specific words"
Case "Find next"
  l.Caption = " Repeats the last find"
Case "Replace"
  l.Caption = " Replace the specfic text with other text"

Case "Fonts"
  l.Caption = " Change the font style, font size and font color "
Case "Word effects"
  l.Caption = " Change the text effects like Bold,Italic,Underline etc"
Case "Cases"
  l.Caption = " Changes the cases of text like upper case, lower case etc"
Case "Font sizes"
  l.Caption = " Changes the font size of the selected text"
Case "Color"
  l.Caption = " Changes the text color"
Case "Back color"
  l.Caption = " Changes the Back ground color"
Case "Bullet"
  l.Caption = " Insert the Bullet on text line"
Case "Allign"
  l.Caption = " Align the text in document"
Case "Insert"
  l.Caption = " Insert the Date ,Time,Picture,Symbols"
Case "Calculator"
  l.Caption = " Calculate the sintific calculation"
Case "Calendar"
  l.Caption = " View the calender"
Case "Audio Player"
  l.Caption = " Play the songs"
Case "Vedio Player"
  l.Caption = " Play the vedios"
Case "Clock"
  l.Caption = " View the current date,time"
Case "Image viewer"
  l.Caption = " View the image files"
Case "Add tools"
  l.Caption = " Add the tools in Document"
Case "Remove tools"
  l.Caption = " Remove the tools from document"
Case "Word count"
  l.Caption = " Count the number of words in the document"
Case "Line count"
  l.Caption = " Count the number of Lines in the document"
Case "Normal"
  l.Caption = " Normal size of document"
Case "Minimized"
  l.Caption = " Minimized the document"
Case "Maximized"
  l.Caption = " Maximized the document"
Case "HTML effects"
  l.Caption = " Add HTML Quick tag for required HTML effects in HTML document"
Case "Table"
   l.Caption = " Add HTML Quick tag for Insert Table in HTML document"
Case "Other HTML effects"
  l.Caption = " Add HTML Quick tag for required HTML effects in HTML document"
End Select
End Sub
