#pragma compile(FileVersion, 0.6.0)
#pragma compile(LegalCopyright, © Sven Seyfert (SOLVE-SMART))
#pragma compile(ProductVersion, 0.6.0 - 2025-02-26)

#AutoIt3Wrapper_AU3Check_Parameters=-d -w 1 -w 2 -w 3 -w 4 -w 5 -w 6 -w 7
#AutoIt3Wrapper_AU3Check_Stop_OnWarning=y
#AutoIt3Wrapper_Icon=..\assets\icons\favicon.ico
#AutoIt3Wrapper_Outfile_x64=..\build\sqlite-showcase.exe
#AutoIt3Wrapper_Run_Au3Stripper=y
#AutoIt3Wrapper_UseUpx=n
#AutoIt3Wrapper_UseX64=y
#Au3Stripper_Parameters=/sf /sv /mo /rm /rsln

#include-once
#include ".\init.au3"

_Main()

Func _Main()
    _Init()
    If @error Then
        _Log('at: _Init()')
        Exit -1
    EndIf

    _DBStartup()
    If @error Then
        _Log('at: _DBStartup()')
        Exit -1
    EndIf

    _DBOpen()
    If @error Then
        _Log('at: _DBOpen()')
        Exit -1
    EndIf

    _Showcases()

    ; The function "_DBTearDown()" (database shutdown), is called
    ; on exit (in error case) by OnAutoItExitRegister() function.
    ; In case of no errors, now.
    _DBTearDown()
    If @error Then
        _Log('at: _DBTearDown()')
        Exit -1
    EndIf
EndFunc

Func _Showcases()
    Local $sScript = '00-pre-configuration.sql'
    _ExecuteSqlScript($mDB.Path & $sScript)
    If @error Then
        _Log('at: _ExecuteSqlScript()')
        _Log('for: script ' & $sScript)
        Exit -1
    EndIf

    $sScript = '01-create-tables.sql'
    _ExecuteSqlScript($mDB.Path & $sScript)
    If @error Then
        _Log('at: _ExecuteSqlScript()')
        _Log('for: script ' & $sScript)
        Exit -1
    EndIf

    Local Const $bExists = _ExistsDataset('users')
    If @error Then
        _Log('at: _ExistsDataset()')
        Exit -1
    EndIf

    If Not $bExists Then
        $sScript = '02-insert-into.sql'
        _ExecuteSqlScript($mDB.Path & $sScript)
        If @error Then
            _Log('at: _ExecuteSqlScript()')
            _Log('for: script ' & $sScript)
            Exit -1
        EndIf
    EndIf

    _DisplayTable('users')
    If @error Then
        _Log('at: _DisplayTable()')
    EndIf

    _DisplayTable('todos')
    If @error Then
        _Log('at: _DisplayTable()')
    EndIf

    For $i = 1 To 5
        _DisplayTableByPaginaton('todos', $i)
        If @error Then
            _Log('at: _DisplayTableByPaginaton()')
        EndIf
    Next

    _DisplayCharliesHighPrioIncompletedTodos()
    If @error Then
        _Log('at: _DisplayCharliesHighPrioIncompletedTodos()')
    EndIf

    $sScript = '99-post-configuration.sql'
    _ExecuteSqlScript($mDB.Path & $sScript)
    If @error Then
        _Log('at: _ExecuteSqlScript()')
        _Log('for: script ' & $sScript)
        Exit -1
    EndIf
EndFunc
