VERSION 5.00
Begin VB.Form find 
   Caption         =   "Find & Replace"
   ClientHeight    =   2580
   ClientLeft      =   60
   ClientTop       =   420
   ClientWidth     =   6180
   Icon            =   "find.frx":0000
   LinkTopic       =   "Form1"
   ScaleHeight     =   2580
   ScaleWidth      =   6180
   StartUpPosition =   3  'Windows Default
   Begin VB.PictureBox picBar 
      BorderStyle     =   0  'None
      Height          =   1290
      Left            =   120
      ScaleHeight     =   1290
      ScaleWidth      =   5820
      TabIndex        =   4
      Top             =   1020
      WhatsThisHelpID =   320
      Width           =   5820
      Begin VB.CommandButton cmdReplaceAll 
         Caption         =   "Replace &All"
         Height          =   315
         Left            =   4560
         TabIndex        =   11
         Top             =   525
         WhatsThisHelpID =   320
         Width           =   990
      End
      Begin VB.CommandButton cmdHelp 
         Caption         =   "&Help"
         Height          =   315
         Left            =   4560
         TabIndex        =   10
         Top             =   900
         WhatsThisHelpID =   320
         Width           =   990
      End
      Begin VB.CommandButton cmdReplace 
         Caption         =   "&Replace..."
         Height          =   315
         Left            =   4560
         TabIndex        =   9
         Top             =   120
         WhatsThisHelpID =   320
         Width           =   990
      End
      Begin VB.Frame Frame1 
         Caption         =   "Search Options"
         Height          =   1215
         Left            =   360
         TabIndex        =   5
         Top             =   0
         WhatsThisHelpID =   320
         Width           =   4065
         Begin VB.CheckBox chkWholeWord 
            Caption         =   "Find Whole Word &Only"
            Height          =   240
            Left            =   150
            TabIndex        =   8
            Top             =   300
            WhatsThisHelpID =   320
            Width           =   1965
         End
         Begin VB.CheckBox chkMatchCase 
            Caption         =   "Match Ca&se"
            Height          =   240
            Left            =   150
            TabIndex        =   7
            Top             =   600
            WhatsThisHelpID =   320
            Width           =   1965
         End
         Begin VB.CheckBox chkNoHighlight 
            Caption         =   "No &Highlight"
            Height          =   240
            Left            =   150
            TabIndex        =   6
            Top             =   900
            WhatsThisHelpID =   320
            Width           =   1965
         End
      End
   End
   Begin VB.ComboBox cboReplace 
      Height          =   315
      Left            =   1485
      TabIndex        =   3
      Top             =   615
      WhatsThisHelpID =   320
      Width           =   3015
   End
   Begin VB.CommandButton cmdCancel 
      Caption         =   "Cancel"
      Height          =   315
      Left            =   4680
      TabIndex        =   2
      Top             =   615
      WhatsThisHelpID =   320
      Width           =   990
   End
   Begin VB.CommandButton cmdFind 
      Caption         =   "&Find"
      Height          =   315
      Left            =   4680
      TabIndex        =   1
      Top             =   240
      WhatsThisHelpID =   320
      Width           =   990
   End
   Begin VB.ComboBox cboFind 
      Height          =   315
      Left            =   1485
      TabIndex        =   0
      Top             =   240
      WhatsThisHelpID =   320
      Width           =   3015
   End
   Begin VB.Label lblReplace 
      Caption         =   "Replace &With:"
      Height          =   240
      Left            =   360
      TabIndex        =   13
      Top             =   690
      WhatsThisHelpID =   320
      Width           =   1065
   End
   Begin VB.Label lblFind 
      Caption         =   "Fin&d What:"
      Height          =   240
      Left            =   360
      TabIndex        =   12
      Top             =   315
      WhatsThisHelpID =   320
      Width           =   840
   End
End
Attribute VB_Name = "find"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
 
Option Explicit

