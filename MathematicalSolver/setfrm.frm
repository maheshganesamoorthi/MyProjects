VERSION 5.00
Object = "{3B7C8863-D78F-101B-B9B5-04021C009402}#1.2#0"; "RICHTX32.OCX"
Begin VB.Form setfrm 
   BackColor       =   &H00C0FFFF&
   Caption         =   "Sets"
   ClientHeight    =   10440
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   15240
   Icon            =   "setfrm.frx":0000
   LinkTopic       =   "Form1"
   ScaleHeight     =   10440
   ScaleWidth      =   15240
   StartUpPosition =   3  'Windows Default
   Begin VB.Frame Frame2 
      BackColor       =   &H00C0FFFF&
      Caption         =   "Find Complement :"
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
      Height          =   4215
      Left            =   120
      TabIndex        =   16
      Top             =   6480
      Width           =   7095
      Begin VB.TextBox T6 
         Height          =   495
         Left            =   4200
         TabIndex        =   21
         Top             =   960
         Width           =   2415
      End
      Begin VB.CommandButton Command5 
         Caption         =   "Clear"
         Height          =   375
         Left            =   2880
         TabIndex        =   20
         Top             =   3720
         Width           =   1215
      End
      Begin VB.TextBox T5 
         Height          =   495
         Left            =   4200
         TabIndex        =   19
         Top             =   360
         Width           =   2415
      End
      Begin VB.CommandButton Command1 
         Caption         =   "Click to Enter the value"
         Height          =   375
         Left            =   2640
         TabIndex        =   18
         Top             =   1560
         Width           =   1815
      End
      Begin RichTextLib.RichTextBox Rt3 
         Height          =   1575
         Left            =   240
         TabIndex        =   17
         Top             =   2040
         Width           =   6255
         _ExtentX        =   11033
         _ExtentY        =   2778
         _Version        =   393217
         Enabled         =   -1  'True
         ScrollBars      =   2
         TextRTF         =   $"setfrm.frx":038A
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
      Begin VB.Label Label3 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Enter the No.of terms in  set:"
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
         TabIndex        =   23
         Top             =   1080
         Width           =   3735
      End
      Begin VB.Label Label2 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Enter the No.of terms in Universal set:"
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
         TabIndex        =   22
         Top             =   480
         Width           =   3975
      End
   End
   Begin VB.Frame Frame1 
      BackColor       =   &H00C0FFFF&
      Caption         =   "Find Union :"
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
      Height          =   4335
      Left            =   120
      TabIndex        =   6
      Top             =   2160
      Width           =   7095
      Begin RichTextLib.RichTextBox rt1 
         Height          =   1575
         Left            =   240
         TabIndex        =   13
         Top             =   2160
         Width           =   6255
         _ExtentX        =   11033
         _ExtentY        =   2778
         _Version        =   393217
         Enabled         =   -1  'True
         ScrollBars      =   2
         TextRTF         =   $"setfrm.frx":040E
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
      Begin VB.CommandButton Command3 
         Caption         =   "Click to Enter the value"
         Height          =   375
         Left            =   2640
         TabIndex        =   12
         Top             =   1680
         Width           =   1815
      End
      Begin VB.TextBox T1 
         Height          =   495
         Left            =   4200
         TabIndex        =   9
         Top             =   360
         Width           =   2415
      End
      Begin VB.CommandButton Command2 
         Caption         =   "Clear"
         Height          =   375
         Left            =   2880
         TabIndex        =   8
         Top             =   3840
         Width           =   1215
      End
      Begin VB.TextBox T2 
         Height          =   495
         Left            =   4200
         TabIndex        =   7
         Top             =   960
         Width           =   2415
      End
      Begin VB.Label Label1 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Enter the No.of terms in first set:"
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
         TabIndex        =   11
         Top             =   480
         Width           =   3615
      End
      Begin VB.Label Label4 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Enter the No.of terms in second set:"
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
         TabIndex        =   10
         Top             =   1080
         Width           =   3735
      End
   End
   Begin VB.Frame Frame4 
      BackColor       =   &H00C0FFFF&
      Caption         =   "Find Intersection :"
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
      Height          =   4335
      Left            =   7440
      TabIndex        =   0
      Top             =   2160
      Width           =   7695
      Begin RichTextLib.RichTextBox Rt2 
         Height          =   1575
         Left            =   240
         TabIndex        =   15
         Top             =   2160
         Width           =   7215
         _ExtentX        =   12726
         _ExtentY        =   2778
         _Version        =   393217
         ScrollBars      =   2
         TextRTF         =   $"setfrm.frx":0492
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
      Begin VB.CommandButton Command4 
         Caption         =   "Click to Enter the value"
         Height          =   375
         Left            =   3000
         TabIndex        =   14
         Top             =   1560
         Width           =   1815
      End
      Begin VB.CommandButton Command7 
         Caption         =   "Clear"
         Height          =   375
         Left            =   3360
         TabIndex        =   3
         Top             =   3840
         Width           =   1215
      End
      Begin VB.TextBox T4 
         Height          =   495
         Left            =   4320
         TabIndex        =   2
         Top             =   960
         Width           =   3135
      End
      Begin VB.TextBox T3 
         Height          =   495
         Left            =   4320
         TabIndex        =   1
         Top             =   360
         Width           =   3135
      End
      Begin VB.Label Label23 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Enter the No.of terms in second set:"
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
         TabIndex        =   5
         Top             =   1080
         Width           =   3855
      End
      Begin VB.Label Label24 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Enter the No.of terms in first set:"
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
         TabIndex        =   4
         Top             =   480
         Width           =   3735
      End
   End
   Begin VB.Image Image5 
      Height          =   555
      Left            =   6840
      Picture         =   "setfrm.frx":0516
      Top             =   1440
      Width           =   1080
   End
   Begin VB.Image Image4 
      Height          =   2385
      Left            =   9120
      Picture         =   "setfrm.frx":2490
      Top             =   7200
      Width           =   4740
   End
   Begin VB.Image Image3 
      Height          =   3690
      Left            =   9360
      Picture         =   "setfrm.frx":358C
      Top             =   6600
      Width           =   3780
   End
   Begin VB.Image Image2 
      Height          =   3855
      Left            =   9360
      Picture         =   "setfrm.frx":CA05
      Top             =   6600
      Width           =   3855
   End
   Begin VB.Image Image1 
      Height          =   1455
      Left            =   0
      Picture         =   "setfrm.frx":160CC
      Stretch         =   -1  'True
      Top             =   0
      Width           =   15360
   End
