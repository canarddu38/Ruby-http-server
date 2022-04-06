Set objShell = WScript.CreateObject("WScript.Shell")

objShell.Sendkeys "^{ESC}{+}"
' objShell.SendKeys ""
WScript.sleep 500
objShell.SendKeys "cmd.exe"
WScript.sleep 1000

objShell.SendKeys "{LEFT}"
' objShell.SendKeys "{DOWN}"

' objShell.SendKeys "{ENTER}"
WScript.sleep 1000
' objShell.SendKeys "{LEFT}"
' objShell.SendKeys "{ENTER}"



' objShell.SendKeys "%{F4}"
' objShell.SendKeys "%{F4}"


