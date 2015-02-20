#include <stdlib.h>
#include <iostream>
#include <stack>

bool ValidateParentheses(const char* input) {

	return false;
}

int main() {
	const char* input;
	input = "()";

	if (ValidateParentheses(input)) {
		std::cout << input << " is valid.";
	}
	else {
		std::cout << input << " is not valid.";
	}

	return EXIT_SUCCESS;
}
