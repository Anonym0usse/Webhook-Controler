@echo off
chcp 65001 >nul
color 3


echo 		╦ ╦┌─┐┌┐ ┬ ┬┌─┐┌─┐┬┌─  ╦  ┬┌┐┌┬┌─
echo 		║║║├┤ ├┴┐├─┤│ ││ │├┴┐  ║  ││││├┴┐
echo		        ╚╩╝└─┘└─┘┴ ┴└─┘└─┘┴ ┴  ╩═╝┴┘└┘┴ ┴                 Created by Anonym0usse https://github.com/Anonym0usse
echo.
echo.

set /p WEBHOOK=[+] WEBHOOK LINK = 

:message
color 6
cls


echo 		 ╔╦╗┌─┐┌─┐┌─┐┌─┐┌─┐┌─┐
echo 		 ║║║├┤ └─┐└─┐├─┤│ ┬├┤ 
echo    		 ╩ ╩└─┘└─┘└─┘┴ ┴└─┘└─┘                            Created by Anonym0usse https://github.com/Anonym0usse
echo.
echo.
set /p message_text=[+] Message = 

curl -k -F "payload_json={\"content\": \"%message_text%\"}"  %WEBHOOK%
goto :message
