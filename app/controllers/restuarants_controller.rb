class RestuarantsController < ApplicationController
  def index
    @restuarants = Restuarant.all
  end

  def show
    @restuarant = Restuarant.find(params[:id])
  end
  def new
    @restuarant = Restuarant.new
  end
  def create
    @restuarant = Restuarant.new(restaurant_params)
      if @restuarant.save
        redirect_to restuarants_path
      else
        render :new
      end
  end
  def edit
    @restuarant = Restuarant.find(params[:id])
  end

  def update
    @restuarant = Restuarant.find(params[:id])  
    if @restuarant.update(restaurant_params)
      redirect_to restuarant_path(params[:id])
    else
      render :edit
    end
  end
  
  def destroy
    Restuarant.find(params[:id]).destroy
    redirect_to restuarants_path
  end

  private
    def restaurant_params
      params.require(:restuarant).permit(:name, :description, :location, :rating, :likes)
    end
end
