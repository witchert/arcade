#NoEnv
#Persistent
SendMode Input

iniFile=%A_ScriptDir%\LEDBlinkyAHK.ini

IfNotExist, %iniFile% 
    Throw ("LEDBlinky ini file not found: " . iniFile . ".")

SetTitleMatchMode RegEx
Loop {
    WinWaitActive, .*
    WinGetActiveTitle, ThisWindow
    If (RegExReplace(ThisWindow, "\W", "") <> "") && (ThisWindow <> LastWindow)
    {
        WinGetActiveTitle, Title
        game := RegExReplace(Title, "\W", "_")

        SetLEDBlinky(game)

        LastWindow = %ThisWindow%
    }
}

SetLEDBlinky(game) {
    global iniFile
        
    IniRead, LEDBlinkyExe, %iniFile%, Settings, LEDBlinkyExe
    IfNotExist, %LEDBlinkyExe%  
    {
        Throw ("LEDBlinky Script could not find LEDBlinky.exe not found: " . LEDBlinkyExe . ". Please check path in the ini file.")
        Return
    }   

    IniRead, emulator, %iniFile%, Games, %game%
    If (emulator="ERROR") 
    {
        return
    }
    Run, %LEDBlinkyExe% %game% %emulator%
}
