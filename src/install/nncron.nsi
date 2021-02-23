; creates nncronxxx.exe
;--------------------------------

!define VER_MAJOR 1
!define VER_MINOR 93
!define VERSION 193b13
!define PROG_NAME "nnCron"
!define PROG_SHORT_NAME "nncron"
!define COMPILE_DIR "c:\home\SRC\cron\install\image\data"

; allowing us to use SF_SELECTED constant
!include "Sections.nsh"

LoadLanguageFile "${NSISDIR}\Contrib\Language files\English.nlf"
LoadLanguageFile "${NSISDIR}\Contrib\Language files\Russian.nlf"
Name "${PROG_NAME} ${VER_MAJOR}.${VER_MINOR}"

; The file to write
OutFile "${PROG_SHORT_NAME}${VERSION}.exe"

; license
LangString ReadLicenseText ${LANG_ENGLISH} "Please, review the license terms before installing ${PROG_NAME}."
LangString ReadLicenseText ${LANG_RUSSIAN} "����������, ����������� �������� �������� ����� ��� ��� ���������� ��������� ${PROG_NAME}."
LicenseText $(ReadLicenseText)
LicenseLangString LicenseSource ${LANG_ENGLISH} "${COMPILE_DIR}\..\presetup\license.txt"
LicenseLangString LicenseSource ${LANG_RUSSIAN} "${COMPILE_DIR}\..\presetup\license.rus"
LicenseData $(LicenseSource) 

; The default installation directory
InstallDir "$PROGRAMFILES\${PROG_NAME}\"

; Registry key to check for directory (so if you install again, it will
; overwrite the old one automatically}
InstallDirRegKey HKLM "SOFTWARE\nnSoft\${PROG_NAME}" "path"

; The text to prompt the user to choose components
LangString ChooseComponentsText ${LANG_ENGLISH} "Check the components you want to install and uncheck the components you don't want to install. Click Next to continue."
LangString ChooseComponentsText ${LANG_RUSSIAN} "�������� ����������, ������� ������ ����������.$\r$\n������� ����� ��� �����������."
ComponentText $(ChooseComponentsText)

; The text to prompt the user to enter a directory
LangString EnterDirectoryText ${LANG_ENGLISH} "Choose the folder in which to install ${PROG_NAME}.$\r$\nTo install in a different folder, click Browse and select another folder.$\r$\nClick Install to start the installation."
LangString EnterDirectoryText ${LANG_RUSSIAN} "�������� �����, � ������� ����� ���������� ${PROG_NAME}.$\r$\n�������������� ������� �����, ����� ������� ������ �����.$\r$\n������� ����������, ����� ������ ������� �����������."
DirText $(EnterDirectoryText)

; show the "show details" box
ShowInstDetails show
ShowUninstDetails show

; whether or not the file should overwrite any existing files that are present
SetOverwrite on
; setting the default compressor
SetCompressor /SOLID lzma

;--------------------------------
; LangStrings
;

LangString AbortMessage ${LANG_ENGLISH} "Are you sure you want to quit ${PROG_NAME} ${VER_MAJOR}.${VER_MINOR} Setup?"
LangString AbortMessage ${LANG_RUSSIAN} "�� �������, ��� ������ �������� ������� ��������� ${PROG_NAME} ${VER_MAJOR}.${VER_MINOR}?"
LangString AnotherInstanceMessage1 ${LANG_ENGLISH} "Another instance of ${PROG_NAME} is running on your computer.$\r$\nPlease, close ${PROG_NAME} and start setup program again."
LangString AnotherInstanceMessage1 ${LANG_RUSSIAN} "��������� ${PROG_NAME} ���������� ��� ���������� ����������.$\r$\n����������, �������� ${PROG_NAME} � ������������� ������� �����������."
LangString AnotherInstanceMessage2 ${LANG_ENGLISH} "Another instance of ${PROG_NAME} is running on your computer.$\r$\nPress Yes to close ${PROG_NAME} automatically and continue with Setup.$\r$\nPress No to quit Setup."
LangString AnotherInstanceMessage2 ${LANG_RUSSIAN} "��������� ${PROG_NAME} ���������� ��� ���������� ����������.$\r$\n������� Yes, ����� ������������� ������� ${PROG_NAME} � ���������� ���������.$\r$\n������� No, ����� ����� �� ��������� ���������."
LangString AdministratorMessage ${LANG_ENGLISH} "For installation of ${PROG_NAME} it is necessary to have administrator rights on this computer."
LangString AdministratorMessage ${LANG_RUSSIAN} "��� ��������� ${PROG_NAME} ���������� ����� ����� �������������� �� ���� ����������."
LangString Sec1Name ${LANG_ENGLISH} "Program Files (required)"
LangString Sec1Name ${LANG_RUSSIAN} "�������� ����� ${PROG_NAME}"
LangString Sec2Name ${LANG_ENGLISH} "Plugins"
LangString Sec2Name ${LANG_RUSSIAN} "�������"
LangString Sec3Name ${LANG_ENGLISH} "Documentation"
LangString Sec3Name ${LANG_RUSSIAN} "������������"
;LangString Sec4Name ${LANG_ENGLISH} "Start Menu Shortcuts"
;LangString Sec4Name ${LANG_RUSSIAN} "������ � ���� ����"
LangString ServiceStartMessage ${LANG_ENGLISH} "Installing and starting ${PROG_NAME} service"
LangString ServiceStartMessage ${LANG_RUSSIAN} "��������� � ������ ������� ${PROG_NAME}"

