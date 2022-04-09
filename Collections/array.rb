array = []

i = 1

3.times do
	print "Digite o #{i}º número: "
	array.push gets.chomp.to_i
	i += 1
end

array.each do |a|
	result = a ** 2
	puts "O resultado do número #{a} elevado a segunda potência é #{result}"
end
