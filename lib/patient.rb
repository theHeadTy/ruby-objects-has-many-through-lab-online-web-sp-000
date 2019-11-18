class Patient
  attr_accessor :name
  @@all = []
  def initialize(name)
    @name = name
    self.class.all << self
  end
  
  def new_appointment(doctor, date)
    Appointment.new(date, self, doctor)
  end
  
  def appointments
    Appointment.all.select { |app| app.patient == self }
  end
  
  def doctoAppointment.all.select { |app| app.doctor rs
    
end



  describe '#appointments' do
    it 'returns all appointments associated with this Patient' do
      doctor_who = Doctor.new('The Doctor')
      doctor_smith = Doctor.new('Matt Smith')
      steve = Patient.new('Steve')
      mike = Patient.new('Mike')
      appointment = Appointment.new('Friday, January 32nd', steve, doctor_who)
      appointment_2 = Appointment.new('Saturday, January 33rd', steve, doctor_smith)
      appointment_3 = Appointment.new('Sunday, January 34th', mike, doctor_who)

      expect(steve.appointments).to include(appointment)
      expect(steve.appointments).to include(appointment_2)
      expect(steve.appointments).to_not include(appointment_3)
      expect(mike.appointments).to include(appointment_3)
    end
  end

  describe '#doctors' do
    it 'has many doctors through appointments' do
      doctor_who = Doctor.new('The Doctor')
      doctor_what = Doctor.new('Das Doktor')
      hevydevy = Patient.new('Devin Townsend')
      hevydevy.new_appointment(doctor_who, 'Friday, January 32nd')
      hevydevy.new_appointment(doctor_what, 'Saturday, January 32nd')

      expect(hevydevy.doctors).to include(doctor_who)
      expect(hevydevy.doctors).to include(doctor_what)
    end
  end
end