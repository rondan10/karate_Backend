Feature: Crear un nuevo usuario

  Background:
    * url urlBase
    * configure headers = { 'Content-Type': 'application/json' }

  @createUser
  Scenario Outline: Validar la creación de un usuario
    Given path '/usuarios'
    And request { "nome": "<nome>", "email": "<email>", "password": "<password>", "administrador": "<administrador>" }
    When method post
    Then status 201
    And match response contains { "_id": "#string", "message": "Cadastro realizado com sucesso" }
    And match response == { "_id": "#string", "message": "#string" }

    Examples:
      | nome                  | email                   | password    | administrador |
      | Adrian Moises Rondan  | moises15552@example.com    | password123 | true          |
      | Maria Fernanda Perez  | mariafernanda5555@example.com | pass456     | false         |
      | Anthony Jordan Carlos  | jordan2341@example.com | extreem2     | false         |
      | Juan Hernandez Garcia  | juanocab45@example.com | greta12    | false         |