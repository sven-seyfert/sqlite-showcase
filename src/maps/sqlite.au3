#include-once
#include "../init.au3"

Func _InitSqliteMap()
    $mSqlite.Path    = _PathFull('../lib/sqlite/') ; based from the location of main.au3
    $mSqlite.DllName = 'sqlite3_x64.dll'
    $mSqlite.DLL     = $mSqlite.Path & $mSqlite.DllName
    $mSqlite.Exe     = $mSqlite.Path & 'sqlite3.exe'
EndFunc
