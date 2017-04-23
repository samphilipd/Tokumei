Tokumei is all about get your project on the web.
Working on your project should get better with time.
Our priorities are maintainability and simplicity.


## Mind your own business


your app (some worker) - Tokumei (cheerleader)

By focusing on only the web layer you the developer can build almost anything
Tokumei has many assumptions on how you should handle the web

Maintainable applications value a clear separation of concerns.
Good tools should encourage this and some

- Domain driven design http://insights.workshop14.io/2015/08/20/domain-driven-design-where-the-real-value-lies.html
- Polyglot persistence
- Frontend agnostic
- Clean Architecture https://subvisual.co/blog/posts/20-clean-architecture
- Hexagonal Architecture
- Onion Architecture http://jeffreypalermo.com/blog/the-onion-architecture-part-1/

Encourage domain modelling

## Standing on the shoulders of giants

Tokumei does not make your application robust, erlang does.

erlang was designed to be scalable fault-tolerant this really helps your application always be up to server your users needs

## OTP citezenship

Serving your proposition of the web is just one part of a project
Tokumei is just among many OTP applications that create a whole system.

There are several key features to being a good OTP citizen.
No global state, allows an application to be started multiple times, this is great for testing.
spin up a version of your application for each test
run multiple web endpoints at once. This is great for a monolith first approach

Anonymous several parts of functionality are being extracted, Cookies and ServerSentEvents to help the community make clients and as yet unforseen capabilities
Isolated run in parallel

- Deploy endless stateful applications

### Deployability
As a standard mix application it is simple to deploy Tokumei applications.
In fact you are not really deploying a Tokumei application and so advice for deploying elixir will work with projects including tokumei

## Contents

Key components
- Routing
- Templates
- Assets
- Flash messages
- Sessions
- Logging

Things Tokumei would like to help you with

- content negotiation (MIME)
- authentication
- internationalization


## Inspiration

- Hanami
- Flask




capable/proficiet/supreme/expert
teamplayer/collaboreate
convenient/ comes from simple
future proof productivity


### XVC
- umbrella applications
- behaviours and interface tests
- adapter configuration


http://lucumr.pocoo.org/2013/11/17/my-favorite-database/
plus endless application talk
