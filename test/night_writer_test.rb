require './lib/night_writer'
require 'minitest/autorun'
require 'minitest/pride'

class NightWriterTest < Minitest::Test
  def test_it_can_take_in_a_braille_input_file_and_seperate_lines
    testwriter = NightWriter.new("./data/input_fixture.txt")
    assert_equal ["0.0.0.0.0....00.0.0.00", "00.00.0..0..00.0000..0", "....0.0.0....00.0.0.."], testwriter.array
  end

  def test_it_can_split_the_input_file_into_different_arrays
    testwriter = NightWriter.new("./data/input_fixture.txt")
    assert_equal ["0.0.0.0.0....00.0.0.00"], testwriter.array1
    assert_equal ["00.00.0..0..00.0000..0"], testwriter.array2
    assert_equal ["....0.0.0....00.0.0.."],  testwriter.array3
  end
end
