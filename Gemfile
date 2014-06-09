source "http://rubygems.org"

gemspec

group :test, :development do
  platforms :jruby do
    gem 'activerecord-jdbcsqlite3-adapter', :require => 'jdbc-sqlite3', :require => 'arjdbc'
  end
  platforms :ruby do
    gem 'sqlite3'
  end
  
  gem "rspec-rails", ">=2.14.0"
  gem "therubyrhino"
  gem "therubyracer"
  gem "jasmine"
  gem "headless"
  gem "selenium-webdriver"
  gem "coffee-script"
  gem "thin"
  gem "eventmachine"
  gem "simplecov"
  gem "ruby_gntp"
  gem "guard"
  gem "guard-rspec"
  gem "guard-coffeescript"
  gem "rb-fsevent"
end
