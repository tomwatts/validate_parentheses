# TODO: Description
# 
# * *Args*    :
#   - +input+ -> 
# * *Returns* :
#   - True if ... false otherwise.

def validate_parentheses(input)
	char_arr = Array.new()
	input.chars.each do |c|
		if (c == "(")
			char_arr.push(c)
		elsif (c == ")")
			return false if (char_arr.pop != "(")
		end
   end

	return true if (char_arr.count() == 0)
	return false
end

