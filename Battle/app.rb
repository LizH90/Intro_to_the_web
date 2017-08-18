require 'sinatra'
require_relative './lib/player'
require_relative './lib/game'

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    p params
    @name1 = Player.new(params[:name1])
    @name2 = Player.new(params[:name2])
    $game = Game.new(@name1,@name2)
    redirect '/play'
  end

  get '/play' do
    erb(:play)
  end

  post '/play' do
    $game.attack($game.player1)
    $game.switch
    erb(:play)
  end

  post '/play2' do
    $game.attack($game.player2)
    $game.switch
    erb(:play)
  end

  run! if app_file == $0
end
