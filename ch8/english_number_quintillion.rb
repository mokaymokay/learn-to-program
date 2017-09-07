# The method takes in an integer as an argument and outputs it in English, up
# to the quintillionth place. It can be further expanded by adding data to the
# big_numbers hash and separation_mapping array.

# e.g. number = 12345678901234567890
# english_number(number)
# => 'twelve quintillion three hundred forty-five quadrillion six hundred
# seventy-eight trillion nine hundred one billion two hundred thirty-four
# million five hundred sixty-seven thousand eight hundred ninety'

def english_number(number)
  if number < 0
    return 'Please enter a number that isn\'t negative.'
  elsif number == 0
    return 'zero'
  end

  num_string = ''

  ones_place = [
    'one', 'two', 'three', 'four', 'five',
    'six', 'seven', 'eight', 'nine']
  tens_place = [
    'ten', 'twenty', 'thirty', 'forty', 'fifty',
    'sixty', 'seventy', 'eighty', 'ninety']
  teenagers = [
    'eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen',
    'sixteen', 'seventeen', 'eighteen', 'nineteen']

  whats_left = number

  until whats_left.to_s.length <= 2
    suffix = num_to_suffix(whats_left)

    to_write = break_into_first_suffix(whats_left)[0]
    whats_left = break_into_first_suffix(whats_left)[1]
    if to_write > 0
      num_string = num_string + english_number(to_write) + ' ' + suffix
      num_string += ' ' if whats_left > 0
    end
  end

  to_write = whats_left/10
  whats_left = whats_left - to_write*10

  if to_write > 0
    if (to_write == 1) and (whats_left > 0)
      num_string = num_string + teenagers[whats_left-1]
      whats_left = 0
    else
      num_string = num_string + tens_place[to_write-1]
    end
    num_string += '-' if whats_left > 0

  end

  to_write = whats_left
  whats_left = 0

  if to_write > 0
    num_string = num_string + ones_place[to_write-1]
  end

  return num_string
end

# Adds suffix acccording to number of places
def num_to_suffix(number)
  big_numbers = {
    'quintillion' => (18..20).to_a,
    'quadrillion' => (15..17).to_a,
    'trillion' => (12..14).to_a,
    'billion' => (9..11).to_a,
    'million' => (6..8).to_a,
    'thousand' => (3..5).to_a, #[3, 4, 5]
    'hundred' => [2]
  }

  correct_string = ""

  big_numbers.each do |key, value|
    correct_string = key if value.include?(number.to_s.length-1)
  end

  return correct_string
end

# Breaks number into sets of 3 (except for the hundredth place) by number of places
# e.g. a 20-digit number would first break apart at the 18th place
def break_into_first_suffix(number)
  separation_mapping = [
    [2,3],[3,4,5,6],[6,7,8,9],[9,10,11,12],[12,13,14,15],[15,16,17,18],[18,19,20,21]
  ]

  break_point = nil
  return number if number.to_s.length <= 2
  separation_mapping.each do |set|
    if set.include?(number.to_s.length)
      break_point = set[0]
      break
    end
  end

# Breaks set further into parts for recursion
  solution = number.to_s.split('')
  break_point.times do
    solution.pop
  end

  whats_left = number.to_s
  whats_left.slice!(solution.join)

  return [solution.join.to_i, whats_left.to_i]
end

puts english_number(1234)
puts english_number(123456)
puts english_number(1234567)
puts english_number(1234567890)
puts english_number(12345678901234567890)
