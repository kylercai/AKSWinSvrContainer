# Sample Dockerfile

# Indicates that the windowsservercore image will be used as the base image.
FROM mcr.microsoft.com/windows/servercore:ltsc2019

RUN powershell -Command Add-WindowsFeature Web-Server

EXPOSE 80