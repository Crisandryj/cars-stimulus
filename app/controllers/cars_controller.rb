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

  private

  def car_params
    params.require(:car).permit(:model, :year, :name, variants_attributes: [:car_type])
  end

end
