require("pry-byebug")
require_relative("../models/adopter")
require_relative("../models/animal")

adopter1 = Adopter.new({
  "first_name" => "Kevin",
  "last_name" => "Kroll",
  "address" => "1 High Street",
  "postcode" => "XX1 1XX",
  "tel_num" => "01234567890",
  "ready_to_adopt" => "Yes"
  })
  adopter1.save()

adopter2 = Adopter.new({
  "first_name" => "Mary",
  "last_name" => "Miller",
  "address" => "6 Union Terrace",
  "postcode" => "XX2 3XX",
  "tel_num" => "01234638429",
  "ready_to_adopt" => "Yes"
  })
adopter2.save()

adopter3 = Adopter.new({
  "first_name" => "Tim",
  "last_name" => "Tallman",
  "address" => "98 Hill Walk",
  "postcode" => "XX6 3FF",
  "tel_num" => "01234735393",
  "ready_to_adopt" => "No"
  })
adopter3.save()


animal1 = Animal.new({
  "name" => "Tom",
  "age" => 3,
  "species" => "cat",
  "admission_date" => "2016-10-14",
  "is_adoptable" => "Health Check",
  "photo" => "url",
  "adopter_id" => adopter1.id,
  "adoption_date" => nil
  })
animal1.save()

animal2 = Animal.new({
  "name" => "Rover",
  "age" => 6,
  "species" => "turtle",
  "admission_date" => "2017-05-03",
  "is_adoptable" => "In Training",
  "photo" => "url",
  "adopter_id" => adopter2.id,
  "adoption_date" => "2017-06-01",
  })
animal2.save()

animal3 = Animal.new({
  "name" => "Bailey",
  "age" => 6,
  "species" => "cat",
  "admission_date" => "2017-08-02",
  "is_adoptable" => "Available for Adoption",
  "photo" => "url",
  "adopter_id" => adopter3.id,
  "adoption_date" => "2017-08-03"
  })
animal3.save()

  animal4 = Animal.new({
    "name" => "Sooty",
    "age" => 14,
    "species" => "dog",
    "admission_date" => "2017-07-02",
    "is_adoptable" => "Other",
    "photo" => "url",
    "adopter_id" => adopter3.id,
    "adoption_date" => "2017-07-02  "
    })
  animal4.save()

  binding.pry
  nil
