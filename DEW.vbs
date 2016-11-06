'    DEW (Drive Explorer for Windows):
'    An application that shows hidden files on any pen drive once 
'    attached to the computer and deletes any suspicious shortcuts
'    to help protecting you from computer worms.
'
'    Copyright (C) 2016  Meena E. Hanna
'
'    This program is free software: you can redistribute it and/or modify
'    it under the terms of the GNU General Public License as published by
'    the Free Software Foundation, either version 3 of the License, or
'    (at your option) any later version.
'
'    This program is distributed in the hope that it will be useful,
'    but WITHOUT ANY WARRANTY; without even the implied warranty of
'    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
'    GNU General Public License for more details.
'
'   You should have received a copy of the GNU General Public License
'   along with this program.  If not, see <http://www.gnu.org/licenses/>.


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

