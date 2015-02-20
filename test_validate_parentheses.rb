#!/usr/bin/env ruby

require_relative "validate_parentheses.rb"
require "test/unit"

class TestValidateParentheses < Test::Unit::TestCase

	def test_simple
		assert_equal(true, validate_parentheses(""))
		assert_equal(true, validate_parentheses("()"))
		assert_equal(true, validate_parentheses("(()(()(()))())"))
		assert_equal(true, validate_parentheses("a(b+c)(d(e-f)(g(h+i*j)))(k/l)"))

		assert_equal(false, validate_parentheses(")"))
		assert_equal(false, validate_parentheses("(("))
	end

end

