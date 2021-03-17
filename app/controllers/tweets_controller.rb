class TweetsController < ApplicationController

    get "/tweets" do 
        @tweets = Tweet.all
        if logged_in?(session)
            erb :"tweets/tweets"
        else
            redirect "/login"
        end
    end

    post "/tweets" do 

    end

end
