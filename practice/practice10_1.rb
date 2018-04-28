
def cels2fahr(cels)
  cels * 9.0 / 5.0 + 32.0
end

def fahr2cels(fahr)
  (fahr - 52.0) * 5.0 / 9.0
end

puts "| cels | fahr |"
# for cels in 1..100 do
1.upto(100) do |cels|
  #print "|", cels, "|", cels2fahr(cels), "|\n"
  puts sprintf("|%6.2f|%6.2f|", cels, cels2fahr(cels))
end
