VERSION 5.00
Begin VB.Form mainfrm 
   BackColor       =   &H00FFFFFF&
   Caption         =   "Mathematical Solver"
   ClientHeight    =   8700
   ClientLeft      =   165
   ClientTop       =   1155
   ClientWidth     =   11250
   Icon            =   "main.frx":0000
   LinkTopic       =   "Form1"
   ScaleHeight     =   8700
   ScaleWidth      =   11250
   StartUpPosition =   3  'Windows Default
   Begin VB.Label Label3 
      BackColor       =   &H00FFFFFF&
      Caption         =   "Exit"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   255
      Left            =   14280
      TabIndex        =   2
      Top             =   9960
      Width           =   735
   End
   Begin VB.Label Label2 
      BackColor       =   &H00FFFFFF&
      Caption         =   "About ..."
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   255
      Left            =   14400
      TabIndex        =   1
      Top             =   2760
      Width           =   855
   End
   Begin VB.Label Label1 
      BackColor       =   &H00FFFFFF&
      Caption         =   " Help"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   255
      Left            =   14400
      TabIndex        =   0
      Top             =   1920
      Width           =   615
   End
   Begin VB.Image Image5 
      Height          =   1080
      Left            =   13920
      Picture         =   "main.frx":0CCA
      ToolTipText     =   "Exit"
      Top             =   9120
      Width           =   1125
   End
   Begin VB.Image Image4 
      Height          =   600
      Left            =   14400
      Picture         =   "main.frx":4D2C
      ToolTipText     =   "Help"
      Top             =   1440
      Width           =   585
   End
   Begin VB.Image Image3 
      Height          =   540
      Left            =   14400
      Picture         =   "main.frx":602E
      ToolTipText     =   "About ..."
      Top             =   2280
      Width           =   525
   End
   Begin VB.Image Image2 
      Height          =   1710
      Left            =   0
      Picture         =   "main.frx":6FA0
      Stretch         =   -1  'True
      Top             =   -240
      Width           =   15360
   End
   Begin VB.Image Image1 
      Height          =   8835
      Left            =   0
      Picture         =   "main.frx":15F9C
      Stretch         =   -1  'True
      Top             =   1560
      Width           =   15255
   End
   Begin VB.Menu mnupros 
      Caption         =   "Progression"
      Begin VB.Menu mnuapfrm 
         Caption         =   "Arthimetic Progression"
      End
      Begin VB.Menu mnugp 
         Caption         =   "Geomentric Progression"
      End
      Begin VB.Menu mnuseries 
         Caption         =   "Series"
      End
      Begin VB.Menu mnu11 
         Caption         =   "Summation of some special series"
      End
      Begin VB.Menu mm 
         Caption         =   "Prime Numbers"
      End
   End
   Begin VB.Menu mnuMENSURATION 
      Caption         =   "Geomentry Solver"
      Begin VB.Menu mnu9th 
         Caption         =   "Mensuration - I"
      End
      Begin VB.Menu mnusur2 
         Caption         =   "Mensuration - II"
      End
   End
   Begin VB.Menu mnusethead 
      Caption         =   "Sets"
      Begin VB.Menu mnusetv 
         Caption         =   "Set operations "
         Begin VB.Menu mnuset 
            Caption         =   "Union , Intersection , Complement"
         End
         Begin VB.Menu mnuset2 
            Caption         =   "Difference , Associative Law"
         End
         Begin VB.Menu mnuDis 
            Caption         =   "Distributive Law , De Morgon's Law"
         End
      End
      Begin VB.Menu mnuvendia 
         Caption         =   "Venn Diagram"
      End
   End
   Begin VB.Menu mnuAlgebra 
      Caption         =   "Algebra"
      Begin VB.Menu mnugcd 
         Caption         =   "GCD"
      End
      Begin VB.Menu mnuex 
         Caption         =   "Expression Evaluvation"
      End
      Begin VB.Menu mnu6th 
         Caption         =   "Simultaneous Equations"
         Index           =   0
      End
      Begin VB.Menu mnu8th 
         Caption         =   "Factorisation"
      End
      Begin VB.Menu mnu7th 
         Caption         =   "Square root"
      End
      Begin VB.Menu mnupoly 
         Caption         =   "Polynomial Operation"
      End
      Begin VB.Menu mnufact 
         Caption         =   "Factorial && Fabinocci"
      End
      Begin VB.Menu mnuper 
         Caption         =   "Permutation and Combination"
      End
      Begin VB.Menu mnubio 
         Caption         =   "Polynomial Expansion (Binomial Theorem)"
      End
      Begin VB.Menu mnupolyformation 
         Caption         =   "Polynomial Formation"
      End
   End
   Begin VB.Menu mnuanageo 
      Caption         =   "Analytical geomentry"
      Begin VB.Menu mnumidpoit 
         Caption         =   "Mid-Point"
      End
      Begin VB.Menu mnucentroidofthetriangle 
         Caption         =   "Centroid of the triangle"
      End
      Begin VB.Menu mnuratio 
         Caption         =   "Ratio Formula ( Section Formula)"
      End
      Begin VB.Menu mnucartesen 
         Caption         =   "Stright Line"
      End
      Begin VB.Menu mnuareaoftriangle 
         Caption         =   "Area of Triangle"
      End
      Begin VB.Menu mnuincenter 
         Caption         =   "Co-ordinates of the incenter of a triangle"
      End
      Begin VB.Menu mnucirtri 
         Caption         =   "Co-ordinates of the circumcentre of a triangle"
      End
      Begin VB.Menu mnuorthotri 
         Caption         =   "Co-ordinates of the orthocentre of the triangle"
      End
   End
   Begin VB.Menu mnuTrigonometry 
      Caption         =   "Trigonometry"
      Begin VB.Menu mnutri 
         Caption         =   "Triangle Solver"
      End
   End
   Begin VB.Menu mnunumerical 
      Caption         =   "Numerical method"
      Begin VB.Menu mnunumericsolve 
         Caption         =   "Solve Simultaneous Equations"
         Begin VB.Menu mnugauss 
            Caption         =   "Gauss Elimination && Jordon method"
         End
      End
      Begin VB.Menu mnuinterpolation 
         Caption         =   "Interpolation"
         Begin VB.Menu mnuinter 
            Caption         =   "Lagrange's Interpolation"
         End
      End
   End
   Begin VB.Menu mnuconversions 
      Caption         =   "Conversions"
      Begin VB.Menu mnunum 
         Caption         =   "Numeric to Word"
      End
      Begin VB.Menu mnucon 
         Caption         =   "Unit Conversion"
      End
      Begin VB.Menu mnubase 
         Caption         =   "Base Conversion ( Number system )"
      End
   End
   Begin VB.Menu mnumatalgebra 
      Caption         =   "Matrix Algebra"
      Begin VB.Menu mnumatrix 
         Caption         =   "Matrix operations (Add,Sub,Mul,Div)"
      End
      Begin VB.Menu mnumatdet 
         Caption         =   "Matrix operations (Inverse , Determinant,Transpose)"
      End
   End
   Begin VB.Menu mnucomplexnum 
      Caption         =   "Complex Numbers"
      Begin VB.Menu mnu10 
         Caption         =   "Complex Number Operations"
      End
   End
   Begin VB.Menu mnuintergration 
      Caption         =   "Integration"
      Begin VB.Menu mnuintegral 
         Caption         =   "Single Integration && Double Integration"
      End
   End
   Begin VB.Menu mnuStatistics 
      Caption         =   "Statistics"
      Begin VB.Menu mnuDispersion 
         Caption         =   "Dispersion"
      End
      Begin VB.Menu mnuStandardDeviation 
         Caption         =   "Standard Deviation"
      End
      Begin VB.Menu mnuCoefficientofVariation 
         Caption         =   "Coefficient of Variation"
      End
      Begin VB.Menu mnuchart 
         Caption         =   "Chart"
      End
   End
   Begin VB.Menu mnugeomentry 
      Caption         =   "Geomentry"
      Begin VB.Menu mnugraph 
         Caption         =   "Graph Poltter"
      End
   End
   Begin VB.Menu mnufile 
      Caption         =   "Others"
      Begin VB.Menu mnucalc 
         Caption         =   "Calculator"
      End
      Begin VB.Menu mnuexcelfrm 
         Caption         =   "Excel Sheet"
      End
      Begin VB.Menu mnuinterest 
         Caption         =   "Interest"
      End
      Begin VB.Menu mnutable 
         Caption         =   "Table"
      End
      Begin VB.Menu mnututorial 
         Caption         =   "Tutorial"
         Begin VB.Menu mnuangle 
            Caption         =   "Angle"
         End
         Begin VB.Menu mnufrac 
            Caption         =   "Fraction"
         End
      End
      Begin VB.Menu mnumathgame 
         Caption         =   "Math game"
      End
   End
