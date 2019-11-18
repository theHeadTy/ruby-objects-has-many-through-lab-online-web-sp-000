class Doctor
  attr_accessor :name
  @@all = []
  def initialize(name)
    @name = name
    self.class.all << self
  end
  
  def self.all
    @@all
  end
  
  def appointments
  end
  
  def new_appointment(patient, date)
    Appointment.new(date, patient, self)
  end
  
  def patients
  end 
    
  
end