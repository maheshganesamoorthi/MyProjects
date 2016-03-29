VERSION 5.00
Begin VB.Form numtoword 
   BackColor       =   &H00C0FFFF&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Numeric To Words"
   ClientHeight    =   3450
   ClientLeft      =   45
   ClientTop       =   405
   ClientWidth     =   5985
   Icon            =   "numtoword.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   3450
   ScaleWidth      =   5985
   StartUpPosition =   3  'Windows Default
   Begin VB.Frame Frame1 
      BackColor       =   &H00C0FFFF&
      Caption         =   "Numeric to words :"
      ForeColor       =   &H000000FF&
      Height          =   3255
      Left            =   120
      TabIndex        =   0
      Top             =   120
      Width           =   5775
      Begin VB.TextBox Text2 
         Alignment       =   2  'Center
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   1575
         Left            =   600
         MultiLine       =   -1  'True
         TabIndex        =   3
         Top             =   1320
         Width           =   4455
      End
      Begin VB.CommandButton Command1 
         Caption         =   "OK"
         Height          =   375
         Left            =   5040
         TabIndex        =   2
         Top             =   360
         Width           =   615
      End
      Begin VB.TextBox Text1 
         Alignment       =   2  'Center
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   2160
         MaxLength       =   9
         TabIndex        =   1
         Top             =   360
         Width           =   2775
      End
      Begin VB.Label Label1 
         Alignment       =   2  'Center
         BorderStyle     =   1  'Fixed Single
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
         Left            =   600
         TabIndex        =   5
         Top             =   840
         Width           =   4455
      End
      Begin VB.Label Label2 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Enter the Number :"
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
         Left            =   120
         TabIndex        =   4
         Top             =   360
         Width           =   2055
      End
   End
End
Attribute VB_Name = "numtoword"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
If IsNumeric(Text1.Text) Then
    If Val(Text1.Text) > 0 Then
        Text2.Text = InWords(Text1.Text)
        Label1.Caption = FormatNumber(Text1.Text, 0)
    End If
End If
End Sub

Private Function InWords(intNumber)
    Select Case intNumber
        
        Case 1: InWords = "ONE"
        Case 2: InWords = "TWO"
        Case 3: InWords = "THREE"
        Case 4: InWords = "FOUR"
        Case 5: InWords = "FIVE"
        Case 6: InWords = "SIX"
        Case 7: InWords = "SEVEN"
        Case 8: InWords = "EIGHT"
        Case 9: InWords = "NINE"
        
        Case 10: InWords = "TEN"
        Case 11: InWords = "ELEVEN"
        Case 12: InWords = "TWELVE"
        Case 13: InWords = "THIRTEEN"
        Case 14: InWords = "FOURTEEN"
        Case 15: InWords = "FIFTEEN"
        Case 16: InWords = "SIXTEEN"
        Case 17: InWords = "SEVENTEEN"
        Case 18: InWords = "EIGHTEEN"
        Case 19: InWords = "NINETEEN"
        Case 20: InWords = "TWENTY"
        Case 30: InWords = "THIRTY"
        Case 40: InWords = "FORTY"
        Case 50: InWords = "FIFTY"
        Case 60: InWords = "SIXTY"
        Case 70: InWords = "SEVENTY"
        Case 80: InWords = "EIGHTY"
        Case 90: InWords = "NINETY"
        
        Case 21 To 29
            InWords = "TWENTY-" & InWords(intNumber - 20)
        Case 31 To 39
            InWords = "THIRTY-" & InWords(intNumber - 30)
        Case 41 To 49
            InWords = "FORTY-" & InWords(intNumber - 40)
        Case 51 To 59
            InWords = "FIFTY-" & InWords(intNumber - 50)
        Case 61 To 69
            InWords = "SIXTY-" & InWords(intNumber - 60)
        Case 71 To 79
            InWords = "SEVENTY-" & InWords(intNumber - 70)
        Case 81 To 89
            InWords = "EIGHTY-" & InWords(intNumber - 80)
        Case 91 To 99
            InWords = "NINETY-" & InWords(intNumber - 90)
        Case 100 To 999
            InWords = InWords(Fix(intNumber / 100)) & " HUNDRED " & InWords(intNumber - Fix(intNumber / 100) * 100)
        Case 1000 To 999999
            InWords = InWords(Fix(intNumber / 1000)) & " THOUSAND " & InWords(intNumber - Fix(intNumber / 1000) * 1000)
        Case 1000000 To 999999999
            InWords = InWords(Fix(intNumber / 1000000)) & " MILLION " & InWords(intNumber - Fix(intNumber / 1000000) * 1000000)
        End Select
End Function

Private Sub Text1_Change()
Command1_Click
End Sub

