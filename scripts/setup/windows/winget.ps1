# Please make sure winget is is installed
# Run this in Windows PowerShell as admin
# https://apps.microsoft.com/store/detail/app-installer/
# https://github.com/microsoft/winget-cli
# https://github.com/microsoft/winget-cli/issues/210
winget --version
winget install --id "Microsoft.Edge"
winget install --id "Microsoft.Edge.Beta"
winget install --id "Microsoft.Edge.Dev"
winget install --name "Microsoft Edge DevTools Preview"
winget install --name "Remote Tools for Microsoft Edge"
winget install --id "Google.Chrome"
winget install --name "Chrome Remote Desktop Host"
winget install --id "Microsoft.WindowsTerminal"
winget install --id "Microsoft.WindowsTerminal.Preview"
winget install --id "Microsoft.PowerShell"
winget install --id "Microsoft.PowerShell.Preview"
winget install --id "RedHat.Podman"
winget install --name "Windows Subsystem for Linux"
winget install --name --exact "Ubuntu"
winget install --name "Ubuntu (Preview)"
winget install --id "Docker.DockerDesktop"
Enable-WindowsOptionalFeature -FeatureName TFTP,LegacyComponents,DirectPlay,MediaPlayback,WindowsMediaPlayer,SmbDirect,MSRDC-Infrastructure,MicrosoftWindowsPowerShellV2Root,MicrosoftWindowsPowerShellV2,SearchEngine-Client-Package,Printing-PrintToPDFServices-Features,Printing-XPSServices-Features,TelnetClient,Printing-Foundation-InternetPrinting-Client,VirtualMachinePlatform,Containers-DisposableClientVM -All -Online
Add-WindowsCapability -Online -Name "App.StepsRecorder"
Add-WindowsCapability -Online -Name "App.Support.QuickAssist"
Add-WindowsCapability -Online -Name "App.WirelessDisplay.Connect"
Add-WindowsCapability -Online -Name "DirectX.Configuration.Database"
Add-WindowsCapability -Online -Name "Language.Basic~~~en-US"
Add-WindowsCapability -Online -Name "Language.Handwriting~~~en-US"
Add-WindowsCapability -Online -Name "Language.OCR~~~en-US"
Add-WindowsCapability -Online -Name "Language.Speech~~~en-US"
Add-WindowsCapability -Online -Name "Language.TextToSpeech~~~en-US"
Add-WindowsCapability -Online -Name "MathRecognizer"
Add-WindowsCapability -Online -Name "Media.WindowsMediaPlayer"
Add-WindowsCapability -Online -Name "Microsoft.WebDriver"
Add-WindowsCapability -Online -Name "Microsoft.Windows.MSPaint"
Add-WindowsCapability -Online -Name "Microsoft.Windows.Notepad"
Add-WindowsCapability -Online -Name "Microsoft.Windows.PowerShell.ISE"
Add-WindowsCapability -Online -Name "Microsoft.Windows.WordPad"
Add-WindowsCapability -Online -Name "Msix.PackagingTool.Driver"
Add-WindowsCapability -Online -Name "OpenSSH.Client"
Add-WindowsCapability -Online -Name "OpenSSH.Server"
Add-WindowsCapability -Online -Name "Print.Fax.Scan"
Add-WindowsCapability -Online -Name "Print.Management.Console"
Add-WindowsCapability -Online -Name "RasCMAK.Client"
Add-WindowsCapability -Online -Name "RIP.Listener"
Add-WindowsCapability -Online -Name "SNMP.Client"
Add-WindowsCapability -Online -Name "Tools.DeveloperMode.Core"
Add-WindowsCapability -Online -Name "Tools.Graphics.DirectX"
Add-WindowsCapability -Online -Name "WMI-SNMP-Provider.Client"
Add-WindowsCapability -Online -Name "XPS.Viewer"
wsl --update
winget install --name "Microsoft Visual Studio Code"
winget install --name "Microsoft Visual Studio Code Insiders"
