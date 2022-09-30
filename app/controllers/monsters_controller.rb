class MonstersController < ApplicationController
  def index
    @monsters = Monster.all.order(name: :desc)
  end

  def show
    @monster = Monster.find(params[:id])
    if(@monster.tweets.count == 0)
      redirect_to new_tweet_path
    end
  end

  def destroy
    Monster.find(params[:id]).destroy
    redirect_to monsters_path
  end
end
