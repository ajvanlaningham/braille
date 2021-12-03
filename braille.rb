toggle = true # sets up condition for a while loop later on


dictionary = {} # we establish a dictionary as a hash "map"
# it goes {key(kinda like the index)} = {1st line "points to" a thing, 2nd "points to" a thing, 3rd "points to" a thing}

dictionary[" "] = {1 => "   ", 2 =>  "   ", 3 => "   "} #can't forget to include spaces between words! 
dictionary["a"] = {1 => "■0 ", 2 =>  "00 ", 3 => "00 "}
dictionary["b"] = {1 => "■0 ", 2 =>  "■0 ", 3 => "00 "}
dictionary["c"] = {1 => "■■ ", 2 =>  "00 ", 3 => "00 "}
dictionary["d"] = {1 => "■■ ", 2 =>  "0■ ", 3 => "00 "}
dictionary["e"] = {1 => "■0 ", 2 =>  "0■ ", 3 => "00 "}
dictionary["f"] = {1 => "■■ ", 2 =>  "■0 ", 3 => "00 "}
dictionary["g"] = {1 => "■■ ", 2 =>  "■■ ", 3 => "00 "}
dictionary["h"] = {1 => "■0 ", 2 =>  "■■ ", 3 => "00 "}
dictionary["i"] = {1 => "0■ ", 2 =>  "■0 ", 3 => "00 "}
dictionary["j"] = {1 => "0■ ", 2 =>  "■■ ", 3 => "00 "}
dictionary["k"] = {1 => "■0 ", 2 =>  "00 ", 3 => "■0 "}
dictionary["l"] = {1 => "■0 ", 2 =>  "■0 ", 3 => "■0 "}
dictionary["m"] = {1 => "■■ ", 2 =>  "00 ", 3 => "■0 "}
dictionary["n"] = {1 => "■■ ", 2 =>  "0■ ", 3 => "■0 "}
dictionary["o"] = {1 => "■0 ", 2 =>  "0■ ", 3 => "■0 "}
dictionary["p"] = {1 => "■■ ", 2 =>  "■0 ", 3 => "■0 "}
dictionary["q"] = {1 => "■■ ", 2 =>  "■■ ", 3 => "■0 "}
dictionary["r"] = {1 => "■0 ", 2 =>  "■■ ", 3 => "■0 "}
dictionary["s"] = {1 => "0■ ", 2 =>  "■0 ", 3 => "■0 "}
dictionary["t"] = {1 => "0■ ", 2 =>  "■■ ", 3 => "■0 "}
dictionary["u"] = {1 => "■0 ", 2 =>  "00 ", 3 => "■■ "}
dictionary["v"] = {1 => "■0 ", 2 =>  "■0 ", 3 => "■■ "}
dictionary["w"] = {1 => "0■ ", 2 =>  "■■ ", 3 => "0■ "}
dictionary["x"] = {1 => "■■ ", 2 =>  "00 ", 3 => "■■ "}
dictionary["y"] = {1 => "■■ ", 2 =>  "0■ ", 3 => "■■ "}
dictionary["z"] = {1 => "■0 ", 2 =>  "0■ ", 3 => "■■ "}
dictionary["1"] = {1 => "■0 ", 2 =>  "00 ", 3 => "00 "}
dictionary["2"] = {1 => "■0 ", 2 =>  "■0 ", 3 => "00 "}
dictionary["3"] = {1 => "■■ ", 2 =>  "00 ", 3 => "00 "}
dictionary["4"] = {1 => "■■ ", 2 =>  "0■ ", 3 => "00 "}
dictionary["5"] = {1 => "■0 ", 2 =>  "0■ ", 3 => "00 "}
dictionary["6"] = {1 => "■■ ", 2 =>  "■0 ", 3 => "00 "}
dictionary["7"] = {1 => "■■ ", 2 =>  "■■ ", 3 => "00 "}
dictionary["8"] = {1 => "■0 ", 2 =>  "■■ ", 3 => "00 "}
dictionary["9"] = {1 => "0■ ", 2 =>  "■0 ", 3 => "00 "}
dictionary["0"] = {1 => "0■ ", 2 =>  "■■ ", 3 => "00 "}
dictionary["?"] = {1 => "00 ", 2 =>  "■0 ", 3 => "■■ "}
dictionary["!"] = {1 => "00 ", 2 =>  "■■ ", 3 => "■0 "}
dictionary["."] = {1 => "00 ", 2 =>  "■■ ", 3 => "0■ "}
dictionary[","] = {1 => "00 ", 2 =>  "■0 ", 3 => "00 "}


while toggle # here's that on/off switch

    puts "what would you like to translate into braille?" #asks user for thing

    user_input = gets.chomp.downcase.chars #gets thing, cuts out "return", lowercases it, transforms it to a character array
  

    counter = 1 
    while counter <= 3 #sets up a variable to determine how many times we do the next loop
        user_input.each do |i| 
            print dictionary[i][counter] #prints the "line one point definition for entire user"
        end
        puts # hits the proverbial enter key
        counter+=1 #increases the counter AND determines which line to print
        #"good loop"
    end 

    quitcase = true #sets up an exit program loop
    while quitcase
        puts "Would you like to translate something else? y/n"
        response = gets.chomp.downcase 
        if response == "n"
            puts "cool beans. Goodbye!"
            again = false #leaves the whole program
            quitcase = false #leaves the tiny loop
        elsif response == "y"
            quitcase = false #leaves the tiny loop
        else
           puts "I'm sorry... I don't understand." #in case the user is a moron
        end
        #"good loop"
    end
end