FROM microsoft/windowsservercore

LABEL Description="IIS" Vendor="Microsoft" Version="10"

RUN powershell -Command Add-WindowsFeature Web-Server

COPY index.htm /inetpub/wwwroot/

EXPOSE 80

CMD [ "ping localhost -t" ]