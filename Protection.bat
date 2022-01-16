@ECHO OFF
REM Second protection service by ne0_jamm3r
TITLE SECONDARY SECURITY GATEWAY
SET passwd=winpass
COLOR 3
SET /P input=Secondary Security Password for %USERNAME% :

IF %passwd% EQU %input% (
    CLS
    COLOR A
    ECHO -PASSWORD IS CORRECT-
    SHUTDOWN /A
    PING localhost -n 3 > NUL
    EXIT
) ELSE (
    CLS
    COLOR 4
    ECHO -PASSWORD INCORRECT-
    ::SHUTDOWN /A
    PING localhost -n 2 > NUL
    CLS
    COLOR 4F
    ECHO LOGGING OUT...
    PING localhost -n 3 > NUL
    SHUTDOWN /L 
)