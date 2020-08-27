
=begin
#> caesar_cipher("What a string!", 5)
#=> "Bmfy f xywnsl!"
(A-Z) => (65 - 90) (a-z) => (97 -122)
=end


def caesar(string, shift)
    if (shift.abs() > 26)
        shift = shift % 26
    end
    if (shift < 0)
        shift = 26 + shift
    end

    words = string.split(" ")
    byte_word = words.map {|word| word = word.bytes}
    
    shifted_words = byte_word.map{|words| 
        shifted_word = words.map{ |letter| letter = (letter + shift)}
    }
    
    reshifted_words = shifted_words.map{|word| 
        reshifted = word.map {|letter|
        if (letter >= 65 && letter <= 90) || (letter >= 97 && letter <= 122) #uppercase letter
            letter = letter.chr
        elsif letter > 90 && letter < 122
            letter = (letter - 90 + 64).chr
        elsif letter > 122
            letter = (letter - 122 + 96).chr
        else 
            letter = (letter - shift).chr
        end
        }
        reshifted = reshifted.join()
    }
    p reshifted_words.join(" ")
    
end
 
caesar("xyz",-27)

