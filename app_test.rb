require "minitest/autorun"
require_relative "app.rb"

class TestHangman < Minitest::Test

	def test_assert_that_1_equals_1
		assert_equal(1, 1)
	end

	def test_assert_that_empty_string_returns_true
		secret_word = ""
		assert_equal(true, get_word?(secret_word))
	end





end