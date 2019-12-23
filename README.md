### Eureka server
This microservice is used for service registry and service discovery. 
Netflix Zuul will use this microservice to search other registered microservices to navigate the request to producer microservice.

This microservice is using docker configuration for docerize container and same has been deployed on azure.


### Prerequisites and setup:


* Java 8
* Maven


### How to run
Build the application with `mvn clean install` and run using below command.
`java -jar  < jar-name > `