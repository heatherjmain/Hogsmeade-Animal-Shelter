require('sinatra')
require('sinatra/contrib/all')
require_relative('../models/animal.rb')
require_relative('../models/adopter.rb')

#INDEX
get "/adopters" do
  @adopters = Adopter.all()
  erb(:"adopters/index")
end

#NEW
get "/adopters/new" do
  erb(:"adopters/new")
end

#SHOW
get "/adopters/:id" do
  @adopter = Adopter.find(params["id"])
  @animals = @adopter.animals_adopted
  erb(:"adopters/show")
end

#CREATE
post "/adopters" do
  @adopters = Adopter.new(params)
  @adopters.save()
  redirect to ("/adopters")
end

#EDIT
get "/adopters/:id/edit" do
  @adopter = Adopter.find(params["id"])
  erb(:"adopters/edit")
end

#UPDATE
post "/adopters/:id" do
  @adopter = Adopter.new(params)
  @adopter.update()
  redirect to "/adopters/#{@adopter.id}"
end

#DESTROY
post "/adopters/:id/delete" do
  @adopter = Adopter.find(params["id"])
  @adopter.delete()
  redirect to ("/adopters")
end
