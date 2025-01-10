*** Settings ***
Documentation     A test suite with a single test for New Tab
...               Created by hats' Robotcorder
Library           SeleniumLibrary    timeout=10

*** Variables ***
${BROWSER}    chrome
${SLEEP}      10

*** Test Cases ***
    ${options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
    Call Method    ${options}    add_argument    --headless
    Call Method    ${options}    add_argument    --no-sandbox
    Call Method    ${options}    add_argument    --disable-dev-shm-usage
    Call Method    ${options}    add_argument    --disable-gpu
    Open Browser    https://www.geeksforgeeks.org/courses/full-stack-node?source=google&medium=cpc&device=c&keyword=geeksforgeeks&matchtype=e&campaignid=20039445781&adgroup=147845288105&gad_source=1&gclid=Cj0KCQiA3sq6BhD2ARIsAJ8MRwWHXXIiIxZ-ZvfVI1Lva6hP6_10PRFD7K5KTFbkZ_q45joRW2bT-2UaArTSEALw_wcB    ${BROWSER}    options=${options}
    Wait Until Element Is Visible    xpath=(//p)[21]    timeout=5
    Click Element    xpath=(//p)[21]
    Wait Until Element Is Visible    xpath=(//h3[@class="LC20lb    timeout=5
    Click Element    xpath=(//h3[@class="LC20lb
    Wait Until Element Is Visible    xpath=(//span)[144]    timeout=5
    Click Element    xpath=(//span)[144]
    Wait Until Element Is Visible    xpath=//html    timeout=5
    Click Element    xpath=//html
    Wait Until Element Is Visible    xpath=//img[@class="aligncenter"]    timeout=5
    Click Element    xpath=//img[@class="aligncenter"]
    Wait Until Element Is Visible    xpath=//div[@class="lightbox-target"]    timeout=5
    Click Element    xpath=//div[@class="lightbox-target"]
    Close Browser
