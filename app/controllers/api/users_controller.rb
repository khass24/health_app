class Api::UsersController < ApplicationController

  before_action :authenticate_user, only: [:show, :daily_score]

  def show
    @user = current_user
    render 'show.json.jbuilder'
  end

  def daily_score
    render json: {daily_score: current_user.daily_score, move_score: current_user.move_score, nutrition_score: current_user.nutrition_score, stress_score: current_user.stress_score, sleep_score: current_user.sleep_score}
  end

  def create
    user = User.new(
      name: params[:name],
      email: params[:email],
      password: params[:password],
      password_confirmation: params[:password_confirmation]
    )

    if user.save
      render json: {message: 'User created successfully'}, status: :created
    else
      render json: {errors: user.errors.full_messages}, status: :bad_request
    end
  end
end
