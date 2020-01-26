option explicit

dim objArgs
Set objArgs = Wscript.Arguments

dim count
count = CStr(WScript.Arguments.count)
if count > 0 then
  dim arg
  arg = CStr(WScript.Arguments.Item(0))
end if

dim currentdir
currentdir = Left(WScript.ScriptFullName,InStrRev(WScript.ScriptFullName,"\"))

dim WshShell
set WshShell = CreateObject("WScript.Shell")

dim env
set env = WshShell.Environment("Process")
env("GSTREAMER_1_0_ROOT_X86") = currentdir
env("GST_PLUGIN_PATH") = currentdir

WshShell.Exec("vokoscreenNG.exe" & " " & arg)

set WshShell = Nothing
