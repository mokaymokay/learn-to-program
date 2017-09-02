# The weddingNumber method takes in an integer as an argument,
# and outputs a wedding format in English.

# eg number = 1972
# weddingNumber(number)
# => 'nineteen hundred and seventy and two'

def weddingNumber(number)
  if number < 0
    return 'Please enter a number that isn\'t negative.'
  end
  if number == 0
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
  toWrite = whatsLeft/1000
  whatsLeft = whatsLeft - toWrite*1000

  if toWrite > 0
    thousands = weddingNumber(toWrite)
    numString = numString + thousands + ' thousand'
    if whatsLeft > 0
      numString = numString + ' '
    end
  end

  toWrite = whatsLeft/100
  whatsLeft = whatsLeft - toWrite*100
  hundreds = weddingNumber(toWrite)

  if (toWrite > 0) and (numString != '')
    numString = numString + 'and ' + hundreds + ' hundred'
    if whatsLeft > 0
      numString = numString + ' '
    end
  elsif toWrite > 0
    numString = numString + hundreds + ' hundred'
    if whatsLeft > 0
    numString = numString + ' '
    end
  end

  toWrite = whatsLeft/10
  whatsLeft = whatsLeft - toWrite*10

  if toWrite > 0
    if (toWrite == 1) and (whatsLeft > 0) and (numString != '')
      numString = numString + 'and ' + teenagers[whatsLeft-1]
      whatsLeft = 0
    elsif (toWrite == 1) and (whatsLeft > 0)
      numString = numString + teenagers[whatsLeft-1]
      whatsLeft = 0
    elsif numString != ''
      numString = numString + 'and ' + tensPlace[toWrite-1]
    else
      numString = numString + tensPlace[toWrite-1]
    end
    if whatsLeft > 0
      numString = numString + '-'
    end
  end

  toWrite = whatsLeft
  whatsLeft = 0

  if (toWrite > 0) and (numString != '')
    numString = numString + 'and ' + onesPlace[toWrite-1]
  elsif toWrite > 0
    numString = numString + onesPlace[toWrite-1]
  end

  return numString

end

puts weddingNumber(11)
puts weddingNumber(111)
puts weddingNumber(1111)
puts weddingNumber(1011)
puts weddingNumber(1031)
puts weddingNumber(1001)