LangString ForAll ${LANG_ENGLISH} "for all users"
LangString ForAll ${LANG_RUSSIAN} "��� ���� �������������"

LangString ForUser ${LANG_ENGLISH} "for current user only"
LangString ForUser ${LANG_RUSSIAN} "��� �������� ������������"

LangString un.ServiceStopMessage ${LANG_ENGLISH} "Stopping and uninstalling ${PROG_NAME} service..."
LangString un.ServiceStopMessage ${LANG_RUSSIAN} "��������� � �������� ������� ${PROG_NAME}..."
LangString un.ServiceDoneMessage ${LANG_ENGLISH} "...completed"
LangString un.ServiceDoneMessage ${LANG_RUSSIAN} "...���������"

LangString Sec4Name ${LANG_ENGLISH} "Start Menu Shortcuts"
LangString Sec4Name ${LANG_RUSSIAN} "������ � ���� ����"
LangString Sec41Name ${LANG_ENGLISH} "For current user only"
LangString Sec41Name ${LANG_RUSSIAN} "������ ��� �������� ������������"
LangString Sec42Name ${LANG_ENGLISH} "For all users"
LangString Sec42Name ${LANG_RUSSIAN} "��� ���� �������������"
LangString Sec43Name ${LANG_ENGLISH} "Do not create shortcuts"
LangString Sec43Name ${LANG_RUSSIAN} "�� ��������� ������"

LangString Sec5Name ${LANG_ENGLISH} "Autostart ${PROG_NAME}"
LangString Sec5Name ${LANG_RUSSIAN} "���������� ${PROG_NAME}"
LangString Sec51Name ${LANG_ENGLISH} "System service"
LangString Sec51Name ${LANG_RUSSIAN} "��������� ������"
LangString Sec52Name ${LANG_ENGLISH} "Application for all users"
LangString Sec52Name ${LANG_RUSSIAN} "���������� ��� ���� �������������"
LangString Sec53Name ${LANG_ENGLISH} "Application for current user"
LangString Sec53Name ${LANG_RUSSIAN} "���������� ��� �������� ������������"
;--------------------------------
;
; The stuff to install

Section $(Sec1Name) sec1
  ; read-only section
  SectionIn RO

  ; Set output path to the installation directory.
  SetOutPath $INSTDIR

  ; Put file there
  File "${COMPILE_DIR}\*.exe"
  File "${COMPILE_DIR}\*.dll"
  File "${COMPILE_DIR}\*.bat"
  File "${COMPILE_DIR}\*.diz"
  File "${COMPILE_DIR}\example.tab"

  ; this file will not be overwrited if exist
;  SetOverwrite off
;  File "${COMPILE_DIR}\nncron.tab"
;  SetOverwrite on

  SetOutPath $INSTDIR\res
  File "${COMPILE_DIR}\res\*.txt"

;  SetOutPath $INSTDIR\txt
;  File "${COMPILE_DIR}\txt\deleted.tab"

  ; Write the installation path into the registry
  WriteRegStr HKLM "SOFTWARE\nnSoft\${PROG_NAME}" "path" "$INSTDIR"

  ; Write the uninstall keys for Windows
  WriteRegStr HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\${PROG_NAME}" "DisplayName" "${PROG_NAME} (remove only)"
  WriteRegStr HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\${PROG_NAME}" "UninstallString" '"$INSTDIR\uninstall.exe"'
