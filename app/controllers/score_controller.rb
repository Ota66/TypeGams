class ScoreController < ApplicationController
  before_action :authenticate_user!, except: [:index]

  def index
    @score = Score.new
  end

  def new
    
  end

  def create
    Score.create(score_params)
  end

  private
  def score_params
    params.require(:score).permit(:point, :true, :miss, :correct_answer_rate).merge(user_id: current_user.id)
  end

end
