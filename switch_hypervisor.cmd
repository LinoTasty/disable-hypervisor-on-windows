@echo OFF
echo *********************************************************
echo *                                                       *
echo *           FUCK HYPERVISOR WE LOVE VM                  *
echo *                                                       *     
echo *********************************************************
echo. 

NET SESSION >nul 2>&1
IF %ERRORLEVEL% EQU 0 (
	GOTO CHOOSE

) ELSE (
	echo ERROR: ADMINISTRATOR PRIVILEGES REQUIRED
	echo.
)

PAUSE
EXIT /B 1
   
:CHOOSE 
	echo Select one of the two options
	echo 1. Disable hypervisor to use VM
	echo 2. Activate hypervisior to use DOCKER
	echo.
	echo WARNING THE PC WILL BE RESTARTED
	echo.
	set /p id="Choose: "
	IF "%id%"=="1" (
		bcdedit /set hypervisorlaunchtype off
		shutdown /r /t 0
		PAUSE
		
	) ELSE IF "%id%"=="2" (
		bcdedit /set hypervisorlaunchtype auto
		shutdown /r /t 0
		PAUSE
		
	) ELSE (
	
		echo Invalid Option
		PAUSE
		
	)

