class CarController < ApplicationController
  def index
    cars = car.order("created_at DESC")
    render json: cars
  end

  def create
    car = Car.create(car_param)
    render json: car
  end

  def update
    car = Car.find(params[:id])
    car.update_attributes(car_param)
    render json: car
  end

  def destroy
    car = Car.find(params[:id])
    car.destroy
    head :no_content, status: :ok
  end
  
  private
    def car_param
      params.require(:car).permit(:year, :make, :model, :price, :person_id)
    end
end
