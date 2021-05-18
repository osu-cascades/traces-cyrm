source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.5'

gem 'acts-as-taggable-on', '~> 6.0'
gem 'aws-sdk-s3', require: false
gem 'bootsnap', '>= 1.1.0', require: false
gem 'bootstrap', '~> 4.3.1'
gem 'coffee-rails', '~> 4.2'
gem 'devise'
gem 'figaro'
gem 'haml'
gem 'haml-rails', '~> 1.0'
gem 'jbuilder', '~> 2.7.0'
gem 'jquery-rails'
gem 'pg', '>= 0.18', '< 2.0'
gem 'puma', '~> 4.3'
gem 'rails', '~> 5.2.3'
gem 'recaptcha', require: 'recaptcha/rails'
gem 'sass-rails', '~> 5.0'
gem 'turbolinks', '~> 5'
gem 'uglifier', '>= 1.3.0'

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'dotenv-rails'
  gem 'factory_bot_rails'
  gem 'rspec-rails', '~> 3.8.0'
end

group :development do
  gem 'guard'
  gem 'guard-rspec'
  gem 'letter_opener'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-commands-rspec'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'web-console', '>= 3.3.0'
end

group :test do
  gem 'capybara', '~> 3.9.0'
  gem 'webdrivers'
  gem 'selenium-webdriver'
  gem 'shoulda-matchers'
end

group :production do
  gem 'airbrake'
end