End
Attribute VB_Name = "mainfrm"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'*******************************************************************************
'** Product Name  : Mathematical solver                                       **
'** Version    : 1.0                                                          **
'** Language   : Visual Basic 6.0                                             **
'** Components : * Microsoft Chart Control 6.0 (SP4)(OLEDB)                   **
'**              * Microsoft Comm Control 6.0                                 **
'**              * Microsoft FlexGrid Control 6.0 (SP6)                       **
'**              * Microsoft Rich Text Box Control 6.0 (SP6)                  **
'**              * Microsoft Script Control 1.0                               **
'**              * Microsoft Tabbed Dialog Control 6.0 (SP6)                  **
'** Developer  : GANESAN.C and BHARATH.S                                      **
'** Description: The software is used to solve problem and it has some example**
'**                                                                           **
'** Features   :                                                              **
'** -         **
'**           **
'**           **
'**           **
'**           **
'**           **
'**           **
'**           **
'**           **
'**           **
'**           **
'**           **
'**           **
'**           **
'**           **
'**           **
'*******************************************************************************
Private Sub Form_Load()
Me.WindowState = vbMaximized
End Sub
Private Sub Form_unLoad(Cancel As Integer)
For i = Forms.Count - 1 To 1 Step -1
        Unload Forms(i)
    Next
    If Me.WindowState <> vbMinimized Then
        SaveSetting App.Title, "Settings", "MainLeft", Me.Left
        SaveSetting App.Title, "Settings", "MainTop", Me.Top
        SaveSetting App.Title, "Settings", "MainWidth", Me.Width
        SaveSetting App.Title, "Settings", "MainHeight", Me.Height
    End If
