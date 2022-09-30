class TweetsController < ApplicationController
    def index
        @tweets = Tweet.order(created_at: :desc)

        render :index
    end

    def show
        @tweet = Tweet.find(params[:id])
        render :show
    end

    def create
        @tweet = Tweet.new(tweet_params)

        if(@tweet.save)
            redirect_to @tweet, notice: "Tweet creado correctamente"
        else
            render :new
        end
    end

    def tweet_params
        params.require(:tweet).permit(:monster_id, :content)
    end

    def new
        @tweet = Tweet.new
    end
end
