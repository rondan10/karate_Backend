Feature: Buscar usuario por ID

  Background:
    * url urlBase
    * configure headers = { 'Content-Type': 'application/json' }

  @getUserById
  Scenario Outline: Validar la búsqueda de un usuario por ID
    Given path '/usuarios', '<userId>'
    When method get
    Then status 200
    And match response contains { "_id": "#string", "nome": "#string", "email": "#string", "password": "#string", "administrador": "#string" }

    Examples:
      | userId             |
      | 1RiPTx6Z8VP1fwbG   |
      | 3GonRbjC8HOndTae   |
      | 41ZO10cj7CbAP24t   |