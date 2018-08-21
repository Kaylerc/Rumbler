require 'sinatra'
require 'sinatra/activerecord'
require 'securerandom'
enable :sessions

set :database, "sqlite3:rumbler.sqlite3"



get '/' do
  $all_post = Post.all
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
  erb :logout
end


get '/signup' do
  erb :signup
end

post '/signup' do
  p params
  user = User.new(
    email: params['email'],
    firstname: params['firstname'],
    last_name: params['lastname'],
    password: params['password'],
    username: params['username'],
    birthday: params['birthday']
  )
  user.save
  redirect '/'
end

get '/delete' do
  erb :delete
end


post '/delete' do
  @user = User.find(session[:user_id])
  @user.destroy
  session.clear
  redirect "/finaldelete"
end



get '/post' do
  erb :post
end


post '/post' do

  post = Post.new(
    title: params['title'],
    image_url: params['url'],
    content: params['content'],
    username: params['username']
    # owner: params['user_id']
  )
  post.save
  redirect :account

  @title = post.title
  @url = post.image_url
  @content = post.content


end



get '/timeline' do
  'timeline'
end

require './models'
