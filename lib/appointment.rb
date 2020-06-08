class Appointment

    attr_reader :appointment, :doctor, :patient

    @@all = []

    def initialize(appointment_date, patient, doctor) # initializes with a date, patient, and doctor
        @date = appointment_date
        @patient = patient
        @doctor = doctor
        @@all << self
    end

    def self.all # knows about all appointments that have been created
        @@all
    end

end