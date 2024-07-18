source "https://rubygems.org"

ruby "3.1.2"

gem "bootsnap", require: false
gem 'httparty'
gem "importmap-rails"
gem "jbuilder"
gem "puma", ">= 5.0"
gem "rails", "~> 7.1.3", ">= 7.1.3.4"
gem "sprockets-rails"
gem "sqlite3", "~> 1.4"
gem "stimulus-rails"
gem "turbo-rails"
gem "tzinfo-data", platforms: %i[mswin mswin64 mingw x64_mingw jruby]

group :development, :test do
  gem "debug", platforms: %i[mri mswin mswin64 mingw x64_mingw]
end

group :development do
  gem "error_highlight", ">= 0.4.0", platforms: [:ruby]
  gem "rubocop"
  gem "web-console"
end

group :test do
  # Use system testing [https://guides.rubyonrails.org/testing.html#system-testing]
  gem "capybara"
  gem 'factory_bot_rails'
  gem "selenium-webdriver"
  gem "rspec-rails"
  gem "vcr"
end
