require("pry-byebug")
require_relative("../models/adopter")
require_relative("../models/animal")

adopter1 = Adopter.new({
  "first_name" => "Kevin",
  "last_name" => "Kroll",
  "address" => "1 High Street",
  "postcode" => "XX1 1XX",
  "tel_num" => "01234567890"
  })

adopter2 = Adopter.new({
  "first_name" => "Mary",
  "last_name" => "Miller",
  "address" => "6 Union Terrace",
  "postcode" => "XX2 3XX",
  "tel_num" => "01234638429"
  })

adopter3 = Adopter.new({
  "first_name" => "Tim",
  "last_name" => "Tallman",
  "address" => "98 Hill Walk",
  "postcode" => "XX6 3FF",
  "tel_num" => "01234735393"
  })


animal1 = Animal.new({
  "name" => "Tom",
  "age" => 3,
  "species" => "cat",
  "admission_date" => 20161014,
  "is_adoptable" => true,
  "photo" => "url",
  "adopter_id" => adopter1,
  "adoption_date" => 20170514
  })

animal2 = Animal.new({
  "name" => "Rover",
  "age" => 6,
  "species" => "turtle",
  "admission_date" => 20170503,
  "is_adoptable" => false,
  "photo" => "url",
  "adopter_id" => adopter2,
  "adoption_date" => 20170601,
  })

animal3 = Animal.new({
  "name" => "Bailey",
  "age" => 6,
  "species" => "cat",
  "admission_date" => 20170802,
  "is_adoptable" => true,
  "photo" => "url",
  "adopter_id" => adopter3,
  "adoption_date" => 20170803
  })
  binding.pry
  nil
