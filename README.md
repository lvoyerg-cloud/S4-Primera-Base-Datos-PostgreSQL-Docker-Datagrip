# Crear tu Primera Base de Datos en PostgreSQL usando Docker y DataGrip

## Descripción

La presente práctica tiene como objetivo instalar y ejecutar **PostgreSQL mediante Docker**, configurar **DataGrip** como entorno de desarrollo integrado (IDE) y crear una primera base de datos utilizando instrucciones SQL. El procedimiento permite comprobar la comunicación entre Docker, PostgreSQL y DataGrip, además de documentar cada etapa del proceso para evidenciar el funcionamiento correcto del entorno de trabajo.

## Objetivo

Instalar PostgreSQL utilizando Docker, configurar DataGrip como herramienta para la administración de bases de datos y crear la primera base de datos denominada `my_first_database`.

## Herramientas utilizadas

* **Docker Desktop:** plataforma utilizada para ejecutar PostgreSQL mediante un contenedor.
* **PostgreSQL:** sistema gestor de bases de datos utilizado durante la práctica.
* **DataGrip:** entorno de desarrollo integrado utilizado para establecer la conexión con PostgreSQL y ejecutar instrucciones SQL.
* **Terminal:** utilizada para ejecutar y verificar los comandos de Docker.

## Procedimiento

### 1. Descargar Docker Desktop

Se descargó Docker Desktop desde su sitio oficial con el propósito de disponer de la plataforma necesaria para trabajar con contenedores.

### 2. Instalar y verificar Docker Desktop

Se instaló Docker Desktop y se comprobó que estuviera funcionando correctamente antes de continuar con la creación del contenedor de PostgreSQL.

### 3. Abrir la terminal

Se abrió una terminal para ejecutar los comandos necesarios para crear, iniciar y verificar el contenedor de PostgreSQL.

### 4. Crear el contenedor de PostgreSQL

Se ejecutó el siguiente comando:

```bash
docker run --name postgres-db -e POSTGRES_PASSWORD=yourpassword -p 5432:5432 -d postgres
```

Este comando permitió crear e iniciar un contenedor denominado `postgres-db` utilizando la imagen de PostgreSQL. También se estableció la contraseña del usuario `postgres` y se configuró el puerto `5432` para permitir la comunicación con el servidor.

### 5. Verificar el contenedor

Se utilizó:

```bash
docker ps
```

Este comando permitió comprobar que el contenedor `postgres-db` se encontraba activo y que PostgreSQL estaba ejecutándose correctamente.

### 6. Descargar DataGrip

Se descargó DataGrip desde el sitio oficial de JetBrains para utilizarlo como IDE para la administración y ejecución de instrucciones SQL en PostgreSQL.

### 7. Instalar DataGrip

Se realizó la instalación de DataGrip en el equipo y se comprobó que la aplicación pudiera ejecutarse correctamente.

### 8. Registrar la licencia

Se registró la licencia gratuita correspondiente utilizando el correo institucional de la Universidad Mariano Gálvez (UMG).

### 9. Acceder a la configuración de conexión

Dentro de DataGrip se ingresó a:

**File → Data Sources and Drivers**

Este apartado permite configurar y administrar las conexiones con diferentes sistemas gestores de bases de datos.

### 10. Seleccionar PostgreSQL

Se agregó una nueva fuente de datos mediante el botón **+** y se seleccionó **PostgreSQL** como sistema gestor de bases de datos.

### 11. Configurar la conexión

Se utilizaron los siguientes parámetros:

| Parámetro | Configuración  |
| --------- | -------------- |
| Host      | `localhost`    |
| Port      | `5432`         |
| User      | `postgres`     |
| Password  | `yourpassword` |
| Database  | `postgres`     |

Estos datos permiten que DataGrip pueda localizar el servidor PostgreSQL y establecer la conexión utilizando las credenciales configuradas durante la creación del contenedor.

### 12. Probar la conexión

Se realizó una prueba de conexión desde DataGrip para comprobar que los parámetros configurados fueran correctos y que existiera comunicación con PostgreSQL ejecutándose dentro del contenedor `postgres-db`.

Una conexión exitosa permitió confirmar el funcionamiento conjunto de Docker, PostgreSQL y DataGrip.

### 13. Crear la primera base de datos

Finalmente, se abrió una nueva consola SQL en DataGrip y se ejecutó:

```sql
CREATE DATABASE my_first_database WITH TEMPLATE template0;
```

Esta instrucción permitió crear la base de datos denominada `my_first_database` dentro del servidor PostgreSQL. La cláusula `WITH TEMPLATE template0` especifica que PostgreSQL utilizará `template0` como plantilla para la creación de la nueva base de datos.

## Resultado esperado

Al finalizar la práctica se debe contar con:

* Docker Desktop instalado y funcionando.
* Un contenedor llamado `postgres-db` ejecutándose.
* PostgreSQL funcionando dentro del contenedor.
* El puerto `5432` configurado para la comunicación.
* DataGrip instalado y configurado.
* Una conexión exitosa entre DataGrip y PostgreSQL.
* La base de datos `my_first_database` creada correctamente.

## Evidencias

Las evidencias de la práctica pueden incluir capturas de pantalla o grabaciones que demuestren:

1. Docker Desktop funcionando.
2. Ejecución del comando `docker run`.
3. Resultado del comando `docker ps`.
4. Instalación y ejecución de DataGrip.
5. Configuración de la fuente de datos PostgreSQL.
6. Prueba de conexión exitosa.
7. Consola SQL con la instrucción `CREATE DATABASE`.
8. Visualización de `my_first_database` dentro de DataGrip.

## Estructura del procedimiento

```text
Docker Desktop
      │
      ▼
Contenedor postgres-db
      │
      ▼
PostgreSQL
      │
      │ Puerto 5432
      ▼
DataGrip
      │
      ▼
Consola SQL
      │
      ▼
my_first_database
```

## Tecnologías utilizadas

```text
Docker
PostgreSQL
DataGrip
SQL
```

## Autor

**Louis Neil Voyer Garcia**

**Universidad Mariano Gálvez de Guatemala (UMG)**
