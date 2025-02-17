#include-once
#include "../init.au3"

Func _Log($sMessage, $sNewline = @CRLF)
    Local Const $sTimestamp = _Timestamp($sMessage)

    If Not @Compiled Then
        ConsoleWrite($sTimestamp & $sMessage & $sNewline)
        Return
    EndIf

    Local $sLogFile = StringFormat('%s%s%s.log', @YEAR, @MON, @MDAY)
          $sLogFile = _PathFull('../log/' & $sLogFile)

    If $bNewStart Then
        FileDelete($sLogFile)
        $bNewStart = False
    EndIf

    _AppendToFile($sLogFile, $sTimestamp & $sMessage & $sNewline)
    If @error Then
        _Log('at _AppendToFile()')
        ; Damn! How to handle this circumstance?
    EndIf
EndFunc

Func _Timestamp($sMessage)
    If StringLeft($sMessage, 3) == 'at ' Then
        Return @TAB
    EndIf

    Return StringFormat( _
        '[%s-%s-%s %s:%s:%s.%s]\n', _
        @YEAR, @MON, @MDAY, @HOUR, @MIN, @SEC, @MSEC)
EndFunc
