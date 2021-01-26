#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#IfWinActive Path of Exile
|::
array := [1, 2, 3, 4, 5]
array_out := []
i := 0

Loop {
	n := rand(1, array.Length())
	value := array.removeAt(n)
	array_out.Push(value)
	i += 1
	if (i >= 5) {
		break
	}
}

for index, element in array_out
{
	Send, % element
	sleep, % rand(50, 200)
}
return

rand(min, max)
 {
   random, ran, min, max
   return ran
 }