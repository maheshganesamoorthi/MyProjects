VERSION 5.00
Begin VB.Form gcd 
   BackColor       =   &H00C0FFFF&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "GCD"
   ClientHeight    =   8280
   ClientLeft      =   45
   ClientTop       =   405
   ClientWidth     =   6855
   Icon            =   "gcd.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   8280
   ScaleWidth      =   6855
   StartUpPosition =   3  'Windows Default
   Begin VB.Frame Frame2 
      BackColor       =   &H00C0FFFF&
      Caption         =   "Number Format"
      ForeColor       =   &H000000FF&
      Height          =   3375
      Left            =   120
      TabIndex        =   9
      Top             =   4800
      Width           =   6615
      Begin VB.CommandButton Command2 
         Caption         =   "Clear"
         Height          =   375
         Left            =   3240
         TabIndex        =   24
         Top             =   2760
         Width           =   1215
      End
      Begin VB.TextBox Text4 
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   315
         Left            =   1200
         TabIndex        =   23
         Top             =   2280
         Width           =   3975
      End
      Begin VB.CommandButton cmdFormat 
         Caption         =   "Format"
         Height          =   375
         Left            =   1800
         TabIndex        =   15
         Top             =   2760
         Width           =   1215
      End
      Begin VB.TextBox txtInput 
         Height          =   285
         Left            =   2280
         TabIndex        =   14
         Text            =   "123456789012345.9876543210"
         Top             =   360
         Width           =   2895
      End
      Begin VB.TextBox txtNumPerGroup 
         Height          =   285
         Left            =   2280
         TabIndex        =   13
         Text            =   "3"
         Top             =   1080
         Width           =   255
      End
      Begin VB.TextBox txtDecimal 
         Height          =   285
         Left            =   2280
         TabIndex        =   12
         Text            =   "."
         Top             =   1440
         Width           =   255
      End
      Begin VB.TextBox txtThousands 
         Height          =   285
         Left            =   2280
         TabIndex        =   11
         Text            =   ","
         Top             =   1800
         Width           =   255
      End
      Begin VB.TextBox txtDigits 
         Height          =   285
         Left            =   2280
         TabIndex        =   10
         Text            =   "5"
         Top             =   720
         Width           =   375
      End
      Begin VB.Label Label1 
         AutoSize        =   -1  'True
         BackColor       =   &H00C0FFFF&
         Caption         =   "Value"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   195
         Index           =   6
         Left            =   240
         TabIndex        =   22
         Top             =   360
         Width           =   495
      End
      Begin VB.Label Label1 
         AutoSize        =   -1  'True
         BackColor       =   &H00C0FFFF&
         Caption         =   "Digits Per Grouping"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   195
         Index           =   1
         Left            =   240
         TabIndex        =   21
         Top             =   1080
         Width           =   1665
      End
      Begin VB.Label Label1 
         AutoSize        =   -1  'True
         BackColor       =   &H00C0FFFF&
         Caption         =   "Decimal Separator"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   195
         Index           =   2
         Left            =   240
         TabIndex        =   20
         Top             =   1440
         Width           =   1575
      End
      Begin VB.Label Label1 
         AutoSize        =   -1  'True
         BackColor       =   &H00C0FFFF&
         Caption         =   "Thousands Separator"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   195
         Index           =   3
         Left            =   240
         TabIndex        =   19
         Top             =   1800
         Width           =   1830
      End
      Begin VB.Label Label1 
         AutoSize        =   -1  'True
         BackColor       =   &H00C0FFFF&
         Caption         =   "Result :"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   195
         Index           =   4
         Left            =   360
         TabIndex        =   18
         Top             =   2280
         Width           =   675
      End
      Begin VB.Label lblResult 
         AutoSize        =   -1  'True
         Height          =   195
         Left            =   1920
         TabIndex        =   17
         Top             =   2760
         Width           =   45
      End
      Begin VB.Label Label1 
         AutoSize        =   -1  'True
         BackColor       =   &H00C0FFFF&
         Caption         =   "Decimal Digits"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   195
         Index           =   5
         Left            =   240
         TabIndex        =   16
         Top             =   720
         Width           =   1230
      End
   End
   Begin VB.Frame Frame1 
      BackColor       =   &H00C0FFFF&
      Caption         =   "Find GCD"
      ForeColor       =   &H000000FF&
      Height          =   2775
      Left            =   120
      TabIndex        =   0
      Top             =   1920
      Width           =   6615
      Begin VB.TextBox Text2 
         Alignment       =   2  'Center
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   315
         Left            =   2040
         MaxLength       =   28
         TabIndex        =   5
         Text            =   "22256400"
         Top             =   840
         Width           =   4095
      End
      Begin VB.CommandButton COMPUTE_Button 
         Caption         =   "Solve"
         Default         =   -1  'True
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   1920
         TabIndex        =   1
         Top             =   2160
         Width           =   1335
      End
      Begin VB.TextBox Text3 
         Alignment       =   2  'Center
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   315
         Left            =   2040
         MultiLine       =   -1  'True
         TabIndex        =   3
         Top             =   1560
         Width           =   4095
      End
      Begin VB.TextBox Text1 
         Alignment       =   2  'Center
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   315
         Left            =   2040
         MaxLength       =   28
         TabIndex        =   2
         Text            =   "52468800"
         Top             =   360
         Width           =   4095
      End
      Begin VB.CommandButton Command1 
         Caption         =   "Clear"
         Height          =   375
         Left            =   3600
         TabIndex        =   4
         Top             =   2160
         Width           =   1335
      End
      Begin VB.Label Label3 
         Alignment       =   2  'Center
         BackColor       =   &H00C0FFFF&
         Caption         =   " GCD  of  A and B"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   177
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   195
         Left            =   120
         TabIndex        =   8
         Top             =   1680
         Width           =   1635
      End
      Begin VB.Label Label2 
         Alignment       =   2  'Center
         BackColor       =   &H00C0FFFF&
         Caption         =   " Value - B ( Integer )"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   177
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   195
         Left            =   120
         TabIndex        =   7
         Top             =   840
         Width           =   1815
      End
      Begin VB.Label Label1 
         Alignment       =   2  'Center
         BackColor       =   &H00C0FFFF&
         Caption         =   " Value - A ( Integer )"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   177
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   195
         Index           =   0
         Left            =   120
         TabIndex        =   6
         Top             =   360
         Width           =   1815
      End
   End
   Begin VB.Image Image2 
      Height          =   630
      Left            =   2760
      Picture         =   "gcd.frx":038A
      Top             =   1200
      Width           =   1290
   End
   Begin VB.Image Image1 
      Height          =   1215
      Left            =   0
      Picture         =   "gcd.frx":2E74
      Stretch         =   -1  'True
      Top             =   0
      Width           =   6810
   End
