class Patient

    attr_reader :name

    @@all = []

    def initialize(patient_name) # initializes with a nam
        @name = patient_name
        @@all << self
    end

    def new_appointment(doctor, appointment_date) # given a doctor and date, creates a new appointment belonging to that patient
        Appointment.new(appointment_date, self, doctor)
    end

    def self.all # knows about all patients
        @@all
    end

    def appointments # returns all appointments associated with this Patient
        Appointment.all.find_all { |appointment| appointment.patient == self }
    end

    def doctors # has many doctors through appointments
        self.appointments.map { |appointment| appointment.doctor }
    end

end