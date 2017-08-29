require_relative("../db/sql_runner")

class Animal

  attr_accessor(:name, :age, :species, :admission_date, :is_adoptable, :photo, :adopter_id, :adoption_date)
  attr_reader(:id)

  def initialize(animal_details)
    @id = animal_details["id"].to_i() if animal_details["id"]
    @name = animal_details["name"]
    @age = animal_details["age"]
    @species = animal_details["species"]
    @admission_date = animal_details["admission_date"]
    @is_adoptable = animal_details["is_adoptable"]
    @photo = animal_details["photo"]
    @adopter_id = animal_details["adopter_id"].to_i() if animal_details["adopter_id"]
    @adoption_date = animal_details["adoption_date"]
  end


  def save()
    sql = "
    INSERT INTO animals
    (name, age, species, admission_date, is_adoptable, photo, adopter_id, adoption_date)
    VALUES
    ($1, $2, $3, $4, $5, $6, $7, $8)
    RETURNING id
    "
    values = [@name, @age, @species, @admission_date, @is_adoptable, @photo, @adopter_id, @adoption_date]
    result = SqlRunner.run(sql, values)
    @id = result.first["id"].to_i
  end

  def self.all()
    sql =  "SELECT * FROM animals;"
    values = []
    result_hash = SqlRunner.run(sql, values)
    result_array = result_hash.map{|result_hash| Animal.new(result_hash)}
    return result_array
  end

  def self.find(id)
    sql = "SELECT * FROM animals WHERE id = $1;"
    values = [id]
    animals = SqlRunner.run(sql, values).first
    return Animal.new(animals)
  end

  def update()
    sql = "UPDATE animals
    SET (name, age, species, admission_date, is_adoptable, photo, adopter_id, adoption_date)
    = ($1, $2, $3, $4, $5, $6, $7, $8)
    WHERE id = $9;"
    values = [@name, @age, @species, @admission_date, @is_adoptable, @photo, @adopter_id, @adoption_date, @id]
    SqlRunner.run(sql, values)
  end

  def delete()
    sql = "DELETE FROM animals WHERE id = $1;"
    values = [@id]
    SqlRunner.run(sql, values)
  end

  def find_adopter()
    sql = "SELECT * FROM adopters WHERE id = $1"
    values = [@adopter_id]
    adopter = SqlRunner.run(sql, values)
    return Adopter.new(adopter.first)
  end

end
