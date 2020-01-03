require 'sinatra/base'
require_relative './lib/player'
require_relative './lib/game'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/newplayers' do
    player1 = Player.new(params[:player1])
    player2 = Player.new(params[:player2])
    @@game = Game.new(player1, player2)
    redirect '/play'
  end

  get '/play' do
    @game = @@game
    erb :play
  end

  post '/attack' do
    @game = @@game
    @game.attack(@game.current_player(@game.current_turn))
    if @game.game_over?
      redirect '/game_over'
    else
      redirect '/attack'
    end
  end

  get '/attack' do
    @game = @@game
    erb :attack
  end

  post '/switch_turn' do
    @game = @@game
    @game.switch_turn
    redirect '/play'
  end

  get '/game_over' do
    @game = @@game
    erb :game_over
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end