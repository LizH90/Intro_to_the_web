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
    $game.switch
    erb(:play)
  end

  post '/attack1' do
    $game.attack($game.player1)
    erb(:attack)
  end

  post '/attack2' do
    $game.attack($game.player2)
    erb(:attack2)
  end

  run! if app_file == $0
end
