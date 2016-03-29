VERSION 5.00
Begin VB.MDIForm mathmainfrm 
   BackColor       =   &H00C0FFFF&
   Caption         =   "MDIForm1"
   ClientHeight    =   7035
   ClientLeft      =   165
   ClientTop       =   825
   ClientWidth     =   8355
   LinkTopic       =   "MDIForm1"
   StartUpPosition =   3  'Windows Default
   Begin VB.Menu mnufile 
      Caption         =   "File"
      Begin VB.Menu mnucalc 
         Caption         =   "Calculator"
      End
      Begin VB.Menu mnuprime 
         Caption         =   "Prime"
      End
      Begin VB.Menu mnucomplex 
         Caption         =   "complex"
      End
      Begin VB.Menu mnusum 
         Caption         =   "sum"
      End
      Begin VB.Menu mnueqn 
         Caption         =   "eqn"
      End
      Begin VB.Menu mnuroot 
         Caption         =   "root"
      End
      Begin VB.Menu mnusolveeqn 
         Caption         =   "solveeqn"
      End
      Begin VB.Menu mnusurface 
         Caption         =   "surface"
      End
      Begin VB.Menu mnusur2 
         Caption         =   "surface2"
      End
      Begin VB.Menu mnuap 
         Caption         =   "ap"
      End
      Begin VB.Menu mnucar 
         Caption         =   "cortesion"
      End
      Begin VB.Menu mnucon 
         Caption         =   "conversion"
      End
      Begin VB.Menu mnueval 
         Caption         =   "evaluvate"
      End
      Begin VB.Menu mnuexcel 
         Caption         =   "excel"
      End
      Begin VB.Menu mnugauss 
         Caption         =   "gauss"
      End
      Begin VB.Menu mnugcd 
         Caption         =   "gcd"
      End
      Begin VB.Menu mnugp 
         Caption         =   "gp"
      End
      Begin VB.Menu mnugraph 
         Caption         =   "graph"
      End
      Begin VB.Menu mnutntergral 
         Caption         =   "intergral"
      End
      Begin VB.Menu mnuinterpol 
         Caption         =   "interpolation"
      End
      Begin VB.Menu mnuinterest 
         Caption         =   "interest"
      End
      Begin VB.Menu mnumatrix 
         Caption         =   "matrix"
      End
      Begin VB.Menu mnunumtoword 
         Caption         =   "numtoword"
      End
      Begin VB.Menu mnupoly 
         Caption         =   "poly"
      End
      Begin VB.Menu mnuseries 
         Caption         =   "series"
      End
      Begin VB.Menu mnuset 
         Caption         =   "set"
      End
      Begin VB.Menu mnuset2 
         Caption         =   "set2"
      End
      Begin VB.Menu mnutable 
         Caption         =   "table"
      End
      Begin VB.Menu mnutri 
         Caption         =   "trianular"
      End
   End
   Begin VB.Menu mnuexit 
      Caption         =   "exit"
   End
End
Attribute VB_Name = "mathmainfrm"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub MDIForm_Load()
Me.WindowState = vbMaximized
End Sub

Private Sub mnuap_Click()
apfrm.Show
End Sub

Private Sub mnucalc_Click()
Calculator.Show
End Sub

Private Sub mnucar_Click()
Carfrm.Show
End Sub

Private Sub mnucomplex_Click()
Set comfrm = New complex
comfrm.Show
End Sub

Private Sub mnucon_Click()
convfrm.Show
End Sub

Private Sub mnueqn_Click()
eqn.Show
End Sub

Private Sub mnueval_Click()
Evalfrm.Show
End Sub

Private Sub mnuexcel_Click()
excfrm.Show
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

Private Sub mnuinterest_Click()
interest.Show
End Sub

Private Sub mnuinterpol_Click()
interfrm.Show
End Sub

Private Sub mnumatrix_Click()
matrix.Show
End Sub

Private Sub mnunumtoword_Click()
numtoword.Show
End Sub

Private Sub mnupoly_Click()
polyfrm.Show
End Sub

Private Sub mnuprime_Click()
prime.Show
End Sub

Private Sub mnuroot_Click()
root.Show
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

Private Sub mnusolveeqn_Click()
Solveeqn.Show
End Sub

Private Sub mnusum_Click()
sum.Show
End Sub

Private Sub mnusur2_Click()
surfrm2.Show
End Sub

Private Sub mnusurface_Click()
surface.Show
End Sub

Private Sub mnutable_Click()
mathstable.Show
End Sub

Private Sub mnutntergral_Click()
integration.Show
End Sub

Private Sub mnutri_Click()
trifrm.Show
End Sub
