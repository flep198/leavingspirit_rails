source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.7.2'

gem 'mimemagic', github: 'mimemagicrb/mimemagic', ref:'01f92d86d15d85cfd0f20dabd025dcbd36a8a60f'
gem 'rails', '~> 6.1.4', '>= 6.1.2.1'
gem 'sqlite3', '~> 1.4'
gem 'puma', '~> 5.0'
gem 'sassc', '=2.4.0'
gem 'sass-rails', '>= 6'
gem 'webpacker', '~> 5.0'
gem 'jbuilder', '~> 2.7'
gem 'chartkick'
gem 'bootstrap'
gem 'jquery-rails'
gem 'devise', '~> 4.7','>=4.7.3'
gem 'jquery-turbolinks'
gem 'friendly_id', '~> 5.4', '>= 5.4.2'
gem 'plotly-js', '~> 1.20', '>= 1.20.5.4'
gem 'linefit', '~> 0.3.2'
gem "font-awesome-rails"
gem 'activeadmin'
gem 'hiredis', '~> 0.6.0'
gem 'redis', '~> 3.1.0'
gem 'braintree'
gem 'figaro'
gem 'gon'
gem 'stripe'

# Use Active Storage variant
# gem 'image_processing', '~> 1.2'

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.4.4', require: false

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'web-console', '>= 4.1.0'
  # Display performance information such as SQL time and flame graphs for each request in your browser.
  # Can be configured to work on production as well see: https://github.com/MiniProfiler/rack-mini-profiler/blob/master/README.md
  gem 'rack-mini-profiler', '~> 2.0'
  gem 'listen', '~> 3.3'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
end

group :test do
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '>= 3.26'
  gem 'selenium-webdriver'
  # Easy installation and use of web drivers to run system tests with browsers
  gem 'webdrivers'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
