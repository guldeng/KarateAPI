Feature: Assertion by using match keyword

  Scenario: some match example
    * def name = 'Leia'
    * match name == "Leia"
    * match name != "HanSolo"

  Scenario: more matching example
    * def employee =
      """
      {
      "name" : "Obiwan",
      "lastName" : "Kenobi",
      "salary" : 50000,
      "active" : true
      }
      """
    * print employee
    * match employee.name == 'Obiwan'
    * match employee.lastName == 'Kenobi'
    * match employee.salary == 50000
    * match employee.active == true

  Scenario: fuzzy matching
    * def employee =
      """
      {
      "name" : "Obiwan",
      "lastName" : "Kenobi",
      "salary" : 50000,
      "active" : true
      }
      """
    * match employee.name == '#string'
    * match employee.lastName == '#string'
    * match employee.salary == '#number'
    * match employee.active == '#boolean'
    * match employee.active == '#present'
    * match employee.location == '#notpresent'

  Scenario: Contains Matching
    * def employees =
      """
      [
      {
      "name" : "Obiwan",
      "lastName" : "Kenobi",
      "salary" : 50000,
      "active" : true
      },
       {
      "name" : "Anakin",
      "lastName" : "Skywalker",
      "salary" : 40000,
      "active" : false
      }
      ]
      """
    * def lengthOfArray = employees.length
    * print lengthOfArray
    * match lengthOfArray == 2
    * print employees
    * match employees contains {"name" : "Obiwan","lastName" : "Kenobi","salary" : 50000,"active" : true}

    Scenario: Contains Matching - 2
      * def users = ["Leia", "Obiwan", "Anakin", "Hansolo"]
      * print users
      * match users contains "Leia"
      * def user1 = "Obiwan"
      * match users contains user1
      * match users contains ["Leia", "Hansolo"]


