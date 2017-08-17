require 'sinatra'

class Battle < Sinatra::Base
  get '/' do
    erb(:index)
  end

  post '/names' do
    @name = params[:First_name]
    erb(:play)
  end

  run! if app_file == $0
end
