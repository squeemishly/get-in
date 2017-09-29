gem 'minitest'
require 'pry'
require 'minitest/autorun'
require 'minitest/pride'
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

  def test_it_returns_a_string_from_the_first_level_of_a_nested_hash
    assert_equal "hash", get_in.retrieve({ an_outer: "hash",
                                                with_another: {
                                                  inner: "hash",
                                                  and_another: {
                                                    inside: "that"
                                                  }
                                                }
                                              }, [:an_outer])

  end

  def test_it_can_return_a_string_from_a_deeper_level_of_a_nested_hash
    assert_equal "that", get_in.retrieve({ an_outer: "hash",
      with_another: {
        inner: "hash",
        and_another: {
          inside: "that"
        }
      }
      }, [:with_another, :and_another, :inside])
  end
end
