VERSION 5.00
Begin VB.Form basefrm 
   BackColor       =   &H00C0FFFF&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Base Conversion"
   ClientHeight    =   6705
   ClientLeft      =   45
   ClientTop       =   405
   ClientWidth     =   8025
   Icon            =   "basefrm.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   6705
   ScaleWidth      =   8025
   StartUpPosition =   3  'Windows Default
   Begin VB.Frame Frame1 
      BackColor       =   &H00C0FFFF&
      Caption         =   "Base Conversion :"
      ForeColor       =   &H000000FF&
      Height          =   4575
      Left            =   120
      TabIndex        =   0
      Top             =   2040
      Width           =   7815
      Begin VB.CommandButton cmdok 
         BackColor       =   &H80000004&
         Caption         =   "Convert"
         Default         =   -1  'True
         Height          =   375
         Left            =   2280
         TabIndex        =   6
         Top             =   2880
         Width           =   1335
      End
      Begin VB.ComboBox OutputCombo 
         BackColor       =   &H00FFFFFF&
         ForeColor       =   &H00000000&
         Height          =   315
         Left            =   2040
         Style           =   2  'Dropdown List
         TabIndex        =   5
         Top             =   2160
         Width           =   3855
      End
      Begin VB.ComboBox InputCombo 
         BackColor       =   &H00FFFFFF&
         ForeColor       =   &H00000000&
         Height          =   315
         Left            =   2040
         Style           =   2  'Dropdown List
         TabIndex        =   4
         Top             =   1560
         Width           =   3855
      End
      Begin VB.TextBox txtInput 
         BackColor       =   &H00FFFFFF&
         ForeColor       =   &H00000000&
         Height          =   405
         Left            =   2040
         TabIndex        =   3
         Top             =   840
         Width           =   5295
      End
      Begin VB.TextBox Text1 
         Height          =   405
         Left            =   2040
         TabIndex        =   2
         Top             =   3720
         Width           =   5295
      End
      Begin VB.CommandButton Command1 
         Caption         =   "Clear"
         Height          =   375
         Left            =   3840
         TabIndex        =   1
         Top             =   2880
         Width           =   1335
      End
      Begin VB.Label Label2 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Output Base :"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   240
         Left            =   360
         TabIndex        =   10
         Top             =   2160
         Width           =   1395
      End
      Begin VB.Label Label1 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   " Input Base :"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   240
         Left            =   480
         TabIndex        =   9
         Top             =   1560
         Width           =   1290
      End
      Begin VB.Label Label3 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Answer :"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   240
         Left            =   840
         TabIndex        =   8
         Top             =   3720
         Width           =   885
      End
      Begin VB.Label Label6 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Enter the value :"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   240
         Left            =   120
         TabIndex        =   7
         Top             =   840
         Width           =   1680
      End
   End
   Begin VB.Image Image2 
      Height          =   600
      Left            =   2040
      Picture         =   "basefrm.frx":076A
      Top             =   1320
      Width           =   3915
   End
   Begin VB.Image Image1 
      Height          =   1215
      Left            =   0
      Picture         =   "basefrm.frx":822C
      Stretch         =   -1  'True
      Top             =   0
      Width           =   8010
   End
End
Attribute VB_Name = "basefrm"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Compare Text
Dim st As Integer
Private Const csValidChars As String = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ"
Private Sub cmdok_Click()
On Error GoTo errhan:
Dim Res As String
Dim NewBase As String

NewBase = Replace(txtInput.Text, " ", "")
txtInput.Text = NewBase

If InputCombo.Text = "" Then MsgBox "Select a Input base!": Exit Sub
If OutputCombo.Text = "" Then MsgBox "Select a Output base!": Exit Sub
    
Res = BCon(NewBase, InputCombo.Text, OutputCombo.Text)
Text1.Text = NewBase & " (" & InputCombo.Text & ") = " & _
             Res & " (" & OutputCombo.Text & ")"
Exit Sub
errhan:
 MsgBox err.Description, vbInformation

