def starts_with_a_vowel?(word)
  words_starting_with_vowels = word.scan(/\b([aeiouAEIOU]{1})/)
  if words_starting_with_vowels.length > 0
    true
  else
    false
  end
end

def words_starting_with_un_and_ending_with_ing(text)
  text.scan(/\bun\w+ing/)
end

def words_five_letters_long(text)
  text.scan(/\b[a-zA-Z]{5}\b/)
end

def first_word_capitalized_and_ends_with_punctuation?(text)
  text_capitalized_with_punc = text.scan(/^[A-Z][^?!.]*[?.!]$/)
  if text_capitalized_with_punc.length > 0
    true
  else
    false
  end
end

def valid_phone_number?(phone)
  phone_numbers = phone.scan(/\d{10}|\d{3}[-\. ]\d{3}[-\. ]\d{4}|\(\d{3}\)[-\. ]\d{3}[-\. ]\d{4}|\(\d{3}\)\d{7}|\(\d{3}\)\d{3}[-\. ]\d{4}/)
  phone_numbers.length > 0 ? true : false
end
