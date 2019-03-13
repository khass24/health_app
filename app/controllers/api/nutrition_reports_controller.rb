class Api::NutritionReportsController < ApplicationController

  def index
    if current_user
      @nutrition_reports = current_user.nutrition_reports

      @nutrition_array = @nutrition_reports.map { |s| s.count }

      render 'index.json.jbuilder'
    else
      render json: []
    end
  end

  def create
    @nutrition_report = NutritionReport.new(
                                            user_id: current_user.id,
                                            count: params[:count]
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

  def update
    @nutrition_report = NutritionReport.find(params[:id])

    @nutrition_report.count = params[:count] || @nutrition_report.count

    if @nutrition_report.save
      render "show.json.jbuilder"
    else
      render json: {errors: @nutrition_report.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def destroy
    @nutrition_report = NutritionReport.find(params[:id])
    @nutrition_report.destroy
    render json: {message: "Nutrition Report successfully deleted"}
  end
end
