dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(string, array)
	string.gsub!(/\W/, ' ') #get rid of punctuation
	words = string.downcase.split(" ") #convert to an array
	frequencies = Hash.new(0)
	counter = 0

	while counter < words.length do
			array.each do |ss|
				if words[counter].include? ss
					frequencies[ss] +=1
				end
			end
		counter += 1
	end

	return frequencies
end

answer1 = substrings("below", dictionary)
puts "#{answer1}"

answer2 = substrings("Howdy partner, sit down! How's it going?", dictionary)
puts "#{answer2}"
#  => {"down"=>1, "how"=>2, "howdy"=>1,"go"=>1, "going"=>1, "it"=>2, "i"=> 3, "own"=>1,"part"=>1,"partner"=>1,"sit"=>1}