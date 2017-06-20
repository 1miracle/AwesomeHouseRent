source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

# A B C D E F G H I J K L M N O P Q R S T U V W X Y Z

gem 'bcrypt', '~> 3.1.7'
gem 'bootstrap-sass', '~> 3.3', '>= 3.3.7'
gem 'carrierwave'
gem 'coffee-rails', '~> 4.2'
gem 'devise', '~> 4.3'
gem 'jbuilder', '~> 2.5'
gem 'jquery-rails'
gem 'pg'
gem 'puma', '~> 3.0'
gem 'rails', '~> 5.0.2'
gem 'sass-rails', '~> 5.0'
gem 'slim-rails'
gem 'turbolinks', '~> 5'
gem 'uglifier', '>= 1.3.0'
gem 'will_paginate', '~> 3.1', '>= 3.1.6'
gem 'will_paginate-bootstrap', '~> 1.0', '>= 1.0.1'
# gem 'kaminari'
# gem 'has_secure_token'

group :development, :test do
  gem 'pry-rails'
  gem 'byebug', platform: :mri
  gem 'faker'
end

group :development do
  gem 'web-console'
  gem 'listen', '~> 3.0.5'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
