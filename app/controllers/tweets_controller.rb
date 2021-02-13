class TweetsController < ApplicationController
  before_action :authenticate_user!, exept: [:index]
  def new
    @tweets = Tweet.new
  end

  def index
    @tweets = Tweet.all
  end

  def show
    @tweets = Tweet.find(params[:id])
  end

  def create
    @tweets = Tweet.new(tweet_params)
    @tweets.user_id = current_user.id
    @tweets.save
    redirect_to tweets_path
  end
  private
    def tweet_params
      params.require(:tweet).permit(:body)
    end
end
