class Admin::ApplicationsController < ApplicationController
  def show
    @application = Application.find(params[:id])
    # require 'pry'; binding.pry  
  end

  def update
    application = Application.find(params[:id])
    pet_app = application.pet_applications
    
    if params[:commit] == "Approve"
      pet_app.update(adoption_approved: true)
    elsif params[:commit] == "Reject"
      pet_app.update(adoption_approved: false)
    end

    redirect_to "/admin/applications/#{application.id}"
  end
end

Pet.joins(:applications).where("application_id = 1").pluck(:status)