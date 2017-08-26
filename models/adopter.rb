require_relative("../db/sql_runner")

class Adopter

  attr_accessor(:first_name, :last_name, :address, :postcode, :tel_num, :ready_to_adopt)
  attr_reader(:id)

  def initialize(adopter_details)
    @id = adopter_details["id"].to_i() if adopter_details["id"]
    @first_name = adopter_details["first_name"]
    @last_name = adopter_details["last_name"]
    @address = adopter_details["address"]
    @postcode = adopter_details["postcode"]
    @tel_num = adopter_details["tel_num"]
    @ready_to_adopt = adopter_details["ready_to_adopt"]
  end

  def save()
    sql = "
    INSERT INTO adopters
    (first_name, last_name, address, postcode, tel_num, ready_to_adopt)
    VALUES
    ($1,$2, $3, $4, $5, $6)
    RETURNING id;
    "
    values = [@first_name, @last_name, @address, @postcode, @tel_num, @ready_to_adopt]
    result = SqlRunner.run(sql, values)
    @id = result.first()["id"].to_i()
  end

  def self.all()
    sql = "SELECT * FROM adopters;"
    values = []
    result_hash = SqlRunner.run(sql, values)
    result_array = result_hash.map { |result_hash| Adopter.new(result_hash)}
    return result_array
  end

  def self.find(id)
    sql = "SELECT * FROM adopters WHERE ID = $1;"
    values = [id]
    adopter = SqlRunner.run(sql, values).first()
    return Adopter.new(adopter)
  end

  def update()
    sql = "
    UPDATE adopters
    SET (first_name, last_name, address, postcode, tel_num, ready_to_adopt)
    = ($1, $2, $3, $4, $5, $6)
    WHERE ID = $7;
    "
    values = [@first_name, @last_name, @address, @postcode, @tel_num, @ready_to_adopt, @id]
    SqlRunner.run(sql, values)
  end

  def delete()
    sql = "DELETE FROM adopters WHERE id = $1;"
    values = [@id]
    SqlRunner.run(sql, values)
  end



end
