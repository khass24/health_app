class Api::GratitudesController < ApplicationController

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
end
