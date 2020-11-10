*** Settings ***
Library    REST    https://jsonplaceholder.typicode.com    ssl_verify=false

*** Test Cases ***
Get one user
    GET    /users/1
    Output    response