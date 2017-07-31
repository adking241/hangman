require "minitest/autorun"
require_relative "app.rb"

class TestHangman < Minitest::Test

	def test_assert_that_1_equals_1
		assert_equal(1, 1)
	end

	def test_assert_that_secret_word_equals_string
		assert_equal(String, secret_word.class)
	end





end