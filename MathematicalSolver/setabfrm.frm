VERSION 5.00
Object = "{3B7C8863-D78F-101B-B9B5-04021C009402}#1.2#0"; "RichTx32.ocx"
Begin VB.Form setabfrm 
   BackColor       =   &H00C0FFFF&
   Caption         =   "Sets"
   ClientHeight    =   11010
   ClientLeft      =   2145
   ClientTop       =   2520
   ClientWidth     =   15240
   Icon            =   "setabfrm.frx":0000
   LinkTopic       =   "Form1"
   ScaleHeight     =   11010
   ScaleWidth      =   15240
   Begin VB.Frame Frame3 
      BackColor       =   &H00C0FFFF&
      Caption         =   "Associative Law  - Example :"
      ForeColor       =   &H000000FF&
      Height          =   3495
      Left            =   120
      TabIndex        =   18
      Top             =   7200
      Width           =   15135
      Begin VB.Image Image3 
         Height          =   2775
         Left            =   2280
         Picture         =   "setabfrm.frx":038A
         Top             =   480
         Width           =   10695
      End
   End
   Begin VB.Frame Frame1 
      BackColor       =   &H00C0FFFF&
      Caption         =   "Associtive Law :"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   4695
      Left            =   7800
      TabIndex        =   8
      Top             =   2400
      Width           =   7455
      Begin VB.TextBox T3 
         Height          =   495
         Left            =   4200
         TabIndex        =   16
         Top             =   1560
         Width           =   3135
      End
      Begin VB.TextBox T2 
         Height          =   495
         Left            =   4200
         TabIndex        =   13
         Top             =   960
         Width           =   3135
      End
      Begin VB.CommandButton Command2 
         Caption         =   "Clear"
         Height          =   375
         Left            =   3360
         TabIndex        =   12
         Top             =   4200
         Width           =   1215
      End
      Begin VB.TextBox T1 
         Height          =   495
         Left            =   4200
         TabIndex        =   11
         Top             =   360
         Width           =   3135
      End
      Begin VB.CommandButton Command3 
         Caption         =   "Click to Enter the value"
         Height          =   375
         Left            =   3120
         TabIndex        =   10
         Top             =   2160
         Width           =   1815
      End
      Begin RichTextLib.RichTextBox rt1 
         Height          =   1455
         Left            =   360
         TabIndex        =   9
         Top             =   2640
         Width           =   6975
         _ExtentX        =   12303
         _ExtentY        =   2566
         _Version        =   393217
         ScrollBars      =   2
         TextRTF         =   $"setabfrm.frx":60E48
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
      End
      Begin VB.Label Label5 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Enter the No.of terms in set-C:"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   495
         Left            =   360
         TabIndex        =   17
         Top             =   1680
         Width           =   3735
      End
      Begin VB.Label Label4 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Enter the No.of terms in  set-B :"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   495
         Left            =   360
         TabIndex        =   15
         Top             =   1080
         Width           =   3735
      End
      Begin VB.Label Label1 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Enter the No.of terms in set-A :"
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
         Left            =   360
         TabIndex        =   14
         Top             =   480
         Width           =   3615
      End
   End
   Begin VB.Frame Frame2 
      BackColor       =   &H00C0FFFF&
      Caption         =   "Find Difference :"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   4695
      Left            =   120
      TabIndex        =   0
      Top             =   2400
      Width           =   7455
      Begin VB.CommandButton Command1 
         Caption         =   "Click to Enter the value"
         Height          =   375
         Left            =   2640
         TabIndex        =   4
         Top             =   1800
         Width           =   1815
      End
      Begin VB.TextBox T5 
         Height          =   495
         Left            =   4200
         TabIndex        =   3
         Top             =   360
         Width           =   3015
      End
      Begin VB.CommandButton Command5 
         Caption         =   "Clear"
         Height          =   375
         Left            =   2880
         TabIndex        =   2
         Top             =   4200
         Width           =   1215
      End
      Begin VB.TextBox T6 
         Height          =   495
         Left            =   4200
         TabIndex        =   1
         Top             =   960
         Width           =   3015
      End
      Begin RichTextLib.RichTextBox Rt3 
         Height          =   1815
         Left            =   240
         TabIndex        =   5
         Top             =   2280
         Width           =   6975
         _ExtentX        =   12303
         _ExtentY        =   3201
         _Version        =   393217
         ScrollBars      =   2
         TextRTF         =   $"setabfrm.frx":60ECC
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
      End
      Begin VB.Label Label2 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Enter the No.of terms in set - A :"
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
         TabIndex        =   7
         Top             =   480
         Width           =   3975
      End
      Begin VB.Label Label3 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Enter the No.of terms in set - B :"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   495
         Left            =   120
         TabIndex        =   6
         Top             =   1080
         Width           =   3735
      End
   End
   Begin VB.Image Image2 
      Height          =   555
      Left            =   6960
      Picture         =   "setabfrm.frx":60F50
      Top             =   1680
      Width           =   1080
   End
   Begin VB.Image Image1 
      Height          =   1575
      Left            =   0
      Picture         =   "setabfrm.frx":62ECA
      Stretch         =   -1  'True
      Top             =   0
      Width           =   15360
   End
