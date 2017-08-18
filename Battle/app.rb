require 'sinatra'
class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    p params
    session['name1'] = params[:name1]
    session['name2'] = params[:name2]
    redirect '/play'
  end

  get '/play' do
    @name1 = session['name1']
    @name2 = session['name2']
    @hp1 = 100
    @hp2 = 100
    erb(:play)
  end

  post '/attack' do
    @name2 = session['name2']
    erb(:attack)
  end

  run! if app_file == $0
end
