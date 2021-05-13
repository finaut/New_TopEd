# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.7.3'

gem 'bootsnap', '>= 1.1.0', require: false
gem 'devise', '4.7.3'
gem 'paperclip', '6.1.0'
gem 'pg', '1.2.3'
gem 'puma', '~> 3.11'
gem 'rails', '~> 5.2.4', '>= 5.2.4.4'
gem 'rails_admin', '2.0.2'
gem 'sass-rails', '~> 5.0'
gem 'slim-rails', '3.2.0'
gem 'turbolinks', '5.2.1'

group :development, :test do
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  gem 'mimemagic', github: 'mimemagicrb/mimemagic', ref: '01f92d86d15d85cfd0f20dabd025dcbd36a8a60f'
  gem 'rspec-rails', '4.0.1'
  gem 'wdm', '>= 0.1.0'
end

group :development do
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
  gem 'web-console', '>= 3.3.0'
end

