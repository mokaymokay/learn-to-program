# This method takes an integer written in digits and returns its English
# version, i.e. it turns 22 into twenty-two. It will return 'one thousand'
# instead of 'ten hundred' and 'ten thousand' instead of 'one hundred hundred'.

def english_number(number)
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
    thousands = english_number(to_write)
    num_string = num_string + thousands + ' thousand'
    if whats_left > 0
      num_string = num_string + ' '
    end
  end

  to_write = whats_left/100
  whats_left = whats_left - to_write*100

  if to_write > 0
    hundreds = english_number(to_write)
    num_string = num_string + hundreds + ' hundred'
    if whats_left > 0
      num_string = num_string + ' '
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
    if whats_left > 0
      num_string = num_string + '-'
    end
  end

  to_write = whats_left
  whats_left = 0

  if to_write > 0
    num_string = num_string + ones_place[to_write-1]
  end

  return num_string

end

puts english_number(1234)
puts english_number(12345)
puts english_number(123456)
