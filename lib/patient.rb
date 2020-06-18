# has many appointments
# has many doctors through appointments

class Patient 
  attr_accessor :name 
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all 
    @@all
  end
# The Patient class needs an instance method, #new_appointment, 
# that takes in an argument of a doctor and a date and creates a new Appointment. 
# The Appointment should know that it belongs to the patient.

  def new_appointment(doctor,date)
    new_appointments = Appointment.new(date, self, doctor)
  end
# The Patient class needs an instance method, #appointments, 
# that iterates through the Appointments array 
# and returns Appointments that belong to the patient.
# talk to Appointment, select the patients (in appointment) and comapare it to the Patient class method 
  def appointments 
    Appointment.all.select {|appointments| appointments.patient == self}
  end

  def doctors 
    appointments.collect {|appointment| appointment.doctor}
  end
  
end