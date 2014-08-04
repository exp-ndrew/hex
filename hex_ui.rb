require './lib/hex_rgb.rb'

def hex_ui 
  
  loop do
    system("clear")
    puts "Hex to RGB Color Converter"
    puts "Enter 'x' at any time to exit."
    puts "\n\n\n"
    puts "Enter a Hex color code to convert to RGB:"
    input = gets.chomp
    if input.match(/(^[\d|([a-fA-F])]{6}$)|(^[#][\d|([a-fA-F])]{6}$)/)
      puts "\n\n"
      puts "#{input.upcase}"
      puts hex_rgb(input)
      puts "\n\n"
      puts "Press any key to convert another color."
      input = gets.chomp
      if input == 'x' 
        puts "Goodbye!"
        sleep (1)
        exit
      end
    elsif input == 'x'
      puts "Goodbye!"
      sleep (1)
      exit
    else
      puts "That was not a valid input. Please enter another color."
      sleep (1)
      redo
    end
  end

end

hex_ui