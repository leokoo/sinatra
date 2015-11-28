require 'sinatra'
get '/instance' do
  @title = "DAZZA"
  erb :show
end
__END__
@@show
<h1>Hello <%= @title %>!</h1>