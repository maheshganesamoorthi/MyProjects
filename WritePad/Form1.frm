VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Date & Time"
   ClientHeight    =   3045
   ClientLeft      =   60
   ClientTop       =   420
   ClientWidth     =   4170
   Icon            =   "Form1.frx":0000
   LinkTopic       =   "Form1"
   ScaleHeight     =   3045
   ScaleWidth      =   4170
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command2 
      Caption         =   "Cancel"
      Height          =   375
      Left            =   2520
      TabIndex        =   2
      Top             =   1560
      Width           =   1215
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Insert"
      Height          =   375
      Left            =   2520
      TabIndex        =   1
      Top             =   840
      Width           =   1215
   End
   Begin VB.ListBox List1 
      Height          =   2595
      Left            =   120
      TabIndex        =   0
      Top             =   240
      Width           =   2055
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
frmMain1.RTBox.SelText = List1.Text
Unload Me
End Sub

Private Sub Command2_Click()
Unload Me
End Sub

Private Sub Form_Load()
List1.AddItem (Date)
List1.AddItem Format$(Date, "m/d/yy")
List1.AddItem Format$(Date, "m : d : yy")
List1.AddItem Format$(Date, "mm/dd/yy")
List1.AddItem Format$(Date, "mm : dd : yyyy")
List1.AddItem Format$(Now, "mm/dd/yyyy")
List1.AddItem Format$(Now, "yy/mmdd")
List1.AddItem Format$(Now, "yyyy -mm-dd")
List1.AddItem Format$(Date, "d mmmm-yy")
List1.AddItem Format$(Date, "dddd,mmmm d,yyyy")
List1.AddItem Format$(Date, "mmmm d,yyyy")
List1.AddItem Format$(Date, "dddd,d mmm,yyyy")
List1.AddItem Format$(Date, "d mmmm,yyyy")
List1.AddItem Format(Now, "long time")
List1.AddItem Format$(Now, "short time")
End Sub

Private Sub List1_dblClick()
Command1_Click
End Sub
