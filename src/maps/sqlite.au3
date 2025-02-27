#include-once
#include "..\init.au3"

Func _InitSqliteMap()
    $mSqlite.Path    = _PathFull('..\lib\sqlite\') ; based from the location of main.au3
    $mSqlite.DllName = 'sqlite3.dll' ; default dll name (will be changed to *_x64.dll in _SQLite_Startup())
    $mSqlite.DLL     = $mSqlite.Path & $mSqlite.DllName
    $mSqlite.Exe     = $mSqlite.Path & 'sqlite3.exe'
EndFunc
