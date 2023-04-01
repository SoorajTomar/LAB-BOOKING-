@if (@CodeSection == @Batch) @then


@echo off

rem Use %SendKeys% to send keys to the keyboard buffer
set SendKeys=CScript //nologo //E:JScript "%~F0"
START CHROME "https://academia.srmist.edu.in/#Form:Lab_Booking_for_Current_Course"
timeout /t 5
%SendKeys% "{TAB}"
%SendKeys% "{TAB}"
%SendKeys% "{ENTER}"
timeout /t 5
%SendKeys% "{TAB}"
%SendKeys% "{ENTER}"
%SendKeys% "{DOWN}"
%SendKeys% "{DOWN}"
%SendKeys% "{ENTER}"
timeout /t 3
START CHROME "https://academia.srmist.edu.in/#Form:Lab_Booking_for_Current_Course"
timeout /t 5
%SendKeys% "{TAB}"
%SendKeys% "{ENTER}"
%SendKeys% "{DOWN}"
%SendKeys% "{ENTER}"
timeout /t 3
START CHROME "https://academia.srmist.edu.in/#Form:Lab_Booking_for_Current_Course"
timeout /t 5
%SendKeys% "{TAB}"
%SendKeys% "{ENTER}"
%SendKeys% "{ENTER}"
timeout \t 3
start notepad "SLOTS.txt"
goto :EOF
@end
// JScript section

var WshShell = WScript.CreateObject("WScript.Shell");
WshShell.SendKeys(WScript.Arguments(0));