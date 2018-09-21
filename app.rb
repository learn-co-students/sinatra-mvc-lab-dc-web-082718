require_relative 'config/environment'

class App < Sinatra::Base

  get "/" do
    erb :user_input
  end

  post "/piglatinize" do

    @porko = PigLatinizer.new(params[:user_phrase])

    # params[user_input]
  end
  
end
