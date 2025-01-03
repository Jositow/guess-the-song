require_relative "./archive.rb"

class Song
  def initialize(singer, new_song)
    @singer = singer
    @new_song = new_song
  end

  def add
    {@singer.to_sym => @new_song}
  end
end
