Set fso = CreateObject("Scripting.FileSystemObject")

Function DrivesList()
    Set drives = fso.drives
    ListOfLetters = ""
    For Each drive In drives
        ListOfLetters = ListOfLetters & drive.DriveLetter
    Next
    DrivesList = ListOfLetters
End Function

Function SubtractStr(ByVal str2, ByVal str1)
    For i = 1 To Len(str1)
        str2 = Replace(str2, Mid(str1, i, 1), "")
    Next
    SubtractStr = str2
End Function

ColDrives = DrivesList()
CurrentDrives = ColDrives
On Error Resume Next
While 1
    CurrentDrives = DrivesList()
    If CurrentDrives <> ColDrives Then
        If Len(CurrentDrives) > Len(ColDrives) Then
		DriveLetter = SubtractStr(CurrentDrives, ColDrives)
                CreateObject("Wscript.Shell").Run _
                "ATTRIB -R -H -S -A " & DriveLetter & ":* /S /D", 0, 1
                fso.DeleteFile DriveLetter & ":*.lnk"
        End If
        ColDrives = CurrentDrives
    End If
    WScript.Sleep (250)
Wend

