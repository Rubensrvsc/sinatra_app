require 'sinatra'
require 'sinatra/activerecord'

set :database, { adapter: "sqlite3", database: "database.sqlite3" }

class YourApplication < Sinatra::Base
  register Sinatra::ActiveRecordExtension
end

class User < ActiveRecord::Base
  has_many :products
  validates_presence_of :name
end

class Product < ActiveRecord::Base
  belongs_to :user
end