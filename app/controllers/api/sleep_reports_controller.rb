class Api::SleepReportsController < ApplicationController

  def index
    if current_user
      @sleep_reports = current_user.sleep_reports

      @sleep_array = @sleep_reports.map { |s| s.count }.reverse

      render 'index.json.jbuilder'
    else
      render json: []
    end
  end

  def create
    @sleep_report = SleepReport.new(
                                    user_id: current_user.id,
                                    count: params[:count]
                                    )
    if @sleep_report.save
      render 'show.json.jbuilder'
    else
      render json: {errors: @sleep_report.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def show
    @sleep_report = SleepReport.find(params[:id])
    render 'show.json.jbuilder'
  end

  def update
    @sleep_report = SleepReport.find(params[:id])

    @sleep_report.count = params[:count] || @sleep_report.count

    if @sleep_report.save
      render "show.json.jbuilder"
    else
      render json: {errors: @sleep_report.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def destroy
    @sleep_report = SleepReport.find(params[:id])
    @sleep_report.destroy
    render json: {message: "Sleep Report successfully deleted"}
  end
end