End
Attribute VB_Name = "setabfrm"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim A(1000) As String
Dim B(1000) As String
Dim C(1000) As String
Dim D(1000) As String
Dim e(1000) As String
Dim z(1000) As String
Dim x(1000) As String
Dim y(1000) As String
Dim i, j, k, n, set1, set2, flag As Long
Private Sub Command1_Click()
On Error GoTo errhan:

For i = 1 To Val(t5.Text)
A(i) = InputBox("Enter the" & " " & Val(i) & "- th" & " " & "value of first set")
Next i

For j = 1 To Val(t6.Text)
B(j) = InputBox("Enter the" & " " & Val(j) & "- th" & " " & "value of second set")
Next j

For i = 1 To Val(t5.Text)
C(i) = A(i)
Next i

n = 0
p = 0

For i = 1 To Val(t5.Text)
 ss = 1
For j = 1 To Val(t6.Text)
 If C(i) = B(j) Then
 flag = 0
 ss = 0
 Else
 flag = 1
 set1 = 0
  End If
Next j
If set1 = 0 And flag = 1 And ss <> 0 Then
 e(p) = C(i)
 p = p + 1
 End If
Next i

q = 0
For i = 1 To Val(t6.Text)
 ss = 1
For j = 1 To Val(t5.Text)
 If C(j) = B(i) Then
 flag = 0
 ss = 0
 Else
 flag = 1
 set1 = 0
  End If
Next j
If set1 = 0 And flag = 1 And ss <> 0 Then
 D(q) = B(i)
 q = q + 1
 End If
Next i
'k = 0

'For i = Val(T5.Text) To Val(T5.Text) + p - 1
'C(i + 1) = e(k)
'k = k + 1
'next i

Rt3.Text = "Element of set - A : {"
For i = 1 To Val(t5.Text)
If i = Val(t5.Text) Then
te = Rt3.Text
Rt3.Text = ""
Rt3.Text = te & A(i)
Else
te = Rt3.Text
Rt3.Text = ""
Rt3.Text = te & A(i) & ","
End If
Next i
te = Rt3.Text
Rt3.Text = ""
Rt3.Text = te & "}"



te = Rt3.Text
Rt3.Text = ""
Rt3.Text = te & Chr(10) & Chr(13) & "Element of a set - B : {"
For i = 1 To Val(t6.Text)
If i = Val(t6.Text) Then
te = Rt3.Text
Rt3.Text = ""
Rt3.Text = te & B(i)
Else
te = Rt3.Text
Rt3.Text = ""
Rt3.Text = te & B(i) & ","
End If
Next i
te = Rt3.Text
Rt3.Text = ""
Rt3.Text = te & "}"


te = Rt3.Text
Rt3.Text = ""
Rt3.Text = te & Chr(10) & Chr(13) & "Difference(A-B) is : {"
For i = 0 To p - 1
If i = p - 1 Then
te = Rt3.Text
Rt3.Text = ""
Rt3.Text = te & e(i)
Else
te = Rt3.Text
Rt3.Text = ""
Rt3.Text = te & e(i) & ","
End If
Next i

