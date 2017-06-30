require 'pry'

require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    # binding.pry
    @pig = PigLatinizer.new
    @pig.phrase = params[:user_phrase]
    # binding.pry
    erb :show
  end

end
