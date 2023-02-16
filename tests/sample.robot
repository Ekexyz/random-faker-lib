*** Settings ***
Library                       QWeb
Library                       String
Library                       Collections
Library                       ../libs/functions.py
Suite Setup                   Open Browser  about:blank  chrome
Suite Teardown                Close All Browsers



*** Test Cases ***
Sample Test
    FOR  ${i}  IN RANGE  1  10
        ${title}=         Get Random Title
        ${firstname}=     Get Random Firstname
        ${lastname}=      Get Random Lastname
        ${email}=         Get Random Email  ${firstname}  ${lastname}
        ${pii}=           Get Opp Reference
        Log To Console    random person: ${title} ${firstname} ${lastname}
        Log To Console    random email: ${email}
        Log To Console    pii: ${pii}
    END
