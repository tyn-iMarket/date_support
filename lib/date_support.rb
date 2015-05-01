require "date_support/version"

class Date

  def day_to(day)
    wdays = {sunday: 0, monday: 1, tuesday: 2, wednesday: 3,
      thursday: 4, friday: 5, saturday: 6}
    adder = wdays[day] - wday

    self + adder
  end

end
