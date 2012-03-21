@rem Do not use "echo off" to not affect any child calls.
@setlocal

@rem Get the absolute path to the current directory, which is assumed to be the
@rem Gmvault installation root.
@for /F "delims=" %%I in ("%~dp0") do @set gmvault_install_root=%%~fI
@set PATH=%gmvault_install_root%;%PATH%

@if not exist "%HOME%" @set HOME=%HOMEDRIVE%%HOMEPATH%
@if not exist "%HOME%" @set HOME=%USERPROFILE%

@cd %HOME%
@start %COMSPEC%
