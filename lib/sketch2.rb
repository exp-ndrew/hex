@letters =  {   
                10 => "a",
                11 => "b",
                12 => "c",
                13 => "d",
                14 => "e",
                15 => "f",
            }

def hex rgb_hash # {:r => ["f","1"], :g => ["5","5"], :b => ["3","a"]}
  output = {:r => 0, :g => 0, :b => 0}

rgb_hash.each_pair do |key, value|

  value.reverse! # red --> ["1","f"]

  value.each_with_index do |value, i|
    
    if @letters.has_value?(value)
      output[key] += @letters.key(value) * 16**i
    else
      value_f = value.to_f
      output[key] += value_f * 1 * 16**i
    end
  
  end

end

output

end

puts hex ({:r => ["f","1"], :g => ["5","5"], :b => ["3","a"]})