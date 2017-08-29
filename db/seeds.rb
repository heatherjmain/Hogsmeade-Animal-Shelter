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
  "name" => "Buckbeak",
  "age" => 33,
  "species" => "Hippogriff",
  "admission_date" => "2016-10-14",
  "is_adoptable" => "Successfully Adopted",
  "photo" => "buckbeak.jpg",
  "adopter_id" => 3,
  "adoption_date" => "2016-12-23"
  })
animal1.save()

animal2 = Animal.new({
  "name" => "Graham",
  "age" => 12,
  "species" => "Grindylow",
  "admission_date" => "2017-07-04",
  "is_adoptable" => "Health Check",
  "photo" => "Grindylow.jpg",
  "adopter_id" => nil,
  "adoption_date" => nil
  })
animal2.save()

animal3 = Animal.new({
  "name" => "Hetty",
  "age" => 6,
  "species" => "Unicorn",
  "admission_date" => "2017-03-03",
  "is_adoptable" => "Successfully Adopted",
  "photo" => "unicorn.jpg",
  "adopter_id" => 3,
  "adoption_date" => "2107-05-31"
  })
animal3.save()

animal4 = Animal.new({
  "name" => "Fang",
  "age" => 14,
  "species" => "Boarhound",
  "admission_date" => "2017-07-14",
  "is_adoptable" => "Successfully Adopted",
  "photo" => "boarhound.jpg",
  "adopter_id" => 1,
  "adoption_date" => "2017-08-03"
  })
animal4.save()

animal5 = Animal.new({
  "name" => "Dobby",
  "age" => 76,
  "species" => "House Elf",
  "admission_date" => "2017-06-22",
  "is_adoptable" => "Successfully Adopted",
  "photo" => "house_elf.jpg",
  "adopter_id" => 2,
  "adoption_date" => "2017-08-013"
  })
animal5.save()

animal6 = Animal.new({
  "name" => "Marmalade",
  "age" => 16,
  "species" => "Cat",
  "admission_date" => "2017-3-08",
  "is_adoptable" => "In Training",
  "photo" => "cat.jpeg",
  "adopter_id" => nil,
  "adoption_date" => nil
  })
animal6.save()

animal7 = Animal.new({
  "name" => "Philly",
  "age" => 1,
  "species" => "Fwooper",
  "admission_date" => "2017-08-22",
  "is_adoptable" => "Health  Check",
  "photo" => "fwooper.jpg",
  "adopter_id" => nil,
  "adoption_date" => nil
  })
animal7.save()

animal8 = Animal.new({
  "name" => "Owen",
  "age" => 4,
  "species" => "Owl",
  "admission_date" => "2017-4-12",
  "is_adoptable" => "Successfully Adopted",
  "photo" => "owl.jpeg",
  "adopter_id" => 2,
  "adoption_date" => "2017-08-13"
  })
animal8.save()

animal9 = Animal.new({
  "name" => "Harry",
  "age" => 102,
  "species" => "Hungarian Horntail",
  "admission_date" => "2017-06-23",
  "is_adoptable" => "Available for Adoption",
  "photo" => "hungarian_horntail.jpg",
  "adopter_id" => nil,
  "adoption_date" => nil
  })
animal9.save()

animal10 = Animal.new({
  "name" => "Neil",
  "age" => 1,
  "species" => "Norwegian Ridgeback",
  "admission_date" => "2017-05-14",
  "is_adoptable" => "Available for Adoption",
  "photo" => "norwegian_ridgeback.jpg",
  "adopter_id" => nil,
  "adoption_date" => nil
  })
animal10.save()



  binding.pry
  nil
