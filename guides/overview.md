# Introduction
## What is Tokumei

your app (some worker) - Tokumei (cheerleader)

Tokuemi helps developers take their application and serve it over the web

## Unobtrusive

- Encourage domain modelling
- Deploy endless stateful applications
- Support polyglot persistence

Key components
- Routing
- Actions
- Templates
- Assets
  Content that is not dynamic can be quickly added as part of your application
  support any js Framework

Things Tokumei would like to help you with

- Routing
- Flash messages
- Sessions
- templates
- content negotiation (MIME)
- Logging
-

## Why choose Tokumei

### Reliable
erlang was designed to be scalable fault-tolerant this really helps your application always be up to server your users needs

### Simple
From the ground up Tokumei is designed to be simple.
This extends to Raxx the middleware layer
### Flexible
By focusing on only the web layer you the developer can build almost anything
### Opinionated
Tokumei has many assumptions on how you should handle the web
## Deployability
As a standard mix application it is simple to deploy Tokumei applications.
In fact you are not really deploying a Tokumei application and so advice for deploying elixir will work with projects including tokumei

# Architecture

Tokumei has two guiding design principles, [clean Architecture] and [OTP citezenship]
## Clean Architecture

No model

### XVC
- umbrella applications
- behaviours and interface tests
- adapter configuration

## OTP citezen
This is so important to the design of Tokumei that it is reflected in the name.
Tokumei is Japanese for anonymous, Tokumei is not your application and does not want to be celebrated as such.
Tokumei is a team player and just one of several focused OTP applications that work together to create your whole system.

There are several key features to being a good OTP citizen.
No global state, allows an application to be started multiple times, this is great for testing.
spin up a version of your application for each test
run multiple web endpoints at once. This is great for a monolith first approach

Anonymous several parts of functionality are being extracted, Cookies and ServerSentEvents to help the community make clients and as yet unforseen capabilities
Isolated run in parallel

```
├──
```

# Routing


## Database agnostic
## Frontend agnostic
## Application agnostic
## Rock solid foundations