End
Attribute VB_Name = "setfrm"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim A(1000) As String
Dim B(1000) As String
Dim C(1000) As String
Dim D(1000) As String
Dim e(1000) As String
Dim final(1000) As String
Dim i, j, k, n, p, set1, set2, flag, fl As Long






Private Sub Command1_Click()
On Error GoTo errhan:
Image2.Visible = False
Image3.Visible = False
Image4.Visible = True
For i = 1 To Val(T5.Text)
A(i) = InputBox("Enter the" & " " & Val(i) & "- th" & " " & "value of first set")
Next i

For j = 1 To Val(T6.Text)
B(j) = InputBox("Enter the" & " " & Val(j) & "- th" & " " & "value of second set")
Next j

For i = 1 To Val(T5.Text)
C(i) = A(i)
Next i

n = 0
p = 0

For i = 1 To Val(T5.Text)
 ss = 1
For j = 1 To Val(T6.Text)
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

'k = 0

'For i = Val(T5.Text) To Val(T5.Text) + p - 1
'C(i + 1) = e(k)
'k = k + 1
'next i

Rt3.Text = "Element of Universal set : {"
For i = 1 To Val(T5.Text)
If i = Val(T5.Text) Then
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
Rt3.Text = te & Chr(10) & Chr(13) & "Element of a set : {"
For i = 1 To Val(T6.Text)
If i = Val(T6.Text) Then
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
Rt3.Text = te & Chr(10) & Chr(13) & "Complement is : {"
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
Exit Sub
errhan:
  MsgBox err.Description, vbInformation

End Sub

Private Sub Command2_Click()
T1.Text = ""
T2.Text = ""
rt1.Text = ""
End Sub

