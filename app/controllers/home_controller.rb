class HomeController < ApplicationController
  
  def index
    person = Person.new
    person.first_name = "Mani"
    person.middle_name = "Bono"
    person.last_name = "Malekmohammadi"
    person.save!
    
    mani = Person.first
    @full_name = "#{mani.first_name} #{mani.last_name}"
    person.delete
  end
  
end