VERSION 5.00
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "COMDLG32.OCX"
Begin VB.Form Body 
   Caption         =   "HTML Body"
   ClientHeight    =   6855
   ClientLeft      =   60
   ClientTop       =   420
   ClientWidth     =   4965
   Icon            =   "Body.frx":0000
   LinkTopic       =   "Form2"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   6855
   ScaleWidth      =   4965
   StartUpPosition =   3  'Windows Default
   Begin VB.TextBox Text2 
      Height          =   285
      Left            =   3840
      TabIndex        =   15
      Text            =   """"
      Top             =   7560
      Visible         =   0   'False
      Width           =   375
   End
   Begin VB.TextBox Text1 
      Height          =   315
      Left            =   240
      TabIndex        =   14
      Top             =   5760
      Width           =   4215
   End
   Begin MSComDlg.CommonDialog dlgCommonDialog 
      Left            =   4440
      Top             =   0
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
   End
   Begin VB.CommandButton Command3 
      Caption         =   "..."
      Height          =   315
      Left            =   4560
      TabIndex        =   13
      Top             =   5760
      Width           =   255
   End
   Begin VB.ComboBox Combo5 
      Height          =   315
      Left            =   240
      TabIndex        =   12
      Text            =   "red - #FF0000"
      Top             =   4680
      Width           =   4575
   End
   Begin VB.ComboBox Combo4 
      Height          =   315
      Left            =   240
      TabIndex        =   11
      Text            =   "pink - #FFC0CB"
      Top             =   3720
      Width           =   4575
   End
   Begin VB.ComboBox Combo3 
      Height          =   315
      Left            =   240
      TabIndex        =   10
      Text            =   "blue - #0000FF"
      Top             =   2760
      Width           =   4575
   End
   Begin VB.ComboBox Combo2 
      Height          =   315
      Left            =   240
      TabIndex        =   9
      Text            =   "black - #000000"
      Top             =   1680
      Width           =   4575
   End
   Begin VB.ComboBox Combo1 
      Height          =   315
      Left            =   240
      TabIndex        =   8
      Text            =   "white - #FFFFFF"
      Top             =   720
      Width           =   4575
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Cancel"
      Height          =   375
      Left            =   2520
      TabIndex        =   7
      Top             =   6360
      Width           =   1335
   End
   Begin VB.CommandButton Command1 
      Caption         =   "OK"
      Height          =   375
      Left            =   840
      TabIndex        =   6
      Top             =   6360
      Width           =   1335
   End
   Begin VB.Label Label6 
      Caption         =   "Back Ground Picture Name"
      Height          =   375
      Left            =   240
      TabIndex        =   5
      Top             =   5280
      Width           =   2895
   End
   Begin VB.Label Label5 
      Caption         =   "Active link Color"
      Height          =   255
      Left            =   240
      TabIndex        =   4
      Top             =   4320
      Width           =   2895
   End
   Begin VB.Label Label4 
      Caption         =   "Visited Link  Color"
      Height          =   255
      Left            =   240
      TabIndex        =   3
      Top             =   3360
      Width           =   2895
   End
   Begin VB.Label Label3 
      Caption         =   "Link Color"
      Height          =   375
      Left            =   240
      TabIndex        =   2
      Top             =   2280
      Width           =   2895
   End
   Begin VB.Label Label2 
      Caption         =   "Text Color"
      Height          =   255
      Left            =   240
      TabIndex        =   1
      Top             =   1320
      Width           =   2895
   End
   Begin VB.Label Label1 
      Caption         =   "Back Ground Color"
      Height          =   255
      Left            =   240
      TabIndex        =   0
      Top             =   360
      Width           =   2895
   End
End
Attribute VB_Name = "Body"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False


Private Sub Command1_Click()
frmMain1.RTBox.SelText = Chr(10) + Chr(13) + "<BODY" + "  " + "BGCOLOR=" + Chr(147) + Right(Combo1.text, 7) + Chr(148) + "  " + "TEXT=" + Chr(147) + Right(Combo2.text, 7) + Chr(148) + "  " + "LINK=" + Chr(147) + Right(Combo3.text, 7) + Chr(148) + "  " + "VLINK=" + Chr(147) + Right(Combo4.text, 7) + Chr(148) + "  " + "ALINK=" + Chr(147) + Right(Combo5.text, 7) + Chr(148) + "  " + "BACKGROUND=" + Chr(147) + Text1.text + Chr(148) + ">" + frmMain1.RTBox.SelText + Chr(10) + Chr(13) + "<H1></H1>" + Chr(10) + Chr(13) + "<P>...  content here!!!...</P>" + Chr(10) + Chr(13) + "<HR>" + Chr(10) + Chr(13) + "<P><SMALL>Created on ..." + Format$(Now, "Long date") + "</SMALL></P>" + Chr(10) + Chr(13) + "</BODY>"
frmMain1.RTBox.SelText = Chr(10) + Chr(13) + "</HTML>"
Unload Me
End Sub

Private Sub Command2_Click()
Unload Me
End Sub

Private Sub Command3_Click()
dlgCommonDialog.Filter = "JPG (*.jpg)|*.jpg|JPEG (*.jpeg)|*.jpeg"
dlgCommonDialog.ShowOpen
On Error GoTo ErrorHandler:
strfilename = dlgCommonDialog.FileName
Open strfilename For Input As #1
Text1.text = strfilename
Close #1
Exit Sub
ErrorHandler:
End Sub

Private Sub Form_Load()
Combo1.AddItem "alice blue - #F0F8FF"
Combo1.AddItem "antique white - #FAEBD7"
Combo1.AddItem "aqua - #00FFFF"
Combo1.AddItem "aqua marine - #7FFFD4"
Combo1.AddItem "azure - #F0FFFF"
Combo1.AddItem "beige - #F5F5DC"
Combo1.AddItem "bisque - #FFE4C4"
Combo1.AddItem "black - #000000"
Combo1.AddItem "blanched almond - #FFEBCD"
Combo1.AddItem "blue - #0000FF"
Combo1.AddItem "blue violet - #8A2BE2"
Combo1.AddItem "brown - #A52A2A"
Combo1.AddItem "burly wood - #DEB887"
Combo1.AddItem "cadet blue - #5F9EA0"
Combo1.AddItem "chartreuse - #7FFF00"
Combo1.AddItem "chocolate - #D2691E"
Combo1.AddItem "coral - #D2691E"
Combo1.AddItem "corn flower blue - #FF7F50"
Combo1.AddItem "corn silk - #6495ED"
Combo1.AddItem "crimson - #FFF8DC"
Combo1.AddItem "cyan - #DC143C"
Combo1.AddItem "dark blue - #00FFFF"
Combo1.AddItem "dark cyan - #00008B"
Combo1.AddItem "dark golden rod - #008B8B"
Combo1.AddItem "dark gray - #B8860B"
Combo1.AddItem "dark green - #A9A9A9"
Combo1.AddItem "dark khaki - #006400"
Combo1.AddItem "dark magenta - #BDB76B"
Combo1.AddItem "dark olive green - #8B008B"
Combo1.AddItem "dark orange - #556B2F"
Combo1.AddItem "dark orchid - #FF8C00"
Combo1.AddItem "dark red - #9932CC"
Combo1.AddItem "dark salmon - #8B0000"
Combo1.AddItem "dark sea green - #E9967A"
Combo1.AddItem "dark slate blue - #8FBC8F"
Combo1.AddItem "dark slate gray - #483D8B"
Combo1.AddItem "dark turquoise - #2F4F4F"
Combo1.AddItem "dark violet - #00CED1"
Combo1.AddItem "deep pink - #9400D3"
Combo1.AddItem "deep sky blue - #FF1493"
Combo1.AddItem "dim gray - #00BFFF"
Combo1.AddItem "dodger blue - #696969"
Combo1.AddItem "fire brick - #1E90FF"
Combo1.AddItem "floral white - #B22222"
Combo1.AddItem "forest green - #FFFAF0"
Combo1.AddItem "fuchsia - #228B22"
Combo1.AddItem "gainsboro - #FF00FF"
Combo1.AddItem "ghost white - #DCDCDC"
Combo1.AddItem "gold - #F8F8FF"
Combo1.AddItem "golden rod - #FFD700"
Combo1.AddItem "gray - #DAA520"
Combo1.AddItem "green - #808080"
Combo1.AddItem "green yellow - #ADFF2F"
Combo1.AddItem "honey dew - #F0FFF0"
Combo1.AddItem "hot pink - #FF69B4"
Combo1.AddItem "indian red - #CD5C5C"
Combo1.AddItem "indigo - #4B0082"
Combo1.AddItem "ivory - #FFFFF0"
Combo1.AddItem "khaki - #F0E68C"
Combo1.AddItem "lavender - #E6E6FA"
Combo1.AddItem "lavender blush - #FFF0F5"
Combo1.AddItem "lawn green - #7CFC00"
Combo1.AddItem "lemon chiffon - #FFFACD"
Combo1.AddItem "light blue - #ADD8E6"
Combo1.AddItem "light coral - #F08080"
Combo1.AddItem "light cyan - #E0FFFF"
Combo1.AddItem "light golden rod yellow - #FAFAD2"
Combo1.AddItem "light green - #90EE90"
Combo1.AddItem "light grey -  #D3D3D3"
Combo1.AddItem "light pink - #FFB6C1"
Combo1.AddItem "light salmon - #FFA07A"
Combo1.AddItem "light sea green - #20B2AA"
Combo1.AddItem "light sky blue - #87CEFA"
Combo1.AddItem "light steel blue - #B0C4DE"
Combo1.AddItem "light yellow - #FFFFE0"
Combo1.AddItem "lime - #00FF00"
Combo1.AddItem "lime green - #32CD32"
Combo1.AddItem "magenta - #FF00FF"
Combo1.AddItem "medium purple - #9370DB"
Combo1.AddItem "medium sea green - #3CB371"
Combo1.AddItem "navy - #000080"
Combo1.AddItem "navajo white - #FFDEAD"
Combo1.AddItem "orange - #FFA500"
Combo1.AddItem "orange red - #FF4500"
Combo1.AddItem "orchid - #DA70D6"
Combo1.AddItem "pale green - #98FB98"
Combo1.AddItem "pink - #FFC0CB"
Combo1.AddItem "plum - #DDA0DD"
Combo1.AddItem "purple - #800080"
Combo1.AddItem "red - #FF0000"
Combo1.AddItem "royal blue - #4169E1"
Combo1.AddItem "sandy brown - #F4A460"
Combo1.AddItem "sea green - #2E8B57"
Combo1.AddItem "silver - #C0C0C0"
Combo1.AddItem "sky blue - #87CEEB"
Combo1.AddItem "steel blue - #4682B4"
Combo1.AddItem "violet - #EE82EE"
Combo1.AddItem "wheat - #F5DEB3"
Combo1.AddItem "white - #FFFFFF"
Combo1.AddItem "white smoke - #F5F5F5"
Combo1.AddItem "yellow - #FFFF00"
Combo1.AddItem "yellow green - #9ACD32"


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


Combo4.AddItem "alice blue - #F0F8FF"
Combo4.AddItem "antique white - #FAEBD7"
Combo4.AddItem "aqua - #00FFFF"
Combo4.AddItem "aqua marine - #7FFFD4"
Combo4.AddItem "azure - #F0FFFF"
Combo4.AddItem "beige - #F5F5DC"
Combo4.AddItem "bisque - #FFE4C4"
Combo4.AddItem "black - #000000"
Combo4.AddItem "blanched almond - #FFEBCD"
Combo4.AddItem "blue - #0000FF"
Combo4.AddItem "blue violet - #8A2BE2"
Combo4.AddItem "brown - #A52A2A"
Combo4.AddItem "burly wood - #DEB887"
Combo4.AddItem "cadet blue - #5F9EA0"
Combo4.AddItem "chartreuse - #7FFF00"
Combo4.AddItem "chocolate - #D2691E"
Combo4.AddItem "coral - #D2691E"
Combo4.AddItem "corn flower blue - #FF7F50"
Combo4.AddItem "corn silk - #6495ED"
Combo4.AddItem "crimson - #FFF8DC"
Combo4.AddItem "cyan - #DC143C"
Combo4.AddItem "dark blue - #00FFFF"
Combo4.AddItem "dark cyan - #00008B"
Combo4.AddItem "dark golden rod - #008B8B"
Combo4.AddItem "dark gray - #B8860B"
Combo4.AddItem "dark green - #A9A9A9"
Combo4.AddItem "dark khaki - #006400"
Combo4.AddItem "dark magenta - #BDB76B"
Combo4.AddItem "dark olive green - #8B008B"
Combo4.AddItem "dark orange - #556B2F"
Combo4.AddItem "dark orchid - #FF8C00"
Combo4.AddItem "dark red - #9932CC"
Combo4.AddItem "dark salmon - #8B0000"
Combo4.AddItem "dark sea green - #E9967A"
Combo4.AddItem "dark slate blue - #8FBC8F"
Combo4.AddItem "dark slate gray - #483D8B"
Combo4.AddItem "dark turquoise - #2F4F4F"
Combo4.AddItem "dark violet - #00CED1"
Combo4.AddItem "deep pink - #9400D3"
Combo4.AddItem "deep sky blue - #FF1493"
Combo4.AddItem "dim gray - #00BFFF"
Combo4.AddItem "dodger blue - #696969"
Combo4.AddItem "fire brick - #1E90FF"
Combo4.AddItem "floral white - #B22222"
Combo4.AddItem "forest green - #FFFAF0"
Combo4.AddItem "fuchsia - #228B22"
Combo4.AddItem "gainsboro - #FF00FF"
Combo4.AddItem "ghost white - #DCDCDC"
Combo4.AddItem "gold - #F8F8FF"
Combo4.AddItem "golden rod - #FFD700"
Combo4.AddItem "gray - #DAA520"
Combo4.AddItem "green - #808080"
Combo4.AddItem "green yellow - #ADFF2F"
Combo4.AddItem "honey dew - #F0FFF0"
Combo4.AddItem "hot pink - #FF69B4"
Combo4.AddItem "indian red - #CD5C5C"
Combo4.AddItem "indigo - #4B0082"
Combo4.AddItem "ivory - #FFFFF0"
Combo4.AddItem "khaki - #F0E68C"
Combo4.AddItem "lavender - #E6E6FA"
Combo4.AddItem "lavender blush - #FFF0F5"
Combo4.AddItem "lawn green - #7CFC00"
Combo4.AddItem "lemon chiffon - #FFFACD"
Combo4.AddItem "light blue - #ADD8E6"
Combo4.AddItem "light coral - #F08080"
Combo4.AddItem "light cyan - #E0FFFF"
Combo4.AddItem "light golden rod yellow - #FAFAD2"
Combo4.AddItem "light green - #90EE90"
Combo4.AddItem "light grey -  #D3D3D3"
Combo4.AddItem "light pink - #FFB6C1"
Combo4.AddItem "light salmon - #FFA07A"
Combo4.AddItem "light sea green - #20B2AA"
Combo4.AddItem "light sky blue - #87CEFA"
Combo4.AddItem "light steel blue - #B0C4DE"
Combo4.AddItem "light yellow - #FFFFE0"
Combo4.AddItem "lime - #00FF00"
Combo4.AddItem "lime green - #32CD32"
Combo4.AddItem "magenta - #FF00FF"
Combo4.AddItem "medium purple - #9370DB"
Combo4.AddItem "medium sea green - #3CB371"
Combo4.AddItem "navy - #000080"
Combo4.AddItem "navajo white - #FFDEAD"
Combo4.AddItem "orange - #FFA500"
Combo4.AddItem "orange red - #FF4500"
Combo4.AddItem "orchid - #DA70D6"
Combo4.AddItem "pale green - #98FB98"
Combo4.AddItem "pink - #FFC0CB"
Combo4.AddItem "plum - #DDA0DD"
Combo4.AddItem "purple - #800080"
Combo4.AddItem "red - #FF0000"
Combo4.AddItem "royal blue - #4169E1"
Combo4.AddItem "sandy brown - #F4A460"
Combo4.AddItem "sea green - #2E8B57"
Combo4.AddItem "silver - #C0C0C0"
Combo4.AddItem "sky blue - #87CEEB"
Combo4.AddItem "steel blue - #4682B4"
Combo4.AddItem "violet - #EE82EE"
Combo4.AddItem "wheat - #F5DEB3"
Combo4.AddItem "white - #FFFFFF"
Combo4.AddItem "white smoke - #F5F5F5"
Combo4.AddItem "yellow - #FFFF00"
Combo4.AddItem "yellow green - #9ACD32"


Combo5.AddItem "alice blue - #F0F8FF"
Combo5.AddItem "antique white - #FAEBD7"
Combo5.AddItem "aqua - #00FFFF"
Combo5.AddItem "aqua marine - #7FFFD4"
Combo5.AddItem "azure - #F0FFFF"
Combo5.AddItem "beige - #F5F5DC"
Combo5.AddItem "bisque - #FFE4C4"
Combo5.AddItem "black - #000000"
Combo5.AddItem "blanched almond - #FFEBCD"
Combo5.AddItem "blue - #0000FF"
Combo5.AddItem "blue violet - #8A2BE2"
Combo5.AddItem "brown - #A52A2A"
Combo5.AddItem "burly wood - #DEB887"
Combo5.AddItem "cadet blue - #5F9EA0"
Combo5.AddItem "chartreuse - #7FFF00"
Combo5.AddItem "chocolate - #D2691E"
Combo5.AddItem "coral - #D2691E"
Combo5.AddItem "corn flower blue - #FF7F50"
Combo5.AddItem "corn silk - #6495ED"
Combo5.AddItem "crimson - #FFF8DC"
Combo5.AddItem "cyan - #DC143C"
Combo5.AddItem "dark blue - #00FFFF"
Combo5.AddItem "dark cyan - #00008B"
Combo5.AddItem "dark golden rod - #008B8B"
Combo5.AddItem "dark gray - #B8860B"
Combo5.AddItem "dark green - #A9A9A9"
Combo5.AddItem "dark khaki - #006400"
Combo5.AddItem "dark magenta - #BDB76B"
Combo5.AddItem "dark olive green - #8B008B"
Combo5.AddItem "dark orange - #556B2F"
Combo5.AddItem "dark orchid - #FF8C00"
Combo5.AddItem "dark red - #9932CC"
Combo5.AddItem "dark salmon - #8B0000"
Combo5.AddItem "dark sea green - #E9967A"
Combo5.AddItem "dark slate blue - #8FBC8F"
Combo5.AddItem "dark slate gray - #483D8B"
Combo5.AddItem "dark turquoise - #2F4F4F"
Combo5.AddItem "dark violet - #00CED1"
Combo5.AddItem "deep pink - #9400D3"
Combo5.AddItem "deep sky blue - #FF1493"
Combo5.AddItem "dim gray - #00BFFF"
Combo5.AddItem "dodger blue - #696969"
Combo5.AddItem "fire brick - #1E90FF"
Combo5.AddItem "floral white - #B22222"
Combo5.AddItem "forest green - #FFFAF0"
Combo5.AddItem "fuchsia - #228B22"
Combo5.AddItem "gainsboro - #FF00FF"
Combo5.AddItem "ghost white - #DCDCDC"
Combo5.AddItem "gold - #F8F8FF"
Combo5.AddItem "golden rod - #FFD700"
Combo5.AddItem "gray - #DAA520"
Combo5.AddItem "green - #808080"
Combo5.AddItem "green yellow - #ADFF2F"
Combo5.AddItem "honey dew - #F0FFF0"
Combo5.AddItem "hot pink - #FF69B4"
Combo5.AddItem "indian red - #CD5C5C"
Combo5.AddItem "indigo - #4B0082"
Combo5.AddItem "ivory - #FFFFF0"
Combo5.AddItem "khaki - #F0E68C"
Combo5.AddItem "lavender - #E6E6FA"
Combo5.AddItem "lavender blush - #FFF0F5"
Combo5.AddItem "lawn green - #7CFC00"
Combo5.AddItem "lemon chiffon - #FFFACD"
Combo5.AddItem "light blue - #ADD8E6"
Combo5.AddItem "light coral - #F08080"
Combo5.AddItem "light cyan - #E0FFFF"
Combo5.AddItem "light golden rod yellow - #FAFAD2"
Combo5.AddItem "light green - #90EE90"
Combo5.AddItem "light grey -  #D3D3D3"
Combo5.AddItem "light pink - #FFB6C1"
Combo5.AddItem "light salmon - #FFA07A"
Combo5.AddItem "light sea green - #20B2AA"
Combo5.AddItem "light sky blue - #87CEFA"
Combo5.AddItem "light steel blue - #B0C4DE"
Combo5.AddItem "light yellow - #FFFFE0"
Combo5.AddItem "lime - #00FF00"
Combo5.AddItem "lime green - #32CD32"
Combo5.AddItem "magenta - #FF00FF"
Combo5.AddItem "medium purple - #9370DB"
Combo5.AddItem "medium sea green - #3CB371"
Combo5.AddItem "navy - #000080"
Combo5.AddItem "navajo white - #FFDEAD"
Combo5.AddItem "orange - #FFA500"
Combo5.AddItem "orange red - #FF4500"
Combo5.AddItem "orchid - #DA70D6"
Combo5.AddItem "pale green - #98FB98"
Combo5.AddItem "pink - #FFC0CB"
Combo5.AddItem "plum - #DDA0DD"
Combo5.AddItem "purple - #800080"
Combo5.AddItem "red - #FF0000"
Combo5.AddItem "royal blue - #4169E1"
Combo5.AddItem "sandy brown - #F4A460"
Combo5.AddItem "sea green - #2E8B57"
Combo5.AddItem "silver - #C0C0C0"
Combo5.AddItem "sky blue - #87CEEB"
Combo5.AddItem "steel blue - #4682B4"
Combo5.AddItem "violet - #EE82EE"
Combo5.AddItem "wheat - #F5DEB3"
Combo5.AddItem "white - #FFFFFF"
Combo5.AddItem "white smoke - #F5F5F5"
Combo5.AddItem "yellow - #FFFF00"
Combo5.AddItem "yellow green - #9ACD32"

End Sub
