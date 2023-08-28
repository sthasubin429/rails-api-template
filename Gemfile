# frozen_string_literal: true

source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.2.2"

gem "bootsnap", require: false
gem "pg", "~> 1.1"
gem "puma", "~> 5.0"
gem "rails", "~> 7.0.6"
gem "tzinfo-data", platforms: %i[mingw mswin x64_mingw jruby]

gem "devise", "~> 4.9"
gem "devise-jwt", "~> 0.11.0"
gem "rack-cors", "~> 2.0"

# Json Searializer
gem 'jsonapi-serializer'
# Build JSON APIs with ease [https://github.com/rails/jbuilder]
# gem "jbuilder"

# Use Redis adapter to run Action Cable in production
# gem "redis", "~> 4.0"

# Use Kredis to get higher-level data types in Redis [https://github.com/rails/kredis]
# gem "kredis"

# Use Active Model has_secure_password [https://guides.rubyonrails.org/active_model_basics.html#securepassword]
# gem "bcrypt", "~> 3.1.7"

# Use Active Storage variants [https://guides.rubyonrails.org/active_storage_overview.html#transforming-images]
# gem "image_processing", "~> 1.2"

group :development, :test do
  gem "byebug"
  gem 'database_cleaner-active_record'
  gem "debug", platforms: %i[mri mingw x64_mingw]
  gem "factory_bot_rails", "~> 6.2"
  gem 'faker' # [https://github.com/faker-ruby/faker]
  gem 'rspec-rails', '~> 6.0.3'
  gem "simplecov", require: false
  gem "webmock", "~> 3.18", ">= 3.18.1" # [https://github.com/bblimke/webmock]
end

group :development do
  gem "mailcatcher"
  gem "rubocop", "~> 1.26", require: false
end