SectionEnd

SectionGroup /e $(Sec5Name) sec5
    Section $(Sec51Name) sec51
; install service
        Call InstallService
    SectionEnd
    Section $(Sec52Name) sec52
; install app for all users
        Call InstallAppForAll
    SectionEnd
    Section $(Sec53Name) sec53
; install app for cur user only
        Call InstallAppForUser
    SectionEnd
SectionGroupEnd

Section $(Sec2Name) sec2
; optional section (can be disabled by the user)
  SetOutPath $INSTDIR\plugins
  File "${COMPILE_DIR}\plugins\*.spf"
SectionEnd

Section $(Sec3Name) sec3
; optional section (can be disabled by the user)
  SetOutPath $INSTDIR\doc
  File "${COMPILE_DIR}\doc\*.chm"
  File "${COMPILE_DIR}\doc\*.txt"
SectionEnd

;Section $(Sec4Name) sec4
; optional section (can be disabled by the user)
;  CreateDirectory "$SMPROGRAMS\${PROG_NAME}"
;  CreateShortCut "$SMPROGRAMS\${PROG_NAME}\Uninstall ${PROG_NAME}.lnk" "$INSTDIR\uninstall.exe" "" "$INSTDIR\uninstall.exe" 0
;  CreateShortCut "$SMPROGRAMS\${PROG_NAME}\Start ${PROG_NAME}.lnk" "$INSTDIR\startnncron.bat" "" "$INSTDIR\startnncron.bat" 0
;  CreateShortCut "$SMPROGRAMS\${PROG_NAME}\Stop ${PROG_NAME}.lnk" "$INSTDIR\stopnncron.bat" "" "$INSTDIR\stopnncron.bat" 0
;  SectionGetFlags ${Sec3} $R0
;  IntOp $R0 $R0 & ${SF_SELECTED}
;  StrCmp $R0 ${SF_SELECTED} "" +5
;  CreateShortCut "$SMPROGRAMS\${PROG_NAME}\${PROG_NAME} Readme.lnk" "$INSTDIR\doc\readme.txt" "" "$INSTDIR\doc\readme.txt" 0
;  CreateShortCut "$SMPROGRAMS\${PROG_NAME}\${PROG_NAME} Readme (rus).lnk" "$INSTDIR\doc\readme.rus.txt" "" "$INSTDIR\doc\readme.rus.txt" 0
;  CreateShortCut "$SMPROGRAMS\${PROG_NAME}\${PROG_NAME} Help.lnk" "$INSTDIR\doc\help.chm" "" "$INSTDIR\doc\help.chm" 0
;  CreateShortCut "$SMPROGRAMS\${PROG_NAME}\${PROG_NAME} History.lnk" "$INSTDIR\doc\history.txt" "" "$INSTDIR\doc\history.txt" 0
;SectionEnd


SubSection /e $(Sec4Name) sec4

    Section $(Sec41Name) sec41
        Call createShortCuts
    SectionEnd

    Section $(Sec42Name) sec42
        ; RMDir /r "$SMPROGRAMS\${PROG_NAME}"
        SetShellVarContext all
        Call createShortCuts
    SectionEnd

    Section $(Sec43Name) sec43
    SectionEnd

SubSectionEnd

Section
; unnamed section - the default one
  WriteUninstaller "uninstall.exe"
;  Call InstallService
SectionEnd

;--------------------------------
;
; Uninstaller

LangString BeforeUninstallText ${LANG_ENGLISH} "This will uninstall ${PROG_NAME} ${VER_MAJOR}.${VER_MINOR} from your computer. Click Uninstall to start the uninstallation."
LangString BeforeUninstallText ${LANG_RUSSIAN} "������ ��������� ${PROG_NAME} ${VER_MAJOR}.${VER_MINOR} ����� ������� � ������ ����������. ������� ������� ��� ������ �������� �������������."
UninstallText $(BeforeUninstallText)

