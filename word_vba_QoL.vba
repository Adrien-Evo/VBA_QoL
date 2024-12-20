'Macro word pour les modifications documentaires Lilly
' Crées par Adrien FOUCAL @CapGemini @TMA Locales
'
'

Sub Border_TEXT()
'
' Border_text : Crée la barre noire de modification dans du TEXTE
'
'
    With Selection.ParagraphFormat
        With .Borders(wdBorderLeft)
            .LineStyle = wdLineStyleSingle
            .LineWidth = wdLineWidth300pt
            .Color = wdColorAutomatic
        End With
        .Borders(wdBorderRight).LineStyle = wdLineStyleNone
        .Borders(wdBorderTop).LineStyle = wdLineStyleNone
        .Borders(wdBorderBottom).LineStyle = wdLineStyleNone
        With .Borders
            .DistanceFromTop = 1
            .DistanceFromLeft = 4
            .DistanceFromBottom = 1
            .DistanceFromRight = 4
            .Shadow = False
        End With
    End With
    With Options
        .DefaultBorderLineStyle = wdLineStyleSingle
        .DefaultBorderLineWidth = wdLineWidth300pt
        .DefaultBorderColor = wdColorAutomatic
    End With
End Sub
Sub Clean_TEXT()
'
' Clean Macro : SUPPRIME la barre noire de modification dans du TEXTE
'
'
    Selection.Borders(wdBorderTop).LineStyle = wdLineStyleNone
    Selection.Borders(wdBorderLeft).LineStyle = wdLineStyleNone
    Selection.Borders(wdBorderBottom).LineStyle = wdLineStyleNone
    Selection.Borders(wdBorderRight).LineStyle = wdLineStyleNone
End Sub
Sub Border_TAB()
'
' BORDER_TAB Macro :  Crée la barre noire dans un TABLEAU
'
'
    With Selection.Cells
        With .Borders(wdBorderLeft)
            .LineStyle = wdLineStyleSingle
            .LineWidth = wdLineWidth300pt
            .Color = wdColorAutomatic
        End With
        With .Borders(wdBorderRight)
            .LineStyle = wdLineStyleSingle
            .LineWidth = wdLineWidth050pt
            .Color = wdColorAutomatic
        End With
        With .Borders(wdBorderTop)
            .LineStyle = wdLineStyleSingle
            .LineWidth = wdLineWidth050pt
            .Color = wdColorAutomatic
        End With
        With .Borders(wdBorderBottom)
            .LineStyle = wdLineStyleSingle
            .LineWidth = wdLineWidth050pt
            .Color = wdColorAutomatic
        End With

        .Borders(wdBorderDiagonalDown).LineStyle = wdLineStyleNone
        .Borders(wdBorderDiagonalUp).LineStyle = wdLineStyleNone
        .Borders.Shadow = False
    End With
    With Options
        .DefaultBorderLineStyle = wdLineStyleSingle
        .DefaultBorderLineWidth = wdLineWidth300pt
        .DefaultBorderColor = wdColorAutomatic
    End With
End Sub
Sub Table_CLEAN()
'
' TABLE_CLEAN Macro : SUPPRIME la barre noir dans un TABLEAU
'
'
    With Selection.Cells
        With .Borders(wdBorderLeft)
            .LineStyle = wdLineStyleSingle
            .LineWidth = wdLineWidth050pt
            .Color = wdColorAutomatic
        End With
        With .Borders(wdBorderRight)
            .LineStyle = wdLineStyleSingle
            .LineWidth = wdLineWidth050pt
            .Color = wdColorAutomatic
        End With
        With .Borders(wdBorderTop)
            .LineStyle = wdLineStyleSingle
            .LineWidth = wdLineWidth050pt
            .Color = wdColorAutomatic
        End With
        With .Borders(wdBorderBottom)
            .LineStyle = wdLineStyleSingle
            .LineWidth = wdLineWidth050pt
            .Color = wdColorAutomatic
        End With

        .Borders(wdBorderDiagonalDown).LineStyle = wdLineStyleNone
        .Borders(wdBorderDiagonalUp).LineStyle = wdLineStyleNone
        .Borders.Shadow = False
    End With

End Sub

Sub Save_TOC()
'
' Sauvegarde le fichier après avoir misà jour la ToC
'
'
'
Dim oStory As Range
Dim oField As Field
Dim bSaveDate As Boolean
bSaveDate = False

On Error Resume Next
For Each oField In oStory.Fields
If oField.Type = wdFieldSaveDate Then
    bSaveDate = True
End If
oField.Update
Next oField

On Error GoTo 0
ActiveDocument.TablesOfContents(1).Update
ActiveDocument.Save

End Sub






