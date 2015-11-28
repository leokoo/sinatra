require 'sinatra'
require 'sinatra/reloader'
set :public_folder, 'public'
set :views, 'views'

get '/' do 
	erb :home
end

get '/about' do
	erb :about
end

get '/contact' do
	erb :contact
end

not_found do
	erb :not_found
end

get '/fake-error' do
	status 500
	"there is nothing wrong, really :p"
end
