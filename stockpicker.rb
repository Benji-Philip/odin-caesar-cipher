def stock_picker(array_of_days)
  buy_day = 0
  sell_day = 0
  difference = 0
  #current number minus the previous numbers
  #difference between the two numbers should be the highest
  array_of_days.each_with_index do |num, day|
    if day != 0
      i = day
      while i > 0
        new_difference = num - array_of_days[i - 1]
        if difference < new_difference
          difference = new_difference
          buy_day = day
          sell_day = i - 1
        end
        i -= 1
      end
    end
  end
  buy_day < sell_day ? [buy_day, sell_day] : [sell_day, buy_day]
end

p stock_picker([17, 3, 6, 9, 15, 8, 6, 1, 10])
