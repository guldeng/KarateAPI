Feature: Karate UI Test

  Scenario: Login Test
    * configure driver = {type:'chromedriver', executable:'C:\\Users\\User\\Desktop\\chromedriver-win64\\chromedriver-win64\\chromedriver.exe'}
    Given driver "https://www.krafttechexlab.com/login"
    * maximize()
    * input("#email","ahsoka13@krafttechexlab.com")
    * input("#yourPassword","Test1234")
    * click("button")
    Then waitForUrl("https://www.krafttechexlab.com/index")
    Then match driver.url == "https://www.krafttechexlab.com/index"
    * delay(2000)
