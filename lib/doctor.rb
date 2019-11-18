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
    Appointment.all.select { |app| app.doctor == self }
  end
  
  def new_appointment(patient, date)
    Appointment.new(date, patient, self)
  end
  
  def patients
    appointments.map { |app| app.patient }
  end 
end


  describe '#patients' do
    it 'has many patients, through appointments' do
      doctor_who = Doctor.new('The Doctor')
      hevydevy = Patient.new('Devin Townsend')
      doctor_who.new_appointment(hevydevy, 'Friday, January 32nd')

      expect(doctor_who.patients).to include(hevydevy)
    end
  end
end