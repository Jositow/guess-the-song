require_relative "./archive.rb"

class Song
attr_accessor :singer, :song

  def initialize(song, singer)
    @song = song
    @singer = singer
  end

  def add
    {song: @song, singer: @singer}
  end

end
