VERSION 5.00
Object = "{3B7C8863-D78F-101B-B9B5-04021C009402}#1.2#0"; "RichTx32.ocx"
Begin VB.Form prime 
   BackColor       =   &H00C0FFFF&
   Caption         =   "Prime Numbers"
   ClientHeight    =   8955
   ClientLeft      =   60
   ClientTop       =   420
   ClientWidth     =   10995
   Icon            =   "prime.frx":0000
   LinkTopic       =   "Form1"
   ScaleHeight     =   8955
   ScaleWidth      =   10995
   StartUpPosition =   3  'Windows Default
   Begin VB.Frame Frame3 
      BackColor       =   &H00C0FFFF&
      Caption         =   "Sum of Prime Numbers :"
      ForeColor       =   &H000000FF&
      Height          =   3615
      Left            =   5160
      TabIndex        =   12
      Top             =   6600
      Width           =   5175
   End
   Begin VB.Frame Frame2 
      BackColor       =   &H00C0FFFF&
      Caption         =   "Check the Prime Number (or) Not"
      ForeColor       =   &H000000FF&
      Height          =   3495
      Left            =   5160
      TabIndex        =   5
      Top             =   3000
      Width           =   5175
      Begin VB.TextBox Text2 
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   495
         Left            =   1440
         TabIndex        =   10
         Top             =   2520
         Width           =   3375
      End
      Begin VB.CommandButton Command3 
         Caption         =   "Clear"
         Height          =   375
         Left            =   3120
         TabIndex        =   9
         Top             =   1680
         Width           =   1215
      End
      Begin VB.CommandButton Command2 
         Caption         =   "Check"
         Height          =   375
         Left            =   1680
         TabIndex        =   8
         Top             =   1680
         Width           =   1215
      End
      Begin VB.TextBox Text1 
         Height          =   495
         Left            =   1440
         TabIndex        =   7
         Top             =   840
         Width           =   3375
      End
      Begin VB.Label Label3 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Result :"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   240
         TabIndex        =   11
         Top             =   2640
         Width           =   1215
      End
      Begin VB.Label Label2 
         BackColor       =   &H00C0FFFF&
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
         Height          =   375
         Left            =   240
         TabIndex        =   6
         Top             =   480
         Width           =   2415
      End
   End
   Begin VB.Frame Frame1 
      BackColor       =   &H00C0FFFF&
      Caption         =   "Generating Prime Number :"
      ForeColor       =   &H000000FF&
      Height          =   7215
      Left            =   120
      TabIndex        =   0
      Top             =   3000
      Width           =   4935
      Begin VB.CommandButton cmdCalculate 
         Caption         =   "Calculate"
         Default         =   -1  'True
         Height          =   375
         Left            =   3120
         TabIndex        =   2
         Top             =   1440
         Width           =   1455
      End
      Begin VB.TextBox txtLimit 
         Height          =   285
         Left            =   3240
         MaxLength       =   8
         TabIndex        =   1
         Text            =   "200"
         Top             =   720
         Width           =   1335
      End
      Begin RichTextLib.RichTextBox rtfResult 
         Height          =   6615
         Left            =   120
         TabIndex        =   3
         Top             =   360
         Width           =   2655
         _ExtentX        =   4683
         _ExtentY        =   11668
         _Version        =   393217
         BorderStyle     =   0
         ScrollBars      =   2
         TextRTF         =   $"prime.frx":038A
      End
      Begin VB.Label Label1 
         AutoSize        =   -1  'True
         BackColor       =   &H00C0FFFF&
         Caption         =   "Enter the Maximum number"
         Height          =   195
         Left            =   2880
         TabIndex        =   4
         Top             =   360
         Width           =   1920
      End
   End
   Begin VB.Image Image2 
      Height          =   540
      Left            =   6600
      Picture         =   "prime.frx":040C
      Top             =   1920
      Width           =   3345
   End
   Begin VB.Image Image1 
      Height          =   1815
      Left            =   0
      Picture         =   "prime.frx":62CE
      Stretch         =   -1  'True
      Top             =   0
      Width           =   15360
   End
End
Attribute VB_Name = "prime"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
' Fast prime numbers by Roberto Lanuza
' e-mail:    roberto.lanuza@wanadoo.es

Const stepIndMAX As Long = 10000
Dim primes() As Long
Dim indPrimes As Long
Dim indMAX As Long
Dim lockCalculus As Boolean
Dim stopCalculus As Boolean
Dim i

Private Sub cmdCalculate_Click()
On Error GoTo errhan:
Dim i As Long               'Generic index
Dim s As String             'Generic string
Dim startTime As Single     'Start time
Dim pFile As Integer        'File pointer
    
   
        
    
    'Seek prime numbers
 If Val(txtLimit.Text) > 200000 Then
  MsgBox "Enter the value between 1 t0 200000", vbInformation, "Valid"
 Else
    
    indPrimes = 1
    indMAX = stepIndMAX
    ReDim primes(1 To indMAX) As Long
    primes(1) = 1   'Load the first prime number
    For i = 2 To Val(txtLimit.Text)
        If IsPrime(i) Then
            indPrimes = indPrimes + 1
            'Check if there are space in the array for a new number
            If indPrimes > indMAX Then
                'Reserve more space
                indMAX = indMAX + stepIndMAX
                ReDim Preserve primes(1 To indMAX) As Long
                DoEvents
            End If
            'Store a new prime number
            primes(indPrimes) = i
        End If
    Next
    
   'Print results in a file
    'pFile = FreeFile
    'Open "primes.txt" For Output As pFile
    'For i = 1 To indPrimes
     '   DoEvents
   '   '  Print #pFile, Str(primes(i))
    'Next
    'Close #pFile
        
    'Imprime resultados
    For i = 1 To indPrimes
        DoEvents
        s = s + Str(primes(i)) + vbCrLf
    Next
    rtfResult.Text = s
  End If
  Exit Sub
errhan:
 MsgBox err.Description, vbInformation

  End Sub

Function IsPrime(n As Long) As Boolean
Dim i As Long      'Generic index
Dim root As Long
    root = Sqr(n) ' Determine the maximum divisor admissible
    For i = 2 To indPrimes
        If primes(i) <= root Then
            If (n Mod primes(i)) = 0 Then
                IsPrime = False
                Exit Function
            End If
        Else
            IsPrime = True
            Exit Function
        End If
    Next
    IsPrime = True
End Function




Private Sub Command2_Click()
On Error GoTo errhan:
If rtfResult.Text = "" Then
cmdCalculate_Click
rtfResult.Text = ""
Else
cmdCalculate_Click
End If
If Val(Text1.Text) <= 2099999999 Then
If IsPrime(Val(Text1.Text)) Then
 Text2.Text = "Given number is Prime"
Else
 Text2.Text = "Given number is Not Prime"
End If
Else
MsgBox "Enter the value between 1 t0 2099999999", vbInformation, "Valid"
End If



Exit Sub
errhan:
 MsgBox err.Description, vbInformation
End Sub

Private Sub Command3_Click()
Text1.Text = ""
End Sub

Private Sub Form_Load()
Me.WindowState = vbMaximized
End Sub

Private Sub txtLimit_Validate(Cancel As Boolean)
If IsNumeric(txtLimit.Text) = False And txtLimit.Text <> "" Then
 If (txtLimit.Text <> "-") Then
  i = MsgBox(txtLimit.Text & " " & "is not a numeric value.Enter only numeric values", vbInformation)
  txtLimit.Text = ""
  txtLimit.SetFocus
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

