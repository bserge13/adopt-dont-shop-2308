class Admin::SheltersController < ApplicationController
  def index
    @shelters = Shelter.reverse_alphabetical
    @pending_shelters = Shelter.pending_apps
  end
end