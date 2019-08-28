require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }
    
    get '/' do 
      erb :team_and_motto
    end
    
    post '/teams' do
      erb :team
    end


end
