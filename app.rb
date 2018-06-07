require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    # establish a new instance of model
    pl = PigLatinizer.new
    @piglatin = pl.piglatinize(params[:user_phrase])

    erb :view
  end
end
