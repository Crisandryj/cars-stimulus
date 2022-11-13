class CarsController < ApplicationController
  def index
    @cars = Car.all
  end

  def new
    @car = Car.new
    @car.variants.build
  end

  def create
    @car = Car.new(car_params)
    @car.save
    if @car.save
      redirect_to root_path
    end
    # raise params.inspect
  end

  def edit
    @car = Car.find(params[:id])
  end

  def update
    @car = Car.find(params[:id])
    @car.update(car_params)
    if @car.save
      redirect_to root_path
    end
  end


  private

  def car_params
    params.require(:car).permit(:model, :year, :name, variants_attributes: [:car_type])
  end

end
