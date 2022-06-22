require 'date'

class BirthdayGreeter
  def greet_birthday(date)
    return "Happy birthday!" if today?(date)

    "Your birthday is in #{days_until_birthday(date)} days!"
  end

  private 

  def today?(date)
    Date.parse(date) == Date.today
  end

  def days_until_birthday(date)
    (Date.parse(date) + Date.today).to_i 
  end
end