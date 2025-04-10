# Proyecto de Pruebas Automatizadas con Karate DSL
Proyecto para pruebas automatizadas por enpoints

## Estructura del Proyecto

- **`src/test/java/resources/features`**: Contiene los archivos `.feature` con los escenarios de prueba.

- **`src/test/java/resources/request`**: Contiene los archivos `.json` con la estructura request para el envio.

- **`src/test/java/resources/schemas`**: Contiene los archivos `.json` con el esquema para validar la respuesta del api.

- **`target/karate-reports`**: Carpeta generada automáticamente con los reportes de ejecución.

## Ejecución de Pruebas

### Ejecución de Todas las Pruebas
Para ejecutar todas las pruebas de la suite:
```bash
mvn test

### Ejecución de Pruebas Individuales
Para ejecutar pruebas individuales:
```bash
mvn test -Dkarate.options="classpath:resources/features/updateUsuario.feature"

### ¡IMPORTANTE!
Cambiar la data las veces que se requieran para que las pruebas sean exitosas.