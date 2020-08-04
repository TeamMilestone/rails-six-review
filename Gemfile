source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "2.7.1"

gem "rails", "~> 6.0.3"
gem "mysql2", ">= 0.5.3"
gem "puma"
gem "rack", "~> 2.2.3"
gem "sass-rails", ">= 6"
gem "webpacker", "~> 4.0"
gem "turbolinks", "~> 5"
gem "jbuilder", "~> 2.7"
gem "redis", "~> 4.1.3"
gem "sidekiq", "6.0.5"
gem "sidekiq-cron"
gem "bootsnap", ">= 1.4.2", require: false
gem "devise", ">= 4.7.1"
gem "simple_form"
gem "semantic-ui-sass"
gem "nokogiri"

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem "byebug", platforms: [:mri, :mingw, :x64_mingw]
  gem "dotenv-rails"
end

group :development do
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem "web-console", ">= 3.3.0"
  gem "listen", ">= 3.0.5", "< 3.2"
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem "spring"
  gem "spring-watcher-listen", "~> 2.0.0"
  gem "solargraph"
  gem "htmlbeautifier"
  gem "pry"
  gem "capistrano", "~> 3.11", require: false
  gem "capistrano-rbenv", "~> 2.1"
  gem "capistrano-rails", require: false
  gem "capistrano-bundler", require: false
  gem "capistrano3-puma", github: "seuros/capistrano-puma", require: false
  gem "capistrano-sidekiq", github: "rwojnarowski/capistrano-sidekiq"
  gem 'ed25519'
  gem 'bcrypt_pbkdf'
end

group :test do
  # Adds support for Capybara system testing and selenium driver
  gem "capybara", ">= 2.15"
  gem "selenium-webdriver"
  # Easy installation and use of web drivers to run system tests with browsers
  gem "webdrivers"
end
