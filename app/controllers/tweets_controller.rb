class TweetsController < ApplicationController
  before_action :authenticate_user!

  def index
    @tweets = current_user.tweets.order(created_at: :desc)
  end

  def create
    @tweet = current_user.tweets.new(tweet_params)

    if @tweet.save
      render json: @tweet, status: :created
    else
      render json: @tweet.errors, status: :unprocessable_entity
    end
  end

  def show 
    @tweet = Tweet.find(params[:id])
  end


  def edit 
    @tweet = Tweet.find(params[:id])
  end 

  def update
    @tweet = current_user.tweets.find(params[:id])

    if @tweet.update(tweet_params)
      redirect_to tweet_path(@tweet)
    else
      render json: @tweet.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @tweet = current_user.tweets.find(params[:id])
    @tweet.destroy
    head :no_content
  end

  private

  def tweet_params
    params.require(:tweet).permit(:body)
  end
end
