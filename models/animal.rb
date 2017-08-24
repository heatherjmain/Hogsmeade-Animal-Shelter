class Animal

  attr_accessor(:name, :age, :species, :admission_date, :is_adoptable, :photo, :adopter_id, :adoption_date)
  attr_reader(:id)

  def initialize(animal_details)
    @id = animal_details["id"]
    @name = animal_details["name"]
    @age = animal_details["age"]
    @species = animal_details["species"]
    @admission_date = animal_details["admission_date"]
    @is_adoptable = animal_details["is adoptable"]
    @photo = animal_details["photo"]
    @adopter_id = animal_details["adopter_id"]
    @adoption_date = animal_details["adoption_date"]
  end




end
