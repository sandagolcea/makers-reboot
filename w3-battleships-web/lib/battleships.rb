require 'sinatra/base'
require './lib/game'
require './lib/ship'

class BattleShips < Sinatra::Base
  set :views, proc { File.join(root, '..', 'views') }
  set :public_folder, proc { File.join(root, '..', 'public') }
  enable :sessions

  get '/' do
    erb :index
  end

  get '/newgame' do
    session[:game] = Game.new(params[:player1], params[:player2])
    @game = session[:game]
    erb :place_ship
  end

  get '/place_ship' do
    @game = session[:game]
    @ship = Ship.new(params[:type].to_sym, params[:coordinates].to_sym, params[:direction].to_sym)
    @game.current_player.ships.delete(params[:type].to_sym) if @game.current_player.place(@ship)
    if @game.current_player.ships.size > 0
      puts 'current_player still has ships to place'

    end
    erb :place_ship
  end

  run! if app_file == $PROGRAM_NAME
end
