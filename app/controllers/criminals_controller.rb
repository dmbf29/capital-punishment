class CriminalsController < ApplicationController
  def new
    # These are just for the form
    @prison = Prison.find(params[:prison_id])
    @criminal = Criminal.new
  end

  def create
    @prison = Prison.find(params[:prison_id])
    @criminal = Criminal.new(criminal_params)
    @criminal.prison = @prison
    if @criminal.save
      redirect_to prison_path(@prison)
    else
      # show the form again
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @criminal = Criminal.find(params[:id])
    @criminal.destroy
    redirect_to prison_path(@criminal.prison)
  end

  private

  def criminal_params
    params.require(:criminal).permit(:name, :image_url)
  end
end
