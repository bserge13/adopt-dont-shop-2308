class ApplicationsController < ApplicationController
  def show
    @application = Application.find(params[:id])
    @address = @application.address
  end

  def new 
  end

  def create 
    application = Application.new(application_params) 
    if application.save 
      redirect_to "/applications/#{application.id}" 
    else 
      flash[:error] = "Error: All fields must be filled in to submit"
      redirect_to "/applications/new" 
    end 
  end

  private 

  def application_params 
    params.permit(:id, :name, :street_address, :city, :state, :zip_code, :description, :status)
  end 
end