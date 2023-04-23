@echo off
goto start
dotnet-ef                      7.0.4           dotnet-ef
dotnet-execute                 0.13.0          dotnet-exec
microsoft.dotnet-httprepl      7.0.0           httprepl
upgrade-assistant              0.4.355802      upgrade-assistant
:start
dotnet-exec test.cs

pause