# Windows 10 Privacy Scripts and Registry Files

## Synopsis

This repository collects some scripts and registry files to improve the privacy using Windows 10.

## Disclaimer

**Use it on your own liability!**

## Detailed descriptions

### Miscellaneous Privacy Related Options

The registry files `Privacy_Group_Policy_Machine.reg` and `Privacy_Group_Policy_User.reg` contain a collection of Windows Group Policy (GPO) entries improving the privacy using Windows 10. The file `Privacy_Group_Policy_User.reg` has to be installed for each Windows user separately. 

The file `Privacy_Group_Policy_Machine.reg` configures the following policies (Computer Configuration):

* Turn off Active Help
* Turn On/Off Find My Device
* Turn off collection of InPrivate Filtering data
* Let Windows apps access diagnostic information about other apps
* Turn off Microsoft consumer experiences
* Turn off soft landing help tips
* Allow Telemetry
* Turn off Automatic Download and Update of Map Data
* Configure Windows Defender SmartScreen
* Disable Windows Error Reporting
* Don´t search the web or display web results in Search over metered connections
* Allow Cortana
* Allow Cortana above lock screen
* Allow search and Cortana to use location
* Prevent automatically adding shared folders to the Windows Search index
* Don´t search the web or display web results in Search
* Do not allow web search
* Prevent Windows Media DRM Internet Access

The file `Privacy_Group_Policy_User.reg` configures the following policies (User Configuration):

* Do not use diagnostic data for tailored experiences
* Do not suggest third-party content in Windows spotlight
* Turn off all Windows spotlight features
* Turn off storage and display of search history

In addition, the file `Privacy_Group_Policy_User.reg` configures the following settings at user level:

* It disables the device histroy for Cortana
* It disables the Bing Web Search (Cortana)

Both files have been tested using Windows 10 EDU 1903.

### Restrict Cortana: `Cortana.reg`

This file disables the Web Search of Cortana and device history. Tested using Windows 10 EDU 1903.

### Remove Apps: PowerShell Script `removeApps.ps1`

A PowerShell script to remove some often preinstalled apps that are potentially unwanted. To execute it follow the following steps:

1. Run Windows PowerShell as administrator.
2. Execute `Set-ExecutionPolicy -ExecutionPolicy ByPass`
3. Confirm
4. Change to the directory of the downloaded PowerShell script (e.g. `cd ~\Download\Privacy-for-Windows-10`)
5. Execute the script: `.\removeApps.ps1`
