*** Settings ***
Library         AppiumLibrary

*** Variables ***
${REMOTE_URL}       http://127.0.0.1:4723/wd/hub



*** Test Cases ***

Open_Application_Android
     Open Application    ${REMOTE_URL}   platformName=android    platformVersion=9.0   deviceName=Google Pixel 3   app=bs://146089c490cc0e87936ad416bc6069924fd5fb74
#     Wait Until Element Is Visible    com.android.permissioncontroller:id/permission_icon
      Sleep    10
#      Click Element    xpath=//android.widget.Button[@content-desc="Login"]
      Click Element     xpath=//*[@resource-id='buttonLogin']
      Click Element   xpath=//android.widget.FrameLayout[@resource-id="android:id/content"]/android.widget.FrameLayout/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View/android.view.View
      Click Element    xpath=//*[@resource-id='textFieldEmail']
      Input Text Into Current Element    Username
      Click Element    xpath=//*[@resource-id='textFieldPassword']
      Input Text Into Current Element    Password
      Sleep    10
      Click Element  xpath=//android.widget.FrameLayout[@resource-id="android:id/content"]/android.widget.FrameLayout/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View/android.view.View
      Click Element    accessibility_id=Reset Password Button
      Sleep    5
      Click Element    xpath=//*[@resource-id='buttonBack']
      Sleep    3
      Click Element     accessibility_id=Create Account Button