; Uninstall section
Section "Uninstall"
  ; uninstalling program service and writing output to the log
  SetOutPath $INSTDIR
  DetailPrint $(un.ServiceStopMessage)
  nsExec::Exec '"$INSTDIR\uninstall_svc.bat"'
  DetailPrint $(un.ServiceDoneMessage)

  ; remove registry keys
  DeleteRegKey HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\${PROG_NAME}"
  DeleteRegKey HKLM "SOFTWARE\nnSoft\${PROG_NAME}"
  ; this key will be deleted only if it is empty
  DeleteRegKey /ifempty HKLM "SOFTWARE\nnSoft"

  ; remove all the files
  Delete "$INSTDIR\*.exe"
  Delete "$INSTDIR\*.bat"
  Delete "$INSTDIR\*.dll"
  Delete "$INSTDIR\file_id.diz"

  ; remove directories used
  RMDir /r "$SMPROGRAMS\${PROG_NAME}"
  RMDir /r "$INSTDIR\doc"
  RMDir /r "$INSTDIR\res"
  RMDir /r "$INSTDIR\plugins"

  RMDir "$INSTDIR"
SectionEnd


;--------------------------------
; Functions
;

; warning when cancelling installation manually
Function .onUserAbort
   MessageBox MB_YESNO $(AbortMessage) IDYES NoCancelAbort
     Abort ; causes installer to not quit.
   NoCancelAbort:
FunctionEnd

Function .onInit
    SetOutPath $INSTDIR
    ClearErrors

;** checking for NT/9*
    ReadRegStr $0 HKLM "SOFTWARE\Microsoft\Windows NT\CurrentVersion" CurrentVersion
    StrCmp $0 "" instancecheck

; checking if current user has Administartor rights
    ClearErrors
    UserInfo::GetName
    IfErrors instancecheck
    Pop $0
    UserInfo::GetAccountType
    Pop $1
    StrCmp $1 "Admin" 0 +2
        Goto instancecheck
    MessageBox MB_OK|MB_ICONSTOP $(AdministratorMessage)
    Abort

    instancecheck:
    ; cheking for another program instance running
    FindWindow $R9 "" "NNCron control window"
    IntCmp $R9 0 done
    ; checking if we can access previous installation dir
    ReadRegStr $R8 HKLM "SOFTWARE\nnSoft\${PROG_NAME}" "path"
    StrCmp $R8 "" instanceabort1 instanceabort2

    instanceabort1:
    MessageBox MB_OK|MB_ICONEXCLAMATION $(AnotherInstanceMessage1)
    Abort

    instanceabort2:
    MessageBox MB_YESNO|MB_ICONEXCLAMATION $(AnotherInstanceMessage2) IDYES StopAnotherInstance
    Abort

    StopAnotherInstance:
    ; stopping another program instance
    nsExec::Exec '"$INSTDIR\stopnncron.bat"'

    done:

    ; creating language selection dialog
    Call IsSilent
    Pop $0
    StrCmp $0 1 initexit 0
    Push ""
    Push ${LANG_ENGLISH}
    Push English
    Push ${LANG_RUSSIAN}
    Push Russian
    Push A ; A means auto count languages
           ; for the auto count to work the first empty push (Push "") must remain
    LangDLL::LangDialog "Installer Language" "Please select the language of the installer"

    Pop $LANGUAGE
    StrCmp $LANGUAGE "cancel" 0 initexit
        Abort
initexit:
    Push $0

    StrCpy $1 ${sec41} ; Gotta remember which section we are at now...
    SectionGetFlags ${sec41} $0
    IntOp $0 $0 | ${SF_SELECTED}
    SectionSetFlags ${sec41} $0

    SectionGetFlags ${sec42} $0
    IntOp $0 $0 & ${SECTION_OFF}
    SectionSetFlags ${sec42} $0

    SectionGetFlags ${sec43} $0
    IntOp $0 $0 & ${SECTION_OFF}
    SectionSetFlags ${sec43} $0
    
    
;    StrCpy $1 ${sec51} ; Gotta remember which section we are at now...
    Push $R1
    Call GetWindowsVersion 
    Pop $R1

    StrCmp $R1 '2003' lbl_is_server

    SectionGetFlags ${sec51} $0
    IntOp $0 $0 & ${SECTION_OFF}
    SectionSetFlags ${sec51} $0
    
    SectionGetFlags ${sec52} $0
    IntOp $0 $0 | ${SF_SELECTED}
    SectionSetFlags ${sec52} $0
    
    goto lbl_only_user

lbl_is_server:
    SectionGetFlags ${sec51} $0
    IntOp $0 $0 | ${SF_SELECTED}
    SectionSetFlags ${sec51} $0

    SectionGetFlags ${sec52} $0
    IntOp $0 $0 & ${SECTION_OFF}
    SectionSetFlags ${sec52} $0

