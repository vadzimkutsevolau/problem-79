file = File.read("p079_keylog.txt")
each_pass_line = file.split("\n").map(&:chars).map {|x| x.map(&:to_i)}

# finding uniq digits
uniq_digs = file.split("\n").join.chars.uniq.map(&:to_i)
# [3, 1, 9, 6, 8, 0, 2, 7]

# digits for 3
digs_to_the_left_to_3 = []
each_pass_line.map do |line|
	if line.include?(3)
		line.map do |x|
			x == 3 ? break : digs_to_the_left_to_3 << x
			end
	end
end
left_to_3 = digs_to_the_left_to_3.uniq

# digits for 1
digs_to_the_left_to_1 = []
each_pass_line.map do |line|
	if line.include?(1)
		line.map do |x|
			x == 1 ? break : digs_to_the_left_to_1 << x
			end
	end
end
left_to_1 = digs_to_the_left_to_1.uniq

# digits for 9
digs_to_the_left_to_9 = []
each_pass_line.map do |line|
	if line.include?(9)
		line.map do |x|
			x == 9 ? break : digs_to_the_left_to_9 << x
			end
	end
end
left_to_9 = digs_to_the_left_to_9.uniq

# digits for 6
digs_to_the_left_to_6 = []
each_pass_line.map do |line|
	if line.include?(6)
		line.map do |x|
			x == 6 ? break : digs_to_the_left_to_6 << x
			end
	end
end
left_to_6 = digs_to_the_left_to_6.uniq

# digits for 8
digs_to_the_left_to_8 = []
each_pass_line.map do |line|
	if line.include?(8)
		line.map do |x|
			x == 8 ? break : digs_to_the_left_to_8 << x
			end
	end
end
left_to_8 = digs_to_the_left_to_8.uniq

# digits for 0
digs_to_the_left_to_0 = []
each_pass_line.map do |line|
	if line.include?(0)
		line.map do |x|
			x == 0 ? break : digs_to_the_left_to_0 << x
			end
	end
end
left_to_0 = digs_to_the_left_to_0.uniq

# digits for 2
digs_to_the_left_to_2 = []
each_pass_line.map do |line|
	if line.include?(2)
		line.map do |x|
			x == 2 ? break : digs_to_the_left_to_2 << x
			end
	end
end
left_to_2 = digs_to_the_left_to_2.uniq

# digits for 7
digs_to_the_left_to_7 = []
each_pass_line.map do |line|
	if line.include?(7)
		line.map do |x|
			x == 7 ? break : digs_to_the_left_to_7 << x
			end
	end
end
left_to_7 = digs_to_the_left_to_7.uniq


# [3, 1, 9, 6, 8, 0, 2, 7]
list_of_lefts = {}
list_of_lefts[7] = left_to_7 #[] means the first digit is 
list_of_lefts[3] = left_to_3 #[7]
list_of_lefts[1] = left_to_1 #[3, 7]
list_of_lefts[6] = left_to_6 #[7, 3, 1]
list_of_lefts[2] = left_to_2 #[1, 6, 7, 3]
list_of_lefts[8] = left_to_8 #[6, 1, 3, 2, 7]
list_of_lefts[9] = left_to_9 #[3, 1, 6, 2, 8, 7]
list_of_lefts[0] = left_to_0 #[6, 8, 1, 9, 2, 7, 3] means the last digit is


p list_of_lefts.keys.join











# uniq_digs.map do |dig|
# 	if each_pass_line



























list = file.split("\n").map(&:chars).map{|x| x.map(&:to_i)}






# finding uniq digits
# uniq_digits = list.join.chars.uniq.sort
# # ["0", "1", "2", "3", "6", "7", "8", "9"]

# first_dig = Array.new
# second_dig = Array.new
# third_dig = Array.new

# list.map(&:chars).map do |x|
# 	first_dig << x[0]
# 	second_dig << x[1]
# 	third_dig << x[2]
# end

# first_dig.uniq
# second_dig.uniq
# third_dig.uniq

# ["3", "6", "1", "7", "2", "8"]
# ["1", "8", "9", "2", "6", "3"]
# ["9", "0", "2", "8", "6", "1"]

# def 
	
# end

