# This method takes an integer written in digits and returns its English
# version, i.e. it turns 22 into twenty-two. It will return 'one thousand'
# instead of 'ten hundred' and 'ten thousand' instead of 'one hundred hundred'.

def englishNumber(number)
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
    thousands = englishNumber(toWrite)
    numString = numString + thousands + ' thousand'
    if whatsLeft > 0
      numString = numString + ' '
    end
  end

  toWrite = whatsLeft/100
  whatsLeft = whatsLeft - toWrite*100

  if toWrite > 0
    hundreds = englishNumber(toWrite)
    numString = numString + hundreds + ' hundred'
    if whatsLeft > 0
      numString = numString + ' '
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
    if whatsLeft > 0
      numString = numString + '-'
    end
  end

  toWrite = whatsLeft
  whatsLeft = 0

  if toWrite > 0
    numString = numString + onesPlace[toWrite-1]
  end

  return numString

end

puts englishNumber(1234)
puts englishNumber(12345)
puts englishNumber(123456)
