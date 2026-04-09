# Karate Automation - Petstore API

Proyecto de automatización de pruebas de API REST usando [Karate DSL](https://karatelabs.github.io/karate/) sobre la [Petstore API](https://petstore.swagger.io).

---

## Requisitos

| Herramienta | Versión recomendada |
|---|---|
| Java | 11 o superior (probado con Java 21) |
| Maven | 3.8 o superior (probado con Maven 3.9.x) |

---

## Crear proyecto desde cero

Si quieres generar un proyecto base de Karate con Maven Archetype:

```bash
mvn archetype:generate \
  -DarchetypeGroupId=io.karatelabs \
  -DarchetypeArtifactId=karate-archetype \
  -DarchetypeVersion=1.5.0 \
  -DgroupId=com.sofka \
  -DartifactId=kararte-automation-petstore
```

---

## Clonar y ejecutar este proyecto

```bash
# 1. Clonar el repositorio
git clone <url-del-repo>
cd kararte-automation-petstore

# 2. Ejecutar todas las pruebas
mvn clean test
```

---

## Estructura del proyecto

```
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
```

---

## Reporte de resultados

Después de ejecutar `mvn clean test`, el reporte HTML queda en:

```
target/karate-reports/karate-summary.html
```

Abrirlo en el navegador:

```bash
# Windows
start target\karate-reports\karate-summary.html
```

---

## Entornos

El `baseUrl` se configura en `karate-config.js`. Para cambiar de entorno:

```bash
mvn clean test -Dkarate.env=staging
```
