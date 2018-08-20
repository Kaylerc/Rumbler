require 'sinatra'
require 'sinatra/activerecord'
require 'securerandom'
# enable :sessions

set :database, "sqlite3:rumbler.sqlite3"


get '/' do
  erb :home
end


get '/account' do
  erb :account
end


get '/login' do
  erb :login
end


get '/signup' do
  erb :signup
end




















require './models'
