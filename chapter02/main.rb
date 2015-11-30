require 'sinatra'
require 'sinatra/reloader'
require 'slim'
require 'sass'
require './song'
get('/styles.css'){ scss :styles }
set :public_folder, 'public'
set :views, 'views'

get '/' do 
	slim :home
end

get '/about' do
	@title = "All About This Website"
	slim :about
end

get '/contact' do
	slim :contact
end

# get '/songs' do 
# 	@songs = Song.all
# 	slim :songs
# end

not_found do
	slim :not_found
end

get '/fake-error' do
	status 500
	"there is nothing wrong, really :p"
end
