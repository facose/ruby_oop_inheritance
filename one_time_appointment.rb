require_relative 'appointment'

class OneTimeAppointment < Appointment
    attr_accessor :day, :month, :year
    
    def initialize(location, purpose, hour, min, day, month, year)
        @day = day
        @month = month
        @year = year
    end        

    def occurs_on?(day, month, year)
        @day == day and @month == month and @year == year
    end  
    
    def to_s
        "Reunión única en #{location} sobre #{purpose} el #{@day}/#{@month}/#{@year} a la(s) #{hour}:#{min}"
    end        
end    