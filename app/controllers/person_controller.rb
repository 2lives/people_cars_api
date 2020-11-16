class PersonController < ApplicationController
  def index
    people = Person.includes(:cars).order("created_at DESC")
    render json: people, include: :cars
  end

  def create
    person = Person.create(person_param)
    render json: person
  end

  def update
    person = Person.find(params[:id])
    person.update_attributes(person_param)
    render json: person
  end

  def destroy
    person = Person.find(params[:id])
    person.destroy
    head :no_content, status: :ok
  end
  
  private
    def person_param
      params.require(:person).permit(:first_name, :last_name, :email)
    end
end
