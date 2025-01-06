require 'minitest/autorun'
require "./archive"
require "./guess_song"


class TestLab < Minitest::Test
  def test_initilize
    new = Archive.new
    assert_equal [], new.instance_variable_get(:@songs)
  end

  def test_guess_song
    now = NewGame.new("song", "singer")
    assert_equal [], now.instance_variable_get(:@guessed_letters)
    
  end

end
