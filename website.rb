require 'rubygems'
require 'sinatra'
require_relative 'src/Registry.rb'


def reset
	$total_view_store = TotalViewStore.new
	$checkout = CheckoutFactory.create($total_view_store)
end

get '/' do
	erb :index
end

post '/basket/new' do
	reset
	redirect '/basket/items'
end

get '/basket/items' do
	erb :items
end

post '/basket/items' do
	$checkout.scan(params[:sku])
	redirect '/basket/items'
end

post '/basket/total' do
	$checkout.total
	redirect '/basket/total'
end

get '/basket/total' do
	erb :total, :locals => $total_view_store.get_model
end

