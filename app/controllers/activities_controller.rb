class ActivitiesController < ApplicationController

  def index
    @activities = Activity.all

    @activities.each do |act|
     @steps = act["steps"]
     @miles = act["miles"]
     @calories = act["calories"]

     @stepstotal = @stepstotal.to_i + act["steps"]
     @milestotal = @milestotal.to_f + act["miles"]
     @caloriestotal = @caloriestotal.to_i + act["calories"]
     @recordcount = @recordcount.to_i + 1
    end  
      @stepsavg = @stepstotal / @recordcount
      @milesavg = @milestotal / @recordcount
      @caloriesavg = @caloriestotal / @recordcount
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