Private Sub Command3_Click()
On Error GoTo errhan:
Image2.Visible = False
Image3.Visible = True
Image4.Visible = False
For i = 1 To Val(T1.Text)
A(i) = InputBox("Enter the" & " " & Val(i) & "- th" & " " & "value of first set")
Next i

For j = 1 To Val(T2.Text)
B(j) = InputBox("Enter the" & " " & Val(j) & "- th" & " " & "value of second set")
Next j

For i = 1 To Val(T1.Text)
C(i) = A(i)
Next i

n = 0
p = 0

For i = 1 To Val(T2.Text)
 ss = 1
For j = 1 To Val(T1.Text)
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

For i = Val(T1.Text) To Val(T1.Text) + p - 1
C(i + 1) = e(k)
k = k + 1
Next i


rt1.Text = "Element of first set : {"
For i = 1 To Val(T1.Text)
If i = Val(T1.Text) Then
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
rt1.Text = te & Chr(10) & Chr(13) & "Element of second set : {"
For i = 1 To Val(T2.Text)
If i = Val(T2.Text) Then
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
rt1.Text = te & Chr(10) & Chr(13) & "Union is : {"
For i = 1 To Val(T1.Text) + p
If i = Val(T1.Text) + p Then
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
rt1.Text = te & "}"
Exit Sub
errhan:
  MsgBox err.Description, vbInformation
End Sub

Private Sub Command4_Click()
On Error GoTo errhan:
Image2.Visible = True
Image3.Visible = False
Image4.Visible = False
For i = 1 To Val(T3.Text)
A(i) = InputBox("Enter the" & " " & Val(i) & "- th" & " " & "value of first set")
Next i

For j = 1 To Val(T4.Text)
B(j) = InputBox("Enter the" & " " & Val(j) & "- th" & " " & "value of second set")
Next j

For i = 1 To Val(T3.Text)
C(i) = A(i)
Next i

n = 0
p = 0

For i = 1 To Val(T4.Text)
 ss = 1
For j = 1 To Val(T3.Text)
 If A(j) <> B(i) Then
 flag = 0
 ss = 0
 Else
  e(p) = B(i)
 p = p + 1
 End If
Next j
Next i

Rt2.Text = "Element of first set : {"
For i = 1 To Val(T3.Text)
If i = Val(T3.Text) Then
te = Rt2.Text
Rt2.Text = ""
Rt2.Text = te & A(i)
Else
te = Rt2.Text
Rt2.Text = ""
Rt2.Text = te & A(i) & ","
End If
Next i
te = Rt2.Text
Rt2.Text = ""
Rt2.Text = te & "}"



te = Rt2.Text
Rt2.Text = ""
Rt2.Text = te & Chr(10) & Chr(13) & "Element of second set : {"
For i = 1 To Val(T4.Text)
If i = Val(T4.Text) Then
te = Rt2.Text
Rt2.Text = ""
Rt2.Text = te & B(i)
Else
te = Rt2.Text
Rt2.Text = ""
Rt2.Text = te & B(i) & ","
End If
Next i
te = Rt2.Text
Rt2.Text = ""
Rt2.Text = te & "}"


te = Rt2.Text
Rt2.Text = ""
Rt2.Text = te & Chr(10) & Chr(13) & "Intersection is : {"
For i = 0 To p - 1
If i = p - 1 Then
te = Rt2.Text
Rt2.Text = ""
Rt2.Text = te & e(i)
Else
te = Rt2.Text
Rt2.Text = ""
Rt2.Text = te & e(i) & ","
End If
Next i

te = Rt2.Text
Rt2.Text = ""
Rt2.Text = te & "}"
Exit Sub


errhan:
  MsgBox err.Description, vbInformation
End Sub

Private Sub Command5_Click()
T5.Text = ""
T6.Text = ""
Rt3.Text = ""
End Sub

Private Sub Command7_Click()
T3.Text = ""
T4.Text = ""
Rt2.Text = ""
End Sub

Private Sub Form_Load()
Me.WindowState = vbMaximized
Image2.Visible = False
Image3.Visible = False
Image4.Visible = False
End Sub

