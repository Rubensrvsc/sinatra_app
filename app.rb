require 'sinatra'
require 'sinatra/activerecord'
require 'json'
require 'jwt'
require 'pry'
require './auth_helpers'
require './db'
require_relative 'lib/create_user/flow'

before do
  headers "Content-Type" => "application/json"
end

post '/login' do
  req = JSON.parse(request.body.read)
  login(req['name'], req['password'])
end

post '/register' do
  req = JSON.parse(request.body.read)
  response = Lib::CreateUser::Flow.new.call(req)
  response.to_json
end

get '/users' do
  login_required(request.env['HTTP_AUTH'])
  User.all.to_json
end
