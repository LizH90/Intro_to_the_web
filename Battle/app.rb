require 'sinatra'
require_relative './lib/player'

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    p params
    $name1 = Player.new(params[:name1])
    $name2 = Player.new(params[:name2])
    redirect '/play'
  end

  get '/play' do
    erb(:play)
  end

  post '/attack' do
    $name1.attack($name2)
    erb(:attack)
  end

  run! if app_file == $0
end
