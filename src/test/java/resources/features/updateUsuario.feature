Feature: Actualizar un usuario existente

  Background:
    * url urlBase
    * configure headers = { 'Content-Type': 'application/json' }

  @updateUser
  Scenario Outline: Validar la actualización de un usuario
    Given path '/usuarios', '<userId>'
    And request { "nome": "<nome>", "email": "<email>", "password": "<password>", "administrador": "<administrador>" }
    When method put
    Then status 201
    And match response == { "_id": "#string", "message": "#string" }

    Examples:
      | userId             | nome                  | email                   | password    | administrador |
      | jXXMRcJomVX5h2hv   | Adrian Moises Rondan  | moises12@example.com    | newpass123  | true       |
      | kYYMRcJomVX5h3hv   | Maria Fernanda Perez  | mariafernanda@example.com | pass789     | false      |