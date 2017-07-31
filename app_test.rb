require "minitest/autorun"
require_relative "app.rb"

class TestHangman < Minitest::Test

	def test_assert_that_1_equals_1
		assert_equal(1, 1)
	end

	def test_assert_that_empty_string_returns_true
		secret_word = ""
		assert_equal(true, get_word?(secret_word)) 
	end #first value is what we expect, 2nd value is function w/ variable

	def test_assert_string_returns_true
		secret_word = "cat"
		assert_equal(true, get_word?(secret_word))
	end	

	def test_assert_integer_returns_false
		secret_word = 17
		assert_equal(false, get_word?(secret_word))
	end

	def test_assert_array_returns_false
		secret_word = []
		assert_equal(false, get_word?(secret_word))
	end

	
end