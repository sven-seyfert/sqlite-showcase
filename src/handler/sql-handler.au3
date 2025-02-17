#include-once
#include "../init.au3"

Func _ExecuteSqlScript($sFile)
    Local Const $sFileContent = _ReadFile($sFile)
    If @error Then
        _Log('at _ReadFile()')
        Return SetError(1)
    EndIf

    _SQLite_Exec($mDB.Handle, $sFileContent)
    If @error Then
        _Log('_SQLite_Exec() error')
        Return SetError(1)
    EndIf
EndFunc

Func _ExistsDataset($sTable)
    Local Const $sSQL = StringFormat('select count(*) from %s;', $sTable)

    Local Const $aResult = _Query($sSQL)
    If @error Then
        _Log('at _Query()')
        Return SetError(1)
    EndIf

    Return $aResult[1][0] > 0
EndFunc

Func _DisplayTable($sTable)
    Local Const $sSQL = StringFormat('select * from %s;', $sTable)

    Local Const $aResult = _Query($sSQL)
    If @error Then
        _Log('at _Query()')
        Return SetError(1)
    EndIf

    _LogResult($aResult)
    If @error Then
        _Log('at _LogResult()')
        Return SetError(1)
    EndIf
EndFunc

Func _DisplayTableByPaginaton($sTable, $iPage, $iLimit = 8)
    Local Const $iOffset = $iPage * $iLimit - $iLimit
    Local Const $sSQL    = StringFormat('select * from %s limit %s offset %s;', $sTable, $iLimit, $iOffset)

    Local Const $aResult = _Query($sSQL)
    If @error Then
        _Log('at _Query()')
        Return SetError(1)
    EndIf

    _LogResult($aResult)
    If @error Then
        _Log('at _LogResult()')
        Return SetError(1)
    EndIf
EndFunc

Func _DisplayCharliesHighPrioIncompletedTodos()
    Local Const $sSQL = StringFormat( _
        "select     *\n" & _
        "from       todos t\n" & _
        "join       users u\n" & _
        "    on     u.user_id = t.user_id\n" & _
        "where      u.name = 'Charlie'\n" & _
        "    and    t.priority = 'high'\n" & _
        "    and    t.completed_at is null\n" & _
        "    and    t.deleted_at is null")

    Local Const $aResult = _Query($sSQL)
    If @error Then
        _Log('at _Query()')
        Return SetError(1)
    EndIf

    _LogResult($aResult)
    If @error Then
        _Log('at _LogResult()')
        Return SetError(1)
    EndIf
EndFunc

Func _Query($sSQL)
    Local $aResult, $iRows, $iColumns

    _SQLite_GetTable2D($mDB.Handle, $sSQL, $aResult, $iRows, $iColumns)
    If @error Then
        _Log('_SQLite_GetTable2D() error')
        Return SetError(1)
    EndIf

    Return $aResult
EndFunc

Func _LogResult($aResult)
    _SQLite_Display2DResult($aResult)
    If @error Then
        _Log('_SQLite_Display2DResult() error')
        Return SetError(1)
    EndIf

    _ArrayDisplay($aResult)
EndFunc
