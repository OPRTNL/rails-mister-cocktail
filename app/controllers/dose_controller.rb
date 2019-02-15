class DoseController < ApplicationController
  def index
    @doses = Dose.all
  end

  def show
    @dose = Dose.find(params[:id])
  end

  def new
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new
  end

  def create
    @cocktail = Cocktail.find(params(:cocktail_id))
    @dose = Dose.new(dose_params)
    @dose.cocktail = @cocktail
    @dose.save!
    redirect_to cocktails_path
  end

  def destroy
    @dose = Dose.find(params[:id])
    @dose.destroy!
    redirect_to doses_path
  end

  def dose_params
    params.require(:dose).permit(:description)
  end
end