te = Rt3.Text
Rt3.Text = ""
Rt3.Text = te & "}"


te = Rt3.Text
Rt3.Text = ""
Rt3.Text = te & Chr(10) & Chr(13) & "Difference(B-A) is : {"
For i = 0 To q - 1
If i = q - 1 Then
te = Rt3.Text
Rt3.Text = ""
Rt3.Text = te & D(i)
Else
te = Rt3.Text
Rt3.Text = ""
Rt3.Text = te & D(i) & ","
End If
Next i

te = Rt3.Text
Rt3.Text = ""
Rt3.Text = te & "}"

Exit Sub
errhan:
  MsgBox err.Description, vbInformation

End Sub

Private Sub Command2_Click()
t1.Text = ""
t2.Text = ""
t3.Text = ""
rt1.Text = ""
End Sub

Private Sub Command3_Click()
On Error GoTo errhan:

For i = 1 To Val(t1.Text)
A(i) = InputBox("Enter the" & " " & Val(i) & "- th" & " " & "value of set-A")
Next i

For j = 1 To Val(t2.Text)
B(j) = InputBox("Enter the" & " " & Val(j) & "- th" & " " & "value of set-B")
Next j

For j = 1 To Val(t3.Text)
z(j) = InputBox("Enter the" & " " & Val(j) & "- th" & " " & "value of set-C")
Next j

'find B U C
For i = 1 To Val(t2.Text)
C(i) = B(i)
Next i

n = 0
p = 0

For i = 1 To Val(t2.Text)
 ss = 1
For j = 1 To Val(t1.Text)
 If C(j) = z(i) Then
 flag = 0
 ss = 0
 Else
 flag = 1
 set1 = 0
  End If
Next j
If set1 = 0 And flag = 1 And ss <> 0 Then
 e(p) = z(i)
 p = p + 1
 End If
Next i

k = 0

For i = Val(t1.Text) To Val(t1.Text) + p - 1
C(i + 1) = e(k)
k = k + 1
Next i

rt1.Text = "ASSOCIATIVE LAW : (AUB)UC = AU(BUC) " & Chr(10) + Chr(13) & "Element of set - A : {"
For i = 1 To Val(t1.Text)
If i = Val(t1.Text) Then
te = rt1.Text
rt1.Text = ""
rt1.Text = te & A(i)
Else
te = rt1.Text
rt1.Text = ""
rt1.Text = te & A(i) & ","
End If
Next i
te = rt1.Text
rt1.Text = ""
rt1.Text = te & "}"



te = rt1.Text
rt1.Text = ""
rt1.Text = te & Chr(10) & Chr(13) & "Element of set - B : {"
For i = 1 To Val(t2.Text)
If i = Val(t2.Text) Then
te = rt1.Text
rt1.Text = ""
rt1.Text = te & B(i)
Else
te = rt1.Text
rt1.Text = ""
rt1.Text = te & B(i) & ","
End If
Next i
te = rt1.Text
rt1.Text = ""
rt1.Text = te & "}"



te = rt1.Text
rt1.Text = ""
rt1.Text = te & Chr(10) & Chr(13) & "Element of set - C : {"
For i = 1 To Val(t3.Text)
If i = Val(t3.Text) Then
te = rt1.Text
rt1.Text = ""
rt1.Text = te & z(i)
Else
te = rt1.Text
rt1.Text = ""
rt1.Text = te & z(i) & ","
End If
Next i
te = rt1.Text
rt1.Text = ""
rt1.Text = te & "}"


te = rt1.Text
rt1.Text = ""
rt1.Text = te & Chr(10) & Chr(13) & "(BUC) is :" & "{"

For i = 1 To Val(t1.Text) + p
If i = Val(t1.Text) + p Then
te = rt1.Text
rt1.Text = ""
rt1.Text = te & C(i)
Else
te = rt1.Text
rt1.Text = ""
rt1.Text = te & C(i) & ","
End If
Next i

r = p
te = rt1.Text
rt1.Text = ""
rt1.Text = te & "}"


