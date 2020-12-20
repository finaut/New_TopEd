source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.7.2'

gem 'rails', '~> 5.2.4', '>= 5.2.4.4'
gem 'sqlite3'
gem 'puma', '~> 3.11'
gem 'sass-rails', '~> 5.0'
gem 'jbuilder', '~> 2.5'
gem 'bootsnap', '>= 1.1.0', require: false
gem 'devise', '4.7.3'
gem 'rails_admin', '2.0.2'
gem 'slim-rails'


group :production do
  gem 'pg', '1.2.3'
end

group :development, :test do
  gem 'rspec-rails', '4.0.1'
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  # gem 'erb2slim'
  # gem 'html2slim'
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end


gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
