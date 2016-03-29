VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior  = 0  'vbNone
  MTSTransactionMode  = 0  'NotAnMTSObject
END
Attribute VB_Name = "PubResults"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Option Explicit

Public pInt As Integer
Public pLong As Long
Public pDouble As Double
Public Res As Variant
' Return value of cell in current R[ow]C[ol]
Public Function RC(pRow As Integer, pStrCol As String)
Dim intCol As Integer
pStrCol = UCase(pStrCol)
intCol = Asc(pStrCol) - 64
If intCol > excfrm.mfGrid.Cols - 3 Or _
   pRow > excfrm.mfGrid.Rows Then
   RC = 0
   Exit Function
End If
RC = Val(excfrm.mfGrid.TextMatrix(pRow, intCol))
End Function

