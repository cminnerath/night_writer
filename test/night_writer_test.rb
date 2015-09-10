require './lib/night_writer'
require 'minitest/autorun'
require 'minitest/pride'

class NightWriterTest < Minitest::Test
  def test_char_map_has_a_value_to_match_to_keyit_can_take_in_a_braille_input_file
    testwriter = NightWriter.new("./data/input_fixture.txt")
    assert_equal "", testwriter.take_input
  end
end
