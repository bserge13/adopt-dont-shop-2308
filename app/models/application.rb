class Application < ApplicationRecord 
  has_many :pet_applications
  has_many :pets, through: :pet_applications

  validates_presence_of :name, :street_address, :city,
                        :state, :zip_code, :description,
                        :status

  def address
    self.street_address + ", " + self.city + ", " + self.state + " " + self.zip_code
  end

  # def pet_applied
  #   Application.joins(pet_applications: :pets)
  #   require 'pry'; binding.pry
  # end

end