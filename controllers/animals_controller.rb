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
