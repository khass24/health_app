class Api::SleepReportsController < ApplicationController

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
