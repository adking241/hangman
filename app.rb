def get_word?(secret_word) 
    if $secret_word.class == String
        true
    else
        false
    end
end

def get_secret_word_length(secret_word) 
    number_of_letters_in_secret_word = $secret_word.length
end

def check_letter?(secret_word, letter)
    if $secret_word.include? $letter
        true
    else 
        false
    end
end

def push_correct_guess_into(letter) #this function pushes a correct guess, letter, into an array
    correct_letter = [] 
    correct_letter.push $letter
    # puts "#{correct_letter} is correct_letter"
    correct_letter #this calls the array so it is the last step in the function
end

def push_incorrect_guess_into(letter) #see above
    wrong_letter = []
    wrong_letter.push $letter
    # puts "#{wrong_letter} is wrong_letter" 
    wrong_letter #this calls the array so it is the last step in the function
end

def play_hangman(secret_word, letter) #bringing all the functions from above into this line. Going to have a do loop and a counter. Function in progress.
    if 
        check_letter?($secret_word, $letter) == true
        push_correct_guess_into($letter)
    else 
        push_incorrect_guess_into($letter)
        $turn_counter = $turn_counter - 1
    end
end

def set_display_word(secret_word) #this function displays the secret word with blanks 
    $display_word = [] #sets the variable equal to an empty array
    get_secret_word_length($secret_word).times do #run this function as many times as there are letters in my secret word 
        $display_word << "_" #it pushes blank spaces into the array equal to the number of letters in the word
    end    
    $display_word #causes the array to be shown for the tests
end

def all_guessed_letters(letter)
    guessed_letters = [] #we need new array for the combining of previous 2 letter guess arrays (correct & incorrect)
    guessed_letters = push_incorrect_guess_into($letter)|push_correct_guess_into($letter)  #bar means "set union" which combines the 2 arrays and removes duplicates (although not needed here)
end

def update_display_word(secret_word, letter)
    # $display_word = $display_word #display word is blanks
    secret_word_array = $secret_word.split("") #this breaks the secret word into an array of individual letters 
    counter = 0
    secret_word_array.each do |index|#we used the .each so that each letter in the secret word gets compared to the letter (index) ;the input within the bars is another variable which allows us to pass the letters into the do loop. technically index is the input for each letter
        if index == $letter
            $display_word[counter] = $letter
        end 
    counter = counter + 1
    end
    $display_word    
end

def check_winner(display_word, secret_word)
    if $display_word == $secret_word
        true
    end
end

def you_lost()
    "Uh Oh!"
end

# guesses_counter = 10
def determine_loser(guesses_counter)
#     if play_hangman == false
#     guesses_counter = guesses_counter - 1
#     end
    # if guesses_counter == 0
       
    incorrect_array = push_incorrect_guess_into($letter) 
    counter = 0
    incorrect_array.each do
        if index == $letter
            $display_word[counter] = $letter
        end 
    counter = counter + 1
    end
    $display_word  
     you_lost  
end

def get_input()
    puts "Player 1 what is your secret word?"
    $secret_word = gets.chomp
end

def get_letter_guess()
    $letter = gets.chomp
end

def end_game?(display_word, secret_word)
    if check_winner == true
        check_winner
    elsif determine_loser == true
        determine_loser
    end
end    

def play_game()
    $turn_counter = 10 
    get_input()
    set_display_word($secret_word)
    puts "Player 2 your word is #{set_display_word($secret_word)}"
    until $turn_counter == 0
    p "Player 2, guess a letter."
    get_letter_guess()
    play_hangman($secret_word, $letter) #evaluating letter guess
    update_display_word($secret_word, $letter)
    puts "#{update_display_word($secret_word, $letter)}"
    end_game?($display_word, $secret_word)
    end
end

play_game()