; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "BlumenstrasseSpeiseplanViewer"
#define MyAppVersion "1.0.0.4"
#define MyAppPublisher "H�mmer Electronics"
#define MyAppURL "www.softwareload24.de.tl"
#define MyAppExeName "BlumenstrasseSpeiseplanViewer.exe"
#define MyPath "C:\Users\Tim\Documents\Git\C# und VB\BlumenstrasseSpeiseplanViewer"

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{E190B235-5852-4786-AC6B-C9BC45D78DD3}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
VersionInfoProductVersion={#MyAppVersion}
VersionInfoVersion={#MyAppVersion}
UninstallDisplayIcon={app}\{#MyAppExeName}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={commonpf}\{#MyAppName}
DefaultGroupName={#MyAppName}
AllowNoIcons=yes
LicenseFile={#MyPath}\BlumenstrasseSpeiseplanViewer\bin\Release\License.txt
OutputDir={#MyPath}\Setup
OutputBaseFilename=BlumenstrasseSpeiseplanViewer-Setup
SetupIconFile={#MyPath}\BlumenstrasseSpeiseplanViewer\bin\Release\Food.ico
Compression=lzma
SolidCompression=yes

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"
Name: "german"; MessagesFile: "compiler:Languages\German.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked
Name: "quicklaunchicon"; Description: "{cm:CreateQuickLaunchIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked; OnlyBelowVersion: 0,6.1

[Files]
Source: "{#MyPath}\BlumenstrasseSpeiseplanViewer\bin\Release\BlumenstrasseSpeiseplanViewer.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#MyPath}\BlumenstrasseSpeiseplanViewer\bin\Release\AxInterop.AcroPDFLib.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#MyPath}\BlumenstrasseSpeiseplanViewer\bin\Release\Interop.AcroPDFLib.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#MyPath}\BlumenstrasseSpeiseplanViewer\bin\Release\License.txt"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#MyPath}\BlumenstrasseSpeiseplanViewer\bin\Release\Food.ico"; DestDir: "{app}"; Flags: ignoreversion
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{group}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{group}\{cm:UninstallProgram,{#MyAppName}}"; Filename: "{uninstallexe}"
Name: "{commondesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon
Name: "{userappdata}\Microsoft\Internet Explorer\Quick Launch\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: quicklaunchicon

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent

