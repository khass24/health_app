class Api::NutritionReportsController < ApplicationController

  def index
    if current_user
      @nutrition_reports = current_user.nutrition_reports
      render 'index.json.jbuilder'
    else
      render json: []
    end
  end

  def create
    @nutrition_report = NutritionReport.new(
                                            user_id: current_user.id,
                                            count: params[:count],
                                            quality: params[:quality]
                                            )
    if @nutrition_report.save
      render 'show.json.jbuilder'
    else
      render json: {errors: @nutrition_report.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def show
    @nutrition_report = NutritionReport.find(params[:id])
    render 'show.json.jbuilder'
  end

end
