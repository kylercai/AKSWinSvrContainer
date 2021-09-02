# Sample Dockerfile

# Indicates that the windowsservercore image will be used as the base image.
FROM mcr.microsoft.com/windows/servercore:ltsc2019

RUN powershell -Command Add-WindowsFeature Web-Server

EXPOSE 80

WORKDIR /inetpub/wwwroot

COPY index.htm .
COPY image.jpg .

# Sets a command or process that will run each time a container is run from the new image.
#CMD [ "ping localhost -t" ]