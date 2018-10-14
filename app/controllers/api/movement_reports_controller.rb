class Api::MovementReportsController < ApplicationController

  def create
    @movement_report = MovementReport.new(
                                          count: params[:count],
                                          quality: params[:quality]
                                          )
    if @movement_report.save
      render 'show.json.jbuilder'
    else
      render json: {errors: @movement_report.errors.full_messages}, status: :unprocessable_entity
    end
  end

end
