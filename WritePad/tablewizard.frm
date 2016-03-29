VERSION 5.00
Begin VB.Form tablewizard 
   Caption         =   "Table Wizard"
   ClientHeight    =   7320
   ClientLeft      =   60
   ClientTop       =   420
   ClientWidth     =   4890
   Icon            =   "tablewizard.frx":0000
   LinkTopic       =   "Form2"
   ScaleHeight     =   7320
   ScaleWidth      =   4890
   StartUpPosition =   3  'Windows Default
   Begin VB.TextBox Text1 
      Height          =   285
      Left            =   2160
      TabIndex        =   18
      Text            =   """"
      Top             =   8160
      Visible         =   0   'False
      Width           =   615
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Cancel"
      Height          =   375
      Left            =   2640
      TabIndex        =   17
      Top             =   6840
      Width           =   1095
   End
   Begin VB.CommandButton Command1 
      Caption         =   "OK"
      Height          =   375
      Left            =   1080
      TabIndex        =   16
      Top             =   6840
      Width           =   1095
   End
   Begin VB.ComboBox Combo8 
      Height          =   315
      Left            =   120
      TabIndex        =   13
      Top             =   6360
      Width           =   4575
   End
   Begin VB.ComboBox Combo7 
      Height          =   315
      Left            =   120
      TabIndex        =   12
      Top             =   5520
      Width           =   4575
   End
   Begin VB.ComboBox Combo6 
      Height          =   315
      Left            =   120
      TabIndex        =   8
      Top             =   4680
      Width           =   4575
   End
   Begin VB.ComboBox Combo5 
      Height          =   315
      Left            =   120
      TabIndex        =   7
      Top             =   3840
      Width           =   4575
   End
   Begin VB.ComboBox Combo4 
      Height          =   315
      Left            =   120
      TabIndex        =   6
      Text            =   "1"
      Top             =   3000
      Width           =   4575
   End
   Begin VB.ComboBox Combo3 
      Height          =   315
      Left            =   120
      TabIndex        =   2
      Top             =   2160
      Width           =   4575
   End
   Begin VB.ComboBox Combo2 
      Height          =   315
      Left            =   120
      TabIndex        =   1
      Text            =   "4"
      Top             =   1320
      Width           =   4575
   End
   Begin VB.ComboBox Combo1 
      Height          =   315
      Left            =   120
      TabIndex        =   0
      Text            =   "4"
      Top             =   480
      Width           =   4575
   End
   Begin VB.Label Label8 
      Caption         =   "TD VAlign"
      Height          =   255
      Left            =   120
      TabIndex        =   15
      Top             =   6000
      Width           =   2895
   End
   Begin VB.Label Label7 
      Caption         =   "TD Align"
      Height          =   255
      Left            =   120
      TabIndex        =   14
      Top             =   5160
      Width           =   2895
   End
   Begin VB.Label Label6 
      Caption         =   "TR VAlign"
      Height          =   255
      Left            =   120
      TabIndex        =   11
      Top             =   4320
      Width           =   2895
   End
   Begin VB.Label Label5 
      Caption         =   "TR Align"
      Height          =   255
      Left            =   120
      TabIndex        =   10
      Top             =   3480
      Width           =   2895
   End
   Begin VB.Label Label4 
      Caption         =   "Border"
      Height          =   255
      Left            =   120
      TabIndex        =   9
      Top             =   2640
      Width           =   2895
   End
   Begin VB.Label Label3 
      Caption         =   "Table Align"
      Height          =   255
      Left            =   120
      TabIndex        =   5
      Top             =   1800
      Width           =   2895
   End
   Begin VB.Label Label2 
      Caption         =   "Number of Cells"
      Height          =   255
      Left            =   120
      TabIndex        =   4
      Top             =   960
      Width           =   2895
   End
   Begin VB.Label Label1 
      Caption         =   "Number of Rows"
      Height          =   255
      Left            =   120
      TabIndex        =   3
      Top             =   120
      Width           =   2895
   End
End
Attribute VB_Name = "tablewizard"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
frmMain1.RTBox.SelText = "<TABLE" + " " + "ALIGN=" + Text1.text + Combo3.text + Text1.text + "  " + "BORDER=" + Text1.text + Combo4.text + Text1.text + "  " + "CELLSPACING=" + Text1.text + "0" + Text1.text + "  " + "CELLPADDING=" + Text1.text + "0" + Text1.text + "  " + "WIDTH=" + Text1.text + "100%" + Text1.text + ">"
For i = 1 To Combo1.text
frmMain1.RTBox.SelText = Chr(10) + "   " + "<TR" + " " + "ALIGN=" + Text1.text + Combo5.text + Text1.text + "  " + "VALIGN=" + Text1.text + Combo6.text + Text1.text + ">"
For j = 1 To Combo2.text
frmMain1.RTBox.SelText = Chr(10) + "        " + "<TD" + " " + "ALIGN=" + Text1.text + Combo7.text + Text1.text + "  " + "VALIGN=" + Text1.text + Combo8.text + Text1.text + ">" + Chr(10) + "        " + "<P>Write your Text here" + "</TD>"
Next
frmMain1.RTBox.SelText = Chr(10) + "   " + "</TR>" + Chr(10)
Next
frmMain1.RTBox.SelText = "</TABLE>"
Unload Me
End Sub

Private Sub Command2_Click()
Unload Me
End Sub

Private Sub Form_Load()
For i = 1 To 9
Combo1.AddItem i
Next

For i = 1 To 9
Combo2.AddItem i
Next

Combo3.AddItem "center"
Combo3.AddItem "left"
Combo3.AddItem "right"

For i = 0 To 8
Combo4.AddItem i
Next

Combo5.AddItem "center"
Combo5.AddItem "left"
Combo5.AddItem "right"

Combo6.AddItem "baseline"
Combo6.AddItem "bottom"
Combo6.AddItem "middle"
Combo6.AddItem "top"

Combo7.AddItem "center"
Combo7.AddItem "left"
Combo7.AddItem "right"

Combo8.AddItem "baseline"
Combo8.AddItem "bottom"
Combo8.AddItem "middle"
Combo8.AddItem "top"

End Sub
