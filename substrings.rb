dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(word, array)
	frequencies = Hash.new(0)
	
	array.each do |ss|
		if word.include? ss
			frequencies[ss] +=1
		end
	end

	frequencies
end

answer = substrings("below", dictionary)
puts "#{answer}"
# => {"below"=>1, "low"=>1}