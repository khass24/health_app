class Api::MovementReportsController < ApplicationController

  def index
    if current_user
      @movement_reports = current_user.movement_reports
      render 'index.json.jbuilder'
    else
      render json: []
    end
  end

  def create
    @movement_report = MovementReport.new(
                                          user_id: current_user.id,
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
