require 'sinatra'
require 'sinatra/reloader'

get '/hello' do
  "Hello Sinatra!"
end

get '/:name' do
  name = params[:name]
  "Hello #{name}"
end

get '/:one/:two/:three' do
	"first: #{params[:one]}, second: #{params[:two]}, three: #{params[:three]}"
end

get '/what/time/is/it/in/:number/hours' do
  number = params[:number].to_i
  time = Time.now + number * 3600
  "The time in #{number} hours will be #{time.strftime('%I:%M %p')}"
end