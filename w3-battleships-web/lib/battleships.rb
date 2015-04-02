require 'sinatra/base'
require './lib/player'

class BattleShips < Sinatra::Base
  set :views, proc { File.join(root, '..', 'views') }
  get '/' do
    erb :index
  end

  get '/game' do
    session[:player1] = Player.new(params[:player1])
    @player1 = session[:player1]
    erb :game
  end

  run! if app_file == $PROGRAM_NAME
end
