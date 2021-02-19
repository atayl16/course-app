source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "2.7.2"

gem "rails", "~> 6.0.3.4"
gem "pg", ">= 0.18", "< 2.0"
gem "puma", "~> 4.1"
gem "sass-rails", ">= 6"
gem "webpacker", "~> 4.0"
gem "turbolinks", "~> 5"
gem "jbuilder", "~> 2.7"
gem "bootsnap", ">= 1.4.2", require: false

group :development, :test do
  gem "byebug", platforms: [:mri, :mingw, :x64_mingw]
  %w[rspec-core rspec-expectations rspec-mocks rspec-rails rspec-support].each do |lib|
    gem lib, git: "https://github.com/rspec/#{lib}.git", branch: 'main'
  end
end

group :development do
  gem "web-console", ">= 3.3.0"
  gem "listen", ">= 3.0.5", "< 3.2"
  gem "spring"
  gem "spring-watcher-listen", "~> 2.0.0"
  gem "standard", group: :development
  gem "better_errors"
  gem "binding_of_caller"
end

group :test do
  gem "capybara", ">= 2.15"
  gem "selenium-webdriver"
  gem "webdrivers"
  gem 'factory_bot_rails'
end

gem "haml-rails", "~> 2.0"
gem "simple_form"
gem "faker"
gem 'devise', :git => "https://github.com/heartcombo/devise.git", ref: '8bb358cf80a632d3232c3f548ce7b95fd94b6eb2'
gem "friendly_id", "~> 5.2.4"
gem "ransack"
gem "public_activity"
gem "rolify"
gem "pundit"
gem "exception_notification", group: :production
gem "pagy"
gem "chartkick"
gem "groupdate"
gem "rails-erd", group: :development
gem "ranked-model"
gem "aws-sdk-s3", require: false
gem "active_storage_validations"
gem "image_processing"
gem "wicked_pdf"
gem "wkhtmltopdf-binary", group: :development
gem "wkhtmltopdf-heroku", '2.12.6.0', group: :production
gem "wicked"
gem "omniauth-google-oauth2"
gem "cocoon"
gem "stripe"
gem 'sitemap_generator'
