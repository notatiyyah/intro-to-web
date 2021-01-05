require 'sinatra'

get '/' do
    "hello!"
end

get '/cat' do
    erb(:index, :locals => {:name => ["Amigo", "Oscar", "Viking"].sample})
    # Syntax: erb( :name_of_file(view), :locals => hash_of_variables_to_pass_to_template )
end

get '/secret' do
    "Shhh it's a secret"
end