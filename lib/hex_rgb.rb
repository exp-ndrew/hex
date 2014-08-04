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
  # input looks like {:r => ["f","1"], :g => ["5","5"], :b => ["3","a"]}
  # output looks like {:r => 240, :g => 103 :b => 66}

  output = {:r => 0, :g => 0, :b => 0}

  # input = {:r => ["f","1"], :g => ["5","5"], :b => ["3","a"]}



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




  [:r, :g, :b].each do |key|
    colors[key].reverse!
  end

  colors.each_key do |color|

    (0..1).each do |i|

      if color[i] == "1"
        output[color] += 1*16**i
      elsif color[i] == "2"
        output[color] += 2*16**i
      elsif color[i] == "3"
        output[color] += 3*16**i
      elsif color[i] == "4"
        output[color] += 4*16**i
      elsif color[i] == "5"
        output[color] += 5*16**i
      elsif color[i] == "6"
        output[color] += 6*16**i
      elsif color[i] == "7"
        output[color] += 7*16**i
      elsif color[i] == "8"
        output[color] += 8*16**i
      elsif color[i] == "9"
        output[color] += 9*16**i
      elsif color[i] == "a"
        output[color] += 10*16**i
      elsif color[i] == "b"
        output[color] += 11*16**i
      elsif color[i] == "c"
        output[color] += 12*16**i
      elsif color[i] == "d"
        output[color] += 13*16**i
      elsif color[i] == "e"
        output[color] += 14*16**i
      elsif color[i] == "f"
        output[color] += 15*16**i
      end
    end    
  end
  puts output

  
  # [colors[:r], colors[:g], colors[:b]].each do |color|
  #   color.split('')
  # end

end

convert_to_base10({:r => ["f","1"], :g => ["5","5"], :b => ["3","a"]})