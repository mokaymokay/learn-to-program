# This program displays the song 99 Bottles of Beer with two tweaks:
# 1) starts at 9999 bottles and 2) written in English instead of numerically.

number = 9999

def englishNumber(number)

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

  if toWrite > 0
    numString = numString + onesPlace[toWrite-1]
  end

  return numString

end

while number > 2
  puts englishNumber(number).capitalize + " bottles of beer on the wall, " + englishNumber(number) + " bottles of beer. \nTake one down and pass it around, " + englishNumber(number - 1) + " bottles of beer on the wall."
  number -= 1
end

puts "Two bottles of beer on the wall, two bottles of beer. \nTake one down and pass it around, one more bottle of beer on the wall."
puts "One bottle of beer on the wall, one bottle of beer. \nTake one down and pass it around, no more bottles of beer on the wall."
puts "No more bottles of beer on the wall, no more bottles of beer. \nGo to the store and buy some more, nine thousand nine hundred ninty-nine bottles of beer on the wall."
