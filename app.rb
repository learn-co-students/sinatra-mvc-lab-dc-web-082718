require_relative 'config/environment'

class App < Sinatra::Base


    get "/" do

        erb :user_input

    end

    post "/piglatinize" do
        user_input = params[:user_phrase]
        pg = PigLatinizer.new
        @pig = pg.piglatinize(user_input)
        erb :user_input
    end
end