End Sub
Private Sub Command1_Click()
txtInput.Text = ""
Text1.Text = ""
End Sub



Public Function BCon(ByVal InputValue As String, ByVal InputBase As Long, ByVal OutputBase As Long) As String

 On Error GoTo errhan:
   Dim cuOutputCharCount As Currency, lInputCharCount As Long
   Dim lCounter As Long, sCompareWith As String, sChar As String
   Dim dDecimalChars As Double, lPos As Long, cuBitValue As Currency
   Dim cuDecimalValue As Currency, sOutput As String


   On Error Resume Next

   '// Check to see that both InputBase and OutputBase are between 2 and 36 inclusively
   If (InputBase < 2) Or (InputBase > 36) Then
      BCon = "???"
      Exit Function
   End If

   If (OutputBase < 2) Or (OutputBase > 36) Then
      BCon = "???"
      Exit Function
   End If

   '// Now initiate translation into 10-based value
   InputValue = Trim(InputValue)
   lInputCharCount = Len(InputValue)
   sCompareWith = Left$(csValidChars, InputBase)

   '// Check to see that input string is at least one character
   If lInputCharCount < 1 Then
      MsgBox "Input string must be at least one character!"
      BCon = "???"
      Exit Function
   End If

   '// Loop through each character in input string. Check for invalid characters according to input base
   For lCounter = 1 To lInputCharCount
      sChar = Mid$(InputValue, lCounter, 1)
      If InStr(1, sCompareWith, sChar, vbTextCompare) < 1 Then
         MsgBox "According to input base characters are invalid!"
         BCon = "???"
         Exit Function
      End If
   Next

   If InputBase = OutputBase Then
      BCon = InputValue
      Exit Function
   End If

   '// Now get the number of decimal characters needed to hold input value
   dDecimalChars = lInputCharCount * Log(InputBase) / Log(10)

   '// If decimal string is longer than 14 characters then exit function
   If dDecimalChars > 14 Then
      MsgBox "Decimal string is longer than 14 characters"
      BCon = "???"
      Exit Function
   End If

   If InputBase = 10 Then
      cuDecimalValue = CCur(InputValue)
   Else
      '// Initiate calculation into decimal value
      cuBitValue = 1
      cuDecimalValue = 0

      '// As long there are characters left in input string, add their value into the decimal hold variable
      While Len(InputValue) > 0
         sChar = Right(InputValue, 1)
         lPos = InStr(1, sCompareWith, sChar, vbTextCompare) - 1
         cuDecimalValue = cuDecimalValue + lPos * cuBitValue
         cuBitValue = cuBitValue * InputBase
         InputValue = Left(InputValue, Len(InputValue) - 1)
         DoEvents
      Wend

      
      If OutputBase = 10 Then
         BCon = CStr(cuDecimalValue)
         Exit Function
      End If
   End If

   
   cuOutputCharCount = 1 + Log(cuDecimalValue) / Log(OutputBase)

  
   cuBitValue = 1
   For lCounter = 2 To cuOutputCharCount
      cuBitValue = cuBitValue * OutputBase
      DoEvents
   Next

   
   sOutput = ""
   sCompareWith = Left$(csValidChars, OutputBase)
   While cuBitValue > 0
      lPos = cuDecimalValue \ cuBitValue
      sChar = Mid$(sCompareWith, 1 + lPos, 1)
      sOutput = sOutput & sChar
      cuDecimalValue = cuDecimalValue - lPos * cuBitValue
      cuBitValue = cuBitValue \ OutputBase
      DoEvents
   Wend

 
   While Left$(sOutput, 1) < "1"
      sOutput = Right$(sOutput, Len(sOutput) - 1)
      DoEvents
   Wend

  
   BCon = sOutput
Exit Function
errhan:
 MsgBox err.Description, vbInformation
End Function




Private Sub Form_Load()
'Me.WindowState = vbMaximized
Dim i As Integer
For i = 2 To 36
    InputCombo.AddItem i
    OutputCombo.AddItem i
    DoEvents
Next
End Sub



