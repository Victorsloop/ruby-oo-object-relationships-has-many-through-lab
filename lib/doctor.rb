class Doctor

    attr_accessor :name
    @@all = []

    def initialize(name)
        @name = name 
        @@all << self 
    end 

    def self.all 
        @@all 
    end 

    def new_appointment(patient, date)
        iroh = Appointment.new(date,patient,self)
    end 

    def appointments
        Appointment.all.select{|me|me.doctor = self }
    end 

    def patients
        appointments.map{|job| job.patient}
    end
end 