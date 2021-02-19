require_relative 'appointment'

class MonthlyAppointment < Appointment
    attr_accessor :day
    def initialize(location, purpose, hour, min, day)
        @day = day
        super(location, purpose, hour, min)
    end   
    
    def occurs_on?(day)
        @day == day
    end   
    
    def to_s
        "Reunión mensual en #{location} sobre #{purpose} el día #{day} a la(s) #{hour}:#{min}"
    end        
end    