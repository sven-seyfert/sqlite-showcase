#include-once
#include "..\init.au3"

Func _Log($sMessage, $sNewline = @CRLF)
    Local Const $sTimestamp = _Timestamp($sMessage)

    If Not @Compiled Then
        ConsoleWrite($sTimestamp & $sMessage & $sNewline)
        Return
    EndIf

    Local Const $sFileName = StringFormat('%s%s%s%s%s%s.log', @YEAR, @MON, @MDAY, @HOUR, @MIN, @SEC)
    Local Const $sLogFile  = _PathFull('..\log\' & $sFileName)

    _AppendToFile($sLogFile, $sTimestamp & $sMessage & $sNewline)
    If @error Then
        _Log('at: _AppendToFile()')
        ; Damn! How to handle this circumstance?
    EndIf
EndFunc

Func _Timestamp($sMessage)
    If StringLeft($sMessage, 4) == 'at: ' Or StringLeft($sMessage, 5) == 'for: ' Then
        Return @TAB
    EndIf

    Return StringFormat( _
        '[%s-%s-%s %s:%s:%s.%s]\n', _
        @YEAR, @MON, @MDAY, @HOUR, @MIN, @SEC, @MSEC)
EndFunc
