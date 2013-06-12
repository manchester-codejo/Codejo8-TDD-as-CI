require 'rubygems'
require 'sinatra'
require_relative 'src/Money.rb'
require_relative 'src/TotalViewStore.rb'

total_view_store = TotalViewStore.new

get '/' do
	erb :index
end

post '/basket/new' do
	total_view_store = TotalViewStore.new
	redirect '/basket/items'
end

get '/basket/items' do
	erb :items
end

post '/basket/items' do 
	redirect '/basket/items'
end

post '/basket/total' do
	redirect '/basket/total'
end

get '/basket/total' do
	erb :total, :locals => total_view_store.get_total
end