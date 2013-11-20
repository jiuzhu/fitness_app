class ActivitiesController < ApplicationController

  def index
    @activities = Activity.all

    @steps
    @miles
    @calorie

  @activities.each do |act|
     @steps = @steps.to_i + act["steps"]
     @miles = @miles.to_i + act["miles"]
     @calories = @calories.to_i + act["calories"]
    end
  
  end

  def show
    @activity = Activity.find_by(id: params[:id])
  end

  def new
  end

  def create
    @activity = Activity.new
    @activity.user_id = params[:user_id]
    @activity.date = params[:date]
    @activity.steps = params[:steps]
    @activity.miles = params[:miles]
    @activity.calories = params[:calories]

    if @activity.save
      redirect_to activities_url, notice: "Activity created successfully."
    else
      render 'new'
    end
  end

  def edit
    @activity = Activity.find_by(id: params[:id])
  end

  def update
    @activity = Activity.find_by(id: params[:id])
    @activity.user_id = params[:user_id]
    @activity.date = params[:date]
    @activity.steps = params[:steps]
    @activity.miles = params[:miles]
    @activity.calories = params[:calories]

    if @activity.save
      redirect_to activities_url, notice: "Activity updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @activity = Activity.find_by(id: params[:id])
    @activity.destroy

    redirect_to activities_url, notice: "Activity deleted."
  end
end
