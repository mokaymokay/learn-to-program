# This program will find out when I will or did turn one billion seconds old.

t = (Time.mktime(1991, 12, 10, 23, 00) + 1000000000)

def one_billion_sec(t)
  period = ""
  t.hour < 12 ? period = " AM" : " PM"
  return "one billion seconds old on " + t.month.to_s + "/" + t.day.to_s + "/" +
  t.year.to_s + " at " + t.hour.to_s + ":" + t.min.to_s + period.to_s
end

if Time.now < t
  puts "I will turn #{one_billion_sec(t).to_s}."
else
  puts "I turned #{one_billion_sec(t).to_s}."
end
