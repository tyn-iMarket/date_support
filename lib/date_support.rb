require "date_support/version"

class Date

  def day_to(day)
    cwday = sunday? ? 0 : cwday()
    cwdays = {sunday: 0, monday: 1, tuesday: 2, wednesday: 3,
      thursday: 4, friday: 5, saturday: 6}
    adder = cwdays[day] - cwday

    self + adder
  end

end
