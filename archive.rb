class Archive
  def initialize
    @songs = {}
  end

  def archive
    puts "1. Add a song"
    puts "2. List of songs"
    puts "3. Guess the song"
    puts "4. Exit"
    @answer = gets.chomp
    if @answer.to_i == 1
      add_song
    end

  end

  def add_song
    puts "Enter the song:"
    new_song = gets.chomp
    puts "Enter the singer"
    singer = gets.chomp 

    @songs.store(singer.to_sym, new_song)
    print @songs
  end

end