'find A U (BUC)

For i = 1 To Val(t1.Text)
D(i) = A(i)
Next i

n = 0
p = 0

For i = 1 To Val(t2.Text) + r
 ss = 1
For j = 1 To Val(t1.Text)
 If A(j) = C(i) Then
 flag = 0
 ss = 0
 Else
 flag = 1
 set1 = 0
  End If
Next j
If set1 = 0 And flag = 1 And ss <> 0 Then
 x(p) = C(i)
 p = p + 1
 End If
Next i

k = 0

For i = Val(t1.Text) To Val(t1.Text) + p - 1
D(i + 1) = x(k)
k = k + 1
Next i

te = rt1.Text
rt1.Text = ""
rt1.Text = te & Chr(10) + Chr(13) & "AU(BUC) is :" & "{"

For i = 1 To Val(t1.Text) + p
If i = Val(t1.Text) + p Then
te = rt1.Text
rt1.Text = ""
rt1.Text = te & D(i)
Else
te = rt1.Text
rt1.Text = ""
rt1.Text = te & D(i) & ","
End If
Next i

te = rt1.Text
rt1.Text = ""
rt1.Text = te & "}" & Chr(10) + Chr(13) & "          ---->  I"

'find (AUB)
For i = 1 To Val(t1.Text)
C(i) = A(i)
Next i

n = 0
p = 0

For i = 1 To Val(t2.Text)
 ss = 1
For j = 1 To Val(t1.Text)
 If C(j) = B(i) Then
 flag = 0
 ss = 0
 Else
 flag = 1
 set1 = 0
  End If
Next j
If set1 = 0 And flag = 1 And ss <> 0 Then
 e(p) = B(i)
 p = p + 1
 End If
Next i

k = 0

For i = Val(t1.Text) To Val(t1.Text) + p - 1
C(i + 1) = e(k)
k = k + 1
Next i


te = rt1.Text
rt1.Text = ""
rt1.Text = te & Chr(10) & Chr(13) & "(AUB) is : {"
For i = 1 To Val(t1.Text) + p
If i = Val(t1.Text) + p Then
te = rt1.Text
rt1.Text = ""
rt1.Text = te & C(i)
Else
te = rt1.Text
rt1.Text = ""
rt1.Text = te & C(i) & ","
End If
Next i
r = p
te = rt1.Text
rt1.Text = ""
rt1.Text = te & "}"


'find (AUB)UC
For i = 1 To Val(t3.Text)
D(i) = z(i)
Next i

n = 0
p = 0

For i = 1 To Val(t3.Text)
 ss = 1
For j = 1 To Val(t1.Text) + r
 If C(j) = z(i) Then
 flag = 0
 ss = 0
 Else
 flag = 1
 set1 = 0
  End If
Next j
If set1 = 0 And flag = 1 And ss <> 0 Then
 x(p) = z(i)
 p = p + 1
 End If
Next i

k = 0

For i = Val(t1.Text) + r To Val(t1.Text) + r + p - 1
C(i + 1) = x(k)
k = k + 1
Next i

te = rt1.Text
rt1.Text = ""
rt1.Text = te & Chr(10) + Chr(13) & "(AUB)UC is :" & "{"

For i = 1 To Val(t1.Text) + p + r
If i = Val(t1.Text) + p + r Then
te = rt1.Text
rt1.Text = ""
rt1.Text = te & C(i)
Else
te = rt1.Text
rt1.Text = ""
rt1.Text = te & C(i) & ","
End If
Next i

te = rt1.Text
rt1.Text = ""
rt1.Text = te & "}" & Chr(10) + Chr(13) & "          ---->  II" & Chr(10) + Chr(13) & " From I and II  ASSOCIATIVE LAW is Proved"












'-------------------------------


'find B n C
For i = 1 To Val(t2.Text)
C(i) = B(i)
Next i

n = 0
p = 0

For i = 1 To Val(t3.Text)
 ss = 1
For j = 1 To Val(t2.Text)
 If B(j) <> z(i) Then
 flag = 0
 ss = 0
 Else
 e(p) = z(i)
 p = p + 1
  End If
Next j
Next i

