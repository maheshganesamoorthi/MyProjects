Attribute VB_Name = "Module1"
Public fMainForm As frmMain1
Public re As Boolean
Public fs As Long
Declare Function SendMessage Lib "user32" Alias "SendMessageA" (ByVal hwnd As Long, ByVal wMsg As Long, ByVal wParam As Long, lParam As Any) As Long
Declare Function StretchBlt Lib "gdi32" (ByVal hdc As Long, ByVal X As Long, ByVal _
Y As Long, ByVal nWidth As Long, ByVal nHeight As Long, ByVal hSrcDC As Long, ByVal _
xSrc As Long, ByVal ySrc As Long, ByVal nSrcWidth As Long, ByVal nSrcHeight As _
Long, ByVal dwRop As Long) As Long
Public Const SRCCOPY = &HCC0020
Public Const WM_COPY = &H301
Public Const WM_PASTE = &H302
Public Const WM_CUT = &H300
Public Const EM_LINEINDEX = &HBB
Public Const EM_LINEFROMCHAR = &HC9
 
Public undoStack(999) As String
Public undoStage As Integer
Public Undoing As Boolean
Public CountUndo As Integer

Public Declare Function GetMenu Lib "user32" (ByVal hwnd As Long) As Long
Public Declare Function GetSubMenu Lib "user32" (ByVal hmenu As Long, ByVal nPos As Long) As Long
Public Declare Function GetMenuItemID Lib "user32" (ByVal hmenu As Long, ByVal nPos As Long) As Long
Public Declare Function SetMenuItemBitmaps Lib "user32" (ByVal hmenu As Long, ByVal nPosition As Long, ByVal wFlags As Long, ByVal hBitmapUnchecked As Long, ByVal hBitmapChecked As Long) As Long

Public Function AddMenuBitmap(WhichForm As Form, WhichSubMenu As Long, WhichMenuItem As Long, ImageList_ As ImageList, BitmapIndex As Variant) As Boolean
    Dim MainMenuhWnd As Variant
    Dim SubMenuhWnd As Variant
    Dim SubMenuID As Variant
    
    MainMenuhWnd = GetMenu(WhichForm.hwnd)
    SubMenuhWnd = GetSubMenu(MainMenuhWnd, WhichSubMenu)
    SubMenuID = GetMenuItemID(SubMenuhWnd, WhichMenuItem)
    AddMenuBitmap = SetMenuItemBitmaps(MainMenuhWnd, SubMenuID, MF_BITMAP, ImageList_.ListImages(BitmapIndex).Picture, ImageList_.ListImages(BitmapIndex).Picture)
End Function
'Public Function GetCurrentLine(RichTextBox As RichTextBox)
 '   Dim Current As Long
  '  Current = SendMessage(RichTextBox.hwnd, EM_LINEFROMCHAR, -1, 0&) + 1
  '  frmMain1.StatusBar1.Panels(3).text = "CurrentLine :" + Format(Current, "###,###,###,###")
  ' End Function
Sub Main()
    frmSplash.Show
    frmSplash.Refresh
    Set fMainForm1 = New frmMain1
    Load fMainForm1
    Unload frmSplash
    fMainForm1.Show
End Sub


