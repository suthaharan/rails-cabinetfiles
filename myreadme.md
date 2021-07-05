$ docker-compose build
$ docker-compose run --rm app bundle exec rake webpacker:install
$ docker-compose up (to start the docker build)
$ sudo docker exec -it d2_app_1 /bin/sh (to execute rails commands in container)

# README
Local URL [http://localhost:3001/]
Install Rails guidance [http://installrails.com]
* Check the current directory 
$ pwd
/app

* Check the ruby version
$ ruby -v
ruby 2.6.5p114 (2019-10-01 revision 67812) [x86_64-linux]

* To use a specific versio of ruby
$ rvm use ruby 2.6.7

* # rails -v
Rails 6.0.4
* $ gem update rails --no-ri --no-doc
* Rails comes with WebBrick server


```
# rails new <<PROJECT>> (to create a project)

# rails generate model Post title:string body:text
      invoke  active_record
      create    db/migrate/20210627221535_create_posts.rb
      create    app/models/post.rb
      invoke    test_unit
      create      test/models/post_test.rb
      create      test/fixtures/posts.yml

# rake db:migrate (to migrate the tables, app/schema.rb gets created)

# rails generate model User title:string body:text
# rails generate model Comment title:string body:text
# rake db:migrate (pushes migration to the database and schema.rb is created)
# rails generate controller Posts index new show destroy (creates controller, routess)

# rake routes

```
* Controller > application controller > action controller
* Models > Active record (plural, lowercase)
https://rubygems.org
haml, devise, simple_form

## docker-compose run app rails new . --force --database=mysql --skip-bundle


$ rails new filecabinet
$ rails server (run the application on the local server localhost:3000)
$ rails generate controller welcome index  ( to create view file you need to crete controller )
$ rake routes

* Install the gems by adding it to Gemfile
gem 'devise', '~> 4.8'
gem 'simple_form', '~> 5.1'

$ bundle install 
$ rails generate simple_form:install
$ rails generate model Doc title:string content:text
$ rake db:migrate
$ rake generate controller Docs
Go to routes and add other routes for Docs controller by typing in resources :docs
$ rake routes

$ rails generate devise:install

```
# rails generate devise:install
      create  config/initializers/devise.rb
      create  config/locales/devise.en.yml
===============================================================================

Depending on your application's configuration some manual setup may be required:

  1. Ensure you have defined default url options in your environments files. Here
     is an example of default_url_options appropriate for a development environment
     in config/environments/development.rb:

       config.action_mailer.default_url_options = { host: 'localhost', port: 3000 }

     In production, :host should be set to the actual host of your application.

     * Required for all applications. *

  2. Ensure you have defined root_url to *something* in your config/routes.rb.
     For example:

       root to: "home#index"
     
     * Not required for API-only Applications *

  3. Ensure you have flash messages in app/views/layouts/application.html.erb.
     For example:

       <p class="notice"><%= notice %></p>
       <p class="alert"><%= alert %></p>

     * Not required for API-only Applications *

  4. You can copy Devise views (for customization) to your app by running:

       rails g devise:views
       
     * Not required *

```

* Other useful commands
```
$ rails g devise:views

$ rails g devise User
$ rake db:migrate

To restart the server, ctrl + c
$ rails server

* Associate a user to docs table
$ rails generate migration add_user_id_to_docs user_id:integer

$ rails c (to go to the console)
>>> @doc = Doc.first
>>> @doc = Doc.last
```