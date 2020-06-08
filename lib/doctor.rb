require 'pry'

class Doctor
    attr_accessor :name
    
    @@all = []

    def initialize (name)
        @name = name
        @@all << self
    end

    def new_appointment(patient, date)
        Appointment.new(date, patient, self)
    end

    def appointments
        Appointment.all.select { |appt| appt.doctor == self}
    end

    def patients
        self.appointments.collect do |appointment|
            appointment.patient
        end
    end

    def self.all
        @@all
    end
end