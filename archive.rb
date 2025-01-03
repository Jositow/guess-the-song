require_relative "./song.rb"

class Archive
  def initialize
    @songs = []
  end

  def archive
    loop do
      puts "1. Add a song"
      puts "2. List of songs"
      puts "3. Guess the song"
      puts "4. Exit"
      @answer = gets.chomp.to_i
      puts "\n"
      case @answer
        when 1
          add_song
        when 2
          list_songs
        when 4
          break
        else
          puts "what was that?" 
          puts
      end
    end
  end

  def add_song
    puts "Enter the song:"
    new_song = gets.chomp
    puts "Enter the singer"
    singer = gets.chomp 
    song = Song.new(new_song, singer)
    @songs << song.add
  end
  
  def list_songs
    @songs.each.with_index(1) {|song, index|
      puts "#{index} #{song[:song]}, #{song[:singer]}"
    }
  end
end
