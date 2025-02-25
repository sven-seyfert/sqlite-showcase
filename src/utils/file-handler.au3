#include-once
#include "..\init.au3"

Func _ReadFile($sFile, $iMode = 256)
    Local $hFile = FileOpen($sFile, $iMode)
    If $hFile == -1 Then
        _Log('FileOpen() error')
        Return SetError(1)
    EndIf

    Local $vContent = FileRead($hFile)
    If @error Then
        FileClose($hFile)
        _Log('FileRead() error')
        Return SetError(1)
    EndIf

    FileClose($hFile)

    Return $vContent
EndFunc

Func _AppendToFile($sFile, $sText)
    Local Const $iUtf8WithoutBomAndAppendMode = 256 + 1

    Local $hFile = FileOpen($sFile, $iUtf8WithoutBomAndAppendMode)
    If $hFile == -1 Then
        _Log('FileOpen() error')
        Return SetError(1)
    EndIf

    If FileWrite($hFile, $sText) == 0 Then
        _Log('FileWrite() error')
        Return SetError(1)
    EndIf

    FileClose($hFile)
EndFunc
