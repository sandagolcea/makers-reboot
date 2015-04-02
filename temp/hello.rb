require 'sinatra'

get '/' do
  'hello!'
end

get '/about' do
  'this is the about page'
end

get '/kitty' do
  @name = %w('Kit', 'Kat').sample
  @visitor = params[:name]
  erb :index
end
