class Api::GratitudesController < ApplicationController

  def index
    if current_user
      @gratitudes = current_user.gratitudes
      render 'index.json.jbuilder'
    else
      render json: []
    end
  end

  def create
    @gratitude = Gratitude.new(
                          user_id: current_user.id,
                          message: params[:message]
                          )
    if @gratitude.save
      render 'show.json.jbuilder'
    else
      render json: {errors: @gratitude.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def show
    @gratitude = Gratitude.find(params[:id])
    render 'show.json.jbuilder'
  end
end
