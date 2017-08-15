require 'sinatra'

get '/random-meme' do
  @random_name = "My name is #{['Raj', 'Howard', 'Penny', 'Sheldon', 'Leonard'].sample}"
  erb(:index)
end

post '/named-meme' do
  p @name = params[:name]
  @name = params[:name]
  erb(:index)
end

get '/meme-naming' do
  @name = params[:name]
  erb(:index)
end
