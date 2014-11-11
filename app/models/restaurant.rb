class Restaurant < ActiveRecord::Base
  def display_address
    "#{street_address}, #{city}, #{state}"
  end
end