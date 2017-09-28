gem 'minitest'
require 'pry'
require 'minitest/autorun'
require_relative './coding_challenge'

class ObjectTest < Minitest::Test
  attr_reader :get_in

  def setup
    @get_in = GetIn.new
  end

  def test_it_exists
    assert_instance_of GetIn, get_in
  end

  def test_it_can_return_a_string_from_a_simple_hash
    assert_equal "a thing", get_in.retrieve({squee: "a thing"}, [:squee])
  end
end
