require "date_support/version"
require "active_support"
require "active_support/core_ext"

class Date

  def day_to(day)
    wdays = {sunday: 0, monday: 1, tuesday: 2, wednesday: 3,
      thursday: 4, friday: 5, saturday: 6}
    adder = wdays[day] - wday

    self + adder
  end

  def week_of_month(nth = nil)
    return nth_week_of_month(nth) if nth

    weekend = beginning_of_month.end_of_week :sunday
    week = 1

    loop do
      break if self <= weekend

      weekend += 7
      week += 1
    end

    week
  end

  def beginning_week_of_month
    self - (week_of_month - 1) * 7
  end

end
