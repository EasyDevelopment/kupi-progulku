source 'https://rubygems.org'

gem 'rails', '3.2.11'

gem 'sqlite3', group: :development
gem 'pg', group: :production

gem 'activeadmin'

gem 'strong_parameters'

gem 'vkontakte_api', '~> 1.1'
gem 'russian'

gem 'haml-rails'
gem 'formtastic'
gem 'formtastic-bootstrap'

gem 'client_side_validations'
gem 'client_side_validations-formtastic'

gem 'devise'
gem 'omniauth'
gem 'omniauth-vkontakte'
# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'twitter-bootstrap-rails'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  #gem 'therubyracer', platforms: :ruby

  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'
gem "rb-readline"
# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the app server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'debugger'

group :development do
  gem 'annotate'
  gem 'pry-rails'
  gem 'better_errors'
  gem 'letter_opener'
  gem 'localtunnel'
end

group :development, :test do
  gem 'sqlite3'
  gem 'minitest-rails'
  gem 'minitest-rails-capybara'
end

group :test do
  gem 'minitest-matchers'
  gem 'database_cleaner'
  gem 'factory_girl_rails'
end