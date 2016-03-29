VERSION 5.00
Begin VB.Form symbols 
   Caption         =   "Form1"
   ClientHeight    =   3915
   ClientLeft      =   60
   ClientTop       =   420
   ClientWidth     =   2925
   Icon            =   "symbols.frx":0000
   LinkTopic       =   "Form1"
   ScaleHeight     =   3915
   ScaleWidth      =   2925
   StartUpPosition =   3  'Windows Default
   Begin VB.Frame Frame1 
      Caption         =   "Symbols"
      Height          =   3375
      Left            =   0
      TabIndex        =   2
      Top             =   0
      WhatsThisHelpID =   380
      Width           =   2895
      Begin VB.ListBox lstSymbols 
         Height          =   2985
         Left            =   120
         TabIndex        =   3
         Top             =   240
         WhatsThisHelpID =   380
         Width           =   2655
      End
   End
   Begin VB.CommandButton cmdInsert 
      Caption         =   "&Insert"
      Height          =   375
      Left            =   120
      TabIndex        =   1
      Top             =   3480
      WhatsThisHelpID =   380
      Width           =   1215
   End
   Begin VB.CommandButton cmdClose 
      Caption         =   "&Close"
      Height          =   375
      Left            =   1560
      TabIndex        =   0
      Top             =   3480
      WhatsThisHelpID =   380
      Width           =   1215
   End
End
Attribute VB_Name = "symbols"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Option Explicit

Private Sub lstSymbols_DblClick()
    ' Insert selected symbol to rtbox
    frmMain1.RTBox.SelText = Right(lstSymbols.Text, 1)
End Sub

Private Sub cmdInsert_Click()
    ' Insert selected symbol to rtbox
   frmMain1.RTBox.SelText = Right(lstSymbols.Text, 1)
   Unload Me
End Sub

Private Sub cmdClose_Click()
    Unload Me
End Sub

Private Sub Form_Load()
    Dim i As Integer
        'Set font name
    lstSymbols.FontName = frmMain1.RTBox.Font.Name
    For i = 1 To 255
        ' Fills lstSymbols with Symbols
        If i < 10 Then
            lstSymbols.AddItem i & "     -  " & Chr(i)
        ElseIf i < 100 Then
            lstSymbols.AddItem i & "   -  " & Chr(i)
        Else
            lstSymbols.AddItem i & " -  " & Chr(i)
        End If
    Next i
End Sub
