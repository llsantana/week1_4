source 'https://rubygems.org'

ruby '2.4.2'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end


gem 'rails', '~> 5.1.4'
gem 'jquery-rails', '~> 4.3.1'
gem 'pg', '~> 0.21.0'
gem 'pg_search', '~> 2.1.1'
gem 'devise', '~> 4.3.0'
gem 'puma', '~> 3.7'
gem 'sass-rails', '~> 5.0'
gem 'material_icons', '~> 2.2.1'
gem 'materialize-sass', '~> 0.100.2'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'rails-controller-testing', '~> 1.0.2'
  gem 'rspec-rails', '~> 3.6'
  gem 'factory_girl_rails', '~> 4.8'
  gem 'shoulda-matchers', '~> 3.1.1'
  gem 'capybara', '~> 2.13'
  gem 'poltergeist'
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
