require 'sqlite3'
DB = SQLite3::Database.new("patients_doctors.sqlite")

class Doctor
  def initialize(attributes = {})
    @id = attributes[:id]
    @first_name = attributes[:first_name]
    @last_name = attributes[:last_name]
    @specialty = attributes[:specialty]
    @age = attributes[:age]
  end
end


# @doctor_repository.all
