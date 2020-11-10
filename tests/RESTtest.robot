*** Settings ***
Library    REST    https://jsonplaceholder.typicode.com    ssl_verify=false

*** Test Cases ***
GET and verify user1 info
    GET    /users/1
    ${USER1 NAME} =    Output    response body name
    ${USER1 USERNAME} =    Output    response body username
    ${USER1 EMAIL} =    Output    response body email
    ${USER1 STREET} =    Output    response body address street
    ${USER1 CITY} =    Output    response body address city
    ${USER1 PHONE} =    Output    response body phone

    Should be equal    ${USER1 NAME}    Leanne Graham
    Should be equal    ${USER1 USERNAME}    Bret
    Should be equal    ${USER1 EMAIL}    Sincere@april.biz
    Should be equal    ${USER1 STREET}    Kulas Light
    Should be equal    ${USER1 CITY}    Gwenborough
    Should be equal    ${USER1 PHONE}    1-770-736-8031 x56442


GET and verify user2 info
    GET    /users/2
    ${USER2 NAME} =    Output    response body name
    ${USER2 USERNAME} =    Output    response body username
    ${USER2 EMAIL} =    Output    response body email
    ${USER2 STREET} =    Output    response body address street
    ${USER2 CITY} =    Output    response body address city
    ${USER2 PHONE} =    Output    response body phone

    Should be equal    ${USER2 NAME}    Ervin Howell
    Should be equal    ${USER2 USERNAME}    Antonette
    Should be equal    ${USER2 EMAIL}    Shanna@melissa.tv
    Should be equal    ${USER2 STREET}    Victor Plains
    Should be equal    ${USER2 CITY}    Wisokyburgh
    Should be equal    ${USER2 PHONE}    010-692-6593 x09125
