@echo off 
SET mypath=%~dp0

:Restart
call codegen-adventureworks.bat
set msbuildit=C:\Program Files (x86)\MSBuild\14.0\Bin\MsBuild.exe
"%mypath%lib\nuget.exe" restore "%mypath%src_adventureworks\src\Api.sln"
call "%msbuildit%" "%mypath%src_adventureworks\src\Api.sln" /p:Configuration=Debug
call "%mypath%linqpad\lprun" "%mypath%linqpad\queries\serve-api.linq" 1338 "%mypath%src_adventureworks\src\bin\Debug\AdventureWorks.Api.dll"
goto Restart
