*** Settings ***
Library         AppiumLibrary

*** Variables ***
${REMOTE_URL}       http://127.0.0.1:4723/wd/hub



*** Test Cases ***

Open_Application_iOS
     Open Application    $${REMOTE_URL}    app=bs://29236a16698cfe5666b631200eecd297d0f4fa0f   platformName=ios    platformVersion=17   deviceName=iPhone 13    browserstack.local=true
#     Click Alert Button    Allow
     Sleep    10
     Click Element    accessibility_id=Login
     Sleep    5
     Click Element    xpath=//XCUIElementTypeImage
     Sleep    5
     Click Element    accessibility_id=Email
     Input Text    accessibility_id=Email    Email
     Sleep    3
     Click Element    xpath=//XCUIElementTypeImage
     # accessibility_id=textFieldPassword is not included in .ipa build https://codemagic.io/app/67a308732c075b7efabd9400/build/67da7bb7562cb797d40f49c0
#     Click Element    accessibility_id=accessibility_id=textFieldPassword
#     Input Text     accessibility_id=accessibility_id=textFieldPassword    Password
#     Sleep    3
#     Click Element    xpath=//XCUIElementTypeApplication[@name="PDAX-DEV"]/XCUIElementTypeWindow[2]/XCUIElementTypeOther/XCUIElementTypeOther
     # accessibility_id=Reset Password Button is not included in .ipa build https://codemagic.io/app/67a308732c075b7efabd9400/build/67da7bb7562cb797d40f49c0
     Click Element    accessibility_id=Reset Password Button
      Sleep    5
     Click Element    accessibility_id=buttonBack
     Sleep    3
     # accessibility_id=Create Account Button is not included in .ipa build https://codemagic.io/app/67a308732c075b7efabd9400/build/67da7bb7562cb797d40f49c0
     Click Element     accessibility_id=Create Account Button

