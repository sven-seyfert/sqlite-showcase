#include-once

#include <File.au3>
#include <SQLite.au3>
#include <String.au3>

Global $mSqlite[], $mDB[]
Global $bNewStart = True

#include "./handler/sql-handler.au3"
#include "./handler/sqlite-handler.au3"
#include "./maps/db.au3"
#include "./maps/sqlite.au3"
#include "./utils/file-handler.au3"
#include "./utils/log-handler.au3"

Func _Init()
    If OnAutoItExitRegister('_DBTearDown') == 0 Then
        _Log('OnAutoItExitRegister() error')
        Return SetError(1)
    EndIf

    _InitSqliteMap()
    _InitDBMap()
EndFunc