k = 0

te = rt1.Text
rt1.Text = ""
rt1.Text = te & Chr(10) + Chr(13) & "ASSOCIATIVE LAW : (AnB)nC = An(BnC) " & Chr(10) + Chr(13)


te = rt1.Text
rt1.Text = ""
rt1.Text = te & Chr(10) & Chr(13) & "(BnC) is :" & "{"

For i = 0 To p - 1
If i = p - 1 Then
te = rt1.Text
rt1.Text = ""
rt1.Text = te & e(i)
Else
te = rt1.Text
rt1.Text = ""
rt1.Text = te & e(i) & ","
End If
Next i

r = p
te = rt1.Text
rt1.Text = ""
rt1.Text = te & "}"


'find A n (BnC)

For i = 1 To Val(t1.Text)
D(i) = A(i)
Next i

n = 0
p = 0

For i = 0 To r
 ss = 1
For j = 1 To Val(t1.Text)
 If A(j) <> e(i) Then
 flag = 0
 ss = 0
 Else
 x(p) = e(i)
 p = p + 1
 End If
Next j
Next i

k = 0

te = rt1.Text
rt1.Text = ""
rt1.Text = te & Chr(10) + Chr(13) & "An(BnC) is :" & "{"

For i = 0 To p - 1
If i = p - 1 Then
te = rt1.Text
rt1.Text = ""
rt1.Text = te & x(i)
Else
te = rt1.Text
rt1.Text = ""
rt1.Text = te & x(i) & ","
End If
Next i

te = rt1.Text
rt1.Text = ""
rt1.Text = te & "}" & Chr(10) + Chr(13) & "          ---->  I"

'find (AnB)
For i = 1 To Val(t1.Text)
C(i) = A(i)
Next i

n = 0
p = 0

For i = 1 To Val(t2.Text)
 ss = 1
For j = 1 To Val(t1.Text)
 If A(j) <> B(i) Then
 flag = 0
 ss = 0
 Else
 e(p) = B(i)
 p = p + 1
  End If
Next j
'If set1 = 0 And flag = 1 And ss <> 0 Then
 'e(p) = B(i)
 'p = p + 1
' End If
Next i

k = 0

'For i = Val(T1.Text) To Val(T1.Text) + p - 1
'C(i + 1) = e(k)
'k = k + 1
'Next i


te = rt1.Text
rt1.Text = ""
rt1.Text = te & Chr(10) & Chr(13) & "(AnB) is : {"
For i = 0 To p - 1
If i = p - 1 Then
te = rt1.Text
rt1.Text = ""
rt1.Text = te & e(i)
Else
te = rt1.Text
rt1.Text = ""
rt1.Text = te & e(i) & ","
End If
Next i
r = p
te = rt1.Text
rt1.Text = ""
rt1.Text = te & "}"


'find (AnB)nC
For i = 1 To Val(t3.Text)
D(i) = z(i)
Next i

n = 0
p = 0

For i = 1 To Val(t3.Text)
 ss = 1
For j = 1 To r
 If C(j) <> z(i) Then
 flag = 0
 ss = 0
 Else
 x(p) = z(i)
 p = p + 1
  End If
Next j

Next i

k = 0
te = rt1.Text
rt1.Text = ""
rt1.Text = te & Chr(10) + Chr(13) & "(AnB)nC is :" & "{"

For i = 0 To p - 1
If i = p - 1 Then
te = rt1.Text
rt1.Text = ""
rt1.Text = te & x(i)
Else
te = rt1.Text
rt1.Text = ""
rt1.Text = te & x(i) & ","
End If
Next i

te = rt1.Text
rt1.Text = ""
rt1.Text = te & "}" & Chr(10) + Chr(13) & "          ---->  II" & Chr(10) + Chr(13) & " From I and II  ASSOCIATIVE LAW is Proved"


Exit Sub
errhan:
  MsgBox err.Description, vbInformation
End Sub

Private Sub Command5_Click()
t5.Text = ""
t6.Text = ""
Rt3.Text = ""
End Sub

Private Sub Form_Load()
Me.WindowState = vbMaximized
End Sub
