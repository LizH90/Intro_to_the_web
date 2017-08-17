require 'sinatra'

class Battle < Sinatra::Base
  get '/' do
    erb(:index)
  end

  post '/names' do
    p params
    @name = params[:first_name]
    # @player_2 = params[:player_2]
    erb(:play)
  end

  run! if app_file == $0
end
