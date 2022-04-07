ENV['RACK_ENV'] = 'test'
require 'bundler'
Bundler.require(:default, :test)
require 'rack/test'
require 'rspec'
require File.expand_path('../../app.rb', __FILE__)

DatabaseCleaner.strategy = :truncation

RSpec.configure do |c|
  c.before(:all) do
    DatabaseCleaner.clean
  end
  c.after(:each) do
    DatabaseCleaner.clean
  end
end
