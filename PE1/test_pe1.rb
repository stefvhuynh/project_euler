require "./pe1.rb"
require "test/unit"

class TestSumOfMultiples < Test::Unit::TestCase
  
  def test_multiples_of_three
    assert_equal([3, 6, 9], SumOfMultiples.new(10).multiples_of(3))
    assert_equal([3, 6, 9, 12, 15, 18], 
      SumOfMultiples.new(20).multiples_of(3))
  end
  
  def test_multiples_of_five
    assert_equal([5], SumOfMultiples.new(10).multiples_of(5))
    assert_equal([5, 10, 15], SumOfMultiples.new(20).multiples_of(5))
  end
  
  def test_merge_multiples
    assert_equal([3, 5, 6, 9], SumOfMultiples.new(10).merge_multiples)
  end

  def test_sum_multiples
    assert_equal(23, SumOfMultiples.new(10).sum_multiples)
  end
  
end