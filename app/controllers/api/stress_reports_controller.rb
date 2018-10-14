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
                                      count: params[:count],
                                      quality: params[:quality]
                                      )
    if @stress_report.save
      render 'show.json.jbuilder'
    else
      render json: {errors: @stress_report.errors.full_messages}, status: :unprocessable_entity
    end
  end

end
