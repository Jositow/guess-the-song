require_relative "./archive.rb"

class Song
attr_accessor :singer, :song

  def initialize(song, singer)
    @singer = singer
    @song = song
  end

  def add
    {song: @song, singer: @singer}
  end
end
