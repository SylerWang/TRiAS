Attribute VB_Name = "Parameter"
Option Explicit

Private m_DataSourceName As String

' vorl�ufige Implementierung (einfach die erste g�ltige zur�ckliefern)
Function GetDataSource() As String
  GetDataSource = m_DataSourceName
  
  ' haben wir schon
  If (GetDataSource <> "") Then
    Exit Function
  End If
  
  ' alle durchsuchen und den erstbesten nehmen
  Dim con As ITRiASConnection
  For Each con In GetTRiASDocument.Connections()
    If (GetDataSource = "" And con.Updatable) Then
      GetDataSource = con.Name
    End If
  Next
  m_DataSourceName = GetDataSource
End Function

Function GetGeometrieMode() As Long
  GetGeometrieMode = MODGEOMETRY_AddToView + _
                      MODGEOMETRY_ForceGeometry + _
                      MODGEOMETRY_ModObject   ' und der letzte ist eh blo� f�r DEBUG
End Function

Function GetTRiASDoc() As String
    GetTRiASDoc = "D:\Daten\GIS\Projekte\Kanal\kanal.riw"
End Function

Function GetViewName() As String
    GetViewName = "Bundesl�nder"
End Function
