Feature: Data Test
  Background:
    * def kraftBaseURL = "https://www.krafttechexlab.com/sw/api/v1"

    Scenario: Get all user info with Kraft
      Given url kraftBaseURL + "/allusers/alluser"
      And param page = 1
      And param pagesize = 10
      When method GET
      * def expectedInfo = read("data/users.json")
      Then match response == expectedInfo
