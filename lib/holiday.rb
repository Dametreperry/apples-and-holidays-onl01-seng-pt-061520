require 'pry'

def all_winter_holiday_supplies(holiday_hash)
  array = holiday_hash[:winter].map do |holiday, items|
    items
  end
  array.flatten

  # return an array of all of the supplies that are used in the winter season

end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, holiday|
    puts season.to_s.capitalize! << ":"
    holiday.each do |holiday, supplies|
      supplies = supplies.join(", ")
      holiday = holiday.to_s.split("_").map {|w| w.capitalize}.join(" ")<< ":"
      puts "  " + holiday + " " + supplies
    end
  end
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.

end

def all_holidays_with_bbq(holiday_hash)
  holiday_hash.map do |season, holidays|
    holidays.map do |holiday, items|
      if items.include?("BBQ")
        holiday
      end
    end
  end.flatten.compact
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"

end






