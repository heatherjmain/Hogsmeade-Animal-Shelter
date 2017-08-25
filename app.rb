require("sinatra")
require("sinatra/contrib/all")
require_relative("controllers/animals_controller")
require_relative("controllers/adopters_controller")


#INDEX
get "/" do
  erb(:index)
end
