class Adopter

  attr_accessor(:first_name, :last_name, :address, :postcode, :tel_num)
  attr_reader(:id)

  def initialize(adopter_details)
    @id = adopter_details["id"].to_i() if adopter_details["id"]
    @first_name = adopter_details["first_name"]
    @last_name = adopter_details["last_name"]
    @address = adopter_details["address"]
    @postcode = adopter_details["postcode"]
    @tel_num = adopter_details["tel_num"]
  end


end
