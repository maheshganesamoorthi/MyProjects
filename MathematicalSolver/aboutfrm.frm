VERSION 5.00
Begin VB.Form aboutfrm 
   Appearance      =   0  'Flat
   BackColor       =   &H00C0FFFF&
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "About..."
   ClientHeight    =   3240
   ClientLeft      =   45
   ClientTop       =   405
   ClientWidth     =   6870
   Icon            =   "aboutfrm.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   3240
   ScaleWidth      =   6870
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows Default
   WhatsThisHelp   =   -1  'True
   Begin VB.Frame Frame2 
      BackColor       =   &H00C0FFFF&
      Height          =   1335
      Left            =   2760
      TabIndex        =   1
      Top             =   1680
      Width           =   3975
      Begin VB.Label Label1 
         BackColor       =   &H00C0FFFF&
         Caption         =   $"aboutfrm.frx":076A
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   11.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   975
         Left            =   240
         TabIndex        =   2
         Top             =   240
         Width           =   3495
      End
   End
   Begin VB.Frame Frame1 
      BackColor       =   &H00C0FFFF&
      Height          =   1935
      Left            =   120
      TabIndex        =   0
      Top             =   1080
      Width           =   2535
      Begin VB.Image Image2 
         Height          =   1440
         Left            =   360
         Picture         =   "aboutfrm.frx":07F7
         Top             =   360
         Width           =   1695
      End
   End
   Begin VB.Image Image1 
      Height          =   855
      Left            =   -120
      Picture         =   "aboutfrm.frx":87B9
      Stretch         =   -1  'True
      Top             =   0
      Width           =   7050
   End
End
Attribute VB_Name = "aboutfrm"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
