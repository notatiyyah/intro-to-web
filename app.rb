require 'sinatra/base'


class CatApp < Sinatra::Base

    get '/' do
        "hello!"
    end

    get '/random-cat' do
        erb(:index, :locals => { :name => ["Amigo", "Oscar", "Viking"].sample, :form => false })
        # Syntax: erb( :name_of_file(view), :locals => hash_of_variables_to_pass_to_template )
    end

    get '/named-cat' do
        erb(:index, :locals => { :name => params[:name], :form => true })
    end

    post '/named-cat' do
        erb(:index, :locals => { :name => params[:name], :form => false })
    end


    get '/secret' do
        "Shhh it's a secret"
    end

    run! if app_file == $0
end