End Sub
Private Sub Image3_Click()
mnuabout_Click
End Sub

Private Sub Image5_Click()
mnuexit_Click
End Sub

Private Sub mm_Click()
prime.Show
End Sub

Private Sub mnu10_Click()
complex.Show
End Sub

Private Sub mnu11_Click()
sum.Show
End Sub

Private Sub mnu6th_Click(Index As Integer)
eqn.Show
End Sub

Private Sub mnu7th_Click()
root.Show
End Sub

Private Sub mnu8th_Click()
Solveeqn.Show
End Sub

Private Sub mnu9th_Click()
surface.Show
End Sub

Private Sub mnuabout_Click()
'MsgBox " Mathematical Solver 1.0" & vbNewLine & "Created by GANESAN.C  &   BHARATH.S"
aboutfrm.Show
End Sub

Private Sub mnuangle_Click()
anglefrm.Show
End Sub

Private Sub mnuapfrm_Click()
apfrm.Show
End Sub

Private Sub mnuareaoftriangle_Click()
areatrifrm.Show
End Sub

Private Sub mnubase_Click()
basefrm.Show
End Sub

Private Sub mnubio_Click()
polyexpan.Show
End Sub

Private Sub mnucalc_Click()
Calculator.Show
End Sub

Private Sub mnucartesen_Click()
Carfrm.Show
End Sub

Private Sub mnucentroidofthetriangle_Click()
ratiofrm.Show
End Sub

Private Sub mnuchart_Click()
chartfrm.Show
End Sub

Private Sub mnucirtri_Click()
cirtrifrm.Show
End Sub

Private Sub mnuCoefficientofVariation_Click()
coevarfrm.Show
End Sub

Private Sub mnucon_Click()
convfrm.Show
End Sub

Private Sub mnuDispersion_Click()
disfrm.Show
End Sub

Private Sub mnuex_Click()
Evalfrm.Show
End Sub

Private Sub mnuexcelfrm_Click()
excfrm.Show
End Sub

Private Sub mnuexit_Click()
Unload Me
End Sub

Private Sub mnufact_Click()
factfrm.Show
End Sub

Private Sub mnufrac_Click()
properfrm.Show
End Sub

Private Sub mnugauss_Click()
gauss.Show
End Sub

Private Sub mnugcd_Click()
gcd.Show
End Sub

Private Sub mnugp_Click()
gpfrm.Show
End Sub

Private Sub mnugraph_Click()
graph.Show
End Sub

Private Sub mnuincenter_Click()
areatrifrm.Show
End Sub

Private Sub mnuintegral_Click()
integration.Show
End Sub

Private Sub mnuinter_Click()
interfrm.Show
End Sub

Private Sub mnuinterest_Click()
interest.Show
End Sub

Private Sub mnumatdet_Click()
matdetfrm.Show
End Sub

Private Sub mnumathgame_Click()
mathgamefrm.Show
End Sub

Private Sub mnumatrix_Click()
matrix.Show
End Sub

Private Sub mnumidpoit_Click()
ratiofrm.Show
End Sub

Private Sub mnunum_Click()
numtoword.Show
End Sub

Private Sub mnuorthotri_Click()
orthotrifrm.Show
End Sub

Private Sub mnuper_Click()
permufrm.Show
End Sub

Private Sub mnupoly_Click()
polyfrm.Show
End Sub

Private Sub mnupolyformation_Click()
polyformation.Show
End Sub

Private Sub mnuratio_Click()
ratiofrm.Show
End Sub

Private Sub mnuseries_Click()
seriesfrm.Show
End Sub

Private Sub mnuset_Click()
setfrm.Show
End Sub

Private Sub mnuset2_Click()
setabfrm.Show
End Sub

Private Sub mnuStandardDeviation_Click()
stddivfrm.Show
End Sub

Private Sub mnusur2_Click()
surfrm2.Show
End Sub

Private Sub mnutable_Click()
mathstable.Show
End Sub

Private Sub mnutri_Click()
trifrm.Show
End Sub

Private Sub mnuvendia_Click()
venfrm.Show
End Sub
