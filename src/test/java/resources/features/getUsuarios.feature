Feature: Obtener lista de usuarios

  Background:
    * url urlBase
    * configure headers = { 'Content-Type': 'application/json' }

  @getUsers
  Scenario: Validar la obtención de todos los usuarios
    Given path '/usuarios'
    When method get
    Then status 200
    And match response contains { "usuarios": "#[]", "quantidade": "#number" }