End
Attribute VB_Name = "gcd"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Dim i
Private Type NUMBERFMT
    NumDigits As Long
    LeadingZero As Long
    Grouping As Long
    lpDecimalSep As Long
    lpThousandSep As Long
    NegativeOrder As Long
End Type

Private Declare Function GetNumberFormat Lib "kernel32" Alias "GetNumberFormatA" (ByVal Locale As Long, ByVal dwFlags As Long, ByVal lpValue As String, lpFormat As NUMBERFMT, ByVal lpNumberStr As String, ByVal cchNumber As Long) As Long

' Format the text.
Private Sub cmdFormat_Click()
    Text4.Text = _
        FormatString(txtInput.Text, _
            txtDecimal.Text, _
            txtThousands.Text, _
            Int(txtDigits.Text), _
            Int(txtNumPerGroup.Text))
End Sub

' Format a numeric string.
Private Function FormatString(ByVal numeric_string As String, decimal_separator() As Byte, thousands_separator() As Byte, ByVal num_digits As Integer, ByVal num_per_group As Integer) As String
Dim fmt As NUMBERFMT
Dim buf As String * 200
Dim buflen As Integer

    With fmt
        .NumDigits = num_digits
        .LeadingZero = 0
        .Grouping = num_per_group
        .lpDecimalSep = VarPtr(decimal_separator(0))
        .lpThousandSep = VarPtr(thousands_separator(0))
        .NegativeOrder = 0
    End With

    buflen = GetNumberFormat(0, 0, _
        numeric_string, fmt, buf, Len(buf))

    FormatString = Left$(buf, buflen)
End Function


Private Sub Command1_Click()
Text1.Text = ""
Text2.Text = ""
Text3.Text = ""
End Sub

Private Sub Command2_Click()
Text4.Text = ""
End Sub

  Private Sub COMPUTE_Button_Click()
  On Error GoTo errhan:
  Dim A As String
  Dim B As String
  Dim ans As String
  If Val(Text1.Text) < 1E+20 Or Val(Text2.Text) < 1E+20 Then
  ' Read the argument values
    A = Trim(Text1.Text)
    B = Trim(Text2.Text)
' Calculate the GCD of integers value A and B
    ans = GCD_Of(A, B)
