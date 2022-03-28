require 'sinatra'
require 'sinatra/activerecord'
require './models'

set :database, { adapter: "sqlite3", database: "database.sqlite3" }

class YourApplication < Sinatra::Base
  register Sinatra::ActiveRecordExtension
end