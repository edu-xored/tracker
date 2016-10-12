# Web application

### Overview
The tracker should have a web application for convenient access. It should be deployed on some standalone server to be used as typical issue tracker.
### As local application
As mentioned, first use case is to be ran locally at developer's site. This should require as few actions and preconditions as possible.
### As standalone app
Often project needs some issue tracker to be available to public, as users tend to look for open issues and closed ones to assure project is actively maintained. So the app should be deployable on some server accessible just as typical issue tracker.
### Technical details
Backend part will be written in Java with Spring Boot and additions. Will make use of CLI written in Bash, get data as CSV, parse and provide pretty representation in browser. Frontend part will be written in JS. Concrete stack will be discussed later.
### MVP
At first we need to implement a read-only access via web interface. User starts application, opens browser as localhost:port, sees list of all issues and can dig into one of them for details.

