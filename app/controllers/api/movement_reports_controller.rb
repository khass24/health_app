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
                                          count: params[:count]
                                          )
    if @movement_report.save
      render 'show.json.jbuilder'
    else
      render json: {errors: @movement_report.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def show
    @movement_report = MovementReport.find(params[:id])
    render 'show.json.jbuilder'
  end

  def update
    @movement_report = MovementReport.find(params[:id])

    @movement_report.count = params[:count] || @movement_report.count

    if @movement_report.save
      render "show.json.jbuilder"
    else
      render json: {errors: @movement_report.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def destroy
    @movement_report = MovementReport.find(params[:id])
    @movement_report.destroy
    render json: {message: "Movement Report successfully deleted"}
  end
end
