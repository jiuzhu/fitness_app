class ChallengesController < ApplicationController

  def index
    @challenges = Challenge.all
  end

  def show
    @challenge = Challenge.find_by(id: params[:id])
  end

  def new
  end

  def create
    @challenge = Challenge.new
    @challenge.name = params[:name]
    @challenge.data_type_id = params[:data_type_id]
    @challenge.value = params[:value]

    if @challenge.save
      redirect_to challenges_url, notice: "Challenge created successfully."
    else
      render 'new'
    end
  end

  def edit
    @challenge = Challenge.find_by(id: params[:id])
  end

  def update
    @challenge = Challenge.find_by(id: params[:id])
    @challenge.name = params[:name]
    @challenge.data_type_id = params[:data_type_id]
    @challenge.value = params[:value]

    if @challenge.save
      redirect_to challenges_url, notice: "Challenge updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @challenge = Challenge.find_by(id: params[:id])
    @challenge.destroy

    redirect_to challenges_url, notice: "Challenge deleted."
  end
end
