def hex_rgb input

  hex_hash = break_apart(input) 
  rgb_hash = convert_to_rgb(hex_hash) 
  rgb_string = interpret(rgb_hash) 

  rgb_string

end


def break_apart input

  hex_hash = { :r => [], :g => [], :b => []}
  
  input.downcase!
  input_array = input.split('')

  hex_hash[:r] << input_array[0]
  hex_hash[:r] << input_array[1]
  hex_hash[:g] << input_array[2]
  hex_hash[:g] << input_array[3]
  hex_hash[:b] << input_array[4]
  hex_hash[:b] << input_array[5]

  hex_hash

end


def convert_to_rgb hex_hash

  @letters =  {   
                  10 => "a",
                  11 => "b",
                  12 => "c",
                  13 => "d",
                  14 => "e",
                  15 => "f",
              }
              
  rgb_hash = {:r => 0, :g => 0, :b => 0}

  hex_hash.each_pair do |key, value|

    value.reverse!

    value.each_with_index do |value, i|  
      if @letters.has_value?(value)
        rgb_hash[key] += @letters.key(value) * 16**i
      else
        value_f = value.to_f
        rgb_hash[key] += value_f * 1 * 16**i
      end
    end
  end

  rgb_hash

end


def interpret rgb_hash

  rgb_string = ""

  rgb_hash.each_pair do |color, value|
    rgb_string << "#{color.upcase}: #{value.to_i}, "
  end

  rgb_string.chop!.chop!

end
