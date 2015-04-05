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
    if @game.current_player.ships.size == 0
      @game.opponent.ships.size == 0 ? (redirect '/fight') : @game.change_turn
    end
    erb :place_ship
  end

  get '/fight' do
    game = session[:game]
    @matrix = Array.new(10) { Array.new(10) { 'water' } }
    @enemy_matrix = Array.new(10) { Array.new(10) { 'water' } }
    game.current_player.board.ships.each do |ship|
      ship.coordinates.each { |x, y| @matrix[x][y] = 'ship' }
    end
    game.opponent.board.hitlist.each { |x, y| @enemy_matrix[x][y] = 'hit' }
    game.opponent.board.misslist.each { |x, y| @enemy_matrix[x][y] = 'hit' }
    erb :fight
  end

  run! if app_file == $PROGRAM_NAME
end
