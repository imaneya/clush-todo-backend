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


안녕하세요 개발자 김성준입니다.

To-Do App을 깃허브에 있는 자료 활용해서 제작하였습니다.

Design 폴더에 설계 문서도 열심히 작성하여 포함하였습니다.

백엔드 부분은 jwt 라이브러리를 사용하여 로그인 기능을 구현하였습니다.

아이디, 비밀번호 중복 가입 방지 등의 기능을 아직 추가하지는 못하였습니다.

Swagger 문서는 작성하였지만 To-Do App API 연동은 전부 완료하지는 못했습니다.

https://app.swaggerhub.com/apis/imaneya/Clush-ToDo/1.0.0 <- Swagger API 문서

jwt를 사용하였지만 To-Do 관련하여 추가적인 기능이 있는 API를 따로 개발하지는 못했습니다.

카카오톡 연동 기능을 결합하였으면 좋았을 것 같습니다. 죄송합니다.

API 개발하지 못한 부분에 Front단 데이터를 Report로 출력하여

To-Do 목록을 보관할 수 있도록 만들었다면 보완이 되었을 것 같습니다.
