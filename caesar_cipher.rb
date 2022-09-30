# a = 97, z = 122; A = 65, Z = 90; 65-90, 97-122
require 'pry-byebug'

# function to shift or not shift a character
def turn_dial(char, shift)

    # if non-letter, return as is
    if !(char.ord >= 65 && char.ord <= 90) && !(char.ord >= 97 && char.ord <= 122)
        return char.ord

    # uppercase wrap check
    elsif char.ord <= 90 && char.ord + shift > 90
        return char.ord - 90 + 65
    
    # lowercase wrap check
    elsif char.ord <= 122 && char.ord + shift > 122
        return char.ord - 122 + 97

    # no wrap neeeded check
    else 
        return char.ord + shift
    end
end

# main function
def caesar_cipher(message, shift)

    # convert message string to array
    chars = message.split('')

    # prepare result string
    result = []

    # loop through message
    chars.each { |char| result.append(turn_dial(char, shift).chr) }

    # return the cipher
    return result.join('')
end

