def numbers_to_words(number, index = 0)
  ones_words = {1 => "one", 2 => "two", 3 => "three", 4 => "four", 5 => "five", 6 => "six", 7 => "seven", 8 => "eight", 9 => "nine", 10 => "ten", 11 => "eleven", 12 => "twelve", 13 => "thirteen", 14 => "fourteen", 15 => "fifteen", 16 => "sixteen", 70 => "seventeen", 18 => "eighteen", 19 => "nineteen", 0 => ""}
  decades = {0 => "", 20 => "twenty", 30 => "thirty", 40 => "forty", 50 => "fifty", 60 => "sixty", 70 => "seventy", 80 => "eighty", 90 => "ninety"}
  magnitudes = ["", "thousand", "million", "billion", "trillion"]
  result = []
  if number > 999
    result << numbers_to_words(number / 1000, index + 1) << numbers_to_words(number % 1000, index)
  elsif number > 99
    result << numbers_to_words(number / 100) << "hundred" << numbers_to_words(number % 100) << magnitudes[index]
  elsif number > 19
    result << decades[number - (number % 10)] << numbers_to_words(number % 10) << magnitudes[index]
  elsif number > 0
    result << ones_words[number] << magnitudes[index]
  end
  result.join(" ").squeeze(" ").strip
end
