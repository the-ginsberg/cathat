# Jeff Ginsberg Solution
cats = Array.new(100, "on")

def toggle(array, index)
  if array[index] == "on"
    array[index] = "off"
  else
    array[index] = "on"
  end
end

round = 0
while round < 100
  count = 0
  while count < 100
    if ( count % (round + 1) == 0)
      toggle(cats, count)
    end
    count += 1
  end
  round += 1
end

x = 0
catwithhat = []
while x < 100
  if cats[x] == "on"
    catwithhat << x
  end
  x += 1
end

print catwithhat



# Sean Sellek Solution
cats = Array.new(100) {true}
100.times do |i|
  100.times do |j|
    if j%(i+1) == 0
      cats[j] = !cats[j]
    end
  end
end

puts "Index of cats without hats:"
cats.each_with_index do |hat, i|
  if !hat then puts i end
end
