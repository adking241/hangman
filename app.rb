def get_word?(secret_word) 
    if secret_word.class == String
        true
    else
        false
    end
end
def get_secret_word_length(secret_word)
    number_of_letters_in_secret_word = secret_word.length
end
def check_letter?(secret_word, letter)
    if secret_word.include? letter
        true
    else 
        false
    end
end
def push_correct_guess_into(letter) #this function pushes a correct guess, letter, into an array
    correct_letter = [] 
    correct_letter.push letter
end
def push_incorrect_guess_into(letter) #see above
    wrong_letter = []
    wrong_letter.push letter
end
def play_hangman(secret_word, letter) #bringing all the functions from above into this line. Going to have a do loop and a counter. Function in progress.
    if 
        check_letter?(secret_word, letter) == true
        push_correct_guess_into(letter)
    else 
        push_incorrect_guess_into(letter)
    end
end

