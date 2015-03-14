rem granting security and sharing to User and Adding Group--Varun(Full Control and Read write access) 
@ECHO OFF
icacls C:\PFS /grant ""Varun"":(OI)(CI)F
net share sharename=C:\PFS /GRANT:""Varun"",FULL
@ECHO ON
rem granting security and sharing to User and Adding Group--Guest(Full Control and Read write access) 
@ECHO OFF
icacls C:\PFS /grant "Guest":(OI)(CI)F
net share sharename=C:\PFS /GRANT:"Guest",FULL
@ECHO ON
rem granting security and sharing to User and Adding Group--Guests(Full Control and Read write access) 
@ECHO OFF
icacls C:\PFS /grant "Guests":(OI)(CI)F
net share sharename=C:\PFS /GRANT:"Guests",FULL
@ECHO ON
set /p client="Enter the client name to be shared:"
@ECHO OFF
icacls C:\PFS /grant "%client%":(OI)(CI)F
net share sharename=C:\PFS /GRANT:"%client%",FULL
rem Tells the current sharing status.
icacls C:\PFS 

PAUSE
