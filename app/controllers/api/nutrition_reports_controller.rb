class Api::NutritionReportsController < ApplicationController

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
