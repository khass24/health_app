class Api::StressReportsController < ApplicationController

  def index
    if current_user
      @stress_reports = current_user.stress_reports
      render 'index.json.jbuilder'
    else
      render json: []
    end
  end

  def create
    @stress_report = StressReport.new(
                                      user_id: current_user.id,
                                      count: params[:count]
                                     ) 
    if @stress_report.save
      render 'show.json.jbuilder'
    else
      render json: {errors: @stress_report.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def show
    @stress_report = StressReport.find(params[:id])
    render 'show.json.jbuilder'
  end

  def update
    @stress_report = StressReport.find(params[:id])

    @stress_report.count = params[:count] || @stress_report.count

    if @stress_report.save
      render "show.json.jbuilder"
    else
      render json: {errors: @stress_report.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def destroy
    @stress_report = StressReport.find(params[:id])
    @stress_report.destroy
    render json: {message: "Stress Report successfully deleted"}
  end
end
