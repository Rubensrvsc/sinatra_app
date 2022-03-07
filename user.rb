require "sinatra/activerecord"

set :database, { adapter: "sqlite3", database: "database.sqlite3" }

class YourApplication < Sinatra::Base
  register Sinatra::ActiveRecordExtension
end

class User < ActiveRecord::Base
  validates_presence_of :name
end