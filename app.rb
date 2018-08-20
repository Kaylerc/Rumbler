require 'sinatra'
require 'sinatra/activerecord'
require 'securerandom'
enable :sessions

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


post '/login' do
  email = params['email']
  created_password = params['password']
  user = User.find_by(email: email)
  if user.password == created_password
    session[:user] = user
    redirect :account
  else
    p "Your email or password is incorrect"
    redirect '/'
  end
end


get '/logout' do
  session[:user] = nil
  p "Successfully Logged out!"
end


get '/signup' do
  erb :signup
end

post '/signup' do
  p params
  user = User.new(
    email: params['email'],
    first_name: params['firstname'],
    last_name: params['lastname'],
    password: params['password'],
    username: params['username']
    # bday: params['bday']
  )
  user.save
  redirect '/'
end




require './models'
