require 'sinatra/base'
require_relative '../models/team'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }
    
    get '/' do 
      erb :team_and_motto
    end
    
    post '/teams' do
      @team = Team.new(params["team"]["name"], params["team"]["motto"])
      erb :team
    end


end
