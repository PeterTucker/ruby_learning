
# With a While Loop
bottles = 100;
while bottles > 0
	puts bottles.to_s + ' bottles of beer on the wall. ' + bottles.to_s + ' bottles of beer. Take one down pass it around. ' + (bottles - 1).to_s + ' bottles of beer on the wall.'
	bottles -= 1;
end

# With a Negative For Loop
for i in (100).downto(1)
	puts i.to_s + ' bottles of beer on the wall. ' + i.to_s + ' bottles of beer. Take one down pass it around. ' + (i - 1).to_s + ' bottles of beer on the wall.'
end