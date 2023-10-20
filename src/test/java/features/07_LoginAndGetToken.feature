Feature: Login and get token

  Background:
    * def kraftBaseURL = "https://www.krafttechexlab.com/sw/api/v1"

  Scenario: Login and get token - 1
    Given url kraftBaseURL + "/allusers/login"
    And multipart field email = "ahsoka13@krafttechexlab.com"
    And multipart field password = "Test1234"
    When method POST
    Then status 200
    Then match response.token == "#present"
    * def userToken = response.token
    * print response


  #Scenario: Login and get token - 2
   # Given url kraftBaseURL + "/allusers/login"
   # And form field email = "ahsoka13@krafttechexlab.com"
   # And form field password = "Test1234"
   # When method POST
   # Then status 200
   # Then match response.token == "#present"
   # * def userToken = response.token
   # * print response