Private Sub cmdFind_Click()
    On Error GoTo FindError
    Dim lngResult As Long
    Dim lngPos As Long
    Dim intOptions As Integer
    ' Set search options
    If chkNoHighlight.Value = 1 Then intOptions = intOptions + 8
    If chkWholeWord.Value = 1 Then intOptions = intOptions + 2
    If chkMatchCase.Value = 1 Then intOptions = intOptions + 4

    If cmdFind.Caption = "&Find" Then 'If first time
        ' Get position of the searched word
        lngResult = frmMain1.RTBox.find(cboFind.Text, 0, , intOptions)
        If lngResult = -1 Then 'Text not found
            MsgBox "Text not found", "Find", 1, True 'Show message
            cmdFind.Caption = "&Find" 'Set caption
            frmMain1.mnuFindNext.Enabled = False 'Disable Find Next menu
        Else 'Text found
            frmMain1.RTBox.SetFocus 'Set focus to rtfText
            cmdReplace.Enabled = True 'Enable Replace button
            cmdReplaceAll.Enabled = True 'Enable ReplaceAll button
            cmdFind.Caption = "&Find Next" 'Set caption
            frmMain1.mnuFindNext.Enabled = True 'Enable Find Next menu
        End If
    Else 'Find Next
        lngPos = frmMain1.RTBox.SelStart + frmMain1.RTBox.SelLength
        lngResult = frmMain1.RTBox.find(cboFind.Text, lngPos, , intOptions)

        If lngResult = -1 Then 'Text not found
            MsgBox "Text not found", "Find", 1, True 'Show message
            cmdFind.Caption = "&Find" 'Set caption
            cmdReplace.Enabled = False 'Disable Replace button
            cmdReplaceAll.Enabled = False 'Disable ReplaceAll button
            frmMain1.mnuFindNext.Enabled = False 'Disable Find Next menu
        Else 'Text found
            frmMain1.RTBox.SetFocus 'Set focus to rtfText
           frmMain1.RTBox.Enabled = True 'Enable Find Next menu
        End If
    End If
FindError:
   
End Sub

Private Sub cmdReplace_Click()
    On Error GoTo ReplaceError
    Dim lngResult As Long
    Dim lngPos As Long
    Dim intOptions As Integer
    
    If cmdReplace.Caption = "&Replace..." Then 'Show replace
        cmdReplace.Top = 150 'Set cmdReplace top
        cmdReplace.Caption = "&Replace" 'Set caption
        lblReplace.Visible = True 'Show lblReplace
        cboReplace.Visible = True 'Show cboReplace
        cmdReplaceAll.Visible = True 'Show cmdReplaceAll
        Exit Sub
    End If

    ' Set search options
    If chkNoHighlight.Value = 1 Then intOptions = intOptions + 8
    If chkWholeWord.Value = 1 Then intOptions = intOptions + 2
    If chkMatchCase.Value = 1 Then intOptions = intOptions + 4
    
    With frmMain1
        .RTBox.SelText = cboReplace.Text 'Replace text
        ' Find next
        lngPos = .RTBox.SelStart + .RTBox.SelLength
        ' Get position of the searched word
        lngResult = .RTBox.find(cboFind.Text, lngPos, , intOptions)

        If lngResult = -1 Then 'Text not found
            MsgBox "Text not found", "Replace", 1, True 'Show message
            cmdFind.Caption = "&Find" 'Set caption
            cmdReplace.Enabled = False 'Disable Replace button
            cmdReplaceAll.Enabled = False 'Disable ReplaceAll button
        Else 'Text found
            .RTBox.SetFocus 'Set focus
        End If
    End With
ReplaceError:
    
End Sub

Private Sub cmdCancel_Click()
    Unload Me
End Sub

Private Sub cmdReplaceAll_Click()
    On Error GoTo ReplaceAllError
    Dim intCount As Integer
    Dim lngPos As Long
    Dim intOptions As Integer
    ' Set search options
    If chkNoHighlight.Value = 1 Then intOptions = intOptions + 8
    If chkWholeWord.Value = 1 Then intOptions = intOptions + 2
    If chkMatchCase.Value = 1 Then intOptions = intOptions + 4

    intCount = 0
    lngPos = 0
    With frmMain1
        Do
            If .RTBox.find(cboFind.Text, lngPos, , intOptions) = -1 Then 'Text not fount
                If intCount > 0 Then 'Show how many replacments have been made
                    MsgBox "The specified region has been searched. " & vbCrLf & intCount & " replacements have been made.", "Nitepad2002 - ReplaceAll", 1, True
                End If
                cmdFind.Caption = "&Find" 'Set caption
                cmdReplace.Enabled = False 'Disable Replace button
                cmdReplaceAll.Enabled = False 'Disable ReplaceAll button
                Exit Do
            Else 'Text found
                lngPos = .RTBox.SelStart + .RTBox.SelLength
                intCount = intCount + 1 'Increase counter by 1
                .RTBox.SelText = cboReplace.Text 'Replace text
            End If
        Loop
    End With
ReplaceAllError:

End Sub

Private Sub Form_Load()
    cmdReplace.Top = 525 'Set cmdReplace top
    lblReplace.Visible = False 'Hide lblReplace
    cboReplace.Visible = False 'Hide cboReplace
    cmdReplaceAll.Visible = False 'Hide cmdReplaceAll
    
    cboFind.AddItem frmMain1.RTBox.SelText 'Add selected text to find combobox
    cboFind.Text = frmMain1.RTBox.SelText 'Set text in cbo
End Sub