lbl_only_user:

    SectionGetFlags ${sec53} $0
    IntOp $0 $0 & ${SECTION_OFF}
    SectionSetFlags ${sec53} $0

    Pop $R1

    Pop $0
FunctionEnd

Function .onSelChange

    Push $0
    Push $2

    StrCpy $2 ${SF_SELECTED}
    SectionGetFlags ${sec41} $0
    IntOp $2 $2 & $0
    SectionGetFlags ${sec42} $0
    IntOp $2 $2 & $0
    SectionGetFlags ${sec43} $0
    IntOp $2 $2 & $0
    StrCmp $2 0 skip
        SectionSetFlags ${sec41} 0
        SectionSetFlags ${sec42} 0
        SectionSetFlags ${sec43} 0
    skip:
    Pop $2

    ; Turn off old selected section
    SectionGetFlags $1 $0
    IntOp $0 $0 & ${SECTION_OFF}
    SectionSetFlags $1 $0
    # !insertmacro UnselectSection $1

    ; Now remember the current selection
    Push $2
    StrCpy $2 $1

    SectionGetFlags ${sec41} $0
    IntOp $0 $0 & ${SF_SELECTED}
    IntCmp $0 ${SF_SELECTED} 0 +2 +2
        StrCpy $1 ${sec41}
    SectionGetFlags ${sec42} $0
    IntOp $0 $0 & ${SF_SELECTED}
    IntCmp $0 ${SF_SELECTED} 0 +2 +2
        StrCpy $1 ${sec42}
    SectionGetFlags ${sec43} $0
    IntOp $0 $0 & ${SF_SELECTED}
    IntCmp $0 ${SF_SELECTED} 0 +2 +2
        StrCpy $1 ${sec43}

    StrCmp $2 $1 0 +4 ; selection hasn't changed
        SectionGetFlags $1 $0
        IntOp $0 $0 | ${SF_SELECTED}
        SectionSetFlags $1 $0
        # !insertmacro SelectSection $1
    Pop $2
    Pop $0
FunctionEnd

Function createShortcuts
  RMDir /r "$SMPROGRAMS\${PROG_NAME}"
  CreateDirectory "$SMPROGRAMS\${PROG_NAME}"
  CreateShortCut "$SMPROGRAMS\${PROG_NAME}\Uninstall ${PROG_NAME}.lnk" "$INSTDIR\uninstall.exe" "" "$INSTDIR\uninstall.exe" 0
  CreateShortCut "$SMPROGRAMS\${PROG_NAME}\Start ${PROG_NAME}.lnk" "$INSTDIR\startnncron.bat" "" "$INSTDIR\startnncron.bat" 0
  CreateShortCut "$SMPROGRAMS\${PROG_NAME}\Stop ${PROG_NAME}.lnk" "$INSTDIR\stopnncron.bat" "" "$INSTDIR\stopnncron.bat" 0

  SectionGetFlags ${sec2} $R0
  IntOp $R0 $R0 & ${SF_SELECTED}
  StrCmp $R0 ${SF_SELECTED} "" +5
  CreateShortCut "$SMPROGRAMS\${PROG_NAME}\${PROG_NAME} Readme.lnk" "$INSTDIR\doc\readme.txt" "" "$INSTDIR\doc\readme.txt" 0
  CreateShortCut "$SMPROGRAMS\${PROG_NAME}\${PROG_NAME} Readme (rus).lnk" "$INSTDIR\doc\readme.rus.txt" "" "$INSTDIR\doc\readme.rus.txt" 0
  CreateShortCut "$SMPROGRAMS\${PROG_NAME}\${PROG_NAME} Help.lnk" "$INSTDIR\doc\help.chm" "" "$INSTDIR\doc\help.chm" 0
  CreateShortCut "$SMPROGRAMS\${PROG_NAME}\${PROG_NAME} History.lnk" "$INSTDIR\doc\history.txt" "" "$INSTDIR\doc\history.txt" 0
FunctionEnd


Function IsSilent
  Push $0
  Push $CMDLINE
  Push "/S"
  Call StrStr
  Pop $0
  StrCpy $0 $0 3
  StrCmp $0 "/S" silent
  StrCmp $0 "/S " silent
    StrCpy $0 0
    Goto notsilent
  silent: StrCpy $0 1
  notsilent: Exch $0
FunctionEnd

