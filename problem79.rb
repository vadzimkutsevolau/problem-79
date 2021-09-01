file = File.read("p079_keylog.txt")
each_pass_line = file.split("\n").map(&:chars).map {|x| x.map(&:to_i)}

# finding uniq digits
uniq_digs = file.split("\n").join.chars.uniq.map(&:to_i)
# [3, 1, 9, 6, 8, 0, 2, 7]

def digs_to_the_left_to_x(x, line)
	array = []
		line.map do |line|
		if line.include?(x)
			line.map do |dig|
				dig == x ? break : array << dig
			end
		end
	end
	array
end

digs_hash = uniq_digs.map do |x| 
	uniq_digs_hash = {}
	uniq_digs_hash[x] =	digs_to_the_left_to_x(x, each_pass_line).uniq
	uniq_digs_hash
end

p digs_hash.sort { |a, b| a.values.first.size <=> b.values.first.size }.map{|x| x.keys}.join
