VERSION 5.00
Begin VB.Form basefonthtml 
   Caption         =   "Base Font"
   ClientHeight    =   3645
   ClientLeft      =   60
   ClientTop       =   420
   ClientWidth     =   4515
   Icon            =   "basefonthtml.frx":0000
   LinkTopic       =   "Form2"
   ScaleHeight     =   3645
   ScaleWidth      =   4515
   StartUpPosition =   3  'Windows Default
   Begin VB.TextBox Text1 
      Height          =   375
      Left            =   240
      TabIndex        =   8
      Text            =   """"
      Top             =   3960
      Visible         =   0   'False
      Width           =   375
   End
   Begin VB.ComboBox Combo1 
      Height          =   315
      Left            =   240
      TabIndex        =   4
      Top             =   600
      Width           =   4095
   End
   Begin VB.ComboBox Combo2 
      Height          =   315
      Left            =   240
      TabIndex        =   3
      Top             =   1560
      Width           =   4095
   End
   Begin VB.CommandButton Command1 
      Caption         =   "OK"
      Height          =   375
      Left            =   600
      TabIndex        =   2
      Top             =   3120
      Width           =   1335
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Cancel"
      Height          =   375
      Left            =   2280
      TabIndex        =   1
      Top             =   3120
      Width           =   1335
   End
   Begin VB.ComboBox Combo3 
      Height          =   315
      Left            =   240
      TabIndex        =   0
      Top             =   2520
      Width           =   4095
   End
   Begin VB.Label Label1 
      Caption         =   "Enter the Font Name"
      Height          =   255
      Left            =   120
      TabIndex        =   7
      Top             =   240
      Width           =   2415
   End
   Begin VB.Label Label2 
      Caption         =   "Enter the Font Size"
      Height          =   255
      Left            =   120
      TabIndex        =   6
      Top             =   1200
      Width           =   2415
   End
   Begin VB.Label Label3 
      Caption         =   "Enter the Font Color"
      Height          =   255
      Left            =   120
      TabIndex        =   5
      Top             =   2160
      Width           =   2415
   End
End
Attribute VB_Name = "basefonthtml"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
frmMain1.RTBox.SelText = "<BASEFONT" + " " + "FACE=" + Text1.Text + Combo1.Text + Text1.Text + "  " + "SIZE=" + Text1.Text + Combo2.Text + Text1.Text + " " + "COLOR=" + Text1.Text + Right(Combo3.Text, 7) + Text1.Text + ">"
Unload Me
End Sub

Private Sub Command2_Click()
Unload Me
End Sub

Private Sub Form_Load()
 For i = 1 To Printer.FontCount
 Combo1.AddItem Printer.Fonts(i)
 Next
 Combo2.AddItem "+1"
 Combo2.AddItem "+2"
 Combo2.AddItem "+3"
 Combo2.AddItem "+4"
 Combo2.AddItem "+5"
 Combo2.AddItem "+6"
 Combo2.AddItem "+7"
 
 Combo3.AddItem "alice blue - #F0F8FF"
Combo3.AddItem "antique white - #FAEBD7"
Combo3.AddItem "aqua - #00FFFF"
Combo3.AddItem "aqua marine - #7FFFD4"
Combo3.AddItem "azure - #F0FFFF"
Combo3.AddItem "beige - #F5F5DC"
Combo3.AddItem "bisque - #FFE4C4"
Combo3.AddItem "black - #000000"
Combo3.AddItem "blanched almond - #FFEBCD"
Combo3.AddItem "blue - #0000FF"
Combo3.AddItem "blue violet - #8A2BE2"
Combo3.AddItem "brown - #A52A2A"
Combo3.AddItem "burly wood - #DEB887"
Combo3.AddItem "cadet blue - #5F9EA0"
Combo3.AddItem "chartreuse - #7FFF00"
Combo3.AddItem "chocolate - #D2691E"
Combo3.AddItem "coral - #D2691E"
Combo3.AddItem "corn flower blue - #FF7F50"
Combo3.AddItem "corn silk - #6495ED"
Combo3.AddItem "crimson - #FFF8DC"
Combo3.AddItem "cyan - #DC143C"
Combo3.AddItem "dark blue - #00FFFF"
Combo3.AddItem "dark cyan - #00008B"
Combo3.AddItem "dark golden rod - #008B8B"
Combo3.AddItem "dark gray - #B8860B"
Combo3.AddItem "dark green - #A9A9A9"
Combo3.AddItem "dark khaki - #006400"
Combo3.AddItem "dark magenta - #BDB76B"
Combo3.AddItem "dark olive green - #8B008B"
Combo3.AddItem "dark orange - #556B2F"
Combo3.AddItem "dark orchid - #FF8C00"
Combo3.AddItem "dark red - #9932CC"
Combo3.AddItem "dark salmon - #8B0000"
Combo3.AddItem "dark sea green - #E9967A"
Combo3.AddItem "dark slate blue - #8FBC8F"
Combo3.AddItem "dark slate gray - #483D8B"
Combo3.AddItem "dark turquoise - #2F4F4F"
Combo3.AddItem "dark violet - #00CED1"
Combo3.AddItem "deep pink - #9400D3"
Combo3.AddItem "deep sky blue - #FF1493"
Combo3.AddItem "dim gray - #00BFFF"
Combo3.AddItem "dodger blue - #696969"
Combo3.AddItem "fire brick - #1E90FF"
Combo3.AddItem "floral white - #B22222"
Combo3.AddItem "forest green - #FFFAF0"
Combo3.AddItem "fuchsia - #228B22"
Combo3.AddItem "gainsboro - #FF00FF"
Combo3.AddItem "ghost white - #DCDCDC"
Combo3.AddItem "gold - #F8F8FF"
Combo3.AddItem "golden rod - #FFD700"
Combo3.AddItem "gray - #DAA520"
Combo3.AddItem "green - #808080"
Combo3.AddItem "green yellow - #ADFF2F"
Combo3.AddItem "honey dew - #F0FFF0"
Combo3.AddItem "hot pink - #FF69B4"
Combo3.AddItem "indian red - #CD5C5C"
Combo3.AddItem "indigo - #4B0082"
Combo3.AddItem "ivory - #FFFFF0"
Combo3.AddItem "khaki - #F0E68C"
Combo3.AddItem "lavender - #E6E6FA"
Combo3.AddItem "lavender blush - #FFF0F5"
Combo3.AddItem "lawn green - #7CFC00"
Combo3.AddItem "lemon chiffon - #FFFACD"
Combo3.AddItem "light blue - #ADD8E6"
Combo3.AddItem "light coral - #F08080"
Combo3.AddItem "light cyan - #E0FFFF"
Combo3.AddItem "light golden rod yellow - #FAFAD2"
Combo3.AddItem "light green - #90EE90"
Combo3.AddItem "light grey -  #D3D3D3"
Combo3.AddItem "light pink - #FFB6C1"
Combo3.AddItem "light salmon - #FFA07A"
Combo3.AddItem "light sea green - #20B2AA"
Combo3.AddItem "light sky blue - #87CEFA"
Combo3.AddItem "light steel blue - #B0C4DE"
Combo3.AddItem "light yellow - #FFFFE0"
Combo3.AddItem "lime - #00FF00"
Combo3.AddItem "lime green - #32CD32"
Combo3.AddItem "magenta - #FF00FF"
Combo3.AddItem "medium purple - #9370DB"
Combo3.AddItem "medium sea green - #3CB371"
Combo3.AddItem "navy - #000080"
Combo3.AddItem "navajo white - #FFDEAD"
Combo3.AddItem "orange - #FFA500"
Combo3.AddItem "orange red - #FF4500"
Combo3.AddItem "orchid - #DA70D6"
Combo3.AddItem "pale green - #98FB98"
Combo3.AddItem "pink - #FFC0CB"
Combo3.AddItem "plum - #DDA0DD"
Combo3.AddItem "purple - #800080"
Combo3.AddItem "red - #FF0000"
Combo3.AddItem "royal blue - #4169E1"
Combo3.AddItem "sandy brown - #F4A460"
Combo3.AddItem "sea green - #2E8B57"
Combo3.AddItem "silver - #C0C0C0"
Combo3.AddItem "sky blue - #87CEEB"
Combo3.AddItem "steel blue - #4682B4"
Combo3.AddItem "violet - #EE82EE"
Combo3.AddItem "wheat - #F5DEB3"
Combo3.AddItem "white - #FFFFFF"
Combo3.AddItem "white smoke - #F5F5F5"
Combo3.AddItem "yellow - #FFFF00"
Combo3.AddItem "yellow green - #9ACD32"

End Sub

