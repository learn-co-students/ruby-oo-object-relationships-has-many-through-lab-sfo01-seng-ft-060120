require 'pry'

class Doctor

    attr_reader :name # has a name

    @@all = []

    def initialize(doctor_name) # initializes with a name and adds itself to an array of all doctors
        @name = doctor_name
        @@all << self
    end

    def self.all
        @@all
    end

    def appointments # returns all appointments associated with this Doctor
        Appointment.all.find_all { |appointment| appointment.doctor == self }
    end

    def new_appointment(patient, appointment_date) # given a date and a patient, creates a new appointment
        Appointment.new(appointment_date, patient, self)
    end
    
    def patients # has many patients, through appointments
        # this_doctors_patients = self.appointments.map { |appointment| appointment.patient }
        self.appointments.map do |appointment|
            # binding.pry
            appointment.patient
        end
    end 

end