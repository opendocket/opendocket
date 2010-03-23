# Edit this Gemfile to bundle your application's dependencies.
source 'http://gemcutter.org'


gem "rails", "3.0.0.beta"

## Bundle edge rails:
# gem "rails", :git => "git://github.com/rails/rails.git"

# ActiveRecord requires a database adapter. By default,
# Rails has selected sqlite3.
gem "sqlite3-ruby", :require => "sqlite3"

gem "haml"
gem "inherited_resources"

## Bundle the gems you use:
# gem "bj"
# gem "hpricot", "0.6"
# gem "sqlite3-ruby", :require => "sqlite3"
# gem "aws-s3", :require => "aws/s3"

## Bundle gems used only in certain environments:
# gem "rspec", :group => :test
# group :test do
#   gem "webrat"
# end

group :test do
  gem "rspec-rails", ">= 2.0.0.beta.4"
  gem 'capybara'
  gem 'database_cleaner'
  gem 'test-unit' #tempory fix for some combination of Ruby1.9/Rails3/Cucumber
  gem 'cucumber-rails'
end
