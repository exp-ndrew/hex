# thinking ahead: regex for validation of input... 
# /([\d|([a-fA-F])]{6})/


@letters =  {   
                10 => "a",
                11 => "b",
                12 => "c",
                13 => "d",
                14 => "e",
                15 => "f",
            }


def hex_rgb input

  colors = break_into_colors(input) # colors is now a hash with hex values
  base10 = convert_to_base10(colors) # makes a hash of base10 values from hex values
  result = build_result(base10) # makes a result string from the hash of base10 values

  result

end


def break_into_colors input
  # breaks up the #f1553a input into {"r" => ["f",1], "g" => [5,5], "b" => [3,"a"]}

  colors = { :r => [], :g => [], :b => []}
  
  input.downcase!
  input_array = input.split('')

  colors[:r] << input_array[0]
  colors[:r] << input_array[1]
  colors[:g] << input_array[2]
  colors[:g] << input_array[3]
  colors[:b] << input_array[4]
  colors[:b] << input_array[5]

  colors

end


def convert_to_base10 colors
  # takes the breaks_into_colors result and converts each value into a base10 number
  # output looks like {:r => 240, :g => 103 :b => 66}
  
  # [colors[:r], colors[:g], colors[:b]].each do |color|
  #   color.split('')
  # end

end