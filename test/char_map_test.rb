require './lib/char_map'

class CharacterMapTest < Minitest::Test
  def test_char_map_has_a_key_to_match_to_value
    testmap = CharacterMap.new
    assert_equal ["0.", "..", ".."], testmap.char_map['a']
    assert_equal ["00", "..", "0."], testmap.char_map['m']
    assert_equal ["0.", ".0", "00"], testmap.char_map['z']
  end

  def test_char_map_has_a_value_to_match_to_key
    testmap = CharacterMap.new
    assert_equal 'b', testmap.char_map.key(["0.", "0.", ".."])
    assert_equal 'q', testmap.char_map.key(["00", "00", "0."])
    assert_equal ' ', testmap.char_map.key(["..", "..", ".."])
  end
end
