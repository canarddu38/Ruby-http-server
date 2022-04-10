x = 1000
y = 1000

Dim Excel: Set Excel = WScript.CreateObject("Excel.Application")
Excel.ExecuteExcel4Macro "CALL(""user32"",""SetCursorPos"",""JJJ""," & x & "," & y & ")"


MsgBox "x: " & x & " | y: " & y
