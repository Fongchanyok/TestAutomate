
***Settings***
Library     SeleniumLibrary

*** Variables ***
${url}    https://abhigyank.github.io/To-Do-List/
${browser}    chrome
${btn_add_item}    xpath=/html/body/div/div/div[1]/a[1]  
${btn_plus}    xpath=//*[@id="add-item"]/button   
${btn_Todo}    xpath=/html/body/div/div/div[1]/a[2]/span    


*** Keywords ***
Open
    Open Browser    ${url}    ${browser}
    Wait Until Element Is Visible    xpath=/html/body/div/h1
open_todo_task
    Input Text    id="new-task"    Test
    Wait Until Element Is Visible    id=text-1   10s
    Click Element    id=text-1
    Sleep    5s

open_completed
    Click Element    xpath=${btn_add_item}v[1]/a[3]/span
    Wait Until Element Is Visible    xpath=//*[@id="1"]/span    10s
    Sleep    5s

Delete_task
    Click Element        xpath=//*[@id="1"]/span
    Sleep    time_5s

*** Test Cases ***
TC001
    Open Browser    
    open_todo_task
    open_completed
    Delete_task
   
    

    