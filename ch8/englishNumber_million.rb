# This program takes an integer written in digits and returns its English
# version. It is an extension from englishNumber_thousand.rb to include millions.

def englishNumber(number)
  if number < 0
    return 'Please enter a number that isn\'t negative.'
  elsif number == 0
    return 'zero'
  end

  numString = ''

  onesPlace = [
    'one', 'two', 'three', 'four', 'five',
    'six', 'seven', 'eight', 'nine']
  tensPlace = [
    'ten', 'twenty', 'thirty', 'forty', 'fifty',
    'sixty', 'seventy', 'eighty', 'ninety']
  teenagers = [
    'eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen',
    'sixteen', 'seventeen', 'eighteen', 'nineteen']

  whatsLeft = number

  until whatsLeft.to_s.length <= 2
    suffix = num_to_suffix(whatsLeft)

    toWrite = break_into_first_suffix(whatsLeft)[0]
    whatsLeft = break_into_first_suffix(whatsLeft)[1]
    if toWrite > 0
      numString = numString + englishNumber(toWrite) + ' ' + suffix
      numString += ' ' if whatsLeft > 0
    end
  end

  toWrite = whatsLeft/10
  whatsLeft = whatsLeft - toWrite*10

  if toWrite > 0
    if (toWrite == 1) and (whatsLeft > 0)
      numString = numString + teenagers[whatsLeft-1]
      whatsLeft = 0
    else
      numString = numString + tensPlace[toWrite-1]
    end
    numString += '-' if whatsLeft > 0

  end

  toWrite = whatsLeft
  whatsLeft = 0

  if toWrite > 0
    numString = numString + onesPlace[toWrite-1]
  end

  return numString
end

def num_to_suffix(number)
  dictionary = {
    'trillion' => (12..14).to_a,
    'billion' => (9..11).to_a,
    'million' => (6..8).to_a,
    'thousand' => (3..5).to_a, #[3, 4, 5]
    'hundred' => [2]
  }

  correct_string = ""

  dictionary.each do |key, value|
    correct_string = key if value.include?(number.to_s.length-1)
  end

  return correct_string
end

def break_into_first_suffix(number)
  seperation_mapping = [
    [2,3],[3,4,5,6],[6,7,8,9]
  ]

  break_point = nil
  return number if number.to_s.length <= 2
  seperation_mapping.each do |set|
    if set.include?(number.to_s.length)
      break_point = set[0]
      break
    end
  end

  solution = number.to_s.split('')
  break_point.times do
    solution.pop
  end

  a = number.to_s
  a.slice!(solution.join)

  return [solution.join.to_i, a.to_i]
end

# puts englishNumber(1234)
puts englishNumber(123456)
# puts englishNumber(123456)
# puts englishNumber(1234567)
# puts englishNumber(1234567890)
# puts englishNumber(1234567890123)
