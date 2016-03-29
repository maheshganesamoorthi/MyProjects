VERSION 5.00
Begin VB.Form table 
   Caption         =   "Table"
   ClientHeight    =   5625
   ClientLeft      =   60
   ClientTop       =   420
   ClientWidth     =   4815
   Icon            =   "table.frx":0000
   LinkTopic       =   "Form2"
   ScaleHeight     =   5625
   ScaleWidth      =   4815
   StartUpPosition =   3  'Windows Default
   Begin VB.TextBox Text4 
      Height          =   375
      Left            =   1560
      TabIndex        =   14
      Text            =   """"
      Top             =   6240
      Visible         =   0   'False
      Width           =   375
   End
   Begin VB.TextBox Text3 
      Height          =   315
      Left            =   120
      TabIndex        =   13
      Text            =   "0"
      Top             =   3840
      Width           =   4575
   End
   Begin VB.TextBox Text2 
      Height          =   315
      Left            =   120
      TabIndex        =   12
      Text            =   "0"
      Top             =   3000
      Width           =   4575
   End
   Begin VB.CommandButton Command1 
      Caption         =   "OK"
      Height          =   375
      Left            =   600
      TabIndex        =   5
      Top             =   5160
      Width           =   1335
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Cancel"
      Height          =   375
      Left            =   2280
      TabIndex        =   4
      Top             =   5160
      Width           =   1335
   End
   Begin VB.ComboBox Combo1 
      Height          =   315
      Left            =   120
      TabIndex        =   3
      Top             =   480
      Width           =   4575
   End
   Begin VB.ComboBox Combo2 
      Height          =   315
      Left            =   120
      TabIndex        =   2
      Top             =   1320
      Width           =   4575
   End
   Begin VB.ComboBox Combo3 
      Height          =   315
      Left            =   120
      TabIndex        =   1
      Text            =   "1"
      Top             =   2160
      Width           =   4575
   End
   Begin VB.TextBox Text1 
      Height          =   315
      Left            =   120
      TabIndex        =   0
      Text            =   "100%"
      Top             =   4680
      Width           =   4575
   End
   Begin VB.Label Label1 
      Caption         =   "Align"
      Height          =   255
      Left            =   120
      TabIndex        =   11
      Top             =   120
      Width           =   2895
   End
   Begin VB.Label Label2 
      Caption         =   "Back Ground Color"
      Height          =   255
      Left            =   120
      TabIndex        =   10
      Top             =   960
      Width           =   2895
   End
   Begin VB.Label Label3 
      Caption         =   "Border"
      Height          =   255
      Left            =   120
      TabIndex        =   9
      Top             =   1800
      Width           =   2895
   End
   Begin VB.Label Label4 
      Caption         =   "Cell Spacing"
      Height          =   255
      Left            =   120
      TabIndex        =   8
      Top             =   2640
      Width           =   2895
   End
   Begin VB.Label Label5 
      Caption         =   "Cell Padding"
      Height          =   255
      Left            =   120
      TabIndex        =   7
      Top             =   3480
      Width           =   2895
   End
   Begin VB.Label Label6 
      Caption         =   "Width"
      Height          =   255
      Left            =   120
      TabIndex        =   6
      Top             =   4320
      Width           =   2895
   End
End
Attribute VB_Name = "table"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
frmMain1.RTBox.SelText = "<TABLE" + " " + "ALIGN=" + Text4.Text + Combo1.Text + Text4.Text + "  " + "BGCOLOR=" + Text4.Text + Right(Combo2.Text, 7) + Text4.Text + "  " + "BORDER=" + Text4.Text + Combo3.Text + Text4.Text + "  " + "CELLSPACING=" + Text4.Text + Text2.Text + Text4.Text + "  " + "CELLPADDING=" + Text4.Text + Text3.Text + Text4.Text + "  " + "WIDTH=" + Text4.Text + Text1.Text + Text4.Text + ">" + Chr(10) + Chr(13) + "</TABLE>"
Unload Me
End Sub

Private Sub Command2_Click()
Unload Me
End Sub

Private Sub Form_Load()
Combo1.AddItem "center"
Combo1.AddItem "left"
Combo1.AddItem "right"

Combo2.AddItem "alice blue - #F0F8FF"
Combo2.AddItem "antique white - #FAEBD7"
Combo2.AddItem "aqua - #00FFFF"
Combo2.AddItem "aqua marine - #7FFFD4"
Combo2.AddItem "azure - #F0FFFF"
Combo2.AddItem "beige - #F5F5DC"
Combo2.AddItem "bisque - #FFE4C4"
Combo2.AddItem "black - #000000"
Combo2.AddItem "blanched almond - #FFEBCD"
Combo2.AddItem "blue - #0000FF"
Combo2.AddItem "blue violet - #8A2BE2"
Combo2.AddItem "brown - #A52A2A"
Combo2.AddItem "burly wood - #DEB887"
Combo2.AddItem "cadet blue - #5F9EA0"
Combo2.AddItem "chartreuse - #7FFF00"
Combo2.AddItem "chocolate - #D2691E"
Combo2.AddItem "coral - #D2691E"
Combo2.AddItem "corn flower blue - #FF7F50"
Combo2.AddItem "corn silk - #6495ED"
Combo2.AddItem "crimson - #FFF8DC"
Combo2.AddItem "cyan - #DC143C"
Combo2.AddItem "dark blue - #00FFFF"
Combo2.AddItem "dark cyan - #00008B"
Combo2.AddItem "dark golden rod - #008B8B"
Combo2.AddItem "dark gray - #B8860B"
Combo2.AddItem "dark green - #A9A9A9"
Combo2.AddItem "dark khaki - #006400"
Combo2.AddItem "dark magenta - #BDB76B"
Combo2.AddItem "dark olive green - #8B008B"
Combo2.AddItem "dark orange - #556B2F"
Combo2.AddItem "dark orchid - #FF8C00"
Combo2.AddItem "dark red - #9932CC"
Combo2.AddItem "dark salmon - #8B0000"
Combo2.AddItem "dark sea green - #E9967A"
Combo2.AddItem "dark slate blue - #8FBC8F"
Combo2.AddItem "dark slate gray - #483D8B"
Combo2.AddItem "dark turquoise - #2F4F4F"
Combo2.AddItem "dark violet - #00CED1"
Combo2.AddItem "deep pink - #9400D3"
Combo2.AddItem "deep sky blue - #FF1493"
Combo2.AddItem "dim gray - #00BFFF"
Combo2.AddItem "dodger blue - #696969"
Combo2.AddItem "fire brick - #1E90FF"
Combo2.AddItem "floral white - #B22222"
Combo2.AddItem "forest green - #FFFAF0"
Combo2.AddItem "fuchsia - #228B22"
Combo2.AddItem "gainsboro - #FF00FF"
Combo2.AddItem "ghost white - #DCDCDC"
Combo2.AddItem "gold - #F8F8FF"
Combo2.AddItem "golden rod - #FFD700"
Combo2.AddItem "gray - #DAA520"
Combo2.AddItem "green - #808080"
Combo2.AddItem "green yellow - #ADFF2F"
Combo2.AddItem "honey dew - #F0FFF0"
Combo2.AddItem "hot pink - #FF69B4"
Combo2.AddItem "indian red - #CD5C5C"
Combo2.AddItem "indigo - #4B0082"
Combo2.AddItem "ivory - #FFFFF0"
Combo2.AddItem "khaki - #F0E68C"
Combo2.AddItem "lavender - #E6E6FA"
Combo2.AddItem "lavender blush - #FFF0F5"
Combo2.AddItem "lawn green - #7CFC00"
Combo2.AddItem "lemon chiffon - #FFFACD"
Combo2.AddItem "light blue - #ADD8E6"
Combo2.AddItem "light coral - #F08080"
Combo2.AddItem "light cyan - #E0FFFF"
Combo2.AddItem "light golden rod yellow - #FAFAD2"
Combo2.AddItem "light green - #90EE90"
Combo2.AddItem "light grey -  #D3D3D3"
Combo2.AddItem "light pink - #FFB6C1"
Combo2.AddItem "light salmon - #FFA07A"
Combo2.AddItem "light sea green - #20B2AA"
Combo2.AddItem "light sky blue - #87CEFA"
Combo2.AddItem "light steel blue - #B0C4DE"
Combo2.AddItem "light yellow - #FFFFE0"
Combo2.AddItem "lime - #00FF00"
Combo2.AddItem "lime green - #32CD32"
Combo2.AddItem "magenta - #FF00FF"
Combo2.AddItem "medium purple - #9370DB"
Combo2.AddItem "medium sea green - #3CB371"
Combo2.AddItem "navy - #000080"
Combo2.AddItem "navajo white - #FFDEAD"
Combo2.AddItem "orange - #FFA500"
Combo2.AddItem "orange red - #FF4500"
Combo2.AddItem "orchid - #DA70D6"
Combo2.AddItem "pale green - #98FB98"
Combo2.AddItem "pink - #FFC0CB"
Combo2.AddItem "plum - #DDA0DD"
Combo2.AddItem "purple - #800080"
Combo2.AddItem "red - #FF0000"
Combo2.AddItem "royal blue - #4169E1"
Combo2.AddItem "sandy brown - #F4A460"
Combo2.AddItem "sea green - #2E8B57"
Combo2.AddItem "silver - #C0C0C0"
Combo2.AddItem "sky blue - #87CEEB"
Combo2.AddItem "steel blue - #4682B4"
Combo2.AddItem "violet - #EE82EE"
Combo2.AddItem "wheat - #F5DEB3"
Combo2.AddItem "white - #FFFFFF"
Combo2.AddItem "white smoke - #F5F5F5"
Combo2.AddItem "yellow - #FFFF00"
Combo2.AddItem "yellow green - #9ACD32"

For i = 0 To 8
Combo3.AddItem i
Next

End Sub
