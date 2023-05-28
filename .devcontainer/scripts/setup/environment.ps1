$projectRoot="$PSCommandPath" | Split-Path -Parent | Split-Path -Parent | Split-Path -Parent | Split-Path -Parent
Push-Location "$projectRoot/.devcontainer"
try {
    # Install-Module -Name Set-PsEnv -Force -SkipPublisherCheck -AllowClobber
    # TODO: Figure out how to tell someone they need to run this as admin first or make this automated.
    Set-PsEnv
    if ($LASTEXITCODE -ne 0) { throw "Exit code is $LASTEXITCODE" }
  } finally {
    Pop-Location
}

if ($PSVersionTable.PSEdition -eq 'Core') {
    $env:PSHELL="pwsh"
} else {
    $env:PSHELL="PowerShell"
}

Set-Alias -Name "pshell" -Value "$env:PSHELL"
$env:DEVCONTAINER_FEATURES_PROJECT_ROOT="$projectRoot"
$env:DEVCONTAINER_FEATURES_SOURCE_ROOT="$env:DEVCONTAINER_FEATURES_PROJECT_ROOT/src"
$env:DEVCONTAINER_SCRIPTS_ROOT="$env:DEVCONTAINER_FEATURES_PROJECT_ROOT/.devcontainer/scripts"
$env:DEVCONTAINER_POST_BUILD_SUDO_COMMAND = & "$env:DEVCONTAINER_SCRIPTS_ROOT/utils/echo-sh-as-one-liner.ps1" setup/devspace post-build-sudo
$env:DEVCONTAINER_POST_BUILD_USER_COMMAND = & "$env:DEVCONTAINER_SCRIPTS_ROOT/utils/echo-sh-as-one-liner.ps1" setup/devspace post-build-user
