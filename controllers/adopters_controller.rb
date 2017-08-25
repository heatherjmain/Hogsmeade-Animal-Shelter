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
  erb(:"adopters/show")
end

#CREATE
post "/adopters" do
  @adopters = Adopter.new(params)
  @adopters.save()
  redirect to ("/adopters")
end
