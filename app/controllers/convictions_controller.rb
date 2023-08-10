class ConvictionsController < ApplicationController

  def new
    @conviction = Conviction.new
    @criminal = Criminal.find(params[:criminal_id])
    # @crimes = Crime.order(name: :asc)
    # @crimes = @criminal.crimes
    @crimes = Crime.where.not(id: @criminal.crimes).order(name: :asc)
  end

  def create
    @criminal = Criminal.find(params[:criminal_id])
    @conviction = Conviction.new(conviction_params)
    @conviction.criminal = @criminal
    if @conviction.save
      redirect_to prison_path(@criminal.prison)
    else
      @crimes = Crime.where.not(id: @criminal.crimes).order(name: :asc)
      render :new, status: :unprocessable_entity
    end
  end

  private

  def conviction_params
    params.require(:conviction).permit(:date, :crime_id)
  end
end
