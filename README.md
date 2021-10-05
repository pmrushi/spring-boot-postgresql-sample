# spring-boot-postgresql-sample
Spring boot application connect to Postgresql database.

### Setup Postgres DB

* Pull images and create containers
```
cd postgresdb
docker-compose up -d
```

### Connect to pgadmin4
* Login to pgadmin4
```
URL      : http://localhost:5050/
User     : admin@admin.com
Password : admin
```
* Create Server
  Menu : Object -> Create -> Server
```
Host     : postgres
Port     : 5432
Database : postgres
User     : postgres
Password : postgres
```
* Start Pgadmin4 without docker-compose (optional)
```
docker run -p 5050:80  -e "PGADMIN_DEFAULT_EMAIL=admin@admin.com" -e "PGADMIN_DEFAULT_PASSWORD=admin"  -d dpage/pgadmin4
```
####Run Application
```
./gradlew bootRun
gradlew.bat bootRun (windows)
```
####Test Application
Save Employee - POST - http://localhost:8080/api/v1/employee

Request body :
```
{
    "employeeId": "E001",
    "employeeName": "Jack",
    "employeeEmail": "jack@gmail.com",
    "employeeAddress": "US"
}
```
Response :
```
{
  "id": 1,
  "employeeId": "E001",
  "employeeName": "Jack",
  "employeeEmail": "jack@gmail.com",
  "employeeAddress": "US"
}
```

Update Employee - POST - http://localhost:8080/api/v1/employee

Request body :
```
{
    "id": 1,
    "employeeId": "E001",
    "employeeName": "Jack1",
    "employeeEmail": "jack@gmail.com",
    "employeeAddress": "US"
}
```
Response :
```
{
  "id": 1,
  "employeeId": "E001",
  "employeeName": "Jack1",
  "employeeEmail": "jack@gmail.com",
  "employeeAddress": "US"
}
```

Get All Employees - GET - http://localhost:8080/api/v1/employee/all

Response :
```
[
    {
        "id": 1,
        "employeeId": "E001",
        "employeeName": "Jack",
        "employeeEmail": "jack@gmail.com",
        "employeeAddress": "US"
    }
]
```
