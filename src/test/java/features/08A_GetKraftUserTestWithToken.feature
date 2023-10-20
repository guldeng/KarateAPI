Feature: Kraft get user info with token

  Background:
    * def kraftBaseURL = "https://www.krafttechexlab.com/sw/api/v1"
    * def authorization = call read("07_LoginAndGetToken.feature")
    * def userTokenLast = authorization.userToken

    * def authorization1 = call read("classpath:features/07_LoginAndGetToken.feature")
    * def userTokenLast1 = authorization.userToken

  Scenario: Get user info with token - 1
    Given url kraftBaseURL + "/user/me"
    Given header token = userTokenLast
    When method GET
    Then status 200
    Then response[0].name == "Ahsoka Tano13"

  Scenario: Get user info with token - 2
    Given url kraftBaseURL + "/user/me"
    Given header token = userTokenLast1
    When method GET
    Then status 200
    Then response[0].name == "Ahsoka Tano13"