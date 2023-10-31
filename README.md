# Proof-of-Concept oAuth2 Resource Server Spring Boot 3 + Keycloak

This PoC project uses the OpenID Connect support in Spring Security without using any Keycloak adapter.

### Features
* Support for extracting realm user roles (i.e. group roles)
* Custom access denied error handling
* Spring Dockerfile has port 8090 enabled for listening debug server

### Setup
Run `docker-compose up`