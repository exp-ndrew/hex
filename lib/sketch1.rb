# get it to return 241 for ["f","1"]

  # red = ["f","1"]
  # red.reverse! ["f", "1"] --> ["1", "f"]

  # red.each_with_index do |value, i|
  # test each item in red

  # if @letters.has_value?(value)
    # @letters.key(value)*16**index
  # index 0
  # output[:r] += 1 * 16**index
  # index 1
  # output[:r] += 15 * 16**index

  @letters =  {   
                  10 => "a",
                  11 => "b",
                  12 => "c",
                  13 => "d",
                  14 => "e",
                  15 => "f",
              }

def red red
  output = {:r => 0}

  red.reverse! # red --> ["1","f"]

  red.each_with_index do |value, i|
    if @letters.has_value?(value)
      output[:r] += @letters.key(value) * 16**i
    else
      value_f = value.to_f
      output[:r] += value_f * 1 * 16**i
    end
  end

output

end

puts red ["f","1"]
