class Api::StressReportsController < ApplicationController

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
