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
                                            count: params[:count],
                                            quality: params[:quality]
                                            )
    if @nutrition_report.save
      render 'show.json.jbuilder'
    else
      render json: {errors: @nutrition_report.errors.full_messages}, status: :unprocessable_entity
    end
  end

end
