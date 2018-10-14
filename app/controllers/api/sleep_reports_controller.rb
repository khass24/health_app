class Api::SleepReportsController < ApplicationController

  def index
    if current_user
      @sleep_reports = current_user.sleep_reports
      render 'index.json.jbuilder'
    else
      render json: []
    end
  end

  def create
    @sleep_report = SleepReport.new(
                                    count: params[:count],
                                    quality: params[:quality]
                                    )
    if @sleep_report.save
      render 'show.json.jbuilder'
    else
      render json: {errors: @sleep_report.errors.full_messages}, status: :unprocessable_entity
    end
  end

end
