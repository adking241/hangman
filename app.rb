def get_word?(secret_word) 
	if secret_word.class == String
		true
	else
		false
	end
end

number_of_letters_in_secret_word = 0
def get_secret_word_length(secret_word)
	number_of_letters_in_secret_word = secret_word.length
end




