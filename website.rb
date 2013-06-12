require 'rubygems'
require 'sinatra'

get '/' do
	erb :index
end

post '/scan' do 
	redirect '/'
end