Function StrStr
  Exch $R1 ; st=haystack,old$R1, $R1=needle
  Exch    ; st=old$R1,haystack
  Exch $R2 ; st=old$R1,old$R2, $R2=haystack
  Push $R3
  Push $R4
  Push $R5
  StrLen $R3 $R1
  StrCpy $R4 0
  ; $R1=needle
  ; $R2=haystack
  ; $R3=len(needle)
  ; $R4=cnt
  ; $R5=tmp
  loop:
    StrCpy $R5 $R2 $R3 $R4
    StrCmp $R5 $R1 done
    StrCmp $R5 "" done
    IntOp $R4 $R4 + 1
    Goto loop
  done:
  StrCpy $R1 $R2 "" $R4
  Pop $R5
  Pop $R4
  Pop $R3
  Pop $R2
  Exch $R1
FunctionEnd

 ; GetWindowsVersion
 ;
 ; Based on Yazno's function, http://yazno.tripod.com/powerpimpit/
 ; Updated by Joost Verburg
 ;
 ; Returns on top of stack
 ;
 ; Windows Version (95, 98, ME, NT x.x, 2000, XP, 2003, Vista)
 ; or
 ; '' (Unknown Windows Version)
 ;
 ; Usage:
 ;   Call GetWindowsVersion
 ;   Pop $R0
 ;   ; at this point $R0 is "NT 4.0" or whatnot
 
 Function GetWindowsVersion
 
   Push $R0
   Push $R1
 
   ClearErrors
 
   ReadRegStr $R0 HKLM \
   "SOFTWARE\Microsoft\Windows NT\CurrentVersion" CurrentVersion

   IfErrors 0 lbl_winnt
   
   ; we are not NT
   ReadRegStr $R0 HKLM \
   "SOFTWARE\Microsoft\Windows\CurrentVersion" VersionNumber
 
   StrCpy $R1 $R0 1
   StrCmp $R1 '4' 0 lbl_error
 
   StrCpy $R1 $R0 3
 
   StrCmp $R1 '4.0' lbl_win32_95
   StrCmp $R1 '4.9' lbl_win32_ME lbl_win32_98
 
   lbl_win32_95:
     StrCpy $R0 '95'
   Goto lbl_done
 
   lbl_win32_98:
     StrCpy $R0 '98'
   Goto lbl_done
 
   lbl_win32_ME:
     StrCpy $R0 'ME'
   Goto lbl_done
 
   lbl_winnt:
 
   StrCpy $R1 $R0 1
 
   StrCmp $R1 '3' lbl_winnt_x
   StrCmp $R1 '4' lbl_winnt_x
 
   StrCpy $R1 $R0 3
 
   StrCmp $R1 '5.0' lbl_winnt_2000
   StrCmp $R1 '5.1' lbl_winnt_XP
   StrCmp $R1 '5.2' lbl_winnt_2003
   StrCmp $R1 '6.0' lbl_winnt_vista lbl_error
 
   lbl_winnt_x:
     StrCpy $R0 "NT $R0" 6
   Goto lbl_done
 
   lbl_winnt_2000:
     Strcpy $R0 '2000'
   Goto lbl_done
 
   lbl_winnt_XP:
     Strcpy $R0 'XP'
   Goto lbl_done
 
   lbl_winnt_2003:
     Strcpy $R0 '2003'
   Goto lbl_done
 
   lbl_winnt_vista:
     Strcpy $R0 'Vista'
   Goto lbl_done
 
   lbl_error:
     Strcpy $R0 ''
   lbl_done:
 
   Pop $R1
   Exch $R0
 
 FunctionEnd


Function InstallService
  ; installing program service and writing output to the log
  SetOutPath $INSTDIR
  DetailPrint $(ServiceStartMessage)
  nsExec::Exec '"$INSTDIR\install_svc.bat"'
FunctionEnd

Function InstallAppForAll
  ; installing program service and writing output to the log
  SetOutPath $INSTDIR
  DetailPrint "$(ServiceStartMessage) $(ForAll)"
  nsExec::Exec '"$INSTDIR\install_svc.bat" -app-for-all'
FunctionEnd

Function InstallAppForUser
  ; installing program service and writing output to the log
  SetOutPath $INSTDIR
  DetailPrint "$(ServiceStartMessage) $(ForUser)"
  nsExec::Exec '"$INSTDIR\install_svc.bat" -app-for-user'
FunctionEnd


