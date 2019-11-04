# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

# Command

```bash
rails new SamuraiCRM --skip-test-unit

rails plugin new engines/core --mountable -T -d mysql

rails plugin new engines/contacts --mountable -T -d mysql
```
