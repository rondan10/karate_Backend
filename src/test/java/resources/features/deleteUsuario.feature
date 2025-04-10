Feature: Eliminar un usuario del sistema

  Background:
    * url urlBase
    * configure headers = { 'Content-Type': 'application/json' }

  @deleteUser
  Scenario Outline: Validar la eliminación de un usuario existente
    Given path '/usuarios', '<userId>'
    When method delete
    Then status 200
    And match response contains { "message": "#string" }

    Examples:
      | userId             |
      | 57mo526ORwAf9eTo   |
      | 6mVqO8STMDKiOc8W   |