; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "LaserGRBL"
#define MyAppVersion "v2.8.19"
#define MyAppPublisher "LaserGRBL"
#define MyAppURL "http://lasergrbl.com"
#define MyAppExeName "LaserGRBL.exe"

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{4BF69C31-8363-4935-9804-CCDD623E7C1F}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={pf}\{#MyAppName}
DisableDirPage=yes
DisableProgramGroupPage=yes
OutputDir=E:\LaserGRBL\
OutputBaseFilename=setup
Compression=lzma/ultra64
SolidCompression=yes
InternalCompressLevel=ultra64
CompressionThreads=2
RestartIfNeededByRun=False
Uninstallable=yes
UninstallFilesDir={pf}

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked
Name: "quicklaunchicon"; Description: "{cm:CreateQuickLaunchIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: "E:\LaserGRBL\LaserGRBL\bin\Release\LaserGRBL.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "E:\LaserGRBL\LaserGRBL\bin\Release\it\LaserGRBL.resources.dll"; DestDir: "{app}\it"; Flags: ignoreversion
Source: "E:\LaserGRBL\LaserGRBL\bin\Release\da\LaserGRBL.resources.dll"; DestDir: "{app}\da"; Flags: ignoreversion
Source: "E:\LaserGRBL\LaserGRBL\bin\Release\de\LaserGRBL.resources.dll"; DestDir: "{app}\de"; Flags: ignoreversion
Source: "E:\LaserGRBL\LaserGRBL\bin\Release\es\LaserGRBL.resources.dll"; DestDir: "{app}\es"; Flags: ignoreversion
Source: "E:\LaserGRBL\LaserGRBL\bin\Release\fr\LaserGRBL.resources.dll"; DestDir: "{app}\fr"; Flags: ignoreversion
Source: "E:\LaserGRBL\LaserGRBL\bin\Release\pt-BR\LaserGRBL.resources.dll"; DestDir: "{app}\pt-BR"; Flags: ignoreversion
Source: "E:\LaserGRBL\LaserGRBL\bin\Release\ru\LaserGRBL.resources.dll"; DestDir: "{app}\ru"; Flags: ignoreversion
Source: "E:\LaserGRBL\LaserGRBL\bin\Release\zh-CN\LaserGRBL.resources.dll"; DestDir: "{app}\zh-CN"; Flags: ignoreversion
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{commonprograms}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{commondesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon
Name: "{userappdata}\Microsoft\Internet Explorer\Quick Launch\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: quicklaunchicon

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent
