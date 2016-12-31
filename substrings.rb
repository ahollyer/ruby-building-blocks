dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(string, array)
	string.gsub!(/\W/, ' ') #get rid of punctuation
	words = string.downcase.split(" ") #convert to an array
	frequencies = Hash.new(0)
	counter = 0

	while counter < words.length do #iterate over the words array
			array.each do |ss|
				if words[counter].include? ss #check if current word includes substring
					frequencies[ss] +=1 #add substring to hash and count number of times it appears
				end
			end
		counter += 1 #move to the next element in the words array
	end

	return frequencies
end

answer1 = substrings("below", dictionary)
puts "#{answer1}"

answer2 = substrings("Howdy partner, sit down! How's it going?", dictionary)
puts "#{answer2}"
#  => {"down"=>1, "how"=>2, "howdy"=>1,"go"=>1, "going"=>1, "it"=>2, "i"=> 3, "own"=>1,"part"=>1,"partner"=>1,"sit"=>1}