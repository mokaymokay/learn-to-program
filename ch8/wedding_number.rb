# The method takes in an integer as an argument,
# and outputs a wedding format in English.

# eg number = 1972
# wedding_number(number)
# => 'nineteen hundred and seventy and two'

def wedding_number(number)
  if number < 0
    return 'Please enter a number that isn\'t negative.'
  end
  if number == 0
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
  to_write = whats_left/1000
  whats_left = whats_left - to_write*1000

  if to_write > 0
    thousands = wedding_number(to_write)
    num_string = num_string + thousands + ' thousand'
    if whats_left > 0
      num_string = num_string + ' '
    end
  end

  to_write = whats_left/100
  whats_left = whats_left - to_write*100
  hundreds = wedding_number(to_write)

  if (to_write > 0) and (num_string != '')
    num_string = num_string + 'and ' + hundreds + ' hundred'
    if whats_left > 0
      num_string = num_string + ' '
    end
  elsif to_write > 0
    num_string = num_string + hundreds + ' hundred'
    if whats_left > 0
    num_string = num_string + ' '
    end
  end

  to_write = whats_left/10
  whats_left = whats_left - to_write*10

  if to_write > 0
    if (to_write == 1) and (whats_left > 0) and (num_string != '')
      num_string = num_string + 'and ' + teenagers[whats_left-1]
      whats_left = 0
    elsif (to_write == 1) and (whats_left > 0)
      num_string = num_string + teenagers[whats_left-1]
      whats_left = 0
    elsif num_string != ''
      num_string = num_string + 'and ' + tens_place[to_write-1]
    else
      num_string = num_string + tens_place[to_write-1]
    end
    if whats_left > 0
      num_string = num_string + ' '
    end
  end

  to_write = whats_left
  whats_left = 0

  if (to_write > 0) and (num_string != '')
    num_string = num_string + 'and ' + ones_place[to_write-1]
  elsif to_write > 0
    num_string = num_string + ones_place[to_write-1]
  end

  return num_string

end

puts wedding_number(11)
puts wedding_number(111)
puts wedding_number(1111)
puts wedding_number(1011)
puts wedding_number(1031)
puts wedding_number(1001)
