#include-once
#include "..\init.au3"

Func _DBStartup()
    _SQLite_Startup($mSqlite.DLL)
    If @error Then
        _Log('_SQLite_Startup() error')
        Return SetError(1)
    EndIf
EndFunc

Func _DBTearDown()
    If $bAlreadyExecuted Then
        Return
    EndIf
    $bAlreadyExecuted = True

    _SQLite_Close()
    If @error Then
        _Log('_SQLite_Close() error')
        Return SetError(1)
    EndIf

    _SQLite_Shutdown()
EndFunc

Func _DBOpen()
    $mDB.Handle = _SQLite_Open($mDB.File)
    If @error Then
        _Log('_SQLite_Open() error')
        Return SetError(1)
    EndIf
EndFunc

Func _ExecuteSqlScriptLib($sFile)
    Local Const $sCommand = StringFormat( _
        ' /c cd "%s" && %s "%s" < "%s"', _
        $mSqlite.Path, $mSqlite.Exe, $mDB.File, $sFile)

    RunWait(@ComSpec & $sCommand, '', @SW_HIDE)
    If @error Then
        _Log('RunWait() error')
        Return SetError(1)
    EndIf
EndFunc
