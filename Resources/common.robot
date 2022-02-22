*** Settings ***
Library     AppiumLibrary

*** Variables ***
#***IOS CAPABILITIES***
${IOS-SERVER-PORT}                      4723
${IOS-UDID}                             00008030-001965AE0191802E
${IOS-PLATFORM-VERSION}                 15.3.1
${IOS-DEVICE-NAME}                      iPhone
${IOS-XCODE-ORGID}                      Z5Z6JHFA5Y
${IOS-XCODE-SIGNINID}                   iPhone Developer
${IOS-AUTOMATION-NAME}                  XCUITest

*** Keywords ***
Launch ToolsIOS
    Open Application    http://localhost:${IOS-SERVER-PORT}/wd/hub      platformName=iOS    bundleId=com.flir.tools     udid=${IOS-UDID}    platformVersion=${IOS-PLATFORM-VERSION}     deviceName=${IOS-DEVICE-NAME}   xcodeOrgId=${IOS-XCODE-ORGID}   xcodeSigninId=${IOS-XCODE-SIGNINID}     automationName=${IOS-AUTOMATION-NAME}   noReset=true
