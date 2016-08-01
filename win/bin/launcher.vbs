' This .VBS is created for launch a console application (.bat/.cmd) without Window
' For instance, launch the _vim.cmd without console window
' -  wscript.exe "win\bin\launcher.vbs"  "win\bin\_vim.cmd"

If WScript.Arguments.Count = 0 Then
  WScript.Quit
End If

DIM target : target = WScript.Arguments.Item(0)

' Executing Options
Const HIDDEN_WINDOW     = 0
Const NORMAL_WINDOW     = 1
Const MINIMIZED_WINDOW  = 2
Const MAXIMIZE_WINDOW   = 3

' Executing arguments. 
' Replace the "ping" to the .bat/.cmd files
' (e.g: "cmd /c ""my-batfile.cmd"" " )
DIM args : args = "cmd /c " & target 

' A recommendation as to how the application
' window should be displayed initially.
DIM showWindow : showWindow = false

' To Lauch it
DIM shObj : SET shObj = CreateObject("Wscript.Shell")
shObj.Run args, HIDDEN_WINDOW, showWindow 

