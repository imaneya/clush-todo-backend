#Overview

Todo list application that can create, read, update, delete, and mark completed.
This application also implement filtering and pagination.


The API specification was written with swagger.
https://app.swaggerhub.com/apis/imaneya/Clush-ToDo/1.0.0


Backend is developed using spring boot.

#How to Run Application

Install Mysql and Create DB, Create Table
In /mysql directory, executiion mysql.sql

Install maven to run spring boot app (backend).

in /backend/to-do-list directory, run spring boot aplication using maven
cd /backend/to-do-list

mvn spring-boot:run
