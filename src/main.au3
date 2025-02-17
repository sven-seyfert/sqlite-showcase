#pragma compile(FileVersion, 0.2.0)
#pragma compile(LegalCopyright, © Sven Seyfert (SOLVE-SMART))
#pragma compile(ProductVersion, 0.2.0 - 2025-02-17)

#AutoIt3Wrapper_AU3Check_Parameters=-d -w 1 -w 2 -w 3 -w 4 -w 5 -w 6 -w 7
#AutoIt3Wrapper_AU3Check_Stop_OnWarning=y
#AutoIt3Wrapper_Icon=..\assets\icons\favicon.ico
#AutoIt3Wrapper_Outfile_x64=..\build\sqlite-showcase.exe
#AutoIt3Wrapper_Run_Au3Stripper=y
#AutoIt3Wrapper_UseUpx=n
#AutoIt3Wrapper_UseX64=y
#Au3Stripper_Parameters=/sf /sv /mo /rm /rsln

#include-once
#include "./init.au3"

_Main()

Func _Main()
    _Init()
    If @error Then
        _Log('at _Init()')
        Exit -1
    EndIf

    _DBStartup()
    If @error Then
        _Log('at _DBStartup()')
        Exit -1
    EndIf

    _DBOpen()
    If @error Then
        _Log('at _DBOpen()')
        Exit -1
    EndIf

    _ExecuteSqlScript($mDB.Path & '01-create-tables.sql')
    If @error Then
        _Log('at _ExecuteSqlScript()')
        Exit -1
    EndIf

    Local Const $bExists = _ExistsDataset('users')
    If @error Then
        _Log('at _ExistsDataset()')
        Exit -1
    EndIf

    If Not $bExists Then
        _ExecuteSqlScript($mDB.Path & '02-insert-into.sql')
        If @error Then
            _Log('at _ExecuteSqlScript()')
            Exit -1
        EndIf
    EndIf

    _DisplayTable('users')
    If @error Then
        _Log('at _DisplayTable()')
    EndIf

    _DisplayTable('todos')
    If @error Then
        _Log('at _DisplayTable()')
    EndIf

    For $i = 1 To 5
        _DisplayTableByPaginaton('todos', $i)
        If @error Then
            _Log('at _DisplayTableByPaginaton()')
        EndIf
    Next

    ; A database shutdown, "_DBTearDown()", is called on exit
    ; by OnAutoItExitRegister() function. Otherwise next line
    ; should be comment-in.
    ;~ _DBTearDown()
EndFunc
