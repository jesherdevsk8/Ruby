#!/usr/bin/env ruby
# Jesher Minelli <jesherdevsk8@gmail.com> - seg 19 set 2022

#for arg in ARGV
#   puts arg
#end

if ARGV.size > 0
	for i in 0 ... ARGV.length
		puts "#{i} #{ARGV[i]}" unless ARGV.length < 2
		puts "Working on #{ARGV}" unless ARGV.length > 5
	end
else
	puts "Web need some string"
end

