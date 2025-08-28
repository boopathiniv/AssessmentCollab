Feature: Create a new user scenario 1

  Scenario: Create user and verify ID is numeric (scenario 1)
    * def randomEmail = 'karate.user' + java.util.UUID.randomUUID() + '@example.com'

    Given url baseUrl + '/users'
    And header Authorization = token
    And header Content-Type = 'application/json'
    And request
      """
      {
        "name": "BoopathiKarate",
        "gender": "male",
        "email": "#(randomEmail)",
        "status": "active"
      }
      """
    When method POST
    Then status 201
    And match response.id == "#number"

