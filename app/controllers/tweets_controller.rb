class TweetsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_tweet, only: [:show, :edit, :update, :destroy]

  def index
    @tweets = Tweet.all
  end

  def show
    
  end

  def new
    @tweet = Tweet.new
  end

  def edit
  end

  def create
    @tweet = Tweet.new(tweet_params.merge(user: current_user))

    respond_to do |format|
      if @tweet.save
        format.html { redirect_to dashboard_path, notice: 'Tweet was successfully created.' }
        format.js
      else
        format.html { render :new, status: :unprocessable_entity }
        format.js { render 'create_failure.js.erb' }
      end
    end
  end

  def update
    if @tweet.update(tweet_params)
      redirect_to @tweet, notice: 'Tweet was successfully updated.'
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @tweet.destroy
    respond_to do |format|
      format.html { redirect_to dashboard_path, notice: 'Tweet was successfully deleted.' }
      format.js
    end
  end
  

  private

  def set_tweet
    @tweet = Tweet.find(params[:id])
  end

  def tweet_params
    params.require(:tweet).permit(:body)
  end
end
