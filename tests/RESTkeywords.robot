*** Settings ***
Library    REST    https://jsonplaceholder.typicode.com/users

*** Variables ***
${new_props} =    { "pockets": "", "money": 0.02 }

*** Test Cases ***
Get all existing users
    GET    /users

GET existing user
    GET    /users/1

POST TO create new user
    POST    /users    ${CURDIR}/../results/user_1.json

PUT updates existing user
    PUT    /users/1    ${new_props}

PATCH updates single property of existing user
    PATCH    /users/1    { "name": "Gil Alexander" }

DELETE deletes an existing user
    DELETE    /users/1

HEAD is identical to GET, but has nothing in response body
  HEAD          /users/1

OPTIONS is used to gain info on the allowed communication options
  OPTIONS       /users/1