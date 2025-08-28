Feature: Validate status of first user Scenario 2

  Scenario: Get first array of user details status should be 'active' or 'inactive'
    Given url baseUrl + '/users'
    And header Authorization = token
    When method GET
    Then status 200
    * def validStatuses = ['active', 'inactive']
    * match validStatuses contains response[0].status