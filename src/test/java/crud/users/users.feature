@parallel=false
Feature: Petstore User API - CRUD Operations

  Background:
    * url baseUrl
    * header Content-Type = 'application/json'
    * header Accept = 'application/json'
    * def userData = callonce read('setup/user-setup.js')
    * def username = userData.username
    * def email = userData.email

  Scenario: Create User
    Given path 'user'
    And request read('requests/create-user.json')
    When method POST
    Then status 200
    And match response.message == '#notnull'

  Scenario: Get User by Username
    Given path 'user', username
    When method GET
    Then status 200
    And match response == read('schemas/user-schema.json')
    And match response.username == username

  Scenario: Update User - firstName and password
    Given path 'user', username
    And request read('requests/update-user.json')
    When method PUT
    Then status 200
    And match response.message == '#notnull'
    * karate.pause(1500)

  Scenario: Validate Update - response matches update body
    * def expected = read('requests/update-user.json')
    Given path 'user', username
    When method GET
    Then status 200
    And match response.username == username
    And match response.firstName == expected.firstName
    And match response.password == expected.password
