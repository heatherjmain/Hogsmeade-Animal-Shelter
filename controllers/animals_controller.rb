require('sinatra')
require('sinatra/contrib/all')
require_relative('../models/animal.rb')
require_relative('../models/adopter.rb')

#INDEX
get "/animals" do
  @animals = Animal.all()
  erb(:"animals/index")
end

#NEW
get "/animals/new" do
  erb(:"animals/new")
end

#SHOW
get "/animals/:id" do
  @animal = Animal.find(params["id"])
  erb(:"animals/show")
end

#CREATE
post "/animals" do
  @animal = Animal.new(params)
  @animal.save()
  redirect to ("/animals")
end

#EDIT
get "/animals/:id/edit" do
  @animal = Animal.find(params["id"])
  @adopters = Adopter.all()
  @is_adoptable_values = [
    "Health Check in progress",
    "In training",
    "Available for Adoption",
    "Successfully Adopted",
    "Other"
  ]
  erb(:"animals/edit")
end

#UPDATE
post "/animals/:id" do
  @animal = Animal.new(params)
  @animal.update()
  redirect to "/animals/#{@animal.id}"
end

#DESTROY
post "/animals/:id/delete" do
  @animal = Animal.find(params["id"])
  @animal.delete()
  redirect to ("/animals")
end
