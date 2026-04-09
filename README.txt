Karate Automation - Petstore API
=================================

Proyecto de automatización de pruebas de API REST usando Karate DSL (https://karatelabs.github.io/karate/)
sobre la Petstore API (https://petstore.swagger.io).


REQUISITOS
----------

Herramienta       Versión recomendada
-----------       -------------------
Java              11 o superior (probado con Java 21)
Maven             3.8 o superior (probado con Maven 3.9.x)


CREAR PROYECTO DESDE CERO
--------------------------

Si quieres generar un proyecto base de Karate con Maven Archetype:

  mvn archetype:generate \
    -DarchetypeGroupId=io.karatelabs \
    -DarchetypeArtifactId=karate-archetype \
    -DarchetypeVersion=1.5.0 \
    -DgroupId=com.sofka \
    -DartifactId=kararte-automation-petstore


CLONAR Y EJECUTAR ESTE PROYECTO
--------------------------------

  # 1. Clonar el repositorio
  git clone <url-del-repo>
  cd kararte-automation-petstore

  # 2. Ejecutar todas las pruebas
  mvn clean test


ESTRUCTURA DEL PROYECTO
------------------------

  src/test/java/
  ├── karate-config.js          # Configuración global (baseUrl, entorno)
  ├── logback-test.xml          # Configuración de logs
  └── crud/
      ├── CrudTest.java         # Runner paralelo principal
      └── users/
          ├── UsersRunner.java  # Runner individual de users
          ├── users.feature     # Escenarios CRUD completos
          ├── setup/
          │   └── user-setup.js # Generación de datos dinámicos
          ├── requests/
          │   ├── create-user.json
          │   └── update-user.json
          ├── schemas/
          │   └── user-schema.json
          └── responses/
              └── user-not-found.json


REPORTE DE RESULTADOS
---------------------

Después de ejecutar "mvn clean test", el reporte HTML queda en:

  target/karate-reports/karate-summary.html

Abrirlo en el navegador (Windows):

  start target\karate-reports\karate-summary.html


ENTORNOS
--------

El baseUrl se configura en karate-config.js. Para cambiar de entorno:

  mvn clean test -Dkarate.env=staging
