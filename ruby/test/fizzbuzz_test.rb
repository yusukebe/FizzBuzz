require_relative '../lib/fizzbuzz'
require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!

class TestFizzBuzz < Minitest::Test
  def test_instance
    fb = FizzBuzz.new()
    assert_instance_of FizzBuzz, fb
  end
  def test_fizzbuzz
    fb = FizzBuzz.new()
    assert_equal "1", fb.fizzbuzz(1)
    assert_equal "2", fb.fizzbuzz(2)
    assert_equal "Fizz", fb.fizzbuzz(3)
    assert_equal "Buzz", fb.fizzbuzz(5)
    assert_equal "FizzBuzz", fb.fizzbuzz(15)
  end
end
