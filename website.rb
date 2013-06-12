require 'rubygems'
require 'sinatra'

get '/' do
	erb :index
end

post '/basket/new' do
	redirect '/basket/items'
end

get '/basket/items' do
	erb :items
end

post '/basket/items' do 
	redirect '/basket/items'
end

get '/basket/total' do
	erb :total
end