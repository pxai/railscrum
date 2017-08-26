# Railscrum
Simple Rails App to manage a Scrum board

## Note for windows users
Use the good old cmd to run commands to avoid issues with
case sensitive directories and other surprises.

## Requisites
- Ruby
- Rails
- Bundler

```
gem install bundler
```
## Install
Before you run, type:
```
bundle install
```

## Start:
```
rails server
```

# Other
Things you may want to cover:

* Ruby version
* System dependencies
* Configuration
* Database creation
* Database initialization
* How to run the test suite
* Services (job queues, cache servers, search engines, etc.)
* Deployment instructions
* dau
* ...897c

# To add an Ember compatible json:api

Create the rails project with --api or add to an existing one:

```
gem install active_model_serializers
```
And

```
gem install actionpack activemodel json-api railties
```

## Config for serialization:
Do not forget to add config/initializers/active_model_serializer.rb
with this content:
```
ActiveModel::Serializer.config.adapter = ActiveModel::Serializer::Adapter::JsonApi
```
Add app/serializer for each model
and then change controller to return json. Check log controller.
READ ALL - GET http://localhost:3000/logs

READ ONE - http://localhost:3000/logs/2
 
INSERT - POST http://localhost:3000/logs
Create data format for post:
```
{"log":{"msg":"Now it ends","when":"2017-08-25 13:45:32"}}
```
UPDATE - PUT http://localhost:3000/logs/5
```
{"log":{"msg":"Now it endssss","when":"2017-08-25 13:45:32"}}
```

DELETE - DELETE http://localhost:3000/logs/5
```
-empty body-
```