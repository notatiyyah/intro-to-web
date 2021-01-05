require 'sinatra'

get '/' do
    "hello!"
end

get '/cat' do
    erb(:index)
end

get '/secret' do
    "Shhh it's a secret"
end