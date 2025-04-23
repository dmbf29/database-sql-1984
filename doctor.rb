require 'sqlite3'
DB = SQLite3::Database.new("patients_doctors.sqlite")

class Doctor
  def initialize(attributes = {})
    @id = attributes[:id] || attributes['id']
    @first_name = attributes[:first_name] || attributes['first_name']
    @last_name = attributes[:last_name] || attributes['last_name']
    @specialty = attributes[:specialty] || attributes['specialty']
    @age = attributes[:age] || attributes['age']
  end

  def self.all
    # what does the DB give back to us?
    DB.results_as_hash = true
    rows = DB.execute('SELECT * FROM doctors')
    rows.map do |row|
      Doctor.new(row)
    end
  end

  def self.find(id)
    DB.results_as_hash = true
    rows = DB.execute("SELECT * FROM doctors WHERE id = ?", id)
    # should return one instance of a doctor
  end
end


# @doctor_repository.all
p Doctor.find(1)
