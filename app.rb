require 'sinatra'
require 'sinatra/activerecord'
require 'securerandom'
enable :sessions
# require 'active_record'

set :database, "sqlite3:rumbler.sqlite3"
# ActiveRecord::Base.establish_connection(ENV['DATABASE_URL'])


get '/' do
  $all_post = Post.all
  erb :home
end




get '/account' do
post_user_id = session[:user].firstname
# p @login_post = Post.where(user_id:post.user_id)
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
    redirect '/account'
  end
end




# get '/logout' do
#   session[:user] = nil
#   erb :logout
# end


get '/signup' do
  erb :signup
end



post '/signup' do
  p params
  user = User.new(
    email: params['email'],
    firstname: params['firstname'],
    lastname: params['lastname'],
    password: params['password'],
    username: params['username'],
    birthday: params['birthday']
    )
  user.save
  session[:user] = user
  redirect '/account'
end




get '/delete' do
  @user = User.find_by(session[:id])
  p "====="
  p @user
  p "====="
  erb :delete
end




post '/delete' do
  @user = User.find(session[:user].id).destroy
  p @user
  session.clear
  redirect '/'
end


get '/post' do
  erb :post
end


post '/post' do
  @user = User.find_by(session[:id])
  user = session[:user].id
  @user_id = User.find_by(id: user)
  @username = User.find(session[:user].id).username
  post = Post.new(
    title: params['title'],
    image_url: params['url'],
    content: params['content'],
    user_id: session[:user].id,
    username: session[:user].username


  )
  post.save
  redirect '/timeline'

  @title = post.title
  @url = post.image_url
  @content = post.content


end



get '/timeline' do
  $all_post = Post.all.reverse
  # $user_post = Post.session[:user]
  erb :timeline
end

require './models'
