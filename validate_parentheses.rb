# TODO: Description
# 
# * *Args*    :
#   - +input+ -> 
# * *Returns* :
#   - True if ... false otherwise.

def validate_parentheses(input)
	open_close_chars = { \
		')' => '(', \
		']' => '[', \
		'}' => '{', \
		'>' => '<' }
	char_arr = Array.new()
	input.chars.each do |c|
		if (open_close_chars.value?(c))
			char_arr.push(c)
		elsif (open_close_chars.key?(c))
			return false if (open_close_chars[c] != char_arr.pop)
		end
   end

	return true if (char_arr.count() == 0)
	return false
end

