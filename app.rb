require 'sinatra/base'

class App < Sinatra::Base

  get '/newteam' do
    erb :newteam
  end

  post '/team' do
    @team_name = param[:name]
    @coach = param[:coach]
    @point_guard = param[:pg]
    @shooting_guard = param[:sg]
    @power_forward = param[:pf]
    @small_forward = param[:sf]
    @center = param[:c]
    erb :team
  end
end
