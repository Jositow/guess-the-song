require 'minitest/autorun'
require "./archive"
require "./guess_song"


class TestLab < Minitest::Test
  def test_initilize
    test = Archive.new
    assert_equal [], test.instance_variable_get(:@songs)
  end

  def test_guess_song
    test = NewGame.new("song", "singer")
    assert_equal [], test.instance_variable_get(:@guessed_letters)
    
  end

end
