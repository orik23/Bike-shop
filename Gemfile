source 'https://rubygems.org'


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.0.0'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.2'
# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer',  platforms: :ruby
# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

gem 'redis-rails'
gem 'dalli'

# CUSTOM GEMS
gem 'devise'
gem 'cancancan'
gem 'stripe'
gem 'will_paginate', '~> 3.1.0'
gem 'angularjs-rails'

# Use Puma as the app server
gem 'puma', '~> 3.0'

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console'
  gem 'listen', '~> 3.0.5'
 
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :development, :test do
	# Use sqlite3 as the database for Active Record
	gem 'sqlite3'
	gem 'rails-controller-testing'
	# Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
	gem 'spring'
	gem 'rspec-rails', '~> 3.5'
	gem 'factory_girl_rails', '~> 4.0'
	gem 'guard'
	gem 'guard-rspec', require: false
#	gem 'spork-rails'
	gem 'guard-spork'
	gem 'pry-rails'
	gem 'byebug'
end

group :production do
	gem 'pg'
end

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development
