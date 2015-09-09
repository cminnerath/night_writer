require './lib/char_map'

class CharacterMapTest < Minitest::Test
  def test_char_map_has_a_key_to_match_to_value
    testmap = CharacterMap.new
    assert_equal ['.', 0, 0, 0, 0, 0],        testmap.char_map['a']
    assert_equal ['.', '.', 0, 0, '.', 0],    testmap.char_map['m']
    assert_equal ['.', 0, 0, '.', '.', '.'],  testmap.char_map['z']
  end
end
