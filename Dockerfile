FROM mcr.microsoft.com/windows/servercore:ltsc2019

LABEL Description="IIS" Vendor="Microsoft" Version="10"

#RUN powershell -Command Add-WindowsFeature Web-Server
# Uses dism.exe to install the IIS role.
RUN dism.exe /online /enable-feature /all /featurename:iis-webserver /NoRestart

COPY index.htm /inetpub/wwwroot/

EXPOSE 80

# Sets a command or process that will run each time a container is run from the new image.
CMD [ "cmd" ]