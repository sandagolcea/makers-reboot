require 'sinatra/base'
require './lib/game'

class BattleShips < Sinatra::Base
  set :views, proc { File.join(root, '..', 'views') }
  set :public_folder, proc { File.join(root, '..', 'public') }

  get '/' do
    erb :index
  end

  get '/game' do
    session[:game] = Game.new(params[:player1], params[:player2])
    @game = session[:game]
    erb :game
  end

  run! if app_file == $PROGRAM_NAME
end