' Display the result
    Text3.Text = ans
  Else
   MsgBox "Value is Over Flow", vbInformation, "Invalid"
  End If
  Exit Sub
errhan:
 MsgBox err.Description, vbInformation
  End Sub

  Public Function GCD_Of(First_Int, Second_Int)
  On Error GoTo errhan:
' Find the greatest common denominator of two integer numbers
' where the arguments may be up to 28 digit long.  Arguments
' may be negative or positive, but must be non-zero.
'
' This GCD is the largest positive integer that will perfectly
' divide both of the given integers.
'
' If the result is 1, then the numbers are relatively prime
' which means that they have no common divisor except 1.
'
' This function uses the DECIMAL data type.

  Dim q    ' Quotient of the division   X/Y
  Dim r    ' Remainder of the division  X/Y
  Dim x    ' Larger of the two integer arguments
  Dim y    ' Smaller of the two integer arguments
  
' Decimal point location pointer for within Q
  Dim i As Integer
  
' Define error messages
  Dim W  As String
      W = "ERROR: "
  Dim Err1 As String
      Err1 = "Invalid numeric Value"
  Dim Err2 As String
      Err2 = "Value must be non-zero"
      
  q = CDec(1) ' Initialize quotient as DECIMAL variable type
  r = q       ' Initialize remainder
    
' Read the input argument values
  x = First_Int
  y = Second_Int
  
  If IsNumeric(x) = False Or IsNumeric(y) = False Then
     GCD_Of = W & Err1
     Exit Function
  End If
  
' Convert input arguments into DECIMAL variable type
  x = CDec(x)
  y = CDec(y)
   
' Report error if argument(s) non-integer
  If InStr(x, ".") > 0 Or InStr(y, ".") > 0 Then
     GCD_Of = W & Err1
     Exit Function
  End If
   
' Make sure both arguments are absolute values
  If x < 0 Then x = -x
  If y < 0 Then y = -y
   
' Report error if either argument is zero
  If x = 0 Or y = 0 Then GCD_Of = W & Err2: Exit Function
  
' Swap argument values, if necessary, so that X > Y
  If x < y Then q = x: x = y: y = q
  
' Perform Euclid's algorithm to find GCD of X and Y
  While r <> 0
        q = x / y
        i = InStr(q, ".")
     If i > 0 Then q = Left(q, i - 1)
        r = x - q * y
        x = y
        y = r
  Wend
  
' Return the result
  GCD_Of = x
Exit Function
errhan:
 MsgBox err.Description, vbInformation
End Function




Private Sub Form_Load()
'Me.WindowState = vbMaximized
End Sub
Private Sub Text2_Validate(Cancel As Boolean)
If IsNumeric(Text2.Text) = False And Text2.Text <> "" Then
 If (Text2.Text <> "-") Then
  i = MsgBox(Text2.Text & " " & "is not a numeric value.Enter only numeric values", vbInformation)
  Text2.Text = ""
  Text2.SetFocus
 End If
End If
End Sub
Private Sub Text1_Validate(Cancel As Boolean)
If IsNumeric(Text1.Text) = False And Text1.Text <> "" Then
 If (Text1.Text <> "-") Then
  i = MsgBox(Text1.Text & " " & "is not a numeric value.Enter only numeric values", vbInformation)
  Text1.Text = ""
  Text1.SetFocus
 End If
End If
End Sub
Private Sub txtInput_Validate(Cancel As Boolean)
If IsNumeric(txtInput.Text) = False And txtInput.Text <> "" Then
 If (txtInput.Text <> "-") Then
  i = MsgBox(txtInput.Text & " " & "is not a numeric value.Enter only numeric values", vbInformation)
  txtInput.Text = ""
  txtInput.SetFocus
 End If
End If
End Sub
Private Sub txtDigits_Validate(Cancel As Boolean)
If IsNumeric(txtDigits.Text) = False And txtDigits.Text <> "" Then
 If (txtDigits.Text <> "-") Then
  i = MsgBox(txtDigits.Text & " " & "is not a numeric value.Enter only numeric values", vbInformation)
 txtDigits.Text = ""
  txtDigits.SetFocus
 End If
End If
End Sub
Private Sub txtNumPerGroup_Validate(Cancel As Boolean)
If IsNumeric(txtNumPerGroup.Text) = False And txtNumPerGroup.Text <> "" Then
 If (txtNumPerGroup.Text <> "-") Then
  i = MsgBox(txtNumPerGroup.Text & " " & "is not a numeric value.Enter only numeric values", vbInformation)
 txtNumPerGroup.Text = ""
  txtNumPerGroup.SetFocus
 End If
End If
End Sub
