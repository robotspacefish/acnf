# frozen_string_literal: true

source "https://rubygems.org"

git_source(:github) {|repo_name| "https://github.com/#{repo_name}" }

gem 'require_all', '~> 3.0'

gem 'nokogiri'

gem "activerecord", "~> 6.1.7", :require => "active_record"
gem "sinatra-activerecord", :require => "sinatra/activerecord"
gem 'sinatra'
gem 'thin'
gem 'rake'

group :development do
  gem 'shotgun'
  gem 'pry'
  gem 'sqlite3', '~> 1.3.6'
  gem 'tux'
end
