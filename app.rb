require 'sinatra'
set :session_secret, 'super secret'

get '/' do
  "Hello"
end

get '/secret' do
  "world!"
end

get '/topsecret' do
  "Hello world!"
end

get '/secretcat' do
  @name = ["Amigo", "Oscar", "Viking"].sample
  erb(:index)
end
