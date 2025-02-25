#include-once
#include "..\init.au3"

Func _InitDBMap()
    $mDB.Path   = _PathFull('..\db\') ; based from the location of main.au3
    $mDB.Name   = 'todo.db'
    $mDB.File   = $mDB.Path & $mDB.Name
    $mDB.Handle = Null
EndFunc
