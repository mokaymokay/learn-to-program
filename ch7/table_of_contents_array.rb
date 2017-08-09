# Rewrite the Table of Contents program from Chapter 5 Exercise 3
# by storing text in an array.

table = [
  'Table of Contents',
  'Chapter 1:  Numbers',
  'page 1',
  'Chapter 2:  Letters',
  'page 72',
  'Chapter 3:  Variables',
  'page 118'
]

lineWidth = 50
half_lineWidth = lineWidth/2
puts table[0].center lineWidth
puts
puts table[1].ljust(half_lineWidth) + table[2].rjust(half_lineWidth)
puts table[3].ljust(half_lineWidth) + table[4].rjust(half_lineWidth)
puts table[5].ljust(half_lineWidth) + table[6].rjust(half_lineWidth)
