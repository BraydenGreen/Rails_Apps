require 'rubygems'
require 'sinatra'
require 'pry'
require 'babbler'

get '/' do
  "Hello, World!"
end 

get '/hello/:name' do
  "Hello #{params[:name]}"
end

get '/hello/:name/:city' do
  "Hey there #{params[:name]} from #{params[:city]}."
end

get '/query_string' do
  "I like: #{params[:sport]}"
end

get '/secret' do
  erb :secret
end

post '/secret' do
  params[:message].reverse
end

get "/favorite_sport/:sport" do
  @sport = params[:sport]
  erb :sport
end

get '/sports' do
  @sports = ['snowboarding', 'basketball', 'baseball','volleyball']
  erb :sports
end

get '/babble' do
  Babbler.babble
end

get '/onlinecalcu' do
  
end