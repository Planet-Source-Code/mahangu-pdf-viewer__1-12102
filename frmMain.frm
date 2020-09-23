VERSION 5.00
Object = "{CA8A9783-280D-11CF-A24D-444553540000}#1.3#0"; "pdf.ocx"
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "COMDLG32.OCX"
Begin VB.Form frmMain 
   Caption         =   "PDF Viewer"
   ClientHeight    =   3195
   ClientLeft      =   165
   ClientTop       =   735
   ClientWidth     =   4680
   LinkTopic       =   "Form1"
   ScaleHeight     =   3195
   ScaleWidth      =   4680
   StartUpPosition =   3  'Windows Default
   Begin MSComDlg.CommonDialog dlgopen 
      Left            =   2160
      Top             =   1320
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
      Filter          =   "PDF Files | *.pdf"
   End
   Begin PdfLib.Pdf pdfmain 
      Height          =   735
      Left            =   0
      TabIndex        =   0
      Top             =   0
      Width           =   1575
      _Version        =   65539
      _ExtentX        =   2778
      _ExtentY        =   1296
      _StockProps     =   0
      SRC             =   ""
   End
   Begin VB.Menu mnufile 
      Caption         =   "&File"
      Begin VB.Menu mnuopen 
         Caption         =   "&Open"
      End
   End
   Begin VB.Menu mnuhelp 
      Caption         =   "&Help"
      Begin VB.Menu mnubabout 
         Caption         =   "&About"
      End
   End
End
Attribute VB_Name = "frmMain"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()

End Sub

Private Sub Form_Load()
pdfmain.Width = ScaleWidth
pdfmain.Height = ScaleHeight

End Sub

Private Sub Form_Resize()
pdfmain.Width = ScaleWidth
pdfmain.Height = ScaleHeight

End Sub

Private Sub mnubabout_Click()
MsgBox "Coded by Mahangu Weerasinghe. Use freely in your applications. Source code Available at www.planet-source-code.com/vb .  Acrobat copyright Adobe (I think!)."
End Sub

Private Sub mnuhowork_Click()

End Sub

Private Sub mnuopen_Click()
dlgopen.ShowOpen
pdfmain.LoadFile (dlgopen.FileName)


End Sub
